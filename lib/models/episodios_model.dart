class Personajes {
  int? id;
  String? name;
  String? status;
  String? species;
  String? image;

  Personajes({this.id, this.name, this.status, this.species, this.image});

  factory Personajes.fromMapJson(Map<String, dynamic> data) => Personajes(
        id: data['id'],
        name: data['name'],
        status: data['status'],
        species: data['species'],
        image: data['image'],
      );
}
