import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_e_commerce/core/errors/exceptions.dart';
import 'package:fruits_e_commerce/core/errors/failures.dart';
import 'package:fruits_e_commerce/core/services/firebase_auth_service.dart';
import 'package:fruits_e_commerce/features/auth/data/models/user_model.dart';
import 'package:fruits_e_commerce/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_e_commerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  //تنفيذ فعلي للعمليات (باستخدام FirebaseAuth مثلاً)
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(
        UserModel.fromFirebaseUser(user),
      ); //بدل ما اتعامل مع يوزر فاير بيز لا هتعامل مع يوزر مودل
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword ${e.toString()}',
      );
      return left(ServerFailure('لقد حدث خطأ ما، يرجى المحاولة في وقت لاحق'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(
        UserModel.fromFirebaseUser(user),
      ); //بدل ما اتعامل مع يوزر فاير بيز لا هتعامل مع يوزر مودل
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.signInWithEmailAndPassword ${e.toString()}',   //بعمل لوج عند الرئيسيه مش عند الكستم الي انا عملتها
      );
      return left(ServerFailure('لقد حدث خطأ ما، يرجى المحاولة في وقت لاحق'));
    }
  }
}
