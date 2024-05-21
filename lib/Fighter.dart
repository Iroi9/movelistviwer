class Fighter {
  int index;
  String name;
  String render;
  List<Move> moveList;
  final double y;

  Fighter(this.index, this.name, this.render,this.moveList,this.y);
}

class Move {
  String name;
  String input;
  String onBlock;
  String onHit;
  String onCounterhit;

  Move(this.name,this.input,this.onBlock,this.onHit,this.onCounterhit);
}

