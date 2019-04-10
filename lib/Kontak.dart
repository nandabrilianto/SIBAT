class Kontak {
  final String id;
  final String name;
  final String location;
  final String telephone;
  final String image;

  const Kontak({this.id, this.name, this.location, this.telephone, this.image});
}

List<Kontak> kontaks = [
  const Kontak(
    id: "1",
    name: "PMI Gunungkidul",
    location: "Gunungkidul",
    telephone: "tel://0274394500",
    image: "images/iconPmi.png",
  ),
  const Kontak(
    id: "2",
    name: "Pemadam Kebakaran Gunungkidul",
    location: "Gunungkidul",
    telephone: "tel://0274587101",
    image: "images/iconDamkarGunungKidul.png",
  ),
  const Kontak(
    id: "3",
    name: "BPDB Gunungkidul",
    location: "Gunungkidul",
    telephone: "tel://0274394091",
    image: "images/iconBPBDGunungKidul.png",
  ),
  const Kontak(
    id: "4",
    name: "SAR Gunungkidul",
    location: "Gunungkidul",
    telephone: "tel://0274563231",
    image: "images/iconSarGunungKidul.png",
  ),
  const Kontak(
    id: "5",
    name: "Pemerintah Kabupaten Gunungkidul",
    location: "Gunungkidul",
    telephone: "tel://0274391761",
    image: "images/iconPemerintahGunungKidul.png",
  ),
];