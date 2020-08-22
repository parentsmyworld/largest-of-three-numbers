
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  TextEditingController number1=TextEditingController();
  TextEditingController number2=TextEditingController();
  TextEditingController number3= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Center(child: Text("CHECK THE LARGEST")),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.0,),
                  TextField(
                    controller: number1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      hintText: "Number 1",
                      prefixIcon: Icon(Icons.keyboard)
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    controller: number2,
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        hintText: "Number 2",
                        prefixIcon: Icon(Icons.keyboard)
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    controller: number3,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        hintText: "Number 3",
                        prefixIcon: Icon(Icons.keyboard)
                    ),
                  ),

                  SizedBox(height: 20.0,),
                  Center(
                    child: RaisedButton(
                      onPressed: (){
                      var a=double.parse(number1.text);
                      var b=double.parse(number2.text);
                      var c=double.parse(number3.text);
                      //to check integers, use int.parse(source) instead
                      if (a>b){
                        if (a>c){
                          print("$a is largest");}
                      else
                        print("$c is lagest");}
                      else if (b>c){
                        print("$b is largest");
                      }
                      else
                        print("$c is largest");
                      },
                      color: Colors.blue,
                      child: Text("check the biggest?"),
                    ),
                  )


                ],
              ),
            ),
        ),
        ),

    );
  }
}
