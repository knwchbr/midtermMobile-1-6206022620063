import 'package:flutter/material.dart';

class PCPage extends StatelessWidget {
  String PC, PC_Installment;

  double wh = 0, total = 0, i = 0;

  PCPage({Key? key, required this.PC, required this.PC_Installment})
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
                          image: AssetImage('assets/images/PC.jpg')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  height: 75,
                ),
                Text('Name : HP 205 G4 NonTouch All-in-One-PC'),
                Text("Price: $PC"),
                Text("Installment : $PC_Installment"),
                Text("Interest : " +
                    Installment(double.parse(PC_Installment)).toString() +
                    "%"),
                Text("Installment : " +
                    Installment2(double.parse(PC), double.parse(PC_Installment))
                        .toString()),
                Text("All Interest : " +
                    Installment3(double.parse(PC), double.parse(PC_Installment))
                        .toString()),
                Text("Price including interest : " +
                    numberAdd(double.parse(PC), double.parse(PC_Installment))
                        .toString())
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