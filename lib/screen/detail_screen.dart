import 'package:flutter/material.dart';
import 'package:flutter_healthapp/widget/list_asupan.dart';
import 'package:flutter_healthapp/screen/nutrisi_screen.dart';

class DetailScreen extends StatelessWidget {
  final NutrientsClass place;
  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(place.imageAssets),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.black),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  place.nutrients,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
                          Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}