import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
 var fullname;
 var mail;
 var phonenumber;

 ConfirmPage(this.fullname, this.mail, this.phonenumber, this.address);

  var address;



  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Night, sky, blue, mountain, wallpaper, clean….jpg"),fit: BoxFit.cover,)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.person_outline,color: Color(0xfffe807f)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${widget.fullname}",style: TextStyle(color: Color(0xfffe807f)),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.mail_outline_outlined,color: Color(0xfffe807f)),
              ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${widget.phonenumber}",style: TextStyle(color: Color(0xfffe807f)),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.call_outlined,color: Color(0xfffe807f)),
    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${widget.mail
                    }",style: TextStyle(color: Color(0xfffe807f)),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.home_outlined,color: Color(0xfffe807f)),
    ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${widget.address}",style: TextStyle(color: Color(0xfffe807f)),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: Container(
                height:50 ,
                width: double.maxFinite,
                decoration: BoxDecoration(color: Color(0xfffe807f),borderRadius: BorderRadius.circular(10),),
                child: TextButton(onPressed: () {


                }
                    ,child: Text("Enter",style: TextStyle(color: Colors.white),)),
              ),
            )
          ],

        ),
      ),
    );
  }
}
