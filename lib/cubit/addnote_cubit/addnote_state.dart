import 'package:flutter/foundation.dart';

@immutable
abstract class AddNoteState {}

class NoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailer extends AddNoteState {
  final String errormassage;

  AddNoteFailer(this.errormassage);
}
