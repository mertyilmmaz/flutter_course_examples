import 'dart:io';

import 'package:dio/dio.dart';

import 'post_model.dart';

class PostService {
  final Dio _networkManeger;
  PostService()
      : _networkManeger =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  Future<bool> addItemToServce(PostModel postModel) async {
    ;
    final responce = await _networkManeger.post(_PostServicePaths.posts.name,
        data: postModel);

    return responce.statusCode == HttpStatus.created;
  }

  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    final responce = await _networkManeger.get(_PostServicePaths.posts.name);

    if (responce.statusCode == HttpStatus.ok) {
      final _datas = responce.data;

      if (_datas is List) {
        return _datas.map((e) => PostModel.fromJson(e)).toList();
      } else {
        return null;
      }
    }
  }
}

enum _PostServicePaths {
  posts,
  comment,
}
