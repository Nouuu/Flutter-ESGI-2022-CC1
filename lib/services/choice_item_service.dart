import '../model/choice.dart';

class ChoiceService {
  static final ChoiceService _singleton = ChoiceService._internal();
  final _choiceList = <Choice>[];

  factory ChoiceService() {
    return _singleton;
  }

  ChoiceService._internal();

  void addChoice(Choice choice) {
    int choiceIndexes =
        _choiceList.indexWhere((element) => element.title == choice.title);
    if (choiceIndexes == -1) {
      _choiceList.add(choice);
    }
  }

  void selectChoice(Choice choice) {
    int choiceIndexes =
        _choiceList.indexWhere((element) => element.title == choice.title);
    if (choiceIndexes != -1) {
      _choiceList[choiceIndexes].select();
    }
  }

  void unselectChoice(Choice choice) {
    int choiceIndexes =
        _choiceList.indexWhere((element) => element.title == choice.title);
    if (choiceIndexes != -1) {
      _choiceList[choiceIndexes].unselect();
    }
  }

  void removeChoice(String title) {
    _choiceList.removeWhere((choice) => choice.title == title);
  }

  List<Choice> get choices => List.unmodifiable(_choiceList);

  List<Choice> get selectedChoices => List.unmodifiable(
      _choiceList.where((element) => element.isSelected).toList()
        ..sort((a, b) => a.selectedAt.compareTo(b.selectedAt)));

  int get count => _choiceList.length;
}
