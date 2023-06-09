import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadCounter extends StatefulWidget {
  final int counter;
  const ReadCounter({required this.counter, super.key});

  @override
  State<StatefulWidget> createState() => ReadCounterState();
}

class ReadCounterState extends State<ReadCounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 450.w,
            child: Text(
              'You have read ${widget.counter} Books!',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'Poppins',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    overflow: TextOverflow.ellipsis,
                  ),
              textScaleFactor: 3.0,
            ),
          ),
          widget.counter == 0
              ? const Icon(
                  Icons.check_box_outline_blank_outlined,
                  size: 30,
                )
              : const Icon(
                  Icons.check_box,
                  color: Colors.green,
                  size: 30,
                ),
        ],
      ),
    );
  }
}
