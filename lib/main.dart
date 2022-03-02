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
            child: Image(image: AssetImage('images/fitm.png')),
          ),
        ),
        title: Text('Myshop'),
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
                  height: 75,
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
                
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Tablet.jpg')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  height: 75,
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
              
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/PC.jpg')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  height: 75,
                  child: Row(children: [
                    Text(
                      'PC',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
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
                  ),),
            ),
              ),
        ),
      ),
    ),
    );
  }
}
