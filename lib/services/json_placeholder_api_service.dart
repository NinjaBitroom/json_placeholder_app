import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:json_placeholder_app/models/post_model.dart';

class JsonPlaceholderApiService {
  final dio = Dio();

  void addPost(context, String title, String body, int userId) async {
    PostModel post = PostModel(title: title, body: body, userId: userId);
    final response = await dio.post(
      'https://jsonplaceholder.typicode.com/posts',
      data: post.toJson(),
      options: Options(
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      ),
    );
    debugPrint(response.toString());
  }
}
