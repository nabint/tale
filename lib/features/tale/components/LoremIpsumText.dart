// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:talepreview/features/talepreview/models/TalePreview.dart';

class LoremIpsumText extends StatefulWidget {
  final TalePreview? talePreview;
  const LoremIpsumText({
    Key? key,
    this.talePreview,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoremIpsumTextState();
}

class LoremIpsumTextState extends State<LoremIpsumText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (widget.talePreview == null)
        ? const CircularProgressIndicator()
        : Container(
        height: 500.h,
        decoration: BoxDecoration(
            color: Color(0xffFFFEF2), borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250.w,
              height: 250.h,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                child: Image(
                  image: AssetImage(widget.talePreview!.icon),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150.w,
                          child: Text(
                            widget.talePreview!.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  overflow: TextOverflow.ellipsis,
                                ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 180.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.red, width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.talePreview!.grades[0].toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                              ),
                              Text(
                                widget.talePreview!.grades[1].toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: Colors.red,
                                    ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Text(
                      widget.talePreview!.subtitle,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.blueGrey),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Author:",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis,
                            ),
                      ),
                      Text(
                        widget.talePreview!.author,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                              overflow: TextOverflow.ellipsis,
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
  }

  
}
