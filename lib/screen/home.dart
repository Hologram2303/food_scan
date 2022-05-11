import 'package:flutter/material.dart';
import 'package:last/screen/login.dart';
import 'package:last/screen/regis.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register/Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/logo.jpg"),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Registersceen();
                      }));
                    },
                    icon: Icon(Icons.add),
                    label: Text("สร้างบัญชีผู้ใช้",
                        style: TextStyle(fontSize: 20))),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Loginsceen();
                      }));
                    },
                    icon: Icon(Icons.login),
                    label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
