import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:last/screen/home.dart';
import 'package:last/screen/profile.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:fluttertoast/fluttertoast.dart';

import 'profile.dart';

class Registersceen extends StatefulWidget {
  @override
  _RegistersceenState createState() => _RegistersceenState();
}

class _RegistersceenState extends State<Registersceen> {
  final formkey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '', food: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สร้างบัญชีผู้ใช้ระบบ"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("อีเมล", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator: MultiValidator([
                      EmailValidator(errorText: "กรอกอีเมลผิดพลาด"),
                      RequiredValidator(errorText: "กรุณาป้อนอีเมลด้วยครับ")
                    ]),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (dynamic email) {
                      profile.email = email;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("รหัสผ่าน", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    obscureText: true,
                    validator: RequiredValidator(
                        errorText: "กรุณาป้อนรหัสผ่านด้วยครับ"),
                    onSaved: (dynamic password) {
                      profile.password = password;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("อาหารที่แพ้", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator: RequiredValidator(
                        errorText: "กรุณาป้อนอาหารที่แพ้ด้วยครับ"),
                    onSaved: (dynamic foodAllergy) {
                      profile.food = foodAllergy;
                    },
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text("ลงทะเบียน", style: TextStyle(fontSize: 30)),
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                          try {
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: profile.email,
                                    password: profile.password)
                                .then((value) => {
                                      formkey.currentState!.reset(),
                                      /*Fluttertoast.showToast(
                                                  msg:
                                                      "สร้างบัญชีผู้ใช้เสร็จเรียบร้อย",
                                                  gravity: ToastGravity.TOP),*/
                                    });
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Homescreen();
                            }));
                          } on FirebaseAuthException catch (e) {
                            print(e.code);
                            dynamic message;
                            if (e.code == 'email-already-in-use') {
                              message =
                                  "มีอีเมลนี้ในระบบแล้วครับ กรุณาใช้อีเมลอื่น";
                            } else if (e.code == 'weak-password') {
                              message =
                                  "รหัสผ่านต้องมีความยาวตัวอีกษร 6 ตัวขึ้นไป";
                            } else
                              message = "ผิดพลาดในการลงทะเบียน";

                            /* Fluttertoast.showToast(
                                        msg: message,
                                        gravity: ToastGravity.CENTER);*/
                          }
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
