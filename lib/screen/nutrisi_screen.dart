import 'package:flutter/material.dart';
import 'package:flutter_healthapp/widget/list_asupan.dart';
import 'package:flutter_healthapp/screen/detail_screen.dart';


class NutrisiScreen extends StatelessWidget {
  const NutrisiScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.green.shade300,
            Colors.lime.shade50,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final NutrientsClass place = nutrientsClassList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(
                    place: place,
                  );
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset(place.imageAssets),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(place.nutrients),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: nutrientsClassList.length,
        ),
      ),
    );
  }
}
