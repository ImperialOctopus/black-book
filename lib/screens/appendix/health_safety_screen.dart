import 'package:flutter/material.dart';

class HealthSafetyScreen extends StatelessWidget {
  const HealthSafetyScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health & Safety'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'There are inherent risks in working with animals and in handling drugs. It is your responsibility to take care to minimise these risks, not only for yourself but for colleagues and others likely to be affected by your actions.',
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Text(
              '• Always adopt appropriate methods of approach and restraint for animals.',
            ),
            Text(
              '• Undertake procedures with animals, equipment, drugs or chemicals only when you have permission and understand what you are doing.',
            ),
            Text(
              '• Wear clean protective clothing appropriate to the practice/establishment and the procedure being undertaken. Remove protective clothing when the procedure is complete and clean or dispose of it appropriately.',
            ),
            Text(
              '• Exercise good personal hygiene at all times. Wash/shower when appropriate when a procedure is complete.',
            ),
            Text(
              '• Avoid smoking or consuming food or drink while working with animals.',
            ),
            Text(
              '• Treat, or have treated, any cuts or abrasions, and ensure that these are properly covered before commencing work with animals.',
            ),
            Text(
              '• Ensure that you are adequately protected against tetanus.',
            ),
            Text(
              '• In the event of being bitten or scratched, thoroughly clean the wound with hot, soapy water, then seek medical advice as appropriate.',
            ),
            Text(
              '• Report promptly any accident or injury to your supervisor.',
            ),
            Text(
              '• Ensure that adequate precautions are taken by yourself and others when working with ionising radiations.',
            ),
            Divider(
              height: 16,
            ),
            Text(
              'In addition, the process of handling animals, carrying out post-mortem examinations or collecting samples may lead to exposure to allergens, parasites, bacteria or viruses. Some of the associated infections may be transmissible to man (e.g. anthrax, leptospirosis, salmonellosis).',
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.body1,
                children: <TextSpan>[
                  TextSpan(
                    text:
                        '• Although all faeces are potentially hazardous, special precautions must be taken when handling animals with diarrhoea because of the risk of infection by ',
                  ),
                  TextSpan(
                    text: 'Salmonella, Campylobacter and Cryptosporidium spp.',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            Text(
              '• Wear adequate protective clothing when handling calves with ringworm or sheep with orf, and report any signs of skin irritation or inflammation immediately.',
            ),
            Text(
              '• Dispose of animal carcasses and spent equipment in an appropriate manner.',
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.body1,
                children: <TextSpan>[
                  TextSpan(
                    text:
                        '• Women who are or suspect that they may be pregnant, must declare this to their training supervisor because of the risks associated with anaesthesia, radiography, drug handling and zoonoses. They should not work with lambing ewes, or handle aborted material from any species, because of the risk of ',
                  ),
                  TextSpan(
                    text: 'Chlamydia, Toxoplasma',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                    text:
                        ' or other infections. Beware also the potential risk from toxoplamsa in cat faeces.',
                  ),
                ],
              ),
            ),
            Text(
              '• If you need to consult a doctor, make him/her aware of any recent exposure to animals or animal material. You are advised also to inform your EMS placement of this action.',
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Text(
              "Further advice on zoonoses is to be found in 'COSHH: BVA Guide' (1991) pages 32-59.",
            ),
          ],
        ),
      ),
    );
  }
}
