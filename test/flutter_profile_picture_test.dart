import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

void main() {
  test('Default 1', () {
    ProfilePicture(
      name: 'Dees',
      radius: 31,
      fontsize: 21,
    );
  });
  test('Default 2', () {
    ProfilePicture(
      name: 'Aditya Dharmawan Saputra',
      radius: 31,
      fontsize: 21,
    );
  });
  test('Random Color', () {
    ProfilePicture(
      name: 'Aditya Dharmawan Saputra',
      radius: 31,
      fontsize: 21,
      random: true,
    );
  });
  test('Max Letter', () {
    ProfilePicture(
      name: 'Aditya Dharmawan Saputra',
      radius: 31,
      fontsize: 21,
      count: 3,
    );
  });
  test('Empty Name', () {
    ProfilePicture(
      name: '',
      radius: 31,
      fontsize: 21,
    );
  });
  test('With Images', () {
    ProfilePicture(
      name: 'Aditya Dharmawan Saputra',
      radius: 31,
      fontsize: 21,
      img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
    );
  });
  test('Tooltips without role', () {
    ProfilePicture(
      name: 'Aditya Dharmawan Saputra',
      role: '',
      radius: 31,
      fontsize: 21,
      tooltip: true,
    );
  });
  test('Tooltips with role', () {
    ProfilePicture(
      name: 'Aditya Dharmawan Saputra',
      role: 'ADMINISTRATOR',
      radius: 31,
      fontsize: 21,
      tooltip: true,
    );
  });
  test('Tooltips with role and images', () {
    ProfilePicture(
      name: 'Aditya Dharmawan Saputra',
      role: 'ADMINISTRATOR',
      radius: 31,
      fontsize: 21,
      tooltip: true,
      img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
    );
  });
}
