import 'package:flutter/material.dart';
import 'package:brival_recruitment_task/features/people/data/models/person_model.dart';
import 'package:brival_recruitment_task/features/people/presentation/widgets/people_card.dart';

class PeopleList extends StatelessWidget {
  final List<PersonModel> people;
  const PeopleList({super.key, required this.people});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: const Color(0xFF0f172a).withValues(alpha: 0.95),
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 0, bottom: 12),
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '⭐ Star Wars',
                    style: TextStyle(
                      color: Colors.yellow[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    'Characters from the galaxy',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
              centerTitle: true,
            ),
            expandedHeight: 80,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, idx) => PeopleCard(key: ValueKey(people[idx].url), person: people[idx]),
                childCount: people.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }
}
