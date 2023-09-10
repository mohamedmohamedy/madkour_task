import 'package:equatable/equatable.dart';

import '../../../../../core/resources/enums_manager.dart';

class User extends Equatable {
  final String name;
  final UserType role;

  const User({required this.name, required this.role});

  @override
  List<Object?> get props => [name, role];
}
