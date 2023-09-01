class QuizQuestion {
  const QuizQuestion(this.text, this.ans);
  final String text;
  final List<String> ans;

  //List<String> getshuffledQues() {
    List<String> get shuffledAns {
    final getshuffle = List.of(ans);
    getshuffle.shuffle();
    return getshuffle;
  }
}
