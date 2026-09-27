import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctOptionIndex;

  Question(this.questionText, this.options, this.correctOptionIndex);
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void play() {
    for (var q in questions) {
      print('\n${q.questionText}');
      for (int i = 0; i < q.options.length; i++) {
        print('${i + 1}. ${q.options[i]}');
      }

      stdout.write('Your answer (enter number): ');
      String? input = stdin.readLineSync();
      int answer = int.tryParse(input ?? '') ?? -1;

      if (answer - 1 == q.correctOptionIndex) {
        print('Correct!');
        score++;
      } else {
        print('Wrong! Correct answer: ${q.options[q.correctOptionIndex]}');
      }
    }
  }

  void showScore() {
    print('\nQuiz finished! Your score: $score / ${questions.length}');
  }
}

void main() {
  List<Question> questions = [
    Question('What is the capital of France?',
        ['Berlin', 'Madrid', 'Paris', 'Rome'], 2),
    Question('Which language is Dart based on?',
        ['C++', 'Java-like syntax', 'Python', 'Ruby'], 1),
    Question('2 + 2 * 2 = ?', ['8', '6', '4', '10'], 1),
  ];

  Quiz quiz = Quiz(questions);
  quiz.play();
  quiz.showScore();
}