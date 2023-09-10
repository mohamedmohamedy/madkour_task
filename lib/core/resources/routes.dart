import 'package:flutter/material.dart';

import '../../modules/System/customer_system_manager/presentation/pages/customer_manager.dart';
import '../../modules/home/screens/home.dart';
import '../../modules/System/system_admin/presentation/screens/system_admin.dart';
import '../../modules/System/customer_service_agent/presentation/pages/customer_agent.dart';

class Routes{
static const String customerManagerScreenKey = '/customer-manager-screen';
static const String customerAgentScreenKey = '/customer-agent-screen';
static const String systemAdminScreenKey = '/system-admin-screen';
static const String homeScreenKey = '/home-screen';

  static Map<String, WidgetBuilder> get routes => {
    customerManagerScreenKey:(context) => const CustomerManagerScreen(),
    customerAgentScreenKey:(context) => const CustomerAgentScreen(),
    systemAdminScreenKey:(context) => const SystemAdminScreen(),
    homeScreenKey:(context) => const HomeScreen(),
  };
}