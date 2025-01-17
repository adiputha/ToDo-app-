import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool today=true, tomorrow=false, nextweek=false;
  bool suggest=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){

      }, child: Icon(Icons.add, color: Color(0xFF0C7BB3),size: 30.0,),),
        body: Container(
      padding: EdgeInsets.only(top: 90.0, left: 30.0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF0C7BB3), Color(0xFFF2BAE8)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello\nAdithya",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Good Morning",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             today? Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF0C7BB3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Today",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ): GestureDetector(
                onTap: (){
                  today=true;
                  tomorrow=false;
                  nextweek=false;
                  setState(() {
                    
                  });
                },
                child: Text(
                      "Today",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
              ),
               
               tomorrow? Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF0C7BB3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Tomorrow",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ): GestureDetector(
                onTap: (){
                  today=false;
                  tomorrow=true;
                  nextweek=false;
                  setState(() {
                    
                  });
                },
                child: Text(
                      "Tommorow",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
              ),
                   
                   nextweek? Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF0C7BB3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Next Week",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ): GestureDetector(
                onTap: (){
                  today=false;
                  tomorrow=false;
                  nextweek=true;
                  setState(() {
                    
                  });
                },
                child: Text(
                      "Next Week",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          CheckboxListTile(
            activeColor: Color(0xFFF2BAE8),
            title: Text("Go to the store", style: TextStyle(color: Colors.white, fontSize: 22.0,fontWeight: FontWeight.w400),),
            value: suggest, onChanged: (newValue){
            setState(() {
              suggest=newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,)
        ],
      ),
    ));
  }
}
