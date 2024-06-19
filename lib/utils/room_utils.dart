// room_utils.dart

import '../models/room.dart';

List<Room> filterRoomsByPrice(List<Room> rooms, int balance) {
  return rooms.where((room) => room.price <= balance).toList();
}
