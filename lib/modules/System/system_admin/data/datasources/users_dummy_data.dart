import '../../domain/entities/user_entity.dart';
import '../../../../../core/resources/enums_manager.dart';

List<User> usersDummyList = [
  const User(name: 'user1', role: UserType.agent),
  const User(name: 'user2', role: UserType.manager),
  const User(name: 'user3', role: UserType.agent),
];
