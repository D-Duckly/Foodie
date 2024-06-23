import 'package:flutter/material.dart';
import 'package:foodie/Screens/soupcompny.dart';
import 'package:foodie/pizzacompny.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainScr extends StatefulWidget {
  const MainScr({super.key});

  @override
  State<MainScr> createState() => _MainScrState();
}

class _MainScrState extends State<MainScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Bliss',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold),),
        toolbarHeight: 50.px,
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,

      ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                ),
                child: Text('Order Bliss'),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.train,
                ),
                title: const Text('Store'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 15.px,),
      child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Choose Your Food Today',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.w500,color: Colors.black),),
          SizedBox(height: 15.px,),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 width: 62.px,
                 height: 28.px,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50.px),
                   color: Colors.orangeAccent,

                 ),
                 child: Column(

                   children: [
                     Text('ALL',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500),),
                   ],
                 ),
               ),
               SizedBox(width: 6.px,),
               Container(
                 width: 95.px,
                 height: 28.px,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50.px),
                   color: Colors.orangeAccent,
                 ),
                 child: Column(
                   children: [
                     Text('Soups',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500),),
                   ],
                 ),
               ),
               SizedBox(width: 6.px,),
               Container(
                 width: 95.px,
                 height: 28.px,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50.px),
                   color: Colors.orangeAccent,
                 ),
                 child: Column(
                   children: [
                     Text('Burger',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500),),
                   ],
                 ),
               ),
               SizedBox(width: 6.px,),
               Container(
                 width: 95.px,
                 height: 28.px,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50.px),
                   color: Colors.orangeAccent,
                 ),
                 child: Column(
                   children: [
                     Text('Chickens',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500),),
                   ],
                 ),
               ),
               SizedBox(width: 6.px,),
               Container(
                 width: 95.px,
                 height: 28.px,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50.px),
                   color: Colors.orangeAccent,
                 ),
                 child: Column(
                   children: [
                     Text('Pizza',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500),),
                   ],
                 ),
               ),
               SizedBox(width: 6.px,),
               Container(
                 width: 95.px,
                 height: 28.px,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50.px),
                   color: Colors.orangeAccent,
                 ),
                 child: Column(
                   children: [
                     Text('Karahi',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500),),
                   ],
                 ),
               ),
               SizedBox(width: 6.px,),
               Container(
                 width: 95.px,
                 height: 28.px,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50.px),
                   color: Colors.orangeAccent,
                 ),
                 child: Column(
                   children: [
                     Text('Samosa',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500),),
                   ],
                 ),
               ),
               SizedBox(width: 6.px,),
               Container(
                 width: 95.px,
                 height: 28.px,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50.px),
                   color: Colors.orangeAccent,
                 ),
                 child: Column(
                   children: [
                     Text('Broast',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500),),
                   ],
                 ),
               ),
             ],
           ),
         ),
          SizedBox(height: 15.px,),
          Stack(
            children: [
              Container(
                width: 340.px,
                height: 141.px,
                child: Image.asset('assets/main1.png',
                  fit: BoxFit.cover,),

              ),

              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sales of Today',
                    style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  )),
            ],
          ),
          SizedBox(height: 10.px,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cuisines for you',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
              Text('View all',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400,color: Colors.orangeAccent),)
              
            ],
          ),
          SizedBox(height: 10.px,),
          Container(
            width: 340.px,
            height: 80.px,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.px,),
              color: Colors.blueGrey

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 112.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      Image.asset('assets/main2.png'),
                    ],
                  ),

                ),
                Container(
                  width: 168.px,
                  height: 80.px,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.px,),
                      Text('Soups',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text('12Menu',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400,),)
                    ],
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  width: 60.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      SizedBox(height: 22.px,),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(Context)=>YummySoup()) );
                      },
                        icon: Icon(Icons.arrow_forward_ios_rounded),)
                    ],
                  ),

                ),
              ],
            ),
          ),
          SizedBox(height: 10.px,),
          Container(
            width: 340.px,
            height: 80.px,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.px,),
                color: Colors.blueGrey

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 112.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      Image.asset('assets/main3.png'),
                    ],
                  ),

                ),
                Container(
                  width: 168.px,
                  height: 80.px,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.px,),
                      Text('Burger',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text('10Menu',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400,),)
                    ],
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  width: 60.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      SizedBox(height: 22.px,),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(Context)=>YummyPizza()) );
                      },
                        icon: Icon(Icons.arrow_forward_ios_rounded),)
                    ],
                  ),

                ),
              ],
            ),
          ),
          SizedBox(height: 10.px,),
          Container(
            width: 340.px,
            height: 80.px,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.px,),
                color: Colors.blueGrey

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 112.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      Image.asset('assets/main4.png'),
                    ],
                  ),

                ),
                Container(
                  width: 168.px,
                  height: 80.px,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.px,),
                      Text('Chickens',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text('14Menu',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400,),)
                    ],
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  width: 60.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      SizedBox(height: 22.px,),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),

                ),
              ],
            ),
          ),
          SizedBox(height: 10.px,),
          Container(
            width: 340.px,
            height: 80.px,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.px,),
                color: Colors.blueGrey

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 112.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      Image.asset('assets/main5.png'),
                    ],
                  ),

                ),
                Container(
                  width: 168.px,
                  height: 80.px,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.px,),
                      Text('Pizza',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text('12Menu',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400,),)
                    ],
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  width: 60.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      SizedBox(height: 22.px,),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),

                ),
              ],
            ),
          ),
          SizedBox(height: 10.px,),
          Container(
            width: 340.px,
            height: 80.px,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.px,),
                color: Colors.blueGrey

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 112.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      Image.asset('assets/main2.png'),
                    ],
                  ),

                ),
                Container(
                  width: 168.px,
                  height: 80.px,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.px,),
                      Text('Karahi',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text('12Menu',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400,),)
                    ],
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  width: 60.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      SizedBox(height: 22.px,),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),

                ),
              ],
            ),
          ),
          SizedBox(height: 10.px,),
          Container(
            width: 340.px,
            height: 80.px,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.px,),
                color: Colors.blueGrey

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 112.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      Image.asset('assets/main5.png'),
                    ],
                  ),

                ),
                Container(
                  width: 168.px,
                  height: 80.px,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.px,),
                      Text('Samosa',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text('12Menu',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400,),)
                    ],
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  width: 60.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      SizedBox(height: 22.px,),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),

                ),
              ],
            ),
          ),
          SizedBox(height: 10.px,),
          Container(
            width: 340.px,
            height: 80.px,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.px,),
                color: Colors.blueGrey

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 112.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      Image.asset('assets/main4.png'),
                    ],
                  ),

                ),
                Container(
                  width: 168.px,
                  height: 80.px,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.px,),
                      Text('Broast',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text('12Menu',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400,),)
                    ],
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  width: 60.px,
                  height: 80.px,
                  child: Column(
                    children: [
                      SizedBox(height: 22.px,),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),

                ),
              ],
            ),
          ),


        ],
      ),),)
    );
  }
}
