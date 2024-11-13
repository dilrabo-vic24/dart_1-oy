void main(List<String> args) {
  List<int> scores = [85, 92, 76, 88, 95, 67, 78, 84, 91, 73];

  int maxScore = scores.reduce((a, b) => a > b? a : b);
  int minScore = scores.reduce((a, b) => a < b? a : b);

  double averageScore = (scores.reduce((a, b) => a + b))/scores.length;

  List<int> highScores = [];
  List<int> lowScores = [];
  scores.forEach((score){
    if(score > averageScore){
      highScores.add(score);
    }else{
      lowScores.add(score);
    }
  });

  print("High scores:  $highScores");
  print("Low scores:   $lowScores");

  print("Max score:   $maxScore");
  print("Min score    $minScore");
}