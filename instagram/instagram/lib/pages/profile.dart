import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String id, name, bio, image;
  Profile({required this.name, required this.id, required this.bio, required this.image});
  

  @override
  _ProfileState createState() => _ProfileState();
}
 var globalkey;
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.add_sharp,color: Colors.black,),
                  Text(widget.id, 
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                  ),
                  Container(
                    height: 8,
                    width: 8,
                  )
                ]
              ),
              ),
            ),
            
            const Divider(height: 1),
            SizedBox( 
              height: 30,
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(widget.image),
            ),
            SizedBox(width: 24,),
            Expanded(child: Column(children: [
              Text('0', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              ),
              Text('post', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              )
            ],
            )
            ),
            Expanded(child: Column(children: [
              Text('117', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              ),
              Text('pengikut', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              )
            ],
            )
            ),
            Expanded(child: Column(children: [
              Text('20', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              ),
              Text('mengikuti', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              )
            ],
            )
            )
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.name, style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
                
              ),
              ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(widget.bio, style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              ),
                ],
                
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(child: Container(
              height: 48,
              child: FlatButton (
                color: Colors.white,
                child: Text(
                  'Edit Profile', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                    ),
                    ),
                    onPressed: (){
                      
                    },
                    ),
            ),
            ),
            Expanded(child: Container(
              height: 48,
              child: FlatButton (
                color: Colors.white,
                child: Text(
                  'Promotions', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                    ),
                    ),
                    onPressed: (){
                      
                    },
                    ),
            ),
            ),
            Expanded(child: Container(
              height: 48,
              child: FlatButton (
                color: Colors.white,
                child: Text(
                  'Insight', 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                    ),
                    ),
                    onPressed: (){
                      
                    },
                    ),
            ),
            ),
              ],   
              ),
            )
          ],
        ),
      ),
    );
  }
}