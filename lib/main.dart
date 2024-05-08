import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tabla Madederia Ortega",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(
          title: "Tabla Madederia Ortega",
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Column(
        children: [
          Container(
            height: 550,
            padding: EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                print("Este objeto esta presionado");
              },
              child: Card(
                elevation: 40,
                color: Colors.grey[300],
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Image(
                        image: AssetImage("assets/img1.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    //gghgggggggggg
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Mdera Roble",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Los tablones de madera de roble se caracterizan por tener tonalidades que varían desde colores marrones claros y oscuros hasta tonos más rojizos y amarillentos, Es una madera de fácil clavado y atornillado, aunque por su dureza puede haber fases del proceso más complicadas. Consigue un buen acabado con barnices y pinturas. Es una madera muy fácil de barnizar y pintar y no necesita especial mantenimiento para su durabilidad. Es duradera.",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Table(border: TableBorder.all(), columnWidths: {
              0: FixedColumnWidth(180),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
            }, children: [
              TableRow(children: [
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "ID madera",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Tipo",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Medidas",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ]),
              TableRow(children: [
                Container(padding: EdgeInsets.all(5), child: Text("001")),
                Container(
                    padding: EdgeInsets.all(5), child: Text("Roble liso")),
                Container(padding: EdgeInsets.all(5), child: Text("1mX30cm")),
              ]),
              TableRow(children: [
                Container(padding: EdgeInsets.all(5), child: Text("002")),
                Container(
                    padding: EdgeInsets.all(5), child: Text("Roble rugoso")),
                Container(padding: EdgeInsets.all(5), child: Text("1mX35cm")),
              ]),
              TableRow(children: [
                Container(padding: EdgeInsets.all(5), child: Text("003")),
                Container(
                    padding: EdgeInsets.all(5), child: Text("Roble pulido")),
                Container(padding: EdgeInsets.all(5), child: Text("80cmX40cm")),
              ]),
            ]),
          ),
        ],
      ),
    );
  }
}
