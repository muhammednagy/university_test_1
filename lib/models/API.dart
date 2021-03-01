class GetRandomNumberResponse {
  final String status;
  final int random;

  GetRandomNumberResponse({this.status, this.random});

  factory GetRandomNumberResponse.fromJson(Map<String, dynamic> json) {
    return GetRandomNumberResponse(
      status: json['status'] as String,
      random: json['random'] as int,
    );
  }
}