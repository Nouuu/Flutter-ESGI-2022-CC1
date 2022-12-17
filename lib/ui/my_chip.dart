import 'package:flutter/material.dart';
import 'package:pringle_selector/model/choice_item.dart';

class MyChip extends StatelessWidget {
  final ChoiceItem item;
  final VoidCallback? onTap;
  final bool isSelectable;

  const MyChip({
    Key? key,
    required this.item,
    this.onTap,
    this.isSelectable = true,
  }) : super(key: key);

  Color _getBackgroundColor() {
    if (!isSelectable || !item.isSelected) {
      return const Color(0xFFececec);
    } else {
      return const Color(0xFFf2b940);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          item.title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
