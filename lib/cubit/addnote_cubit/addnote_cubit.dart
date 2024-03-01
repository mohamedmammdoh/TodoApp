import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/cubit/addnote_cubit/addnote_state.dart';
import 'package:todoapp/models/Notemodel.dart';

class AddnoteCubit extends Cubit<NoteNoteState> {
  AddnoteCubit() : super(NoteInitial());

  addnote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      emit(AddNoteSuccess());
      var notebox = Hive.box<NoteModel>(knotebox);
      await notebox.add(note);
    } catch (e) {
      emit(AddNoteFailer(e.toString()));
    }
  }
}
