import 'package:flutter/material.dart';
import 'package:pringle_selector/model/choice_item.dart';
import 'package:pringle_selector/ui/my_chip.dart';

class Footer extends StatelessWidget {
  final List<ChoiceItem> choices;
  final void Function(ChoiceItem) onItemTap;

  const Footer({
    Key? key,
    required this.choices,
    required this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: Colors.white,
      child: Wrap(
        children: choices
            .map(
              (e) => MyChip(item: e, onTap: () => onItemTap(e)),
            )
            .toList(),
      ),
    );
  }
}
