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
  TextEditingController _Notebook_Installment = TextEditingController();
  TextEditingController _Tablet_Installment = TextEditingController();
  TextEditingController _PC_Installment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: ClipOval(
            child: Image(image: AssetImage('images/fitm.png'),width: 800,height: 900, fit: BoxFit.cover,),
          ),
        ),
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
                          image: AssetImage('assets/images/NoteBook.jpg')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  height: 200,
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
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NotebookPage(
                                Notebook: _Notebook.text,
                                Notebook_Installment: "6",
                              ),
                            ),
                          );
                        },
                        child: Text('Installment 6')),
                    SizedBox(width: 4),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NotebookPage(
                                Notebook: _Notebook.text,
                                Notebook_Installment: "10",
                              ),
                            ),
                          );
                        },
                        child: Text('Installment 10')),
                    SizedBox(width: 4),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NotebookPage(
                                Notebook: _Notebook.text,
                                Notebook_Installment: "24",
                              ),
                            ),
                          );
                        },
                        child: Text('Installment 24'))
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
                  height: 200,
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
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TabletPage(
                                Tablet: _Tablet.text,
                                Tablet_Installment: "6",
                              ),
                            ),
                          );
                        },
                        child: Text('Installment 6')),
                    SizedBox(width: 4),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TabletPage(
                                Tablet: _Tablet.text,
                                Tablet_Installment: "10",
                              ),
                            ),
                          );
                        },
                        child: Text('Installment 10')),
                    SizedBox(width: 4),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TabletPage(
                                Tablet: _Tablet.text,
                                Tablet_Installment: "24",
                              ),
                            ),
                          );
                        },
                        child: Text('Installment 24')),
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
                  height: 200,
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
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PCPage(
                                PC: _PC.text,
                                PC_Installment: "6",
                              ),
                            ),
                          );
                        },
                        child: Text('Installment 6')),
                    SizedBox(width: 4),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PCPage(
                                PC: _PC.text,
                                PC_Installment: "10",
                              ),
                            ),
                          );
                        },
                        child: Text('Installment 10')),
                    SizedBox(width: 4),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PCPage(
                                PC: _PC.text,
                                PC_Installment: "24",
                              ),
                            ),
                          );
                        },
                        child: Text('Installment 24'))
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