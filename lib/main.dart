import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          size: 25,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back,color: Colors.grey,),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu,color: Colors.grey,)
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment(0.0, -0.40),
                height: 100,
                color: Colors.white,
                child: Text("Get coaching",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 90, 25, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                    ),
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 25, 5, 5),
                          child: Text("YOU HAVE", style: TextStyle(color: Colors.grey,
                              fontWeight: FontWeight.bold,fontSize: 14),),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 40, 5, 25),
                          child: Text("206", style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,fontSize: 40),),
                        ),
                      ],
                    ),
                    SizedBox(width: 150,),
                    Container(
                      height: 50,
                      width: 125,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Buy more",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("MY COACHES",style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.bold, fontSize: 12),),
                Text("VIEW PAST SESSIONS",style: TextStyle(color: Colors.green,
                    fontWeight: FontWeight.bold, fontSize: 12),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          GridView.count(
            crossAxisCount: 2,
            primary: true,
            crossAxisSpacing: 2,
            mainAxisSpacing: 4,
            shrinkWrap: true,
            children: [
              _buildCard("JungKook", "Available for the\n next 3 hours", 1),
              _buildCard("Jimin", "Away for the\nnext 3 hours", 2),
              _buildCard("Even", "Away for the\nnext 3 hours", 3),
              _buildCard("Harry", "Available for the\n  next 3 hours", 4),
              _buildCard("Ron", "Available for the\n  next 3 hours", 5),
              _buildCard("Potter", "Away for the\nnext 3 hours", 6),

            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 7,
      child: Column(
        children: [
          SizedBox(height: 25,),
          Stack(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green,
                  image: DecorationImage(
                    image: AssetImage("images/jkooki.jpg"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: status == "Away for the\nnext 3 hours" ? Colors.amber:Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 3,
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 8,),
          Text(name,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.grey,
          ),),
          Text(status,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.grey,
          ),),
          SizedBox(height: 25,),
          Expanded(
            child: Container(
              height: 100,
              width: 210,
              decoration: BoxDecoration(
                  color: status == "Away for the\nnext 3 hours" ? Colors.grey:Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
              ),
              child: Center(
                child: Text("Request",
                  style: TextStyle(color: Colors.white,
                  ),),
              ),
            ),
          ),
        ],
      ),
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10, 0, 25, 10):EdgeInsets.fromLTRB(25, 0, 5, 10),
    );
  }
}
