import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_e_commerce/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.password,
  });
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      password: user.uid,
    );
  }
}
