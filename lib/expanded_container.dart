import 'package:flutter/material.dart';
import 'package:test_table/main.dart';

class ExpandedContainer extends StatefulWidget {
  final int columnLength;
  final List<DataPasien>? data;
  final String? title;
  const ExpandedContainer(
      {Key? key, required this.columnLength, this.data, this.title})
      : super(key: key);

  @override
  State<ExpandedContainer> createState() => _ExpandedContainerState();
}

class _ExpandedContainerState extends State<ExpandedContainer> {
  bool _tap = false;
  double _rowHeight = 30;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: Colors.transparent,
      duration: const Duration(milliseconds: 100),
      height: _tap
          ? (_rowHeight + 1) * ((widget.data?.length.toDouble() ?? 0) + 1)
          : _rowHeight,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _tap = !_tap;
                      });
                    },
                    child: Icon(_tap
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down),
                  ),
                  Text(
                    'Spesialis ${widget.title} (Total ${widget.data?.length ?? 0} Pasien)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              height: 1,
            ),
            Table(
              border: TableBorder(
                horizontalInside: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 0.5,
                ),
              ),
              children: [
                ..._getListRow(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<TableRow> _getListRow() {
    return List.generate(
      widget.data?.length ?? 0,
      (index) => TableRow(
        children: [
          _getTextRow(widget.data?[index].namaPasien ?? ''),
          _getTextRow('${widget.data?[index].noRekamMedis ?? ''}'),
          _getTextRow('${widget.data?[index].noPanggilan ?? ''}'),
          widget.data?[index].penjamin ?? SizedBox.shrink(),
          _getTextRow(widget.data?[index].dokter ?? ''),
        ],
      ),
    );
  }

  Widget _getTextRow(String text) {
    return Container(
      height: _rowHeight,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text),
      ),
    );
  }
}
