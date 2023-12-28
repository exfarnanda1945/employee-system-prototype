class Presence {
  final String date;
  final String enter;
  final String out;
  final bool isLate;
  final bool isManual;

  Presence(
      {required this.date,
      required this.enter,
      required this.out,
      required this.isLate,
      required this.isManual});
}

List<Presence> presenceThisWeeks = [
  Presence(
      date: "Monday, 11 December 2023 ",
      enter: "07:45",
      out: "17:55",
      isLate: false,
      isManual: false),
  Presence(
      date: "Tuesday, 12 December 2023 ",
      enter: "07:55",
      out: "17:01",
      isLate: false,
      isManual: false),
  Presence(
      date: "Wednesday, 13 December 2023 ",
      enter: "08:45",
      out: "17:22",
      isLate: true,
      isManual: true),
  Presence(
      date: "Thursday, 14 December 2023 ",
      enter: "07:44",
      out: "17:13",
      isLate: false,
      isManual: false),
  Presence(
      date: "Friday, 15 December 2023 ",
      enter: "07:58",
      out: "16:00",
      isLate: true,
      isManual: true),
  Presence(
      date: "Saturday, 16 December 2023 ",
      enter: "08:00",
      out: "17:11",
      isLate: false,
      isManual: false),
];
