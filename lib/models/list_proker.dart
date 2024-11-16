class ProgramKerja {
  String titleProker;

  ProgramKerja({required this.titleProker});

  static List<ProgramKerja> getProkers() {
    return [
      ProgramKerja(
        titleProker: 'ML',
      ),
      ProgramKerja(
        titleProker: 'Volly',
      ),
      ProgramKerja(
        titleProker: 'Futsal',
      ),
      ProgramKerja(
        titleProker: 'Basket',
      ),
      ProgramKerja(
        titleProker: 'Sanggar Tari',
      ),
      ProgramKerja(
        titleProker: 'Badminton',
      ),
    ];
  }
}
