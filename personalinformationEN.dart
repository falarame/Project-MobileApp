import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'แก้ไขข้อมูลส่วนบุคคล',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  bool isNameEmpty = true;
  bool isLocationEmpty = true;
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
    nameController.addListener(() {
      setState(() {
        isNameEmpty = nameController.text.isEmpty;
      });
    });
    locationController.addListener(() {
      setState(() {
        isLocationEmpty = locationController.text.isEmpty;
      });
    });
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
              },
              icon: Icon(Icons.arrow_back), // รูปไอคอน "ออก"
            ),
            SizedBox(height: 40.0),
            Text(
              'Edit personal information',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Name - Surname',
              style: TextStyle(fontSize: 10.0),
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
                      controller: nameController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name - Surname',
                      ),
                    ),
                    if (nameController.text.isEmpty)
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
            Text(
              'Address (If there is no specified section, enter ( / ) and put it in the next section)',
              style: TextStyle(fontSize: 10.0),
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
                      controller: locationController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            'House number/village/alley/road/subdistrict/district/province/postal code',
                        hintStyle: TextStyle(fontSize: 10.0),
                      ),
                    ),
                    if (isValueCheckLocation(locationController.text))
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
            Text(
              'Phone Number',
              style: TextStyle(fontSize: 10.0),
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
                        hintText: 'Format: xxxxxxxxx',
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
            Text(
              'Email',
              style: TextStyle(fontSize: 10.0),
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
                      controller: emailController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Format: xxx.xxx@student.mahidol.edu',
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
                width: 100.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    if (nameController.text.isEmpty ||
                        locationController.text.isEmpty ||
                        phoneController.text.isEmpty ||
                        emailController.text.isEmpty) {
                      print('Go fill out the information!!!');
                    } else {
                      print(nameController.text);
                      print(locationController.text);
                      print(phoneController.text);
                      print(emailController.text);
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.orangeAccent),
                  ),
                  child: Text('Confirm'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
