import 'package:flutter/material.dart';
import 'package:lab_07_209/calculate.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

final _formKey = GlobalKey<FormState>();

TextEditingController txtHight = TextEditingController();
TextEditingController txtWidth = TextEditingController();

String groupSimple = '';
bool ischecked = false;

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return NewScreen();
}));
        child: Icon(Icons.near_me);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI')),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: txtHight,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "น้ำหนัก", hintText: "กรุณากรอกน้ำหนัก"),
              ),
              TextFormField(
                controller: txtWidth,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "ส่วนสูง", hintText: "กรุณากรอกส่วนสูง"),
              ),

        RadioListTile(
        title: Text('Male'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'item title1',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),

        
        RadioListTile(
        title: Text('Female'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'item title',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),

        RadioListTile(
        title: Text('Gay'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'item title',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),

        RadioListTile(
        title: Text('Bisexual'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'item title',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),

        RadioListTile(
        title: Text('Queer'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'item title',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),

        RadioListTile(
        title: Text('Lesbien'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'item title',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),
            
                  ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('ส่วนสูง:' +
                        txtHight.text +
                        ', น้ำหนัก :' +
                        txtWidth.text);
                        double _bmi = 0.0;
                    setState(() {
                      var _heightM = double.parse(txtHight.text) / 100;
                      //ประกาศตัวแปร _heightM มารับค่าส่วนสูง cm แปลงเป็น m
                      var _bmi =  double.parse(txtWidth.text) / (_heightM * _heightM);
                      print(_bmi);
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewScreen(bmi:_bmi, txtWidth:txtWidth.text, txtHight:txtHight.text),
                        ));
                  }
                },
                child: const Text('คำนวณ'),
      ),
            ],
        ),
      ),
        ),
      
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {

            return NewScreen();
          }));
        },
        child: Icon(Icons.near_me),
      ),
    );
  }
}
