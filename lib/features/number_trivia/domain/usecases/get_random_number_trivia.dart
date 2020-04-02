import 'package:cas/core/error/failures.dart';
import 'package:cas/core/usecases/usecase.dart';
import 'package:cas/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:cas/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';


class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
