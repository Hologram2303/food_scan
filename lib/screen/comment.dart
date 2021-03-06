import 'package:flutter/material.dart';
import 'package:last/screen/waiting.dart';
import 'package:last/screen/patient.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("การรับประทานอาหารใช้แต่ละวัย"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("การรับประทานอาหารแต่ละวัย", style: TextStyle(fontSize: 24)),
            Divider(),
            Text("วัยทารก", style: TextStyle(fontSize: 24)),
            Text(
                "ทารกแรกเกิดถึง 6 เดือน ยังไม่ต้องการอาหารใดๆ นอกจากนมแม่หรือนมผงดัดแปลงสำหรับทารก ทารกบางคนอาจแพ้นมวัวที่อยู่ในนมผง ดังนั้นหากสงสัยว่าทารกแพ้นมวัวให้รีบปรึกษาแพทย์ทันที นมแม่เป็นอาหารที่ดีที่สุดสำหรับทารกเพราะนมแม่ประกอบด้วยสารอาหารต่างๆ ที่ทารกต้องการอย่างครบถ้วน แต่เมื่อทารกอายุครบ 6 เดือน สารอาหารในนมแม่อาจไม่เพียงพอต่อความต้องการของร่างกาย ดังนั้นจึงควรเริ่มให้อาหารอื่นๆ นอกจากการให้นมแม่ ซึ่งเรียกว่าเข้าช่วงการหย่านม (Weaning) นั่นเอง การเริ่มหย่านมนั้นขึ้นกับพัฒนาการของเด็ก ซึ่งมีความแตกต่างกันในแต่ละคน โดยอาจเริ่มให้อาหารที่มีลักษณะของความเป็นเนื้ออาหารเพื่อกระตุ้นให้ทารกรู้จักการบดเคี้ยว แต่ห้ามเติมเกลือลงในอาหารเนื่องจากไตของทารกยังไม่สามารถทำงานได้อย่างเต็มที่ และเช่นเดียวกันห้ามทารกดื่มน้ำผึ้งจนกว่าจะอายุครบหนึ่งขวบ เนื่องจากในน้ำผึ้งอาจมีแบคทีเรียที่อาจเป็นอันตรายต่อทารกได้",
                style: TextStyle(fontSize: 20)),
            Text(
                "อย่างไรก็ตามทารกยังคงต้องการนมแม่หรือนมผง ไปพร้อมกับการให้อาหารอื่นๆ จนกว่าอายุครบ 1 ขวบ ปริมาณที่ให้ก็ขึ้นอยู่กับปริมาณอาหารที่ทารกสามารถรับประทานได้ อย่าพยามยามให้ทารกรับประทานอาหารมากเกินความต้องการ",
                style: TextStyle(fontSize: 20)),
            Divider(),
            Text("วัยเด็ก", style: TextStyle(fontSize: 24)),
            Text(
                "เด็กมีการเจริญเติบโตอย่างรวดเร็ว จึงต้องการอาหารที่ให้สารอาหารและพลังงานสูง เด็กวัยหัดเดิน (Toddlers) ยังไม่สามารถรับประทานอาหารได้มากนัก ดังนั้นจึงควรป้อนอาหารมื้อเล็กๆ และของว่างที่มีประโยชน์ต่อร่างกาย เช่น ผลไม้ชิ้นเล็กๆ แครอทหรือแตงกวาหั่น ซึ่งสามารถป้อนได้เรื่อยๆ ทั้งวัน เมื่อเด็กอายุครบ 5 ขวบก็สามารถให้เด็กรับประทานอาหารทั่วไปเหมือนสมาชิกอื่นๆ ในครอบครัวได้ แต่ห้ามเติมเกลือในอาหารเด็ก สิ่งสำคัญคือเด็กต้องได้รับโปรตีนและแคลเซียมที่เพียงพอต่อการเจริญเติบโตของกระดูกและกล้ามเนื้อ นมและผลิตภัณฑ์จากนมเป็นแหล่งอาหารที่ดีที่ให้ทั้งโปรตีนและแคลเซียมที่จำเป็นสำหรับเด็ก เด็กอายุ 1-3 ขวบต้องการนมอย่างน้อย 8 ออนซ์ต่อวัน (หรือเท่ากับ 240 มิลลิลิตรต่อวัน) นมที่ดีที่สุดสำหรับเด็กอายุต่ำกว่า 5 ขวบ คือ นมครบส่วน (Whole milk) หรือผลิตภัณฑ์จากนมไขมันเต็ม (Full fat dairy product) ซึ่งสามารถให้พลังงานเพียงพอกับความต้องการของร่างกาย",
                style: TextStyle(fontSize: 20)),
            Text(
                "เด็กต้องการอาหารที่หลากหลายและพ่อแม่ต้องพยายามทำให้เวลาบนโต๊ะอาหารเป็นเวลาที่มีความสุขของครอบครัว หลีกเลี่ยงการให้เด็กรับประทานอาหารสำเร็จรูปหรืออาหารประเภทจานด่วน (Fast food) เพื่อพัฒนาให้เด็กมีพฤติกรรมการกินเพื่อสุขภาพตั้งแต่ยังเล็กและมีความคุ้นเคยกับอาหารเพื่อสุขภาพว่าเป็นอาหารที่ควรกินตามปกติเป็นประจำ พ่อแม่ต้องพยายามคิดหาวิธีกระตุ้นให้เด็กรับประทานอาหารที่มีประโยชน์บางชนิดซึ่งเด็กไม่ชอบ และเมื่อเด็กโตขึ้นก็จะผ่านปัญหานี้ไปได้ หรืออาจดัดแปลงอาหารสุขภาพให้เด็กกินได้ง่ายขึ้น เช่น ผสมผักปนเข้าไปในมันบด เป็นต้นเมื่อเด็กโตขึ้น พ่อแม่ต้องสอนให้เห็นถึงความสำคัญของอาหารสุขภาพและชี้ให้เห็นประโยชน์และโทษของอาหารแต่ละชนิดต่อร่างกาย",
                style: TextStyle(fontSize: 20)),
            Divider(),
            Text("วัยรุ่น", style: TextStyle(fontSize: 24)),
            Text(
                "วัยรุ่น เป็นวัยที่มีการพัฒนาและการเจริญเติบโตอย่างรวดเร็ว ดังนั้นจึงต้องการอาหารที่ให้สารอาหารและพลังงานสูง เด็กวัยนี้มักรับประทานอาหารได้มาก แต่สิ่งสำคัญคือต้องมั่นใจว่าเป็นอาหารที่มีคุณค่าทางอาหารมากกว่าขนมหวานหรืออาหารไขมันสูง เช่น น้ำอัดลม เค้ก ขนมปัง ซึ่งมีแคลลอรี่สูงแต่มีคุณค่าทางโภชนาการต่ำ",
                style: TextStyle(fontSize: 20)),
            Text(
                "ส่วนประกอบอาหารของวัยรุ่นที่สำคัญ คือ อาหารประเภทแป้งเป็นพื้นฐาน อุดมด้วยผลไม้และผัก และมีผลิตภัณฑ์โปรตีนและนมในปริมาณปานกลาง นอกจากนี้พวกเขายังสามารถรับประทานอาหารเพื่อเพิ่มพลังงานได้จากขนมขบเคี้ยวที่มีคุณค่าทางโภชนาการ เช่น ถั่ว ลูกเกดหรือน้ำผลไม้ปั่นระหว่างมื้ออาหาร",
                style: TextStyle(fontSize: 20)),
            Text(
                "รูปร่างเป็นสิ่งสำคัญที่คนวัยนี้ให้ความสำคัญ แต่ก็ไม่ควรใช้วิธีอดอาหารในการควบคุมน้ำหนัก วิธีที่ดีที่สุดในการควบคุมน้ำหนักคือ การรับประทานอาหารที่มีประโยชน์ต่อสุขภาพอย่างสมดุลและออกกำลังกายอย่างสม่ำเสมอสิ่งสำคัญอีกประการสำหรับวัยรุ่น คือการรับประทานอาหารที่มีธาตุเหล็กอย่างเพียงพอ โดยเฉพาะเพศหญิงซึ่งสูญเสียธาตุเหล็กไปพร้อมประจำเดือน อาหารที่อุดมไปด้วยธาตุเหล็กได้แก่ เนื้อแดง ปลา(โดยเฉพาะปลาซาดีน) พืชตระกูลถั่วและธัญพืช",
                style: TextStyle(fontSize: 20)),
            Divider(),
            Text("วัยผู้ใหญ่", style: TextStyle(fontSize: 24)),
            Text(
                "ความต้องการทางโภชนาการของคนในช่วงอายุ 19-50 ปี ไม่ค่อยแตกต่างกันมากนัก ยกเว้นในหญิงตั้งครรภ์และหญิงให้นมบุตร อาหารสำคัญสำหรับคนวัยนี้ควรเป็นอาหารประเภทแป้งที่มีเส้นใยสูงและผักผลไม้ มีอาหารโปรตีนพอประมาณจาก เนื้อสัตว์ ถั่ว นม และรับประทานอาหารที่มีส่วนประกอบของน้ำตาลและไขมันในปริมาณน้อย สิ่งสำคัญคือการควบคุมน้ำหนักให้อยู่ในช่วงที่เหมาะสมกับส่วนสูงของตนเองแอลกอฮอล์เป็นเครื่องดื่มที่ให้พลังงานสูง ทำให้น้ำหนักตัวเพิ่มขึ้นและทำลายตับ ดังนั้นควรดื่มในปริมาณจำกัดตามที่มีการแนะนำ",
                style: TextStyle(fontSize: 20)),
            Divider(),
            Text(
              "วัยสูงอายุ",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              "เมื่ออายุมากขึ้น ระบบเผาผลาญพลังงานของร่างกายจะลดลง ประกอบกับการมีกิจกรรมทางกายน้อยลง ดังนั้นโดยธรรมชาติแล้ว คนวัยนี้จะเริ่มรับประทานอาหารน้อยลง อย่างไรก็ตามยังควรรับประทานอาหารเป็นประจำ โดยเน้นผักและผลไม้",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "หากคุณพบว่าคุณเริ่มเบื่ออาหาร ก็ควรรับประทานอาหารในแต่ละมื้อให้น้อยลง แต่ให้รับประทานอาหารว่างที่มีประโยชน์ในระหว่างมื้ออาหาร และให้เน้นอาหารที่มีแคลเซียมสูง เช่น ผลิตภัณฑ์จากนม เพื่อป้องกันภาวะกระดูกพรุนอย่าลืมดื่มน้ำให้เพียงพอและรับประทานอาหารที่มีเส้นใยสูงเพื่อป้องกันท้องผูก นอกจากนี้ธาตุเหล็กยังสำคัญสำหรับผู้สูงอายุเช่นกันเพื่อป้องกันโรคโลหิตจาง แหล่งอาหารที่มีธาตุเหล็กสูงได้แก่ น้ำมันปลา ถั่วอบและธัญพืชต่างๆ เป็นต้น",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "เมื่อคุณอายุมากขึ้น คุณอาจไม่อยากทำอาหารเอง เนื่องจากมีความยุ่งยากในการจับจ่าย ซื้อของ หรือการเตรียมอาหาร คุณจึงอาจซื้ออาหารสำเร็จรูปที่ให้คุณค่าทางอาหารที่ปรุงง่าย เก็บได้นานไว้รับประทานหรือแช่แข็งไว้รับประทานภายหลัง รวมถึงควรมีอาหารกระป๋องที่สามารถเก็บไว้เพื่อรับประทานในกรณีที่คุณไม่สามารถออกจากบ้านได้",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "การขอความช่วยเหลือจากเพื่อน ญาติพี่น้อง หรือองค์กรทางสังคม ในกรณีที่คุณไม่สามารถจัดซื้อและเตรียมอาหารได้เอง ก็เป็นสิ่งสำคัญที่ควรคิดเตรียมการไว้",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return patientscreen();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.note),
                label: Text(
                  "กลับหน้าหลัก",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Waitingscreen();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.add_a_photo),
                label: Text(
                  "กลับหน้าหลัก",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
