// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../utils/utils.dart';

// TODO: Use model for deserializing json response
class TalePreview {
  final String id;
  final String title;
  final String subtitle;
  final List<dynamic> grades;
  final String icon;
  final String author;
  int counter;
  int timestamp;
  TalePreview({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.grades,
    required this.icon,
    required this.author,
    this.counter=0,
    this.timestamp=0,
  });

  TalePreview copyWith({
    String? id,
    String? title,
    String? subtitle,
    List<dynamic>? grades,
    String? icon,
    String? author,
  }) {
    return TalePreview(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      grades: grades ?? this.grades,
      icon: icon ?? this.icon,
      author: author ?? this.author,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'grades': grades,
      'icon': icon,
      'author': author,
    };
  }

  factory TalePreview.fromMap(Map<String, dynamic> map) {
    return TalePreview(
      id: map['id'] as String,
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      grades: List<dynamic>.from((map['grades'] as List<dynamic>)),
      icon: map['icon'] as String,
      author: map['author'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TalePreview.fromJson(String source) => TalePreview.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TalePreview(id: $id, title: $title, subtitle: $subtitle, grades: $grades, icon: $icon, author: $author)';
  }

  @override
  bool operator ==(covariant TalePreview other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title &&
      other.subtitle == subtitle &&
      listEquals(other.grades, grades) &&
      other.icon == icon &&
      other.author == author;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      grades.hashCode ^
      icon.hashCode ^
      author.hashCode;
  }
}
