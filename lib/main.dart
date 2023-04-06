import 'package:flutter/material.dart';
import 'package:test_table/expanded_container.dart';
import 'package:test_table/rounded_tag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Text _columnTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        listColumn: [
          _columnTitle('Nama Pasien'),
          _columnTitle('No. Rekam Medis'),
          _columnTitle('No. Panggilan'),
          _columnTitle('Penjamin'),
          _columnTitle('Dokter'),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.listColumn}) : super(key: key);
  final List? listColumn;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Table(
                children: [
                  TableRow(
                    children: [...widget.listColumn ?? []],
                  ),
                ],
              ),
              Divider(),
              ExpandedContainer(
                title: 'Mata',
                columnLength: widget.listColumn?.length ?? 0,
                data: [
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Mandiri',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'BPJS',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Mandiri',
                    ),
                    dokter: 'BPJS',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Asuransi',
                    ),
                    dokter: 'Samsul',
                  )
                ],
              ),
              Divider(
                height: 1,
              ),
              SizedBox(
                height: 8,
              ),
              ExpandedContainer(
                title: 'Paru dan Pernafasan',
                columnLength: widget.listColumn?.length ?? 0,
                data: [
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Mandiri',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Asuransi',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Asuransi',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'BPJS',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'BPJS',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Mandiri',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Asuransi',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'BPJS',
                    ),
                    dokter: 'Samsul',
                  )
                ],
              ),
              Divider(
                height: 1,
              ),
              SizedBox(
                height: 8,
              ),
              ExpandedContainer(
                title: 'Penyakit Dalam',
                columnLength: widget.listColumn?.length ?? 0,
                data: [
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'BPJS',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Mandiri',
                    ),
                    dokter: 'Samsul',
                  ),
                  DataPasien(
                    namaPasien: 'Budi',
                    noRekamMedis: 1234,
                    noPanggilan: 2345,
                    penjamin: RoundedTag(
                      title: 'Asuransi',
                    ),
                    dokter: 'Samsul',
                  ),
                ],
              ),
              Divider(
                height: 1,
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Showing 36 of 36 results'),
                    Container(
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            // padding: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.tealAccent),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                size: 20,
                              ),
                            ),
                          ),
                          Text('Page 1 of 207'),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.tealAccent),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataPasien {
  final String? namaPasien, dokter;
  final Widget? penjamin;
  final int? noRekamMedis, noPanggilan;
  DataPasien(
      {this.namaPasien,
      this.penjamin,
      this.dokter,
      this.noRekamMedis,
      this.noPanggilan});
}
