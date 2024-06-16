/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/posts_endpoint.dart' as _i2;
import 'package:uuid/uuid_value.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'posts': _i2.PostsEndpoint()
        ..initialize(
          server,
          'posts',
          null,
        )
    };
    connectors['posts'] = _i1.EndpointConnector(
      name: 'posts',
      endpoint: endpoints['posts']!,
      methodConnectors: {
        'getPosts': _i1.MethodConnector(
          name: 'getPosts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i2.PostsEndpoint).getPosts(session),
        ),
        'getPost': _i1.MethodConnector(
          name: 'getPost',
          params: {
            'postId': _i1.ParameterDescription(
              name: 'postId',
              type: _i1.getType<_i3.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i2.PostsEndpoint).getPost(
            session,
            params['postId'],
          ),
        ),
        'getLike': _i1.MethodConnector(
          name: 'getLike',
          params: {
            'postId': _i1.ParameterDescription(
              name: 'postId',
              type: _i1.getType<_i3.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i2.PostsEndpoint).getLike(
            session,
            params['postId'],
          ),
        ),
        'toggleLike': _i1.MethodConnector(
          name: 'toggleLike',
          params: {
            'postId': _i1.ParameterDescription(
              name: 'postId',
              type: _i1.getType<_i3.UuidValue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i2.PostsEndpoint).toggleLike(
            session,
            params['postId'],
          ),
        ),
      },
    );
  }
}
