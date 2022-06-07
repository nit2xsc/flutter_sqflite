final String tbNotes = 'mnotes';

class fieldNote {
  static final String id = 'note_id';
  static final String judul = 'note_judul';
  static final String isinote = 'note_isi';
}

class dcNote {
  final int note_id;
  final String note_judul;
  final String note_isi;

  const dcNote(
      {required this.note_id,
      required this.note_judul,
      required this.note_isi});

  factory dcNote.fromJson(Map<String, dynamic> json) {
    return dcNote(
      note_id: json['note_id'],
      note_judul: json['note_judul'],
      note_isi: json['note_isi'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      fieldNote.id: note_id,
      fieldNote.judul: note_judul,
      fieldNote.isinote: note_isi,
    };
  }
}
