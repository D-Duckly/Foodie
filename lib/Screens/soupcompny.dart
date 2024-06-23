import 'package:flutter/material.dart';
import 'package:foodie/Screens/pizzadetail.dart';
import 'package:foodie/Screens/soupdetail.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
class YummySoup extends StatefulWidget {
  const YummySoup({super.key});

  @override
  State<YummySoup> createState() => _YummySoupState();
}

class _YummySoupState extends State<YummySoup> {
  int wecount=0;
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
                      Image.asset('assets/soup1.png'),
                    ],
                  ),
                ),
                SizedBox(height: 10.px,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Fork Soup',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold,color: Colors.black),),
                    FivePointedStar(
                      onChange: (count) {
                        setState(() {
                          wecount = count;
                        });
                      },
                    ),
                    Text(wecount.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                  ],

                ),
                SizedBox(height: 10.px,),
                Row(

                  children: [
                    Text('Choose Your Soups',style: TextStyle(fontSize: 18.px,fontWeight: FontWeight.w600,color: Colors.black),),

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
                                    Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SoupDetail()));
                                  }, // Image tapped
                                  child: Ink.image(
                                    fit: BoxFit.cover,
                                    width: 99.px,
                                    height: 99.px,// Fixes border issues
                                    image: AssetImage(
                                      'assets/soup2.png',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 1.px,),
                          Text('Vegtables soup', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                          SizedBox(height: 1.px,),
                          Text('350',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
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
                                Image.asset('assets/soup3.png')
                              ],
                            ),
                          ),
                          SizedBox(height: 1.px,),
                          Text('Pumpkin Ginger Soup', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                          SizedBox(height: 1.px,),
                          Text('450',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
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
                                Image.asset('assets/soup4.png')
                              ],
                            ),
                          ),
                          SizedBox(height: 1.px,),
                          Text('garlic cream soup', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                          SizedBox(height: 1.px,),
                          Text('500',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
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
                                Image.asset('assets/soup5.png')
                              ],
                            ),
                          ),
                          SizedBox(height: 1.px,),
                          Text('Beef Soup', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                          SizedBox(height: 1.px,),
                          Text('600',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
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
                                Image.asset('assets/soup6.png')
                              ],
                            ),
                          ),
                          SizedBox(height: 1.px,),
                          Text('Autumn Soup', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                          SizedBox(height: 1.px,),
                          Text('600',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
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
                                Image.asset('assets/soup3.png')
                              ],
                            ),
                          ),
                          SizedBox(height: 1.px,),
                          Text('Chicken&Egg soup', style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w500,color: Colors.black) ,),
                          SizedBox(height: 1.px,),
                          Text('550',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
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
