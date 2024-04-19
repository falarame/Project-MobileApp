import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController nameconntroller = TextEditingController();
  final TextEditingController locationcontroler = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blank Screen',
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              IconButton(
                onPressed: () {
                  // นำรหัสการทำงานเมื่อปุ่มถูกคลิกที่นี่
                },
                icon: Icon(Icons.arrow_back), // รูปไอคอน "ออก"
              ),
              SizedBox(height: 40.0),
              Text(
                'ข้อมูลส่วนบุคคล',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.black),
                ),                
                child: TextField(
                  controller: nameconntroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'ชื่อ - นามสกุล',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  controller: locationcontroler,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'ที่อยุ่',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  controller: phonecontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'เบอร์โทร',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'อีเมล',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Container(
                  width: 100.0,
                  height: 50.0,               
                  child: ElevatedButton(  
                    onPressed: () {
                      // รหัสทำงานเมื่อปุ่มถูกคลิก
                      print(nameconntroller);
                      print(locationcontroler);
                      print(phonecontroller);
                      print(emailcontroller);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                    ),
                    child: Text('ยืนยัน'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
