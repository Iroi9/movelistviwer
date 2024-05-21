import 'package:flutter/material.dart';
import 'package:movelistviwer/Fighter.dart';

class MovelistViewer extends StatelessWidget {
  final Fighter fighter; // Declare a property to store the Fighter object

  const MovelistViewer({Key? key, required this.fighter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Move> moveLists = fighter.moveList;
    return Scaffold(
      appBar: AppBar(
        title: Text('Move List of ${fighter.name}'),
      ),
      body: Expanded(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(fighter.render),
                    fit: BoxFit.fitHeight,
                    alignment: AlignmentDirectional.topStart,
                  ),
                ),
                alignment: Alignment.topRight,
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 1400,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return buildMoveCard(
                                index, moveLists[index], context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildMoveCard(int index, Move move, BuildContext context) => Card(
      margin: const EdgeInsets.all(3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        margin: const EdgeInsets.all(1),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Container(),
              ),
            ),
            Align(
                alignment: AlignmentDirectional.topStart,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(children: [
                          Container(
                              margin: const EdgeInsets.only(left: 50),
                              child: Text(move.name)),
                          Container(
                            margin: const EdgeInsets.only(left: 50),
                            child: Text(' ${move.input}'),
                          )
                        ]),
                        
                        Text(' ${move.onBlock} '),
                        Text(' ${move.onHit} '),
                        Text('${move.onCounterhit}')
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );

class MoveList extends StatelessWidget {
  const MoveList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 1'),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 2'),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text('Item 3'),
        ),
        // Add more ListTiles as needed
      ],
    );
  }
}
