import 'package:black_book/widgets/hyperlink.dart';
import 'package:flutter/material.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Useful Addresses'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Department of Veterinary Medicine',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('University of Cambridge'),
            Text('Madingley Road'),
            Text('Cambridge'),
            Text('CB3 0ES'),
            
            Text('Tel: 01223 337600'),
            Padding(padding: EdgeInsets.all(8)),
            Text(
              'Tutorial Support Office',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Tel: 01223 766365 or 330811'),
            Text('tutorial.office@vet.cam.ac.uk'),
            Hyperlink('https://www.vet.cam.ac.uk/', 'https://www.vet.cam.ac.uk'),
            Padding(padding: EdgeInsets.all(8)),
            Text(
              'Royal College of Veterinary Surgeons',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Belgravia House'),
            Text('62-64 Horseferry Road'),
            Text('London'),
            Text('SW1P 2AF'),
            Text('Tel: 020 7222 2001'),
            Text('Website: http://www.rcvs.org.uk'),
            Padding(padding: EdgeInsets.all(8)),
            Text(
              'British Veterinary Association',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('7 Mansfield Street'),
            Text('London'),
            Text('W1G 9NQ'),
            Text('Tel: 020776366541'),
            Text('Website: http://www.bva.co.uk'),
          ],
        ),
      ),
    );
  }
}
