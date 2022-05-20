class LoginResponse{
final String token;
final String Error;

LoginResponse({required this.token, required this.Error});
factory LoginResponse.fromJson(Map<String, dynamic> json) {
  return LoginResponse(
    token: json["token"] != null ? json["token"] : "",
    Error: json["error"] != null ? json["error"] : "",
    );
  }
}

class LoginRequestModel {
  String username;
  String password;

  LoginRequestModel({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': username.trim(),
      'password': password.trim(),
    };
    return map;
  }
}