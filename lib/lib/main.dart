import 'package:flutter/material.dart';
import 'product1.dart';
import 'product2.dart';
import 'product3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'MyShop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _Notebook = TextEditingController();
  TextEditingController _Tablet = TextEditingController();
  TextEditingController _PC = TextEditingController();
 // TextEditingController _Notebook_Installment = TextEditingController();
 // TextEditingController _Tablet_Installment = TextEditingController();
  //TextEditingController _PC_Installment = TextEditingController();
  String _Notebook_Installment = " ";
  String _Tablet_Installment = " ";
  String _PC_Installment = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                          image: AssetImage('assets/images/fitm.png')),
                      color: Colors.lightGreen.shade400,
                      borderRadius: BorderRadius.circular(30)),
                  height: 75,),
                  SizedBox(height: 10),
                  Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/NoteBook.jpg')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  height: 100,
                  child: Row(children: [
                    Text(
                      'Notebook',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: _Notebook,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Notebook Price'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Row(
                  children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text(
                      "Term 6",
                      style: TextStyle(fontSize: 13),
                    ),
                    leading: Radio(
                      value: "6",
                      groupValue: _Notebook_Installment,
                      onChanged: (String ?value) {
                        setState(() {
                          _Notebook_Installment = value!;
                        });
                      },
                    ),
                  ),
                )),
                    Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text(
                      "Term 10",
                      style: TextStyle(fontSize: 13),
                    ),
                    leading: Radio(
                      value: "10",
                      groupValue: _Notebook_Installment,
                      onChanged: (String ?value) {
                        setState(() {
                          // here it is simple
                          _Notebook_Installment = value!;
                        });
                      },
                    ),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text(
                      "Term 24",
                      style: TextStyle(fontSize: 13),
                    ),
                    leading: Radio(
                      value: "24",
                      groupValue: _Notebook_Installment,
                      onChanged: (String ?value) {
                        setState(() {
                          // here it is simple
                          _Notebook_Installment = value!;
                        });
                      },
                    ),
                  ),
                )),
                    SizedBox(width: 4),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NotebookPage(
                                Notebook: _Notebook.text,
                                Notebook_Installment:_Notebook_Installment,
                              ),
                            ),
                          );
                        },
                        child: Text('Calculate'))
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Tablet.jpg')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  height: 100,
                  child: Row(children: [
                    Text(
                      'Tablet',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: _Tablet,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Tablet Price'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Row(
                  children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text(
                      "Term 6",
                      style: TextStyle(fontSize: 13),
                    ),
                    leading: Radio(
                      value: "6",
                      groupValue: _Tablet_Installment,
                      onChanged: (String ?value) {
                        setState(() {
                          _Tablet_Installment = value!;
                        });
                      },
                    ),
                  ),
                )),
                    Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text(
                      "Term 10",
                      style: TextStyle(fontSize: 13),
                    ),
                    leading: Radio(
                      value: "10",
                      groupValue: _Tablet_Installment,
                      onChanged: (String ?value) {
                        setState(() {
                          // here it is simple
                          _Tablet_Installment = value!;
                        });
                      },
                    ),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text(
                      "Term 24",
                      style: TextStyle(fontSize: 13),
                    ),
                    leading: Radio(
                      value: "24",
                      groupValue: _Tablet_Installment,
                      onChanged: (String ?value) {
                        setState(() {
                          // here it is simple
                          _Tablet_Installment = value!;
                        });
                      },
                    ),
                  ),
                )),
                    SizedBox(width: 4),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TabletPage(
                                Tablet: _Tablet.text,
                                Tablet_Installment: _Tablet_Installment,
                              ),
                            ),
                          );
                        },
                        child: Text('Calculate')),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/PC.jpg')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  height: 100,
                  child: Row(children: [
                    Text(
                      'PC',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: _PC,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter PC Price'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Row(
                  children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text(
                      "Term 6",
                      style: TextStyle(fontSize: 13),
                    ),
                    leading: Radio(
                      value: "6",
                      groupValue: _PC_Installment,
                      onChanged: (String ?value) {
                        setState(() {
                          _PC_Installment = value!;
                        });
                      },
                    ),
                  ),
                )),
                    Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text(
                      "Term 10",
                      style: TextStyle(fontSize: 13),
                    ),
                    leading: Radio(
                      value: "10",
                      groupValue: _PC_Installment,
                      onChanged: (String ?value) {
                        setState(() {
                          // here it is simple
                          _PC_Installment = value!;
                        });
                      },
                    ),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    title: Text(
                      "Term 24",
                      style: TextStyle(fontSize: 13),
                    ),
                    leading: Radio(
                      value: "24",
                      groupValue: _PC_Installment,
                      onChanged: (String ?value) {
                        setState(() {
                          // here it is simple
                          _PC_Installment = value!;
                        });
                      },
                    ),
                  ),
                )),
                    SizedBox(width: 4),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PCPage(
                                PC: _PC.text,
                                PC_Installment: _PC_Installment,
                              ),
                            ),
                          );
                        },
                        child: Text('Calculate'))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.lightGreen.shade100,
    );
  }
}