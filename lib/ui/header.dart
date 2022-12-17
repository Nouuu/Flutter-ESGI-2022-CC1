import 'package:flutter/material.dart';

import '../model/choice_item.dart';
import 'my_chip.dart';

class Header extends StatelessWidget {
  final List<ChoiceItem> choices;

  const Header({
    Key? key,
    required this.choices,
  }) : super(key: key);

  Widget _returnItems(BuildContext context) {
    if (choices.isEmpty) {
      return Text(
        "Cliquez sur les choix en dessous !",
        style: Theme.of(context).textTheme.bodyText2,
      );
    } else {
      return Wrap(
        spacing: 10,
        runSpacing: 10,
        children: choices
            .map((e) => MyChip(
                  item: e,
                  isSelectable: false,
                ))
            .toList(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:15),
      padding: const EdgeInsets.all(15),
      color: const Color(0xFF7c34fe),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vos choix :',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 10),
          _returnItems(context)
        ],
      ),
    );
  }
}
