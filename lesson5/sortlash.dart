import 'dart:math';

//matritsani sortlash
void main(){
  print('\x1B[2J\x1B[0;0H');

  int number = 5;
  print(sortMatrix(fillMatrix(number)));
}

List fillMatrix(num number){
  List<int> matrix = [];

  for(int i = 0; i < number; i++){

    int randomNumber = Random().nextInt(100);
    matrix.add(randomNumber);

  }

  return matrix;
}

List sortMatrix(List matrix){

  int lenMatrix = matrix.length;
  for(int i = 0; i < lenMatrix; i++){
    for(int j = i + 1; j < lenMatrix; j++){

      if(matrix[i] > matrix[j]){
        int temp = matrix[i];
        matrix[i] = matrix[j];
        matrix[j] = temp;
      }
    }
  }
  return matrix;
}