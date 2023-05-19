This repository contains all of my mason files and bricks

## Created bricks
- ## flutter_feature : 
    This one create all needed files for a flutter clean architecture feature with custom name
    > `mason make flutter_feature --feature_name Article --project_name my_flutter_project`

- ## flutter_presentation : 
    This one create all needed files for a flutter clean architecture presentation with custom name
    > `mason make flutter_presentation --feature_name Article --project_name my_flutter_project`

- ## flutter_freezed_bloc : 
    This one create all needed files for a flutter clean architecture presentation with custom name
    > `mason make flutter_freezed_bloc --feature_name Article --project_name my_flutter_project`

---

To add a brick globally in your system, use these commands:
> `mason add --global flutter_feature --path ./bricks/flutter_feature`

> `mason add --global flutter_presentation --path ./bricks/flutter_presentation`

> `mason add --global flutter_freezed_bloc --path ./bricks/flutter_freezed_bloc`