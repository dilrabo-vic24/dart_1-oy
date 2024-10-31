void main() {

  print('\x1B[2J\x1B[0;0H');

  double distance = 50.0;
  double speed = 40.0;

  double travelTime = distance / speed;

  print('Travel time: ${travelTime} hours');
}
