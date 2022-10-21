import 'package:flutter/material.dart';

// import 'package:get/get.dart';


/* 
  MAAF, PAGE ATAU KALKULATOR SCREEN INI BELUM DILENGKAPI FUNGSI PERHITUNGAN
  
*/


// screen ini berisikan form yang menerima input dari user
class KalkulatorScreen extends StatefulWidget {
  
  const KalkulatorScreen({Key? key}) : super(key: key);
  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}
class _KalkulatorScreenState extends State<KalkulatorScreen> {

  String? _jenisKelamin;
  String _umur= '';
  String _berat= '';
  String _tinggi= '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text('Dietry Habit'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.green.shade300,
                Colors.lime.shade50,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/sammy-5.png',
                        width: 240,
                        height: 184,
                        fit: BoxFit.fill,
                      ),
                      const Text(
                        'Ayo cari tahu dan cukupi kebutuhan kalori harianmu',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Pilih Jenis Kelaminmu:',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: 'lakikk',
                        groupValue: _jenisKelamin,
                        onChanged: (String? value) {
                          setState(() {
                            _jenisKelamin = value;
                            
                          });
                        },
                      ),
                      title: Text('LAKI-LAKI'),
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: 'ciwik',
                        groupValue: _jenisKelamin,
                        onChanged: (String? value) {
                          setState(() {
                            _jenisKelamin = value;
                            
                          });
                        },
                      ),
                      title: Text('PEREMPUAN'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Tulis umurmu',
                      labelText: 'Umur Berapa Kamu Sekarang?',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    onChanged: (String value){
                      setState(() {
                        _umur = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Berat badan dalam satuan kg',
                      labelText: 'Berapa Berat Badanmu?',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    onChanged: (String value){
                      setState(() {
                        _berat = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Tinggi badan dalam satuan cm',
                      labelText: 'Berapa Tinggi Badanmu?',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    onChanged: (String value){
                      setState(() {
                        _tinggi = value;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(9.0),
                      child: ElevatedButton(
                        child: const Text('SUBMIT'),
                        onPressed: (){
                          showDialog(context: context, builder: (_){return AlertDialog(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                            title: Text('MOHON MAAF',style: TextStyle(
                              fontWeight:  FontWeight.bold,
                              color: Colors.red,
                            ),),
                            content: Text('Kalkulator ini belum dilengkapi dengan fungsi perhitungan'),
                          );
                          });
                        },
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// terdapat radio button untuk menerima data jenis kelamin user
// terdapat beberapa textfield yang menerima inputan usia,tinggi, & berat badan user
// dari data tersebut akan dilakukan perhitungan kebutuhan jumlah kalori
// untuk submit button pakai percabangan if else 







