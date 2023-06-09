// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:talepreview/features/talepreview/components/ReadCounter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:talepreview/features/talepreview/models/TalePreview.dart';
import 'package:talepreview/router/router.dart';

class TalePreviewCard extends StatelessWidget {
  final TalePreview talePreview;

  const TalePreviewCard({
    Key? key,
    required this.talePreview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(TaleScreenRoute(talePreview: talePreview));
      },
      child: Container(
        height: 450.h,
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
            color: Color(0xffFFFEF2), borderRadius: BorderRadius.circular(20.w)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250.w,
              height: 250.h,
              margin: EdgeInsets.all(5.w),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.sp),
                    bottomLeft: Radius.circular(20.sp)),
                child: CachedNetworkImage(
                  imageUrl: talePreview.icon,
                  placeholder: (context, url)=> Image.asset('assets/books.png'),
                  errorWidget: (context, url, error) => Image.asset('assets/books.png'),
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
                  ReadCounter(counter: talePreview.counter.toInt(),),
                  const SizedBox(height: 10,),
                  Container(
                    width: 700.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 450.w,
                          child: Text(
                            talePreview.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  overflow: TextOverflow.ellipsis,
                                ),
                          textScaleFactor: 3.0,

                          ),
                        ),
                         SizedBox(width: 10.w),
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
                                talePreview.grades[0].toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.sp,
                                    ),
                          textScaleFactor: 3.0,

                              ),
                              Text(
                                talePreview.grades[1].toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.sp,
                                      color: Colors.red,
                                    ),
                          textScaleFactor: 3.0,

                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 600.w,
                    child: Text(
                      talePreview.subtitle,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.blueGrey),
                          textScaleFactor: 3.0,

                    ),
                    
                  ),
                  SizedBox(height: 15.w),
                  Row(
                    children: [
                      Text(
                        "Author:",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'Poppins',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis,
                            ),
                          textScaleFactor: 3.0,
                      ),
                      Text(
                        talePreview.author,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'Poppins',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                              overflow: TextOverflow.ellipsis,
                            ),
                          textScaleFactor: 3.0,

                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
