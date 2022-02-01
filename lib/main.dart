import 'package:flutter/material.dart';

void main() => runApp(
  const ListViewScreen(),
);

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SimpleListBuilder(),
        ),
      ),
    );
  }
}

class SimpleListBuilder extends StatefulWidget {
  const SimpleListBuilder({Key? key}) : super(key: key);

  @override
  State<SimpleListBuilder> createState() => _SimpleListBuilderState();
}

class _SimpleListBuilderState extends State<SimpleListBuilder> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (
            BuildContext context,
            int index,
            ) {
          return Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            child: ListTile(
              title: Text(
                'Номер $index',
                style: const TextStyle(),
              ),
              selected: index == selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          );
        });
  }
}
