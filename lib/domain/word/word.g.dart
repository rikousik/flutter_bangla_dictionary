// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WordAdapter extends TypeAdapter<_$_WordData> {
  @override
  final int typeId = 0;

  @override
  _$_WordData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_WordData(
      pronounciation: (fields[0] as List)?.cast<String>(),
      bangla: fields[1] as String,
      english: fields[2] as String,
      bnSynonyms: (fields[3] as List)?.cast<String>(),
      engSynonyms: (fields[4] as List)?.cast<String>(),
      sentences: (fields[5] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_WordData obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.pronounciation)
      ..writeByte(1)
      ..write(obj.bangla)
      ..writeByte(2)
      ..write(obj.english)
      ..writeByte(3)
      ..write(obj.bnSynonyms)
      ..writeByte(4)
      ..write(obj.engSynonyms)
      ..writeByte(5)
      ..write(obj.sentences);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WordData _$_$_WordDataFromJson(Map<String, dynamic> json) {
  return _$_WordData(
    pronounciation: (json['pron'] as List)?.map((e) => e as String)?.toList(),
    bangla: json['bn'] as String,
    english: json['en'] as String,
    bnSynonyms: (json['bn_syns'] as List)?.map((e) => e as String)?.toList(),
    engSynonyms: (json['en_syns'] as List)?.map((e) => e as String)?.toList(),
    sentences: (json['sents'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_WordDataToJson(_$_WordData instance) =>
    <String, dynamic>{
      'pron': instance.pronounciation,
      'bn': instance.bangla,
      'en': instance.english,
      'bn_syns': instance.bnSynonyms,
      'en_syns': instance.engSynonyms,
      'sents': instance.sentences,
    };
