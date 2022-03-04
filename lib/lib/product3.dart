import 'package:flutter/material.dart';

class TabletPage extends StatelessWidget {
  String Tablet, Tablet_Installment;

  double wh = 0, total = 0, i = 0;

  TabletPage({Key? key, required this.Tablet, required this.Tablet_Installment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Tablet.jpg')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  height: 75,
                ),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Samsung Glaxzy Tab S7'),
                  ),),

                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("Price:"),
                    subtitle: Text(' $Tablet'),
                  ),
                  ),

                   Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("Installment : $Tablet_Installment"),
                    subtitle: Text('$Tablet_Installment'),
                  ),
                  ),
                  
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("Interest"),
                    subtitle: Text(' ' + 
                        Installment(double.parse(Tablet_Installment))
                        .toString() + "%"),),
                  ),
                  
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("Installment : "),
                    subtitle: Text(' ' +
                    Installment2(
                            double.parse(Tablet),
                            double.parse(Tablet_Installment))
                        .toString()),
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("All Interest: "),
                    subtitle: Text(' ' +
                    Installment3(
                            double.parse(Tablet),
                            double.parse(Tablet_Installment))
                        .toString()),
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("Price include interest : "),
                    subtitle: Text(' ' +
                    numberAdd(
                            double.parse(Tablet),
                            double.parse(Tablet_Installment))
                        .toString()),
                    ),
                  ),
                  
              ],
            ),
          ),
        ),
      ),
    );
  }

  double Installment(double h) {
    if (h == 6) {
      i = 0;
    } else if (h == 10) {
      i = 1;
    } else if (h == 24) {
      i = 2;
    }
    return i;
  }

  double Installment3(double w, double h) {
    if (h == 6) {
      total = w * 0;
    } else if (h == 10) {
      total = w * 0.01;
    } else if (h == 24) {
      total = w * 0.02;
    }
    return total * h;
  }

  double Installment2(double w, double h) {
    if (h == 6) {
      total = w * 0;
    } else if (h == 10) {
      total = w * 0.01;
    } else if (h == 24) {
      total = w * 0.02;
    }
    return (total * h) / h;
  }

  double numberAdd(double w, double h) {
    if (h == 6) {
      total = w * 0;
    } else if (h == 10) {
      total = w * 0.01;
    } else if (h == 24) {
      total = w * 0.02;
    }
    return total * h + w;
  }
}