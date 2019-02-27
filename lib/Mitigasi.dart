import 'package:flutter/material.dart';

class Mitigasi extends StatefulWidget {
  @override
  _MitigasiState createState() => _MitigasiState();
}

class _MitigasiState extends State<Mitigasi> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Mitigasi"),
      ),
      body: new Container(
        margin: EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new Text(
              "Mitigasi",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 20.0),
            ),
            new Text(
              "adalah segala tindakan yang dilakukan untuk mengurangi atau menghilangkan resiko jangka panjang bahaya bencana alam dan akibatnya terhadap manusia dan harta-benda. Berdasarkan Peraturan Pemerintah (PP) No. 64 tahun 2010 Pasal 1 (4) yang dimaksud Mitigasi Bencana adalah upaya untuk mengurangi risiko bencana, baik secara struktur atau fisik melalui pembangunan fisik alami dan/atau buatan maupun nonstruktur atau nonfisik melalui peningkatan kemampuan menghadapi ancaman bencana di wilayah pesisir dan pulau – pulau kecil. Kegiatan mitigasi bencana non struktur/non fisik (pasal 16) mencakup 7 (tujuh) aspek yakni :",
              textAlign: TextAlign.left,
            ),
            new Text("1.Penyusunan peraturan perundang-undangan;", 
            textAlign: TextAlign.left,
            ),
            new Text("2.Penyusunan peta rawan bencana;", 
            textAlign: TextAlign.left,
            ),
            new Text("3.Penyusunan peta risiko bencana;", 
            textAlign: TextAlign.left,
            ),
            new Text(
                "4.Penyusunan analisis mengenai dampak lingkungan (amdal);", 
            textAlign: TextAlign.left,
            ),
            new Text("5.Penyusunan tata ruang;", 
            textAlign: TextAlign.left,
            ),
            new Text("6.Penyusunan zonasi;", 
            textAlign: TextAlign.left,
            ),
            new Text("7.Pendidikan, penyuluhan, dan penyadaran masyarakat.", 
            textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
