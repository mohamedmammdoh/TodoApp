abstract class AddNoteState {}

class AddinitialState extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailer extends AddNoteState {
  final String errormassage;

  AddNoteFailer(this.errormassage);
}
