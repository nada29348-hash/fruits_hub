import 'package:fruits_e_commerce/core/services/firebase_auth_service.dart';
import 'package:fruits_e_commerce/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruits_e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
}
