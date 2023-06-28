import 'package:flutter/material.dart';
import 'package:untitled5/Confirm_page.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  TextEditingController fullnameControll=TextEditingController();
  TextEditingController EmailControll=TextEditingController();
  TextEditingController phonenumberControll=TextEditingController();
  TextEditingController addressControll=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(alignment: Alignment.centerLeft,child: Text("Enter Details",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
          ),
          TextField(controller: fullnameControll,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
    border: OutlineInputBorder(borderSide: BorderSide.none),

              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xfffe807f))),
            prefixIcon: Icon(Icons.person_outline,color: Color(0xfffe807f)),
            labelText: "Full Name",
              labelStyle: TextStyle(color: Color(0xfffe807f))
          ),),
          TextField(controller: EmailControll,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xfffe807f))),
            prefixIcon: Icon(Icons.mail_outline_outlined,color: Color(0xfffe807f)),
            labelText: "Email",
              labelStyle: TextStyle(color: Color(0xfffe807f))
          ),),
          TextField(controller: phonenumberControll,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xfffe807f))),
            prefixIcon: Icon(Icons.call_outlined,color: Color(0xfffe807f)),
            labelText: "Phone Number",
              labelStyle: TextStyle(color: Color(0xfffe807f))
          ),),
          TextField(controller: addressControll,
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            prefixIcon: Icon(Icons.home_outlined,color: Color(0xfffe807f)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xfffe807f))),
            labelText: "Address",
              labelStyle: TextStyle(color: Color(0xfffe807f)),
              disabledBorder: UnderlineInputBorder()


          ),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            child: Container(
              height:50 ,
              width: double.maxFinite,
              decoration: BoxDecoration(color: Color(0xfffe807f),borderRadius: BorderRadius.circular(10),),
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>ConfirmPage(EmailControll.text.toString(),phonenumberControll.text.toString(),fullnameControll.text.toString(),addressControll.text.toString())));

              }
              ,child: Text("Enter",style: TextStyle(color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
