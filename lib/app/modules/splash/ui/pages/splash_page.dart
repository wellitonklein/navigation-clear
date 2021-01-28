import 'package:flutter/material.dart';

import 'splash_presenter_interface.dart';

class SplashPage extends StatefulWidget {
  final ISplashPresenter presenter;

  const SplashPage({@required this.presenter});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), widget.presenter.goToHome);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 30),
                  const Text('Iniciando aplicativo'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
