import 'package:flutter/material.dart';
import 'package:pawsome_v2/common/widgets/appbar/appbar.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Add a New Address",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person), labelText: "Name"),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_iphone), labelText: "Name"),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_road_rounded),
                            labelText: "Street"),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.post_add_rounded),
                            labelText: "Postal Code"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_city_rounded),
                            labelText: "City"),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.terrain_rounded),
                            labelText: "Province"),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 16,),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.language_rounded),
                      labelText: "Province"),
                ),
                SizedBox(height: 24,),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text("Save")),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
