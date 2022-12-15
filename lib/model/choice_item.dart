class ChoiceItem {
  bool _isSelected = false;
  final String title;

  ChoiceItem({
    required this.title,
  });

  bool get isSelected => _isSelected;

  void select() => _isSelected = true;

  void unselect() => _isSelected = false;
}