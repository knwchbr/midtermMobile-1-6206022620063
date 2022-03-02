import 'package:flutter/material.dart';

class NotebookPage extends StatelessWidget {
  String Notebook, Notebook_Installment;

  double wh = 0, total = 0, i = 0;

  NotebookPage(
      {Key? key, required this.Notebook, required this.Notebook_Installment})
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
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/NoteBook.jpg')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  height: 75,
                ),
                Text('Name : Notebook DELL Latitude 3520-SNS3520003'),
                Text("Price: $Notebook"),
                Text("Installment : $Notebook_Installment"),
                Text("Interest : " +
                            Installment(double.parse(Notebook_Installment))
                        .toString() + "%"),
                Text("Installment : " +
                    Installment2(
                            double.parse(Notebook),
                            double.parse(Notebook_Installment))
                        .toString()),
                Text("All Interest : " +
                    Installment3(
                            double.parse(Notebook),
                            double.parse(Notebook_Installment))
                        .toString()),
                Text("Price including Interest : " +
                    numberAdd(
                            double.parse(Notebook),
                            double.parse(Notebook_Installment))
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