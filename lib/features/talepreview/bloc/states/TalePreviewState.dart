// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../models/TalePreview.dart';

abstract class TalePreviewState {}

class TalePreviewInitial extends TalePreviewState{}

class TalePreviewFetching extends TalePreviewState{}

class TalePreviewFetched extends TalePreviewState {
  final List<TalePreview> talePreviews;
  TalePreviewFetched({
    required this.talePreviews,
  });
}

