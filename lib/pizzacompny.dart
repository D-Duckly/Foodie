import 'package:flutter/material.dart';
import 'package:foodie/Screens/pizzadetail.dart';
import 'package:foodie/bottombar.dart';
import 'package:foodie/widgets/bottombarpack.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
class YummyPizza extends StatefulWidget {
  const YummyPizza({super.key});

  @override
  State<YummyPizza> createState() => _YummyPizzaState();
}

class _YummyPizzaState extends State<YummyPizza> {
  int mycount=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Bliss',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold),),
        toolbarHeight: 50.px,
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.home),
        ],

      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 15.px),
      child: SingleChildScrollView(
        child: Column(


        children: [
          SizedBox(height: 18.px,),
          Container(
            width: 339.px,
            height: 145.px,
            child: Column(
              children: [
                Image.asset('assets/yummy1.png'),
              ],
            ),
          ),
          SizedBox(height: 10.px,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Text('Yummy Pizza',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
              FivePointedStar(
                onChange: (count) {
                  setState(() {
                    mycount = count;
                  });
                },
              ),
              Text(mycount.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
            ],

          ),
          SizedBox(height: 10.px,),
          Row(

            children: [
              Text('Choose Your Pizza',style: TextStyle(fontSize: 18.px,fontWeight: FontWeight.w600,color: Colors.black),),

            ],
          ),
          SizedBox(height: 10.px,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150.px,
                height: 180.px,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.px),

                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 99.px,
                      height: 99.px,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>PizzaDetail()));
                            }, // Image tapped
                            child: Ink.image(
                              fit: BoxFit.cover,
                              width: 99.px,
                              height: 99.px,// Fixes border issues
                              image: AssetImage(
                                  'assets/yummy2.png',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 1.px,),
                    Text('Tikka Pizza', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                    SizedBox(height: 1.px,),
                    Text('5.59\$',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.add_box,color: Colors.red,),
                    ], ),
                  ],
                ),
              ),
              Container(
                width: 150.px,
                height: 180.px,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.px),

                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 99.px,
                      height: 99.px,
                      child: Column(
                        children: [
                          Image.asset('assets/yummy3.png')
                        ],
                      ),
                    ),
                    SizedBox(height: 1.px,),
                    Text('Fijita Pizza', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                    SizedBox(height: 1.px,),
                    Text('6.00\$',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_box,color: Colors.red,),
                      ], ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.px,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150.px,
                height: 180.px,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.px),

                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 99.px,
                      height: 99.px,
                      child: Column(
                        children: [
                          Image.asset('assets/yummy4.png')
                        ],
                      ),
                    ),
                    SizedBox(height: 1.px,),
                    Text('Cheez Pizza', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                    SizedBox(height: 1.px,),
                    Text('6.59\$',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_box,color: Colors.red,),
                      ], ),
                  ],
                ),
              ),
              Container(
                width: 150.px,
                height: 180.px,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.px),

                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 99.px,
                      height: 99.px,
                      child: Column(
                        children: [
                          Image.asset('assets/yummy2.png')
                        ],
                      ),
                    ),
                    SizedBox(height: 1.px,),
                    Text('Tikka Pizza', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                    SizedBox(height: 1.px,),
                    Text('5.59\$',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_box,color: Colors.red,),
                      ], ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.px,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150.px,
                height: 180.px,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.px),

                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 99.px,
                      height: 99.px,
                      child: Column(
                        children: [
                          Image.asset('assets/yummy4.png')
                        ],
                      ),
                    ),
                    SizedBox(height: 1.px,),
                    Text('Cheez Pizza', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                    SizedBox(height: 1.px,),
                    Text('6.59\$',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_box,color: Colors.red,),
                      ], ),
                  ],
                ),
              ),
              Container(
                width: 150.px,
                height: 180.px,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.px),

                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 99.px,
                      height: 99.px,
                      child: Column(
                        children: [
                          Image.asset('assets/yummy2.png')
                        ],
                      ),
                    ),
                    SizedBox(height: 1.px,),
                    Text('Tikka Pizza', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                    SizedBox(height: 1.px,),
                    Text('5.59\$',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_box,color: Colors.red,),
                      ], ),
                  ],
                ),
              ),
            ],
          )


          ]
        ), ),),

    );
  }
}
