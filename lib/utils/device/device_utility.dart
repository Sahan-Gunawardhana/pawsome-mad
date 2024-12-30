import 'dart:async';
import 'dart:io';

import 'package:battery_plus/battery_plus.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CusAppUtils{

  //hides the keyboard when called
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

  //checks if the device is in landscape
  static bool isLandscapeOrientation(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  //if its in portrait
  static bool isPortraitOrientation(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  //enables haptic feedback
  static void vibrate(Duration duration){
    HapticFeedback.vibrate();
    Future.delayed(duration, ()=>HapticFeedback.vibrate());
  }

  //checks for connectivity
  static Future<bool> hasInternetConnection() async {
    try{
      final result = await InternetAddress.lookup('');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  //launches an external url from the app
  static void launchUrl(String url) async {
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    } else  {
      throw 'URL cannot be launched $url';
    }
  }

  //fetches the battery level
  static Future<int> getBatteryLevel() async {
    final battery = Battery();
    final batteryLevel = await battery.batteryLevel;
    return batteryLevel;
  }

  //initializes the camera module
  static Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    final controller = CameraController(firstCamera, ResolutionPreset.high);
    await controller.initialize();

  }

  //requests permissions from the device to use sensors
  static Future<bool> requestPermission(Permission permission) async {
    final status = await permission.request();
    return status.isGranted;
  }

  //fetches location status
  Future<void> getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Handle error
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      // Handle permission denial
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print('Current location: ${position.latitude}, ${position.longitude}');
  }

  //initializes the accelerometer
  static void startAccelerometerListener(Function(AccelerometerEvent) onUpdate) {
    accelerometerEvents.listen((AccelerometerEvent event) {
      onUpdate(event);
    });
  }

  static late StreamSubscription<StepCount> _stepCountSubscription;
  static late StreamSubscription<PedestrianStatus> _pedestrianStatusSubscription;

  // Check and request activity recognition permission
  static Future<bool> checkAndRequestPermission() async {
    bool granted = await Permission.activityRecognition.isGranted;
    if (!granted) {
      granted = await Permission.activityRecognition.request() == PermissionStatus.granted;
    }
    return granted;
  }

  static void startPedometerStreams({
    required Function(StepCount stepCount) onStepCount,
    required Function(PedestrianStatus status) onPedestrianStatusChanged,
    required Function onStepCountError,
    required Function onPedestrianStatusError,
  }) {

    _stepCountSubscription = Pedometer.stepCountStream.listen(onStepCount)
      ..onError(onStepCountError);


    _pedestrianStatusSubscription = Pedometer.pedestrianStatusStream.listen(onPedestrianStatusChanged)
      ..onError(onPedestrianStatusError);
  }


  static void stopPedometerStreams() {
    _stepCountSubscription.cancel();
    _pedestrianStatusSubscription.cancel();
  }
}