import 'package:flutter_register/pages/major.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String username = '';
  String password = '';
  double weight = 70;
  double height = 180;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                Center(
                  child: ClipOval(
                    child: Image.network(
                      'https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/11_avatar-512.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: Offset(0, 4),
                      child: Row(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.blue,
                                  width: 4,
                                ),
                              ),
                            ),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.person,
                            color: Colors.blue,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Name , such as ณัฐภัทร วิเชียรโสภณ',
                      ),
                      onSaved: (value) {
                        name = value ?? '';
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Username , such as Nattapat Wichiansopon',
                      ),
                      onSaved: (value) {
                        username = value ?? '';
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Password , such as 652021048 *********',
                      ),
                      onSaved: (value) {
                        password = value ?? '';
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Weight: ${weight.toStringAsFixed(1)} kg',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.blue,
                    inactiveTrackColor: Colors.blue.withOpacity(0.3),
                    thumbColor: Colors.blue,
                    valueIndicatorColor: Colors.blue,
                  ),
                  child: Slider(
                    value: weight,
                    min: 30,
                    max: 150,
                    divisions: 120,
                    label: weight.toStringAsFixed(1),
                    onChanged: (value) {
                      setState(() {
                        weight = value;
                      });
                    },
                  ),
                ),
                Text(
                  'Height: ${height.toStringAsFixed(1)} cm',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.blue,
                    inactiveTrackColor: Colors.blue.withOpacity(0.3),
                    thumbColor: Colors.blue,
                    valueIndicatorColor: Colors.blue,
                  ),
                  child: Slider(
                    value: height,
                    min: 100,
                    max: 250,
                    divisions: 150,
                    label: height.toStringAsFixed(1),
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Major()),
                      );
                    }
                  },
                  child: Text('NEXT'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
