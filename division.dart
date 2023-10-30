import 'package:flutter/material.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();

}

class _thirdState extends State<third> {
  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();
  String val1 = "";
  String val2 = "";
  String result ="";
  String resultv = "";


  bool clk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("divisable")),
      ),
      body: Column(
        children: [
          SizedBox(height: 60,),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Text("Value 1",style: TextStyle(fontSize: 20),)),
                ),
                Container(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: ctrl1,
                    decoration: InputDecoration(
                      hintText: "1st value",
                      border: OutlineInputBorder()
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Text("Value 2",style: TextStyle(fontSize: 20),)),
                ),
                Container(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: ctrl2,
                    decoration: InputDecoration(
                        hintText: "2nd value",
                        border: OutlineInputBorder()
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            setState(() {
              val1 = ctrl1.text;
              val2 = ctrl2.text;
             int a =int.parse(val1);
             int b = int.parse(val2);
             int c ;
              String d = "is divisible";
              String e = "is not divisible";

              c = a % b;
              if( c == 0){
                result= d;
              }
              else {
                result = e;
              }
              resultv=c.toString();

            });
          }, child: Text("click")),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Result value : $resultv",style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Result  :  $result",style: TextStyle(fontSize: 20),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
