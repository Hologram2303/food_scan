import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:last/scan.dart';
import 'package:last/screen/comment.dart';
import 'package:last/screen/home.dart';
import 'package:last/screen/profile.dart';
import 'package:last/screen/readme.dart';

class Waitingscreen extends StatefulWidget {
  const Waitingscreen({
    Key? key,
  }) : super(key: key);

  @override
  _WaitingscreenState createState() => _WaitingscreenState();
}

class _WaitingscreenState extends State<Waitingscreen> {
  final formkey = GlobalKey<FormState>();

  Profile profile = Profile(email: '', password: '', food: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ยินดีต้อนรับเข้าสู่แอปพลิเคชั่น"),
      ),
      body: Container(
        child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return readscreen();
                          }));
                        },
                        icon: Icon(Icons.read_more),
                        label: Text("แนะนำการใช้งาน",
                            style: TextStyle(fontSize: 20))),
                  ),
                  Image.asset("assets/images/1.jpg"),
                  Image.asset("assets/images/artwork44.jpg"),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QRViewExample();
                          }));
                        },
                        icon: Icon(Icons.add_a_photo),
                        label: Text("ไปยังหน้าสแกนบาร์โค้ด",
                            style: TextStyle(fontSize: 20))),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return CMscreen();
                          }));
                        },
                        icon: Icon(Icons.note),
                        label: Text("ข้อแนะนำในการทานอาหาร",
                            style: TextStyle(fontSize: 20))),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
