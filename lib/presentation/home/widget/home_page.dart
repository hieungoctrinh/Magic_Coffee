import 'package:flutter/material.dart';
import 'package:magic_coffee/core/config/router/router_name.dart';
import 'package:magic_coffee/domain/entities/user.dart';
import 'package:magic_coffee/presentation/home/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocSelector<HomeBloc, HomeState, UserModel?>(
          selector: (state) {
            return state.userInfo;
          },
          builder: (context, state) {
            return Center(
              child: InkWell(
                child: Text(state?.toString() ?? ''),
              ),
            );
          },
        ),
        Center(
          child: InkWell(
            onTap: () {
              context.goNamed(
                RoutesName.screenOne.name,
              );
            },
            child: const Text('Go to screen 1'),
          ),
        ),
      ],
    );
  }
}
