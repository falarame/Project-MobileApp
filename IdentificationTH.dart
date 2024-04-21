import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ProfileTH.dart';

class CallIdenTH {
  void main() {
    runApp(MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Identification',
      home: IdentificationTH(),
    );
  }
}

class IdentificationTH extends StatefulWidget {
  @override
  _IdentificationTHState createState() => _IdentificationTHState();
}

class _IdentificationTHState extends State<IdentificationTH> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  bool isPhoneEmpty = true;
  bool isEmailEmpty = true;
  bool isValueCheckLocation(String data) {
    int count = data.split('/').length - 1;
    return count == 7;
  }

  bool isValueCheckEmail(String data) {
    int count1 = data.split('@').length - 1;
    int count2 = data.split('student.mahidol.edu').length - 1;
    int count3 = data.split('.').length - 1;
    return count1 == 1 && count2 == 1 && count3 == 3;
  }

  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
      setState(() {
        isPhoneEmpty = phoneController.text.isEmpty;
      });
    });
    emailController.addListener(() {
      setState(() {
        isEmailEmpty = emailController.text.isEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                CallProfileTH().main();
              },
              icon: Icon(Icons.arrow_back), // รูปไอคอน "ออก"
            ),
            SizedBox(height: 20.0),
            Text(
              'การยืนยันตัวตน',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Email',
              style: TextStyle(fontSize: 20.0),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.black),
                ),
                child: Stack(
                  children: [
                    TextField(
                      controller: emailController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'รูปแบบ: xxx.xxx@student.mahidol.edu',
                      ),
                    ),
                    if (isValueCheckEmail(emailController.text))
                      Positioned(
                        top: 8.0,
                        right: 8.0,
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      )
                    else
                      Positioned(
                        top: 8.0,
                        right: 8.0,
                        child: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      )
                  ],
                )),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: 500.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    if (emailController.text.isEmpty) {
                      print('ไปกรอกข้อมูล!!!');
                    } else {
                      print(phoneController.text);
                      print(emailController.text);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: Text(
                    'ส่งรหัส OTP เพื่อทำการยืนยัน',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Phone',
              style: TextStyle(fontSize: 20.0),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: Colors.black),
                ),
                child: Stack(
                  children: [
                    TextField(
                      controller: phoneController,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'รูปแบบ: xxxxxxxxxx',
                      ),
                    ),
                    if (phoneController.text.isEmpty ||
                        phoneController.text.length != 10)
                      Positioned(
                        top: 8.0,
                        right: 8.0,
                        child: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      )
                    else
                      Positioned(
                        top: 8.0,
                        right: 8.0,
                        child: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      )
                  ],
                )),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: 500.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    if (phoneController.text.isEmpty) {
                      print('ไปกรอกข้อมูล!!!');
                    } else {
                      print(phoneController.text);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: Text(
                    'ส่งรหัส SMS เพื่อทำการยืนยัน',
                    style: TextStyle(color: Colors.black),
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
