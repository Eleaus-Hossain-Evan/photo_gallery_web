import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:photo_gallery_web/gallery/gallery_screen.dart';

class Model extends Equatable {
  final String imgUrl;
  final Filter filter;
  final String description;

  const Model({
    required this.imgUrl,
    required this.filter,
    required this.description,
  });

  factory Model.init() =>
      const Model(imgUrl: '', filter: Filter.All, description: '');

  Model copyWith({
    String? imgUrl,
    Filter? filter,
    String? description,
  }) {
    return Model(
      imgUrl: imgUrl ?? this.imgUrl,
      filter: filter ?? this.filter,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imgUrl': imgUrl,
      'filter': filter,
      'description': description,
    };
  }

  factory Model.fromMap(Map<String, dynamic> map) {
    return Model(
      imgUrl: map['imgUrl'] ?? '',
      filter: (map['filter']),
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Model.fromJson(String source) => Model.fromMap(json.decode(source));

  @override
  String toString() =>
      'Model(imgUrl: $imgUrl, filter: $filter, description: $description)';

  @override
  List<Object> get props => [imgUrl, filter, description];
}

const imgList = [
  Model(
    imgUrl:
        'https://images.pexels.com/photos/12123082/pexels-photo-12123082.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Religious,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/7708380/pexels-photo-7708380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Religious,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/4527434/pexels-photo-4527434.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Religious,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/7484135/pexels-photo-7484135.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Religious,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/12288057/pexels-photo-12288057.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Religious,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/8566734/pexels-photo-8566734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Religious,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/9636060/pexels-photo-9636060.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Religious,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/1299228/pexels-photo-1299228.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/141288/pexels-photo-141288.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/11774964/pexels-photo-11774964.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/12148265/pexels-photo-12148265.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/8858159/pexels-photo-8858159.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/9470498/pexels-photo-9470498.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/6081466/pexels-photo-6081466.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/762565/pexels-photo-762565.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/2549017/pexels-photo-2549017.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/12698073/pexels-photo-12698073.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.Nature,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/2784747/pexels-photo-2784747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.City,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/2932540/pexels-photo-2932540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.City,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/12200798/pexels-photo-12200798.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.City,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/8214682/pexels-photo-8214682.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.City,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/8281479/pexels-photo-8281479.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.City,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/6197871/pexels-photo-6197871.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.City,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/9567596/pexels-photo-9567596.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.City,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/2850438/pexels-photo-2850438.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.City,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
  Model(
    imgUrl:
        'https://images.pexels.com/photos/2564463/pexels-photo-2564463.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    filter: Filter.City,
    description: "Et labore dolores accusam est ipsum. Vero et amet diam.",
  ),
];
