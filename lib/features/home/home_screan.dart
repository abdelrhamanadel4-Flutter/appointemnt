import 'package:appointemnt/features/home/data/models/JOP_REPONSE_MODEL.dart';
import 'package:appointemnt/features/home/logic/cubit/home_cubit.dart';
import 'package:appointemnt/features/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final Jobs = context.read<HomeCubit>().jobs;
        if (state is Loading) {
          return CircularProgressIndicator(color: Colors.amber);
        }
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(Jobs.length, (index) {
                    return Container(
                      child: Column(
                        children: [
                          Text(
                            Jobs[index].jobTitle ?? 'medo',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
