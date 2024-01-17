// import 'package:injectable/injectable.dart';
//
// import '../domain/auth_repository.dart';
// import '../domain/entities/user_entity/user_entity.dart';
//
// @Injectable(as: AuthRepository)
// @test
// class MockAuthRepository implements AuthRepository {
//   @override
//   Future getProfile() {
//     // TODO: implement getProfile
//     throw UnimplementedError();
//   }
//
//   @override
//   Future refreshToken({String? refreshToken}) {
//     // TODO: implement refreshToken
//     throw UnimplementedError();
//   }
//
//   @override
//   Future signIn({required String password, required String login}) {
//     return Future.delayed(const Duration(seconds: 2), () {
//       return UserEntity(
//         login: login,
//         id: "-1",
//         email: 'fdgdf@sdfsf.ru',
//         firstName: 'dsfsdfsdf',
//         lastName: 'dfsdfdsf',
//         role: 'ruk',
//       );
//     });
//   }
//
//   @override
//   Future signUp(
//       {required String password,
//       required String login,
//       required String email,
//       required String firstName,
//       required String lastName,
//       String? middleName,
//       required String role}) {
//     return Future.delayed(const Duration(seconds: 2), () {
//       return UserEntity(
//           email: email,
//           firstName: firstName,
//           lastName: lastName,
//           id: "-1",
//           login: login,
//           role: role);
//     });
//   }
//
//   @override
//   Future updatePassword(
//       {required String oldPassword, required String newPassword}) {
//     // TODO: implement updatePassword
//     throw UnimplementedError();
//   }
//
//   @override
//   Future updateUser(
//       {String? login,
//       String? email,
//       String? firstName,
//       String? lastName,
//       String? middleName,
//       String? role}) {
//     // TODO: implement updateUser
//     throw UnimplementedError();
//   }
// }
