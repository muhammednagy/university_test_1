import 'dart:convert';

class RandomNumber {
  final String status;
  final int random;

  RandomNumber({this.status, this.random});

  factory RandomNumber.fromJson(Map<String, dynamic> json) {
    return RandomNumber(
      status: json['status'] as String,
      random: json['random'] as int,
    );
  }
}

