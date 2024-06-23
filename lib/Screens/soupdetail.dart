import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class SoupDetail extends StatefulWidget {
  const SoupDetail({super.key});

  @override
  State<SoupDetail> createState() => _SoupDetailState();
}

class _SoupDetailState extends State<SoupDetail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Order Bliss',style: TextStyle(fontSize: 22.px,fontWeight: FontWeight.bold),),
        toolbarHeight: 50.px,
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.arrow_back),

        ],

      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 15.px),
        child: Column(
          children: [
            SizedBox(height: 20.px,),
            Container(
              width: 285.px,
              height: 300.px,
              child: Column(
                children: [
                  Image.asset('assets/soudetail.png')
                ],
              ),
            ),
            SizedBox(height: 20.px,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200.px,
                  height: 53.px,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Vegtables Soup', style: TextStyle(fontSize: 20.px,fontWeight: FontWeight.bold,color: Colors.black) ,),
                      Text('350',style: TextStyle(fontSize: 16.px,fontWeight: FontWeight.w400,color: Colors.black87),),
                    ],
                  ),
                ),
                Container(
                  width: 100.px,
                  height: 30.px,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.px),
                    color: Colors.orangeAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.minimize_sharp,color: Colors.white,),
                      Text('1',style: TextStyle(fontSize: 14.px,color: Colors.white),),
                      Icon(Icons.add,color: Colors.white,),

                    ],


                  ),
                )
              ],
            ),
            SizedBox(height: 10.px,),
            Container(
              width: 332.px,
              height: 103.px,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Aenean in elit turpis. Proin velit\nmetus, blandit eget suscipit sit amet, egestas ut\nSuspendisse erat odio, iaculis vehicula luctus\nnec, venenatis vitae lectus. Nulla facilisi. Sed eu ',style: TextStyle(fontSize: 14.px,fontWeight: FontWeight.w400,color: Colors.black),),
                ],
              ),
            ),
            SizedBox(height: 20.px,),
            Container(
              width: 327.px,
              height: 56.px,
              decoration: BoxDecoration(
                border: Border.all(
                  color:Colors.orangeAccent,
                  width: 1.px,
                ),
                borderRadius: BorderRadius.circular(5.px),
              ),
              child: Column(
                children: [
                  TextButton(onPressed: (){},
                    child: Text('Add to Cart',style: TextStyle(fontSize: 20.px,fontWeight: FontWeight.bold,color: Colors.orangeAccent),),
                    style: TextButton.styleFrom(
                      //fixedSize: const Size(327, 56),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),),
    );
  }
}
