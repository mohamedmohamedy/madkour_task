import 'package:equatable/equatable.dart';
import 'package:madkour_task/core/resources/enums_manager.dart';

class Customer extends Equatable {
  final String name, email, address, agent;
  final SubmissionStatus status;

  const Customer( {
    required this.name,
    required this.email,
    required this.address,
    required this.agent,
    required this.status,
  });

  @override
  List<Object?> get props => [name, email, address, agent, status];
}
