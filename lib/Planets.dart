class Planet {
  final String id;
  final String name;
  final String location;
  final String telephone;
  final String image;

  const Planet({this.id, this.name, this.location, this.telephone, this.image});
}

List<Planet> planets = [
  const Planet(
    id: "1",
    name: "PMI",
    location: "Yogyakarta",
    telephone: "tel://0274394500",
    image: "images/iconPmi.png",
  ),
  const Planet(
    id: "2",
    name: "Pemadam Kebakaran Gunung Kidul",
    location: "Yogyakarta",
    telephone: "tel://0274587101",
    image: "images/iconDamkarGunungKidul.png",
  ),
  const Planet(
    id: "3",
    name: "BPDB Gunung Kidul",
    location: "Yogyakarta",
    telephone: "tel://0274394091",
    image: "images/iconBPBDGunungKidul.png",
  ),
  const Planet(
    id: "4",
    name: "SAR Gunung Kidul",
    location: "Yogyakarta",
    telephone: "tel://0274563231",
    image: "images/iconSarGunungKidul.png",
  ),
  const Planet(
    id: "5",
    name: "Pemerintah Gunung Kidul",
    location: "Yogyakarta",
    telephone: "tel://0274391761",
    image: "images/iconPemerintahGunungKidul.png",
  ),
];