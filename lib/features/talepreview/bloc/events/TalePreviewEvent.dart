abstract class TalePreviewEvent {}

class TablePreviewFetch extends TalePreviewEvent{}

class TablePreviewUpdate extends TalePreviewEvent{
  final String id;

  TablePreviewUpdate(this.id);
}

