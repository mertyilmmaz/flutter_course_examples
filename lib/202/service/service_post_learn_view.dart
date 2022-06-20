import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/service/post_model.dart';
import 'package:flutter_application_1/202/service/post_service.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  String? name;
  bool _isLoading = false;
  late final Dio _networkManager;
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';

  late final PostService _postService;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    name = 'mert';
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
    _postService = PostService();
  }

  void ChangeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<bool> addItemToServce(PostModel postModel) async {
    ChangeLoading();
    final responce = await _networkManager.post('posts', data: postModel);

    return responce.statusCode == HttpStatus.created;
  }

  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    ChangeLoading();
    final responce = await PostService().fetchPostItemsAdvance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          _isLoading ? CircularProgressIndicator() : SizedBox.shrink()
        ], title: Text(name ?? 's')),
        body: Column(
          children: [
            TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: _titleController,
                decoration: InputDecoration(
                    labelText: 'title',
                    hintText: 'asd',
                    labelStyle: TextStyle(fontSize: 25))),
            TextField(
                controller: _bodyController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    labelText: 'body',
                    hintText: 'asd',
                    labelStyle: TextStyle(fontSize: 25))),
            TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'userId',
                  hintText: '123',
                  labelStyle: TextStyle(fontSize: 25)),
            ),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isEmpty) {
                          final model = PostModel(
                              body: _bodyController.text,
                              title: _titleController.text,
                              userId: int.tryParse(_userIdController.text));

                          addItemToServce(model);
                        }
                      },
                child: Text('send'))
          ],
        ));
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
