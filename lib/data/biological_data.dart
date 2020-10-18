class BioData {
  final String species;

  final String tempString;
  final num tempSort;

  final String heartString;
  final num heartSort;

  final String respString;
  final num respSort;

  final String oestrusString;
  final num oestrusSort;

  final String gestationString;
  final num gestationSort;

  const BioData({
    required this.species,
    required this.tempString,
    required this.tempSort,
    required this.heartString,
    required this.heartSort,
    required this.respString,
    required this.respSort,
    required this.oestrusString,
    required this.oestrusSort,
    required this.gestationString,
    required this.gestationSort,
  });
}

final List<BioData> bioData = <BioData>[
  BioData(
    species: 'Horse',
    tempString: '37.1-38.0 (37.6)',
    tempSort: 37.6,
    heartString: '28-44',
    heartSort: 36,
    respString: '12-14 (12)',
    respSort: 12,
    oestrusString: '18-24 (21), polyoestrous',
    oestrusSort: 21,
    gestationString: '320-360, pony 320',
    gestationSort: 340,
  ),
  BioData(
    species: 'Foal',
    tempString: 'Birth 37.5, 12h 38.0',
    tempSort: 38.0,
    heartString: '60-120 varies with age',
    heartSort: 120,
    respString: '14-30 varies with age',
    respSort: 30,
    oestrusString: 'N/A',
    oestrusSort: 0,
    gestationString: 'N/A',
    gestationSort: 0,
  ),
  BioData(
    species: 'Donkey',
    tempString: '36.1-37.8 (37.1)',
    tempSort: 37.1,
    heartString: '36-38 (44)',
    heartSort: 44,
    respString: '12-30 (24)',
    respSort: 24,
    oestrusString: '25-26',
    oestrusSort: 25,
    gestationString: '360-380 (370)',
    gestationSort: 370,
  ),
  BioData(
    species: 'Cattle',
    tempString: '38.0-39.5 (38.5)',
    tempSort: 38.5,
    heartString: '60-80 (70)',
    heartSort: 70,
    respString: '10-30 (20)',
    respSort: 20,
    oestrusString: '18-24 (20)',
    oestrusSort: 20,
    gestationString: '274-291 (282)',
    gestationSort: 282,
  ),
  BioData(
    species: 'Calves',
    tempString: '38.5-39.5 (39.0)',
    tempSort: 39.0,
    heartString: '80-120 (90)',
    heartSort: 90,
    respString: '24-36 (30)',
    respSort: 30,
    oestrusString: 'N/A',
    oestrusSort: 0,
    gestationString: 'N/A',
    gestationSort: 0,
  ),
  BioData(
    species: 'Sheep',
    tempString: '38.5-40.0 (39.0)',
    tempSort: 39.0,
    heartString: '70-90 (75)',
    heartSort: 75,
    respString: '20-30',
    respSort: 35,
    oestrusString: '14-19 (17) seasonally polyoestrous',
    oestrusSort: 17,
    gestationString: '140-160 (150)',
    gestationSort: 150,
  ),
  BioData(
    species: 'Lambs',
    tempString: '39.0-40.0 (39.5)',
    tempSort: 39.5,
    heartString: '80-90 (85)',
    heartSort: 85,
    respString: '36-48 (40)',
    respSort: 40,
    oestrusString: 'N/A',
    oestrusSort: 0,
    gestationString: 'N/A',
    gestationSort: 0,
  ),
  BioData(
    species: 'Goats',
    tempString: '39.0-40.5 (39.5)',
    tempSort: 39.5,
    heartString: '70-100 (90)',
    heartSort: 90,
    respString: '25-35 (30)',
    respSort: 30,
    oestrusString: '18-24 (21)',
    oestrusSort: 21,
    gestationString: '145-155 (150)',
    gestationSort: 150,
  ),
  BioData(
    species: 'Kids',
    tempString: '38.8-40.2 (39.5)',
    tempSort: 39.5,
    heartString: '100-120 (105)',
    heartSort: 105,
    respString: '36-48 (40)',
    respSort: 40,
    oestrusString: 'N/A',
    oestrusSort: 0,
    gestationString: 'N/A',
    gestationSort: 0,
  ),
  BioData(
    species: 'Pigs',
    tempString: '38.5-39.5 (39)',
    tempSort: 39,
    heartString: '55-85 (70)',
    heartSort: 70,
    respString: '10-20 (15)',
    respSort: 15,
    oestrusString: '18-24 (21)',
    oestrusSort: 21,
    gestationString: '110-116 (113)',
    gestationSort: 113,
  ),
  BioData(
    species: 'Piglets',
    tempString: '38.9-40.0 (39.5)',
    tempSort: 39.5,
    heartString: '200-280 (220)',
    heartSort: 220,
    respString: '24-36 (30)',
    respSort: 30,
    oestrusString: 'N/A',
    oestrusSort: 0,
    gestationString: 'N/A',
    gestationSort: 0,
  ),
  BioData(
    species: 'Dog',
    tempString: '37.5-39.0 (38.5)',
    tempSort: 38.5,
    heartString: '70-120',
    heartSort: 95,
    respString: '20-40',
    respSort: 30,
    oestrusString: '3.5-13 months, unseasonally monoestrous',
    oestrusSort: 8,
    gestationString: '62-64 (63)',
    gestationSort: 63,
  ),
  BioData(
    species: 'Cat',
    tempString: '37.5-39.0 (38.5)',
    tempSort: 38.5,
    heartString: '120-150',
    heartSort: 135,
    respString: '16-40',
    respSort: 28,
    oestrusString: '14-21, polyoestrous, induced ovulator',
    oestrusSort: 17,
    gestationString: '58-65',
    gestationSort: 61,
  ),
  BioData(
    species: 'Rabbit',
    tempString: '38.0-39.5',
    tempSort: 38.7,
    heartString: '180-350 (220)',
    heartSort: 220,
    respString: '33-60 (50)',
    respSort: 50,
    oestrusString: 'Variable, polyoestrous, induced ovulator',
    oestrusSort: 0,
    gestationString: '30-32 (31)',
    gestationSort: 31,
  ),
  BioData(
    species: 'Guinea Pig',
    tempString: '38.0',
    tempSort: 38.0,
    heartString: '200-300',
    heartSort: 250,
    respString: '90',
    respSort: 90,
    oestrusString: '13-20',
    oestrusSort: 16,
    gestationString: '59-67 (63)',
    gestationSort: 63,
  ),
  BioData(
    species: 'Rat',
    tempString: '38.0',
    tempSort: 38.0,
    heartString: '350',
    heartSort: 350,
    respString: '90',
    respSort: 90,
    oestrusString: '5',
    oestrusSort: 5,
    gestationString: '21-23, longer if lactating',
    gestationSort: 22,
  ),
  BioData(
    species: 'Mouse',
    tempString: '37.4',
    tempSort: 37.4,
    heartString: '600',
    heartSort: 600,
    respString: '180',
    respSort: 180,
    oestrusString: '4.5',
    oestrusSort: 4.5,
    gestationString: '19-21',
    gestationSort: 20,
  ),
  BioData(
    species: 'Hamster',
    tempString: '37.4',
    tempSort: 37.4,
    heartString: '400',
    heartSort: 400,
    respString: '80',
    respSort: 80,
    oestrusString: '4',
    oestrusSort: 4,
    gestationString: '15-18 (16)',
    gestationSort: 16,
  ),
];
