/// id : 1
/// name : "Radio Ibrahim Al-Akdar"
/// url : "https://backup.qurango.net/radio/ibrahim_alakdar"
/// recent_date : "2020-04-25 22:04:04"

class Radios {
  Radios({
    num? id,
    String? name,
    String? url,
    String? recentDate,}){
    _id = id;
    _name = name;
    _url = url;
    _recentDate = recentDate;
  }

  Radios.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _url = json['url'];
    _recentDate = json['recent_date'];
  }
  num? _id;
  String? _name;
  String? _url;
  String? _recentDate;
  Radios copyWith({  num? id,
    String? name,
    String? url,
    String? recentDate,
  }) => Radios(  id: id ?? _id,
    name: name ?? _name,
    url: url ?? _url,
    recentDate: recentDate ?? _recentDate,
  );
  num? get id => _id;
  String? get name => _name;
  String? get url => _url;
  String? get recentDate => _recentDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['url'] = _url;
    map['recent_date'] = _recentDate;
    return map;
  }

}