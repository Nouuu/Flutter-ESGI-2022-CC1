import '../model/choice_item.dart';

class ChoiceService {
  final _choiceList = <ChoiceItem>[];

  void addChoice(ChoiceItem choice) {
    int choiceIndexes =
        _choiceList.indexWhere((element) => element.title == choice.title);
    if (choiceIndexes == -1) {
      _choiceList.add(choice);
    }
  }

  void removeChoice(String title) {
    _choiceList.removeWhere((choice) => choice.title == title);
  }

  List<ChoiceItem> get choices => List.of(_choiceList);

  int get count => _choiceList.length;
}
