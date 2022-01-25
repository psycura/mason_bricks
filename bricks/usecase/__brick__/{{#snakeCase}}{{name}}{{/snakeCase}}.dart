import '../repositories/{{#snakeCase}}{{repository}}{{/snakeCase}}.dart';


class {{#pascalCase}}{{name}}{{/pascalCase}} implements UseCase<void, NoParams> {
  final {{#pascalCase}}{{repository}}{{/pascalCase}} _repository;

  {{#pascalCase}}{{name}}{{/pascalCase}}({{#pascalCase}}{{repository}}{{/pascalCase}} repository) : _repository = repository;

  @override
  Future<Either<ServerFailure, Success<void>>> execute(NoParams? _) {
    return _repository.{{#camelCase}}{{name}}{{/camelCase}}();
  }
}