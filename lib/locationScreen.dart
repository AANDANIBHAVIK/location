import 'package:flutter/material.dart';
import 'package:location/locationProvider.dart';
import 'package:provider/provider.dart';

class Location_Screen extends StatefulWidget {
  const Location_Screen({Key? key}) : super(key: key);

  @override
  State<Location_Screen> createState() => _Location_ScreenState();
}

class _Location_ScreenState extends State<Location_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Location"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Provider.of<LocationProvider>(context, listen: false)
                      .getposition();
                },
                child: Text("Search Location"),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                  "${Provider.of<LocationProvider>(context, listen: true).lon}  /  ${Provider.of<LocationProvider>(context, listen: true).lat} ")
            ],
          ),
        ),
      ),
    );
  }
}
