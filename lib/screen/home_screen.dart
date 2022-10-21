import 'package:flutter/material.dart';
import 'package:flutter_healthapp/screen/kalkulator_screen.dart';
import 'package:flutter_healthapp/screen/nutrisi_screen.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text('Dietry Habit'),
        centerTitle: true,
      ),
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
        child:Column(
          children:  [
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                return const KalkulatorScreen();
              }));
              },
              child: const HabitList(
                habitName: 'Kalkulator Kalori',
                habitDescription: 'Ayo hitung kebutuhan kalori harianmu!',
              ),
            ),
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                return const NutrisiScreen(
                );
              }));
              },
              child: const HabitList(
                habitName: 'Sumber Nutrisi',
                habitDescription: 'Referensi bahan makanan bernutrisi',
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: const HabitList(
                habitName: 'Coming Soon...',
                habitDescription: 'Tunggu update aplikasi berikutnya!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class HabitList extends StatelessWidget {
  final String habitName;
  final String habitDescription;

  const HabitList({Key? key, required this.habitName, required this.habitDescription}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        padding: const EdgeInsets.all(19.0),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(35)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  habitName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height:3),
                Text(habitDescription)
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}