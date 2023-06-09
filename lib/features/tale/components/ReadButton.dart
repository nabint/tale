import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ReadButton extends StatelessWidget {
  const ReadButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with button, directing back to the TextPreviewScreen
    return InkWell(
      onTap: ()async{
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        // prefs.sa
        Navigator.pop(context);
      },
      child: Container(
          width: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.amber),
          child: Center(child:  Text('Read', style: TextStyle(fontSize: 20.sp), textScaleFactor: 3.0,))),
    );
  }
}
