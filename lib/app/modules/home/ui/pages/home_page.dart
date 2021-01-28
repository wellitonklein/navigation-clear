import 'package:flutter/material.dart';

import 'home_presenter_interface.dart';

class HomePage extends StatefulWidget {
  final IHomePresenter presenter;
  final String userId;

  const HomePage({@required this.presenter, @required this.userId});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 65,
            color: Theme.of(context).primaryColor,
            child: Row(children: [
              Text('Usuário: ${widget.userId}'),
            ]),
          ),
          Expanded(
            child: widget.presenter.navigatorWidget,
          ),
        ],
      ),
    );
  }
}
