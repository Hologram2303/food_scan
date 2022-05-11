import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:last/scan.dart';
import 'package:last/screen/home.dart';
import 'package:last/screen/lose.dart';
import 'package:last/screen/profile.dart';
import 'package:last/screen/lose.dart';
import 'package:last/screen/cure.dart';
import 'package:last/screen/waiting.dart';

class Resultsceen extends StatefulWidget {
  final DocumentSnapshot value;

  const Resultsceen({Key? key, required this.value}) : super(key: key);

  @override
  _ResultsceenState createState() => _ResultsceenState();
}

class _ResultsceenState extends State<Resultsceen> {
  final formkey = GlobalKey<FormState>();

  Profile profile = Profile(email: '', password: '', food: '');

  @override
  Widget build(BuildContext context) {
    List ingredient = widget.value["ingredient"] as List;
    List value = widget.value["value"] as List;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.value.id),
      ),
      body: Container(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Image.network(widget.value["image"]),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("ชื่อ : ${widget.value["name"]}",
                        style: TextStyle(fontSize: 20)),
                  ),
                  Divider(),
                  Text("บริษัทผู้ผลิต : ${widget.value["product"]}",
                      style: TextStyle(fontSize: 20)),
                  Divider(),
                  Text("ส่วนประกอบที่ผู้บริโภคควรเลี่ยง :",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 252, 33, 4))),
                  Divider(),
                  Text("${widget.value["warning"]}",
                      style: TextStyle(fontSize: 20)),
                  Divider(),
                  Text("คุณค่าทางโภชนาการต่อ 1 ชิ้น :",
                      style: TextStyle(fontSize: 20)),
                  Divider(),
                  for (int i = 0; i < value.length; i++) ...[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(value[i], style: TextStyle(fontSize: 20)),
                      ],
                    )
                  ],
                  Divider(),
                  Text("ส่วนประกอบโดยประมาณ :", style: TextStyle(fontSize: 20)),
                  Divider(),
                  for (int i = 0; i < ingredient.length; i++) ...[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ingredient[i], style: TextStyle(fontSize: 20)),
                        Divider(),
                      ],
                    )
                  ],
                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Losescreen(value: widget.value);
                          }));
                        },
                        icon: Icon(Icons.add_alert),
                        label:
                            Text("อาการแพ้", style: TextStyle(fontSize: 20))),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Curescreen(value: widget.value);
                          }));
                        },
                        icon: Icon(Icons.add_alert),
                        label:
                            Text("การรักษา", style: TextStyle(fontSize: 20))),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Waitingscreen();
                          }));
                        },
                        icon: Icon(Icons.add_a_photo),
                        label: Text("กลับหน้าหลัก",
                            style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
