class Item {
  final String name;
  final bool essential;
  final String reference;

  const Item({
    required this.name,
    this.essential = false,
    required this.reference,
  });
}
