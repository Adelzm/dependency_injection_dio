class ApiResponse {
  final Map<String, dynamic> rawResponse;

  const ApiResponse({required this.rawResponse});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(rawResponse: json);
  }

  Map<String, dynamic> toJson() => rawResponse;
}
