import 'package:flutter/material.dart';

class six extends StatefulWidget {
  const six({super.key});

  @override
  State<six> createState() => _sixState();

}

class _sixState extends State<six> {
  TextEditingController rom = TextEditingController();
String romval= "";
int val =0;
int roman(String s)
{
  Map<String,dynamic>
      rvalues = {
    "I":1,
    "v":5,
    "X":10,
    "L":50,
    "c":100,
    "D":500,
    "M":1000,
  };
  int res= 0;
  int pvalue=0;
  int n=s.length;

  for (int i = n-1;i>=0;i--)
  {
    int cvalue= rvalues[s[i]];

    if (cvalue >=pvalue)
      {
        res +=cvalue;
      }
    else
      {
        res-=cvalue;
      }
    pvalue=cvalue;
  }
  return res;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Roman to indiger")),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Roman ",style: TextStyle(fontSize: 20),),
              ),
              Container(
                height: 60,
                width: 250,
                child: TextFormField(
                  controller: rom,
                  decoration: InputDecoration(
                    hintText: "Roman value",
                    border: OutlineInputBorder(),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" Int       ",style: TextStyle(fontSize: 20),),
              ),
              Container(
                height: 60,
                width: 250,
                child: TextFormField(
                  controller: rom,
                  decoration: InputDecoration(
                    hintText: "Int value",
                    border: OutlineInputBorder()
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            print("djfncn");
            setState(() {
             romval = rom.text;
             val=roman(romval);
             print ("the value is $val");

            });
          }, child: Text("click")),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Result :",style: TextStyle(fontSize: 20),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
