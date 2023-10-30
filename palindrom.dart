import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();



}

class _secondState extends State<second> {

  TextEditingController ctrl = TextEditingController();
  String val ="";
  String result = "";
  String fresult = "";

  bool clk =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("palindrom")),
      ),
      body:
      Column(
        children: [
          SizedBox(height: 80,),
          Container(
            child: Row(
              children: [
                Container(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Enter the value",style: TextStyle(fontSize: 20),),
                )),
                Container(
                  height: 40,
                  width: 200,
                  child: TextFormField(
                    controller: ctrl,
                    decoration: InputDecoration(
                        hintText: "value",
                        border: OutlineInputBorder()
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
          setState(() {
            val = ctrl.text;
            String rev ="";
            String a = "Palindrome";
            String b = "not a Palindrome";

            for (int i = val.length-1;i>=0;i--){
              rev += val[i];
            }
            print(rev);
            if(val == rev){
              result = a;
            }
            else{
              result = b;
            }
            fresult = rev;
          });
          }, child: Text("click")),
          Row(
            children: [
              Text("reverse value $fresult"  ,style: TextStyle(fontSize: 20),),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("result  $result"  ,style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
