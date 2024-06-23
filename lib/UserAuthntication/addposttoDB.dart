
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Utils/utils.dart';

import '../widgets/roundbutton.dart';
class AddtoPost extends StatefulWidget {
  const AddtoPost({super.key});

  @override
  State<AddtoPost> createState() => _AddtoPostState();
}

class _AddtoPostState extends State<AddtoPost> {
  final postController =TextEditingController();
  final auth = FirebaseAuth.instance ;
  bool loading=false;
  final DatabaseRef = FirebaseDatabase.instance.ref('Post');
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Add To post Database'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLines: 4,
              controller: postController,
              decoration: InputDecoration(
                hintText: ('What is your Data'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RoundButton(
              title: 'Add',
              loading:loading,
              onTap:(){
                setState(() {
                  loading = true;
                });
                DatabaseRef.child(DateTime.now().millisecondsSinceEpoch.toString()).set({
                  'title': postController.text.toString(),
                  'id':    DateTime.now().millisecondsSinceEpoch.toString(),
                }).then((value){
                  Utils().toastMessage('Post Added');
                  setState(() {
                    loading=false;
                  });

                }).onError((error, stackTrace){
                  Utils().toastMessage(error.toString());
                  setState(() {
                    loading=false;
                  });
                });
              }, ),
          ],
        ),

      ),
    );
  }
}
