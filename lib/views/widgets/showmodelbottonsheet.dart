import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/cubit/addnote_cubit/addnote_cubit.dart';
import 'package:todoapp/cubit/addnote_cubit/addnote_state.dart';
import 'package:todoapp/views/widgets/addformnote.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: camel_case_types
class showmodelbottonsheet extends StatelessWidget {
  const showmodelbottonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, right: 15, left: 15),
      child: SingleChildScrollView(
        child: BlocConsumer<AddnoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailer) {
              print('Faild ${state.errormassage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: AddFormNote(),
            );
          },
        ),
      ),
    );
  }
}
