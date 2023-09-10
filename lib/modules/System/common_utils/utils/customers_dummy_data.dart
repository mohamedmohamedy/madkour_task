import '../../../../core/resources/enums_manager.dart';
import '../entities/customer.dart';

List<Customer> customersDummyData = [
  const Customer(name: 'customer1', email: 'customer1@gmail.com', address: 'Cairo', agent: 'user1', status: SubmissionStatus.approved),
  const Customer(name: 'customer2', email: 'customer2@gmail.com', address: 'Alexandria', agent: 'user1', status: SubmissionStatus.rejected),
  const Customer(name: 'customer3', email: 'customer3@gmail.com', address: 'Aswan', agent: 'user2', status: SubmissionStatus.approved),
  const Customer(name: 'customer4', email: 'customer4@gmail.com', address: 'El-Sharkia', agent: 'user2', status: SubmissionStatus.rejected),
];