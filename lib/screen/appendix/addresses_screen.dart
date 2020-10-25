import 'package:flutter/material.dart';

import '../../component/hyperlink.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Useful Addresses'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            Text(
              'Department of Veterinary Medicine',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('University of Cambridge'),
            Text('Madingley Road'),
            Text('Cambridge'),
            Text('CB3 0ES'),
            Hyperlink('tel:01223 337600', 'Tel: 01223 337600'),
            Padding(padding: EdgeInsets.all(8)),
            Text(
              'Tutorial Support Office',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Hyperlink('tel:01223 766365', 'Tel: 01223 766365'),
            Hyperlink('tel:01223 330811', 'Tel: 01223 330811'),
            Hyperlink('mailto:tutorial.office@vet.cam.ac.uk',
                'tutorial.office@vet.cam.ac.uk'),
            Hyperlink(
                'https://www.vet.cam.ac.uk/', 'https://www.vet.cam.ac.uk/'),
            Padding(padding: EdgeInsets.all(8)),
            Text(
              'Royal College of Veterinary Surgeons',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Belgravia House'),
            Text('62-64 Horseferry Road'),
            Text('London'),
            Text('SW1P 2AF'),
            Hyperlink('tel:020 7222 2001', 'Tel: 020 7222 2001'),
            Hyperlink('https://www.rcvs.org.uk/', 'https://www.rcvs.org.uk/'),
            Padding(padding: EdgeInsets.all(8)),
            Text(
              'British Veterinary Association',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('7 Mansfield Street'),
            Text('London'),
            Text('W1G 9NQ'),
            Hyperlink('tel:020776366541', 'Tel: 020776366541'),
            Hyperlink('https://www.bva.co.uk/', 'https://www.bva.co.uk/'),
          ],
        ),
      ),
    );
  }
}
