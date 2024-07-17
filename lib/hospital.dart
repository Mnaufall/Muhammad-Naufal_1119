class Hospital {
  final String id;
  final String name;
  final String address;
  final String phone;
  final List<AvailableBed> availableBeds;

  Hospital({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.availableBeds,
  });

  factory Hospital.fromJson(Map<String, dynamic> json) {
    var list = json['available_beds'] as List;
    List<AvailableBed> availableBedsList =
        list.map((i) => AvailableBed.fromJson(i)).toList();

    return Hospital(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      phone: json['phone'] ?? 'N/A',
      availableBeds: availableBedsList,
    );
  }
}

class AvailableBed {
  final int available;
  final String bedClass;
  final String roomName;
  final String info;

  AvailableBed({
    required this.available,
    required this.bedClass,
    required this.roomName,
    required this.info,
  });

  factory AvailableBed.fromJson(Map<String, dynamic> json) {
    return AvailableBed(
      available: json['available'],
      bedClass: json['bed_class'],
      roomName: json['room_name'],
      info: json['info'],
    );
  }
}
