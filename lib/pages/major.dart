import 'package:flutter/material.dart';

class major extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Major'),
      ),
    );
  }
}

class Major extends StatefulWidget {
  const Major({Key? key});

  @override
  State<Major> createState() => _MajorState();
}

class _MajorState extends State<Major> {
  String? _selectedMajor;
  String? _selectedLanguage;
  bool _agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Return to the first page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Major ⭐️',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButtonFormField<String>(
              value: _selectedMajor,
              hint: Text('Select Major'),
              items: [
                DropdownMenuItem(
                    value: 'Computer Science', child: Text('Computer Science')),
                DropdownMenuItem(
                    value: 'Information Technology',
                    child: Text('Information Technology')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedMajor = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Language',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: <Widget>[
                RadioListTile(
                  title: Text('Thai 🇹🇭'),
                  value: 'Thai',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value as String?;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('English 🇺🇸'),
                  value: 'English',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value as String?;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Chinese 🇨🇳'),
                  value: 'Chinese',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value as String?;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _agreedToTerms,
                  onChanged: (value) {
                    setState(() {
                      _agreedToTerms = value!;
                      if (_agreedToTerms) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('ข้อกำหนด'),
                              content:
                                  Text('ข้อมูลทั้งหมดที่ท่านได้กรอกลงไปจะไม่ถูกบันทึกเข้าสู่ระบบใดๆ โปรดวางใจว่าข้อมูลของท่านจะปลอดภัย \nชิ้นงานนี้เป็นส่วนหนึ่งของรายวิชา 0214321 การพัฒนาแอปพลิเคชันบนอุปกรณ์เคลื่อนที่ขั้นสูง \nจัดทำโดย นายณัฐภัทร วิเชียรโสภณ 652021048'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('ตกลง'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    });
                  },
                ),
                Text(
                  'Agree Condition Terms',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _agreedToTerms ? () {} : null,
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
