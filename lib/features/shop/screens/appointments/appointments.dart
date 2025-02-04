import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';
import 'package:pawsome_v2/features/shop/screens/home/widgets/banner_slider.dart';
import 'package:pawsome_v2/utils/constants/image_strings.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  final TextEditingController _pickUpDateController = TextEditingController();
  final TextEditingController _dropOffDateController = TextEditingController();
  final TextEditingController _healthController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  XFile? _image; // Variable to store the picked image

  // Function to handle image picking
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = pickedFile; // Store the image in the state
      });
    }
  }

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        controller.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title:
            Text("Appointments", style: Theme.of(context).textTheme.titleLarge),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row for the Temperature and Step Counter chips
                BannerSlider(banners: [
                  AppImages.product1,
                  AppImages.product2
                ]),
                SizedBox(height: 16),
                // Pet Name field
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Pet Name",
                          prefixIcon: Icon(Icons.pets),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      SizedBox(height: 16),

                      // Drop-off Date field
                      TextFormField(
                        controller: _dropOffDateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          labelText: "Drop-off Date",
                          prefixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        onTap: () => _selectDate(context, _dropOffDateController),
                      ),
                      SizedBox(height: 16),

                      // Pick-up Date field
                      TextFormField(
                        controller: _pickUpDateController,
                        readOnly: true,
                        decoration: InputDecoration(
                          labelText: "Pick-up Date",
                          prefixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        onTap: () => _selectDate(context, _pickUpDateController),
                      ),
                      SizedBox(height: 16),

                      // Health Status field
                      TextFormField(
                        controller: _healthController,
                        maxLines: null,
                        decoration: InputDecoration(
                          labelText: "Health Status",
                          prefixIcon: Icon(Icons.monitor_heart),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      SizedBox(height: 16),

                      // Additional Notes field
                      TextFormField(
                        controller: _notesController,
                        maxLines: null,
                        decoration: InputDecoration(
                          labelText: "Additional Notes",
                          prefixIcon: Icon(Icons.note),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: GestureDetector(
                          onTap: _pickImage, // Triggers the camera
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: _image == null
                                ? Center(
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[700],
                                size: 40,
                              ),
                            )
                                : ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.file(
                                File(_image!.path),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // Confirm button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Confirm"),
                    ),
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
