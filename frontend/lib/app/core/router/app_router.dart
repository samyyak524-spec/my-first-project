import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../features/assistant/presentation/screens/assistant_screen.dart';
import '../../../features/auth/presentation/screens/login_screen.dart';
import '../../../features/crop_health/presentation/screens/crop_health_screen.dart';
import '../../../features/home/presentation/screens/home_screen.dart';
import '../../../features/mandi/presentation/screens/mandi_screen.dart';
import '../../../features/schemes/presentation/screens/schemes_screen.dart';
import '../../../features/soil_scan/presentation/screens/soil_scan_screen.dart';
import '../../../features/tractor/presentation/screens/tractor_screen.dart';
import '../../../features/weather/presentation/screens/weather_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) => GoRouter(initialLocation: '/login', routes: [
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      GoRoute(path: '/', builder: (_, __) => const HomeScreen()),
      GoRoute(path: '/assistant', builder: (_, __) => const AssistantScreen()),
      GoRoute(path: '/soil-scan', builder: (_, __) => const SoilScanScreen()),
      GoRoute(path: '/crop-health', builder: (_, __) => const CropHealthScreen()),
      GoRoute(path: '/weather', builder: (_, __) => const WeatherScreen()),
      GoRoute(path: '/schemes', builder: (_, __) => const SchemesScreen()),
      GoRoute(path: '/tractor', builder: (_, __) => const TractorScreen()),
      GoRoute(path: '/mandi', builder: (_, __) => const MandiScreen()),
    ]));
