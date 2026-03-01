import 'package:flutter/material.dart';

ValueNotifier<bool> isAuthP2 = ValueNotifier<bool>(false);

class MyAppP2 extends StatefulWidget {
  final Function(bool) isAuthGlobalP2;

  const MyAppP2({super.key, required this.isAuthGlobalP2});

  @override
  State<MyAppP2> createState() => _MyAppP2State();
}

class _MyAppP2State extends State<MyAppP2> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isAuthP2,

      builder: (BuildContext context, bool value, Widget? child) {
        widget.isAuthGlobalP2(value);

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            leading: GestureDetector(
              onTap: () {
                isAuthP2.value = false;
              },
              child: Icon(Icons.arrow_back_rounded),
            ),
            title: Text("P2"),
          ),
          body: Container(color: Colors.red),
        );
      },
    );
  }
}
