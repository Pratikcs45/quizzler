import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        questionText: 'Rohit Sharma is going to win the T20 World Cup.',
        questionAnswer: true),
    Question(
        questionText: 'Rohit Sharma is the best batsman of all time.',
        questionAnswer: true),
    Question(
        questionText: 'Rohit Sharma is the best batsman of all time.',
        questionAnswer: true),
    Question(questionText: 'Art \'is a waste of money.', questionAnswer: false),
    Question(
        questionText: 'The capital of France is Paris', questionAnswer: true),
    Question(
        questionText: 'The sum of the angles in a triangle is 180 degrees',
        questionAnswer: true),
    Question(questionText: 'Python is a type of snake', questionAnswer: true),
    Question(questionText: 'The sun rises in the west', questionAnswer: false),
    Question(
        questionText: 'Water boils at 100 degrees Celsius',
        questionAnswer: true),
    Question(
        questionText: 'The Great Wall of China is visible from space',
        questionAnswer: false),
    Question(questionText: 'Humans have four hearts', questionAnswer: false),
    Question(
        questionText: 'The chemical symbol for gold is Au',
        questionAnswer: true),
    Question(
        questionText: 'Mount Everest is the tallest mountain in the world',
        questionAnswer: true),
    Question(
        questionText: 'There are 25 hours in a day', questionAnswer: false),
    Question(questionText: 'Sharks are mammals', questionAnswer: false),
    Question(
        questionText: 'The Earth is the third planet from the Sun',
        questionAnswer: true),
    Question(questionText: 'Bananas grow on trees', questionAnswer: false),
    Question(
        questionText: 'Light travels faster than sound', questionAnswer: true),
    Question(
        questionText: 'The atomic number of hydrogen is 1',
        questionAnswer: true),
    Question(
        questionText: 'Albert Einstein developed the theory of relativity',
        questionAnswer: true),
    Question(
        questionText: 'Venus is the hottest planet in our solar system',
        questionAnswer: true),
    Question(
        questionText: 'The human body has 206 bones', questionAnswer: true),
    Question(questionText: 'An octopus has three hearts', questionAnswer: true),
    Question(
        questionText: 'There are seven continents on Earth',
        questionAnswer: true),
    Question(questionText: 'A leap year has 366 days', questionAnswer: true),
    Question(questionText: 'The square root of 64 is 6', questionAnswer: false),
    Question(
        questionText: 'The speed of light is approximately 300,000 km/s',
        questionAnswer: true),
    Question(
        questionText: 'Humans and dinosaurs coexisted', questionAnswer: false),
    Question(
        questionText: 'The Eiffel Tower is located in Berlin',
        questionAnswer: false),
    Question(
        questionText: 'Jupiter is the largest planet in our solar system',
        questionAnswer: true),
    Question(
        questionText: 'Sound can travel through a vacuum',
        questionAnswer: false),
    Question(
        questionText: 'The Pacific Ocean is the largest ocean on Earth',
        questionAnswer: true)
  ];
  String nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
      return 'questions';
    } else {
      return 'No more questions';
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
