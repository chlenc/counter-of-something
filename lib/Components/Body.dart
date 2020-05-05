import 'package:flutter/material.dart';

import 'Btn.dart';
import 'Section.dart';
import 'UserAvatar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:timeapp/stores/root_store.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterStore = Provider
        .of<RootStore>(context)
        .counterStore;
    final accountStore = Provider
        .of<RootStore>(context)
        .accountStore;

    return Observer(
      builder: (_) =>
          Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  UserAvatar(path: accountStore.avatar),
                  Section(title: "NAME", value: accountStore.name),
                  Section(
                      title: accountStore.description,
                      value: counterStore.value.toString()),
                ],
              ),
              Positioned(
                child: Btn(
                  icon: Icons.plus_one,
                  onPressed: counterStore.increment,
                ),
                bottom: 10,
                right: 10,
              ),
              Positioned(
                child: Btn(
                  icon: Icons.exposure_neg_1,
                  onPressed: counterStore.decrement,
                ),
                bottom: 10,
                right: 84,
              ),
              Positioned(
                child: Btn(
                  icon: Icons.settings,
                  onPressed: () => Navigator.pushNamed(context, '/settings'),
                  background: Colors.transparent,
                ),
                top: 5,
                left: 5,
              ),
            ],
          ),
    );
  }
}

