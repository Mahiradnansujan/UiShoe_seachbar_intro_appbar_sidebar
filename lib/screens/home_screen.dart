import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: //drawer e change enasi icon
        Builder(builder: (context) => IconButton(onPressed: (){     //drawer return hbe 
          Scaffold.of(context).openDrawer();
        }, 
        icon: Icon(Icons.app_registration_rounded,color: Colors.black,))),
        backgroundColor: Color.fromARGB(66, 216, 233, 239),
        centerTitle: true,
        title: Text("Store Location",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag,color: Color.fromARGB(221, 0, 0, 0),),
        ),
       ],
    
      ),
      drawer: Drawer(
        shadowColor: Color.fromARGB(137, 136, 255, 0),
        child: ListView(
          children: [
           DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 207, 197, 197)),
            child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/bg.jpg'),
              ),
              SizedBox(height: 20),
              Text("Mahir adnan sujan",style: TextStyle(color: Color.fromARGB(255, 72, 46, 5)),)
            ],
           ),
           ),
           Column(
            children: [
              ListTile(
                title: Text('profile'),
                leading: Icon(Icons.man),onTap: (){},
              ),
              ListTile(
                title: Text('HomePage'),
                leading: Icon(Icons.home,),onTap: (){},
              ),
              ListTile(
                title: Text('Order'),
                leading: Icon(Icons.card_giftcard),onTap: (){},
              ),
              ListTile(
                title: Text('Favourite'),
                leading: Icon(Icons.favorite),onTap: (){},
              ),
              ListTile(
                title: Text('Sign Out'),
                leading: Icon(Icons.logout),onTap: (){},
              ),
            ],
           ),
          ],
        ),
      ),
      body: Container(
           child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    border: OutlineInputBorder(borderRadius: 
                    BorderRadius.circular(30.0),borderSide: BorderSide(width: 0.8),
                    ),
                    hintText: 'Looking for Shoes',
                    prefixIcon: InkWell(child: Icon(Icons.search,size: 30.0,),onTap: (){},),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.clear),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 119, 216),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/3.png",width: 30,height: 30,),
                          Text("Nike"),
                        ],
                        
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 202, 217, 229),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/4.png",width: 30,height: 30,),
                          Text("Puma"),
                        ],
                        
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 202, 217, 229),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/5.png",width: 30,height: 30,),
                          Text("Ladies"),
                        ],
                        
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 202, 217, 229),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/6.png",width: 30,height: 30,),
                          Text("Bata"),
                        ],
                        
                      ),
                    ),
                    Container(

                      margin: EdgeInsets.symmetric(horizontal: 7),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 202, 217, 229),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/7.png",width: 30,height: 30,),
                          Text("Apex"),
                        ],
                        
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Text("Popular Shoes",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),
                      ),
                      Spacer(),
                      Text("see all"),
                    ],
                  ),
                ),
              ),
          
            ],
            
            
           ),
          
           
      ),
    );
  }
}