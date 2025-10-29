import 'package:dartz/dartz.dart';
import 'package:fruits_e_commerce/core/errors/failures.dart';
import 'package:fruits_e_commerce/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  //الملف ده بيحتوي على abstract class اسمها AuthRepo
  //وده معناه إنها مش بتنّفذ الوظائف فعلاً، لكنها بتحدد فقط شكلها أو "توقيعها".
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
    
  });
}
