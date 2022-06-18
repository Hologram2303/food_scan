import 'package:flutter/material.dart';
import 'package:last/screen/waiting.dart';

class readscreen extends StatefulWidget {
  @override
  _readscreenState createState() => _readscreenState();
}

class _readscreenState extends State<readscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("การใช้งานแอปพลิเคชั่น"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ข้อแนะนำในการใช้งานแอปพลิเคชั่น",
                style: TextStyle(fontSize: 24)),
            Divider(),
            Text(
                "1. หลังจากล็อคอินจะเข้าสู่หน้ารอสแกนท่านสามารถเลือกดูฟังก์ชั่นและข้อมูลต่างๆได้ตามปุ่ม",
                style: TextStyle(fontSize: 20)),
            Text("2. หากต้องกดการไปยังหน้าสแกนสินค้าให้กดปุ่มสแกนบาร์โค้ด",
                style: TextStyle(fontSize: 20)),
            Text(
                "3. ข้อแนะนำในการรับประทาน มีทั้งช่วงอายุ,วัย ไปจนถึงกินอย่างไรให้สุขภาพดี",
                style: TextStyle(fontSize: 20)),
            Text(
                "4. ปัญหาการใช้งาน หากกล้องไม่ทำงานหรือหน้าจอสีดำ ให้กดสลับกล้อง(camera facing back)1 ครั้ง สลับใช้กล้องหน้า เพื่อให้กล้องเปิดการทำงานแล้วจึงกดอีก 1 ครั้งเพื่อใช้งานกล้องหลังในการสแกนบาร์โค้ด",
                style: TextStyle(fontSize: 20)),
            Text("4.1 หากต้องการใช้กล้องหลัง กด สลับกล้อง 2 ครั้ง",
                style: TextStyle(fontSize: 20)),
            Text(
                "5. สินค้าที่สแกนแล้วไม่ขึ้นข้อมูล หรือ หน้าจอสีแดง แสดงว่าสินค้าชิ้นนั้นยังไม่มีข้อมูลในฐานข้อมูล",
                style: TextStyle(fontSize: 20)),
            Divider(),
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
