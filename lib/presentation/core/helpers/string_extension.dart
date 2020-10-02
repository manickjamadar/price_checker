extension StringX on String {
  String capitalize() {
    final words = this.split(" ");
    final upperWords = words.map((word) => _capitalizeWord(word)).toList();
    return upperWords.join(" ");
  }
}

String _capitalizeWord(String word) {
  if (word.isEmpty) {
    return "";
  }
  if (word.length == 1) {
    return word.toUpperCase();
  }
  final first = word.substring(0, 1);
  final others = word.substring(1);
  return first.toUpperCase() + others;
}
