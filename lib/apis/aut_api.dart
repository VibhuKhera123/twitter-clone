//functions for the authapi main class
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as model;
import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/core/core.dart';

/*
there are two accounts one in appwrite modles extending to modles and other in appwrite services extending to services
want to signup,we need uuser account ie service.account
want user data model.account
*/

abstract class IAuthAPI {
  FutureEither<model.Account> signUp({
    required String email,
    required String password,
  });
}

class AuthAPI implements IAuthAPI {
  final Account _account;
  AuthAPI({required Account account}) : _account = account;

  @override
  FutureEither<model.Account> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final account = await _account.create(
        userId: 'unique()',
        email: email,
        password: password,
      );
      return right(account);
    } catch (e, stackTrace) {
      return left(
        Failuer(
          e.toString(),
          stackTrace,
        ),
      );
    }
  }
}
