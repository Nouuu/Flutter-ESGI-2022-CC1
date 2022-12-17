import 'package:flutter/material.dart';
import 'package:pringle_selector/model/choice.dart';
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
    _choiceService.addChoice(Choice(title: "cinema"));
    _choiceService.addChoice(Choice(title: "petanque"));
    _choiceService.addChoice(Choice(title: "fitness"));
    _choiceService.addChoice(Choice(title: "League Of Legends"));
    _choiceService.addChoice(Choice(title: "basket"));
    _choiceService.addChoice(Choice(title: "shopping"));
    _choiceService.addChoice(Choice(title: "programmation"));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: Header(choices: _choiceService.selectedChoices),
        ),
        Expanded(
          flex: 1,
          child: Footer(choices: _choiceService.choices, onItemTap: _onItemTap),
        )
      ],
    );
  }

  _onItemTap(Choice item) {
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
