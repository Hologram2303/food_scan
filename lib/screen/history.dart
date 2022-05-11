import 'package:flutter/material.dart';
import 'package:last/screen/waiting.dart';

class Historyscreen extends StatefulWidget {
  @override
  _HistoryscreenState createState() => _HistoryscreenState();
}

class _HistoryscreenState extends State<Historyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ประวัติการสแกน"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ข้อแนะนำสำหรับการกินเพื่อสุขภาพที่ดี",
                style: TextStyle(fontSize: 24)),
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
                  label: Text("กลับหน้าหลัก", style: TextStyle(fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}
