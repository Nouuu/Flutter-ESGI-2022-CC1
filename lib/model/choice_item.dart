class ChoiceItem {
  bool _isSelected = false;
  late DateTime _selectedAt;
  final String title;

  ChoiceItem({
    required this.title,
    isSelected = false,
  }) {
    _isSelected = isSelected;
    _selectedAt = DateTime.now();
  }

  bool get isSelected => _isSelected;

  DateTime get selectedAt => _selectedAt;

  void select() {
    _isSelected = true;
    _selectedAt = DateTime.now();
  }

  void unselect() => _isSelected = false;
}
