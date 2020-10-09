import 'package:flutter/material.dart';

import '../../routes/enter_exit_route.dart';
import 'addresses_screen.dart';
import 'bio_data_screen.dart';
import 'body_weight_screen.dart';
import 'lab_normal_screen.dart';
import 'lab_profiles_screen.dart';
import 'rcvs_guidance_screen.dart';
import 'health_safety_screen.dart';

class AppendixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appendix'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: <Widget>[
            ListTile(
              title: const Text('Health & Safety'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  EnterExitRoute(
                    enterPage: const HealthSafetyScreen(),
                    exitPage: this,
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('RCVS EMS Guidance'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  EnterExitRoute(
                    enterPage: const RcvsGuidanceScreen(),
                    exitPage: this,
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Biological Data'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  EnterExitRoute(
                    enterPage: BioDataScreen(),
                    exitPage: this,
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Body Weight Ratios'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  EnterExitRoute(
                    enterPage: const BodyWeightScreen(),
                    exitPage: this,
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Laboratory Samples & Profiles'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  EnterExitRoute(
                    enterPage: const LabProfilesScreen(),
                    exitPage: this,
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Normal Laboratory Values'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  EnterExitRoute(
                    enterPage: const LabNormalScreen(),
                    exitPage: this,
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Useful Addresses'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  EnterExitRoute(
                    enterPage: const AddressesScreen(),
                    exitPage: this,
                  ),
                );
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}
