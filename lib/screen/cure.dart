import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:last/scan.dart';
import 'package:last/screen/home.dart';
import 'package:last/screen/profile.dart';

class Curescreen extends StatefulWidget {
  final DocumentSnapshot value;

  const Curescreen({Key? key, required this.value}) : super(key: key);

  @override
  _CurescreenState createState() => _CurescreenState();
}

class _CurescreenState extends State<Curescreen> {
  final formkey = GlobalKey<FormState>();

  Profile profile = Profile(email: '', password: '', food: '');

  @override
  Widget build(BuildContext context) {
    List value = widget.value["cure"] as List;
    value.map((lose) => print(lose));
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
                  ),
                  Divider(),
                  for (int i = 0; i < value.length; i++) ...[
                    Column(
                      children: [
                        Text("การรักษา ${i + 1} :",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 6, 247, 174))),
                        Text(value[i], style: TextStyle(fontSize: 20)),
                        Divider(),
                      ],
                    )
                  ],
                ],
              ),
            )),
      ),
    );
  }
}
