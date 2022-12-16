import 'package:flutter/material.dart';
import 'package:pringle_selector/model/choice_item.dart';
import 'package:pringle_selector/ui/footer.dart';
import 'package:pringle_selector/ui/header.dart';

import '../services/choice_item_service.dart';

class Home extends StatefulWidget {
  final String title;

  const Home({
    super.key,
    required this.title,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ChoiceService _choiceService = ChoiceService();

  _HomeState() {
    _choiceService.addChoice(ChoiceItem(title: "cinema"));
    _choiceService.addChoice(ChoiceItem(title: "petanque"));
    _choiceService.addChoice(ChoiceItem(title: "fitness"));
    _choiceService.addChoice(ChoiceItem(title: "League Of Legends"));
    _choiceService.addChoice(ChoiceItem(title: "basket"));
    _choiceService.addChoice(ChoiceItem(title: "shopping"));
    _choiceService.addChoice(ChoiceItem(title: "programmation"));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: Header(choices: _choiceService.choices),
        ),
        Expanded(
          flex: 1,
          child:
              Footer(choices: _choiceService.choices, onItemTap: _onItemTap),
        )
      ],
    );
  }

  _onItemTap(ChoiceItem item) {
    if (item.isSelected) {
      _choiceService.unselectChoice(item);
    } else {
      _choiceService.selectChoice(item);
    }
    setState(() {
      _choiceService = _choiceService;
    });
  }
}
