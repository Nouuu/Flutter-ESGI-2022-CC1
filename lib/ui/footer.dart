import 'package:flutter/material.dart';
import 'package:pringle_selector/model/choice.dart';

import 'choice_item.dart';

class Footer extends StatelessWidget {
  final List<Choice> choices;
  final void Function(Choice) onItemTap;

  const Footer({
    Key? key,
    required this.choices,
    required this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.white,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: choices
            .map(
              (e) => ChoiceItem(item: e, onTap: () => onItemTap(e)),
            )
            .toList(),
      ),
    );
  }
}
