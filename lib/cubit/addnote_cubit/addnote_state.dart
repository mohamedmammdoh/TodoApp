import 'package:flutter/foundation.dart';

@immutable
abstract class NoteNoteState {}

class NoteInitial extends NoteNoteState {}

class AddNoteLoading extends NoteNoteState {}

class AddNoteSuccess extends NoteNoteState {}

class AddNoteFailer extends NoteNoteState {
  final String errormassage;

  AddNoteFailer(this.errormassage);
}
