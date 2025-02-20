import 'package:app_flowy/startup/startup.dart';
import 'package:app_flowy/workspace/application/grid/cell_bloc/number_cell_bloc.dart';
import 'package:app_flowy/workspace/application/grid/row_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberCell extends StatefulWidget {
  final GridCellData cellData;

  const NumberCell({
    required this.cellData,
    Key? key,
  }) : super(key: key);

  @override
  State<NumberCell> createState() => _NumberCellState();
}

class _NumberCellState extends State<NumberCell> {
  late NumberCellBloc _cellBloc;

  @override
  void initState() {
    _cellBloc = getIt<NumberCellBloc>(param1: widget.cellData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cellBloc,
      child: BlocBuilder<NumberCellBloc, NumberCellState>(
        builder: (context, state) {
          return Container();
        },
      ),
    );
  }

  @override
  Future<void> dispose() async {
    await _cellBloc.close();
    super.dispose();
  }
}
