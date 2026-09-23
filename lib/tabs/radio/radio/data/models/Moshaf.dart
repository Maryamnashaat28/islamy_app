/// id : 1
/// name : "Rewayat Hafs A'n Assem - Murattal"
/// rewaya_id : 1
/// server : "https://server6.mp3quran.net/akdr/"
/// surah_total : 114
/// moshaf_type : 11
/// surah_list : "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114"

class Moshaf {
  Moshaf({
    num? id,
    String? name,
    num? rewayaId,
    String? server,
    num? surahTotal,
    num? moshafType,
    String? surahList,}){
    _id = id;
    _name = name;
    _rewayaId = rewayaId;
    _server = server;
    _surahTotal = surahTotal;
    _moshafType = moshafType;
    _surahList = surahList;
  }

  Moshaf.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _rewayaId = json['rewaya_id'];
    _server = json['server'];
    _surahTotal = json['surah_total'];
    _moshafType = json['moshaf_type'];
    _surahList = json['surah_list'];
  }
  num? _id;
  String? _name;
  num? _rewayaId;
  String? _server;
  num? _surahTotal;
  num? _moshafType;
  String? _surahList;
  Moshaf copyWith({  num? id,
    String? name,
    num? rewayaId,
    String? server,
    num? surahTotal,
    num? moshafType,
    String? surahList,
  }) => Moshaf(  id: id ?? _id,
    name: name ?? _name,
    rewayaId: rewayaId ?? _rewayaId,
    server: server ?? _server,
    surahTotal: surahTotal ?? _surahTotal,
    moshafType: moshafType ?? _moshafType,
    surahList: surahList ?? _surahList,
  );
  num? get id => _id;
  String? get name => _name;
  num? get rewayaId => _rewayaId;
  String? get server => _server;
  num? get surahTotal => _surahTotal;
  num? get moshafType => _moshafType;
  String? get surahList => _surahList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['rewaya_id'] = _rewayaId;
    map['server'] = _server;
    map['surah_total'] = _surahTotal;
    map['moshaf_type'] = _moshafType;
    map['surah_list'] = _surahList;
    return map;
  }

}