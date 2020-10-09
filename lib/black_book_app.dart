import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screen/appendix/addresses_screen.dart';
import 'screen/appendix/appendix_screen.dart';
import 'screen/appendix/bio_data_screen.dart';
import 'screen/appendix/body_weight_screen.dart';
import 'screen/appendix/health_safety_screen.dart';
import 'screen/appendix/lab_normal_screen.dart';
import 'screen/appendix/lab_profiles_screen.dart';
import 'screen/appendix/rcvs_guidance_screen.dart';
import 'screen/checklist/checklist_category_screen.dart';
import 'screen/checklist/checklist_screen.dart';
import 'screen/home/home_screen.dart';
import 'screen/practical/practical_screen.dart';
import 'service/model_service.dart';
import 'theme/style.dart';

class BlackBookApp extends StatelessWidget {
  final ModelService modelService;

  const BlackBookApp({@required this.modelService});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<ModelService>.value(
        value: modelService,
      )
    ], child: AppView());
  }
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Black Book',
      theme: themeData,
      navigatorKey: _navigatorKey,
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/checklist': (var context) => ChecklistScreen(),
        '/checklist/category': (var context) => ChecklistCategoryScreen(),
        '/practical': (var context) => PracticalScreen(),
        '/appendix': (var context) => AppendixScreen(),
        '/appendix/addresses': (var context) => AddressesScreen(),
        '/appendix/biodata': (var context) => BioDataScreen(),
        '/appendix/weight': (var context) => BodyWeightScreen(),
        '/appendix/safety': (var context) => HealthSafetyScreen(),
        '/appendix/labnormal': (var context) => LabNormalScreen(),
        '/appendix/labprofiles': (var context) => LabProfilesScreen(),
        '/appendix/rcvs': (var context) => RcvsGuidanceScreen(),
      },
    );
  }
}
