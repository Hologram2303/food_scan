import 'package:flutter/material.dart';
import 'package:last/screen/waiting.dart';

class patientscreen extends StatefulWidget {
  @override
  _patientscreenState createState() => _patientscreenState();
}

class _patientscreenState extends State<patientscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ข้อแนะนำ"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ข้อแนะนำสำหรับการกินเพื่อสุขภาพที่ดี",
                style: TextStyle(fontSize: 24)),
            Divider(),
            Text(
                "ข้อแนะนำในด้านอาหารแบบ Pyramid ข้อแนะนำนี้เป็นหลักการกินอาหารที่แนะนำโดย The United States Department of Agriculture (USDA) เพื่อเผยแพร่การรับประทานอาหารและการออกกำลังกายที่เป็นประโยชน์ต่อสุขภาพ โดยแนะนำกลุ่มอาหาร  5 กลุ่มหลัก ได้แก่ ธัญพืช  ผัก ผลไม้  นม  เนื้อสัตว์ และโปรตีนจากแหล่งอื่นนอกจากเนื้อสัตว์ พร้อมทั้งปริมาณที่ควร บริโภคในแต่ละวันเพื่อให้ได้สารอาหาร และพลังงานที่เพียงพอแก่ความต้องการของร่างกาย โดยแนะนำให้บริโภค ไขมัน น้ำมัน และของหวานในปริมาณน้อย นอกจากนี้ยังมีข้อแนะนำเพื่อสุขภาพและพลานามัยที่ดีดังนี้",
                style: TextStyle(fontSize: 20)),
            Text("บริโภคอาหารที่มีสารอาหารสูงแต่ให้พลังงานจำกัด",
                style: TextStyle(fontSize: 20)),
            Text("รักษาน้ำหนักตัวให้อยู่ในระดับที่เหมาะสม",
                style: TextStyle(fontSize: 20)),
            Text("ออกกำลังกายเป็นประจำ", style: TextStyle(fontSize: 20)),
            Text("กินผักผลไม้และนมไขมันต่ำทุกวัน",
                style: TextStyle(fontSize: 20)),
            Text("บริโภคไขมันในปริมาณน้อย", style: TextStyle(fontSize: 20)),
            Text("บริโภคไขมันในปริมาณน้อย", style: TextStyle(fontSize: 20)),
            Text("กินอาหารที่มีกากใยสูง", style: TextStyle(fontSize: 20)),
            Text(
                "ลดการบริโภคอาหารที่มีเกลือ และกินอาหารที่มีโปแตสเชี่ยมสูง เช่น กล้วย ผักโขม มันฝรั่ง",
                style: TextStyle(fontSize: 20)),
            Text("หลีกเลี่ยงเครื่องดื่มที่มีแอลกอฮอล์",
                style: TextStyle(fontSize: 20)),
            Text("เก็บรักษาและเตรียมอาหารโดยคำนึงถึงความปลอดภัยเป็นหลัก",
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
