import 'package:flutter/material.dart';

class five extends StatefulWidget {
  const five({super.key});

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  TextEditingController pana = TextEditingController();
  String val = "";
  String result = "";
bool clk = false;

bool isPangram(String text){
  Set<String>alphabet=Set.from("abcdefghijklmnopqrstuvwxyz".split(''));
  text =text.toLowerCase();

  for(int i =0;i<text.length;i++){
    alphabet.remove(text[i]);
    if(alphabet.isEmpty){
      return true;
    }
  }
  return false;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("panagrom")),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("1st value"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 230,
                    child: TextFormField(
                      controller: pana,
                      decoration: InputDecoration(
                          hintText: "1st value",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              setState(() {
                val =pana.text;
                String a = "is panagram";
                String b = "is not panagram";
                if(isPangram(val))
                {
                  result = a;
                }
                else {
                  result = b;
                }
              });
            }, child: Text("click")),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Result   :$result", style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
