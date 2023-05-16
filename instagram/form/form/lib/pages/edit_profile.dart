import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form/pages/profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController nisController = new TextEditingController();
  TextEditingController kelasController = new TextEditingController();
  TextEditingController jurusanController = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text(
            'Create Data Siswa',
            style: TextStyle(color: Colors.white),
          )),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: TextField(
                  controller: nisController,
                  decoration: InputDecoration(
                    hintText: 'Masukan NIS',
                    labelText: 'Nis',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Masukan Nama Lengkap',
                    labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: kelasController,
                  decoration: InputDecoration(
                    hintText: 'Masukan Nama Kelas',
                    labelText: 'Kelas',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  controller: jurusanController,
                  decoration: InputDecoration(
                    hintText: 'Masukan Nama Jurusan',
                    labelText: 'Jurusan',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                child: FlatButton(
                    color: Colors.greenAccent,
                    child: Text(
                      'Simpan',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => profile(
                            nis: nisController.text,
                            name: nameController.text,
                            kelas: kelasController.text,
                            jurusan: jurusanController.text,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
