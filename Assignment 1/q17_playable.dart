// Q17: interface-like class (abstract, no implementation) implemented by two classes
abstract class Playable {
  void play();
}

class Football implements Playable {
  @override
  void play() => print('Playing football: kicking the ball into the goal.');
}

class Cricket implements Playable {
  @override
  void play() => print('Playing cricket: batting and bowling.');
}

void main() {
  List<Playable> games = [Football(), Cricket()];
  for (var g in games) {
    g.play();
  }
}
