import 'package:hotelroomreservation/models/room.dart';

class Reservation {
  final String name;
  final String surname;
  final String email;
  final String gender;
  final DateTime reservationDate;
  final Room room;

  Reservation({
    required this.name,
    required this.surname,
    required this.email,
    required this.gender,
    required this.reservationDate,
    required this.room,
  });
}
