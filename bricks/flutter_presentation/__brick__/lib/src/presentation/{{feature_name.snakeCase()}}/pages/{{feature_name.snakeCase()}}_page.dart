import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{project_name.snakeCase()}}/src/core/core.dart';
import 'package:{{project_name.snakeCase()}}/src/injection/injectable.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/core/components/page_decorator.dart';
import 'package:{{project_name.snakeCase()}}/src/presentation/{{feature_name.snakeCase()}}/bloc/{{feature_name.snakeCase()}}_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  const {{feature_name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<{{feature_name.pascalCase()}}Bloc>();
    return BlocProvider(
      create: (_) => bloc,
      child: PageDecorator(
        appBar: const _{{feature_name.pascalCase()}}AppBar().build(context),
        body: const _{{feature_name.pascalCase()}}Body(),
      ),
    );
  }
}

class _{{feature_name.pascalCase()}}AppBar extends StatelessWidget {
  const _{{feature_name.pascalCase()}}AppBar({
    Key? key,
  }) : super(key: key);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue[800],
      centerTitle: true,
      title: const Icon(Icons.home),
      leading: ResponsiveVisibility(
        hiddenWhen: const [Condition.largerThan(name: TABLET)],
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      actions: [
        const ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.largerThan(name: TABLET)],
          child: _MenuTextButton(text: 'Courses'),
        ),
        const ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.largerThan(name: TABLET)],
          child: _MenuTextButton(text: 'About'),
        ),
        IconButton(
          icon: const Icon(Icons.mark_email_unread_rounded),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.logout_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _{{feature_name.pascalCase()}}Body extends StatelessWidget {
  const _{{feature_name.pascalCase()}}Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),

        /// Page title
        const _PageTitle(),
        const SizedBox(height: 30),
        ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.center,
          rowSpacing: 30,
          columnSpacing: 30,
          columnPadding: const EdgeInsets.all(30),
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                width: context.deviceWidthFactor(0.3),
                height: 150,
                child: const ColoredBox(color: Colors.lightBlue),
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                width: context.deviceWidthFactor(0.3),
                height: 150,
                child: const ColoredBox(color: Colors.lightGreen),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 200,
          height: 60,
          child: BlocBuilder<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
            builder: (context, state) => state.when(
              idle: (isLoading, {{feature_name.camelCase()}}) {
                if (isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Center(
                    child: Text(
                      {{feature_name.camelCase()}}[0],
                      style: const TextStyle(fontSize: 28),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _PageTitle extends StatelessWidget {
  const _PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '{{feature_name.pascalCase()}}',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: ResponsiveValue(
            context,
            defaultValue: 60,
            valueWhen: const [
              Condition.smallerThan(
                name: MOBILE,
                value: 50,
              ),
              Condition.largerThan(
                name: TABLET,
                value: 70,
              )
            ],
          ).value?.toDouble(),
          color: Colors.blueGrey[900],
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _MenuTextButton extends StatelessWidget {
  const _MenuTextButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
