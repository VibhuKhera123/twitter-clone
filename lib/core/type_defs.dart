import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/core/core.dart';

typedef FutureEither<T> = Future<Either<Failuer, T>>;

typedef FutureEitherVoid = FutureEither<void>;

typedef FutureVoid = Future<void>;
