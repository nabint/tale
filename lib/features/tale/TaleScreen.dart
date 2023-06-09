// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:talepreview/features/tale/components/LoremIpsumText.dart';
import 'package:talepreview/features/tale/components/ReadButton.dart';
import 'package:talepreview/features/talepreview/models/TalePreview.dart';

import '../../utils/utils.dart';
import '../talepreview/bloc/TalePreviewBloc.dart';
import '../talepreview/bloc/events/TalePreviewEvent.dart';
import '../talepreview/components/TalePreviewCard.dart';

@RoutePage(name: 'TaleScreenRoute')
class TaleScreen extends StatelessWidget {
  final TalePreview talePreview;
  const TaleScreen({
    Key? key,
    required this.talePreview,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.amber,
            body:Center(
              child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    height: 300,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TalePreviewCard(talePreview: talePreview,),
                          const SizedBox(height: 30),
                          InkWell(
                              onTap: () async {
                                await updateBooksState(talePreview.id);

                                final TalePreviewBloc talePreviewBloc =
                                BlocProvider.of<TalePreviewBloc>(context);
                                talePreviewBloc.add(TablePreviewFetch());
                                Navigator.pop(context);
                              },
                              child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.amber),
                                  child: const Center(child:  Text('Read', style: TextStyle(fontSize: 20)))),
                            )
                        ]
                    ),
                  
              ),
            )
        )
    );
  }
}
