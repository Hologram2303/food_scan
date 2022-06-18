import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:last/scan.dart';
import 'package:last/screen/forgotpass.dart';
import 'package:last/screen/home.dart';
import 'package:last/screen/profile.dart';
import 'package:last/screen/waiting.dart';
import 'package:last/screen/forgotpass.dart';

class Loginsceen extends StatefulWidget {
  @override
  _LoginsceenState createState() => _LoginsceenState();
}

class _LoginsceenState extends State<Loginsceen> {
  final formkey = GlobalKey<FormState>();

  Profile profile = Profile(email: '', password: '', food: '');

  Future<void> checkAuth(BuildContext context) async {
    FirebaseAuth.instance.authStateChanges().listen((user) async {
      if (user != null) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Waitingscreen();
        }));
      }
    });
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await checkAuth(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เข้าสู่ระบบ"),
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
                    width: double.infinity,
                    child: ElevatedButton(
                      child:
                          Text("ลงชื่อเข้าใช้", style: TextStyle(fontSize: 30)),
                      onPressed: () async {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                          try {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: profile.email,
                                    password: profile.password)
                                .then((value) => {
                                      print(value.user!.email),
                                      FirebaseFirestore.instance
                                          .collection("users")
                                          .doc(value.user!.uid)
                                          .get()
                                          .then((user) {
                                        if (!user.exists) {
                                          FirebaseFirestore.instance
                                              .collection("users")
                                              .doc(user.id)
                                              .set({
                                            "email": value.user!.email,
                                          }).then((value) {
                                            formkey.currentState!.reset();
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return Waitingscreen();
                                            }));
                                          });
                                        } else {
                                          formkey.currentState!.reset();
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Waitingscreen();
                                          }));
                                        }
                                      }),
                                    });
                          } on FirebaseAuthException catch (e) {
                            /*Fluttertoast.showToast(
                                        msg: "อีเมล หรือ รหัสผ่านไม่ถูกต้อง",
                                        gravity: ToastGravity.CENTER);*/
                          }
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return ForgotPasswordPage();
                            })));
                          },
                          child: Text(
                            'ลืมรหัสผ่าน?',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
