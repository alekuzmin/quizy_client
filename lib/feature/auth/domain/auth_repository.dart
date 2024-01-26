abstract class AuthRepository{
  Future<dynamic> signUp({
    required String password,
    required String login,
    required String email,
    required String firstName,
    required String lastName,
    String? middleName,
    required String role
});

  Future<dynamic> signIn({
    required String password,
    required String login
  });

  Future<dynamic> getProfile();

  Future<dynamic> updateUser({
    String? email,
    String? firstName,
    String? lastName,
    String? middleName,
    String? role
  });

  Future<dynamic> updatePassword({
    required String oldPassword,
    required String newPassword
  });

  Future<dynamic> refreshToken({
    String? refreshToken
  });
}