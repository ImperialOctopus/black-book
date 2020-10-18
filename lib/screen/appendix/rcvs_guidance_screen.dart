// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

class RcvsGuidanceScreen extends StatelessWidget {
  const RcvsGuidanceScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RCVS EMS Guidance'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Under current Regulations (Veterinary Surgeons Act 1966 and the Amendments of 1981 and 1993), you are entitled, as a veterinary student embarking upon your clinical studies, to perform the following:',
            ),
            Text(
              '(a) examine animals;',
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context)?.textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text: '(b) carry out tests upon animals under the ',
                  ),
                  TextSpan(
                    text: 'direction ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'of a registered veterinary surgeon;',
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context)?.textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text:
                        '(c) administer treatment (other than by way of surgical operations) to animals under the ',
                  ),
                  TextSpan(
                    text: 'supervision ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'of a registered veterinary surgeon; and',
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context)?.textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text:
                        '(d) perform surgical operations upon animals in accordance with the directions and under the ',
                  ),
                  TextSpan(
                    text: 'direct and continuous personal supervision ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'of a registered veterinary surgeon',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context)?.textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Note the ',
                  ),
                  TextSpan(
                    text: 'bold',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ' terms. These indicate levels of control over your practical training which are exerted by your extra-mural teacher, and you should be aware of their meaning. The Council of the Royal College offers the following interpretation:',
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context)?.textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text: '• ',
                  ),
                  TextSpan(
                    text: 'Direction',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ': The veterinary surgeon gives the student directions in regard to the tests to be carried out but is not necessarily present when they are performed;',
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context)?.textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text: '• ',
                  ),
                  TextSpan(
                    text: 'Supervision',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ': The veterinary surgeon is present and in a position to respond to a request for assistance, but is not necessarily standing by the student’s side or even in the same room;',
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context)?.textTheme.bodyText2,
                children: <TextSpan>[
                  TextSpan(
                    text: '• ',
                  ),
                  TextSpan(
                    text: 'Direct and continuous personal supervision',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ': The veterinary surgeon is present and giving the student (and the animal) his undivided attention.',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Text(
              'Students must always ensure that they are acting under guidance',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
