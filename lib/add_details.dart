import 'package:flutter/material.dart';

class AddDetail extends StatefulWidget {
  const AddDetail({Key? key}) : super(key: key);

  @override
  State<AddDetail> createState() => _AddDetailState();
}

class _AddDetailState extends State<AddDetail> {
  int _value = 1;
  late DateTime _dateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/img/image_1.png"),
                  ),
                  Positioned(
                    bottom: 13,
                    right: 14,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Name',
                    labelText: "Name",
                    prefixIcon: Icon(Icons.account_circle)),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your E-mail',
                    labelText: "E-mail",
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Password',
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock_outline)),
                obscureText: true,
              ),
              SizedBox(height: 10),
              Text("Gender : "),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  children: [
                    Radio(value: 1, groupValue: _value, onChanged: (value) {}),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Male")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Radio(value: 2, groupValue: _value, onChanged: (value) {}),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Female")
                  ],
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Text(_dateTime == null
                  ? "Nothing has been selected yet"
                  : _dateTime.toString()),
              RaisedButton(
                  child: Text("Date of Birth : "),
                  onPressed: () {
                    showDatePicker(
                            context: context,
                            initialDate:
                                _dateTime == null ? DateTime.now() : _dateTime,
                            firstDate: DateTime(2001),
                            lastDate: DateTime(2022))
                        .then((date) {
                      setState(() {
                        _dateTime = date!;
                      });
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("ADD"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
