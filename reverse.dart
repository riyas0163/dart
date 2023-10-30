import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  TextEditingController ctrlr = TextEditingController();
  String val = "";
  String result = "";

 bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Reverse ")),
      ),
      body:Column(
        children: [
          SizedBox(height: 100,),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Enter the value ",style: TextStyle(fontSize: 20),),
                ),
                SizedBox(width: 20,
                ),
                Container(
                  height: 40,
                  width: 200,
                  child: TextFormField(
                    controller: ctrlr,
                    decoration: InputDecoration(
                      hintText: "value",
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
             val = ctrlr.text;
             String rev = "";
             for (int i = val.length-1;i >=0;i--){
               rev+= val[i];
             }
             print(rev);

             result = rev ;
           });
          }, child: Text("Click")),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("reverse value :    $result",style: TextStyle(fontSize: 20),),
              ),
            ],
          )
        ],
      )
    );
  }
}
