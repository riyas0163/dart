import 'package:flutter/material.dart';

class four extends StatefulWidget {
  const four({super.key});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {
  TextEditingController four = TextEditingController();

  String val = "";
  String result = "";
  bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Repeat")),
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
                    controller: four,
                    decoration: InputDecoration(
                        hintText: "1st value",
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
            setState(() {
              String val = four.text;
              bool clk = false;
              String x = "is not repeat";
              String y = "is repeat";

              for(int i = 0;i<val.length;i++)
              {
                for(int a=i+1;a<val.length;a++)
                {
                  if(val[i]== val[a]){

                    clk = true;
                  }
                }
              }
              if(clk == true){
                result = y;
              }
              else {
                result= x;
              }
            });



            }, child: Text("Click")),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Result  : $result",style: TextStyle(fontSize: 20),),
              ),
            ],
          )
        ]
      )
    );
  }
}
