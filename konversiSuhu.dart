import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  String selectedValue = 'Reamur';
  double suhuAwal = 0;
  double hasil = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Konverter Suhu"),
          ),
          body: Container(
              margin: EdgeInsets.all(50),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Celcius',
                      hintText: 'Masukkan angka temperatur dalam celcius',
                    ),
                    onChanged: (value) {
                      setState(() {
                        suhuAwal = double.tryParse(value) ?? 0.0;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButton(
                    isExpanded: true,
                    value: selectedValue,
                    items: [
                      DropdownMenuItem(
                        child: Text('Reamur'),
                        value: 'Reamur',
                      ),
                      DropdownMenuItem(
                        child: Text('Kelvin'),
                        value: 'Kelvin',
                      ),
                      DropdownMenuItem(
                        child: Text('Fahrenheit'),
                        value: 'Fahrenheit',
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value.toString();
                      });
                    },
                  ),
                  Text('Hasil'),
                  Text('$hasil'),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (selectedValue == 'Reamur') {
                                    hasil = suhuAwal * 0.8;
                                  } else if (selectedValue == 'Kelvin') {
                                    hasil = suhuAwal + 273.15;
                                  } else {
                                    hasil = (1.8 * suhuAwal) + 32;
                                  }
                                });
                              },
                              child: Text('Konversi Suhu'))),
                    ],
                  )
                ],
              ))),
    );
  }
}
