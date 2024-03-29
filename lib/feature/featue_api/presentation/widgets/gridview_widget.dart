import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/constants/login_constans.dart';
import 'package:movie_app/feature/featue_api/domain/entity/model_entity.dart';
import 'package:movie_app/feature/featue_api/presentation/pages/overview_page.dart';
import 'package:movie_app/feature/featue_api/presentation/provaider/movie_provaider.dart';

class GridViewWidget extends ConsumerWidget {
  final List<MovieEntity> entity;
  const GridViewWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(loginConstansProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 300,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: entity.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                InkWell(
                  onTap: () => context.push(OverViewPage.routePath,
                      extra: entity[index]),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            data.imagePath + entity[index].posterPath),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: FloatingActionButton.small(
                      backgroundColor: Colors.white,
                      onPressed: () {
                        ref
                            .read(movieProvaiderProvider.notifier)
                            .deleteFireStoreDocs(entity[index].id.toString());
                      },
                      child: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    )),
              ],
            );
          },
        ),
      ),
    );
  }
}
