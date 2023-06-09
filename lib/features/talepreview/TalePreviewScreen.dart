import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talepreview/features/talepreview/bloc/events/TalePreviewEvent.dart';

import '../../utils/utils.dart';
import 'bloc/TalePreviewBloc.dart';
import 'bloc/states/TalePreviewState.dart';
import 'components/GreetingCard.dart';
import 'components/PlaceholderCard.dart';
import 'components/ReadCounter.dart';
import 'components/TalePreviewCard.dart';
import 'models/TalePreview.dart';

@RoutePage(name: 'TalePreviewRoute')
class TalePreviewScreen extends StatefulWidget {
  const TalePreviewScreen({super.key});

  @override
  State<TalePreviewScreen> createState() => _TalePreviewScreenState();
}

class _TalePreviewScreenState extends State<TalePreviewScreen> {
  @override
  void didChangeDependencies() {
    final TalePreviewBloc talePreviewBloc =
        BlocProvider.of<TalePreviewBloc>(context);
    talePreviewBloc.add(TablePreviewFetch());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(child: BlocBuilder<TalePreviewBloc, TalePreviewState>(
            builder: (context, state) {
          if (state is TalePreviewFetched) {
            List<TalePreview> talePreviews = sortTalePreviews(state.talePreviews);


            return ListView.builder(
                itemCount: talePreviews.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0){
                    return Container(
                    margin: const EdgeInsets.only(bottom: 10, top: 50, left: 10, right:10),
                    child: TalePreviewCard(
                      talePreview: talePreviews[index],
                    ),
                  );
                  }
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10, left: 10, right:10),
                    child: TalePreviewCard(
                      talePreview: talePreviews[index],
                    ),
                  );
                },
              );
          }
          return Container();
        })));
  }

}
