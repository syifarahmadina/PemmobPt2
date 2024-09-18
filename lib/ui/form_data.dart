import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.pinkAccent[100], // Warna AppBar Pink Muda
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[100]!, Colors.pink[100]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxNama(),
            const SizedBox(height: 10),
            _textboxNIM(),
            const SizedBox(height: 10),
            _textboxTahun(),
            const SizedBox(height: 20),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        labelStyle: const TextStyle(color: Colors.pinkAccent),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.pinkAccent),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        labelStyle: const TextStyle(color: Colors.pinkAccent),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.pinkAccent),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle: const TextStyle(color: Colors.pinkAccent),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.pinkAccent),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      controller: _tahunController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pinkAccent[100], // Warna pink muda
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      ),
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TampilData(nama: nama, nim: nim, tahun: tahun),
        ));
      },
      child: const Text(
        'Simpan',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
