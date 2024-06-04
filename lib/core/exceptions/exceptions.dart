import 'package:equatable/equatable.dart';

class AppException extends Equatable implements Exception {
  final int code;
  final String message;

  const AppException({required this.code, required this.message});

  @override
  List<Object?> get props => [code, message];
}
