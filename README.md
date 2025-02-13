# ow1_emulator

This repository contains OverPy source code for building Overwatch 2 Workshop gamemode [Overwatch 1 Emulator](https://workshop.codes/KHTG0).  
Overwatch 1 stats are referenced using the [Wayback Machine](https://web.archive.org/web/20220929084035/https://overwatch.fandom.com/wiki/Overwatch_Wiki).  

Consider joining Discord dedicated to this gamemode: [6v6 Overwatch 1](https://discord.gg/GMVqwYXbWB)  

Progress (✅ = Equivalent to OW1, ✔ = Close to OW1, Blank = Untouched):
<!--- https://docs.google.com/spreadsheets/d/1MdZIFEBehciwviUKqBGfStEGfqiRPaCtIdXxLSDwUMM/edit?usp=sharing -->
<!--- https://www.tablesgenerator.com/markdown_tables -->
|               | Primary Fire (M1) | Secondary Fire (M2) | Ability 1 (Shift) | Ability 2 (E) | Ultimate (Q) |     Other     |
|---------------|:-----------------:|:-------------------:|:-----------------:|:-------------:|:------------:|:-------------:|
| D.Va          |         ✅         |          ✅          |         ✔         |       ✅       |       ✅      |               |
| Junker Queen  |                   |                     |                   |               |              |               |
| Orisa         |         ✔         |          ✔          |         ✔         |       ✔       |       ✔      |               |
| Ramattra      |                   |                     |                   |               |              |               |
| Reinhardt     |         ✅         |          ✅          |         ✅         |       ✅       |       ✔      |               |
| Roadhog       |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Sigma         |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Winston       |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Wrecking Ball |         ✅         |          ✅          |         ✅         |       ✔       |       ✔      |  ✅ Piledriver |
| Zarya         |         ✅         |          ✅          |         ✅         |       ✅       |       ✔      |               |
| Ashe          |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Bastion       |         ✔         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Cassidy       |         ✅         |          ✅          |         ✅         |       ✅       |       ✔      |               |
| Doomfist      |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Echo          |         ✅         |          ✅          |         ✅         |       ✅       |       ✔      |               |
| Genji         |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Hanzo         |         ✅         |          ✔          |         ✔         |       ✅       |       ✔      |               |
| Junkrat       |         ✅         |          ✔          |         ✔         |       ✅       |       ✅      |               |
| Mei           |         ✅         |          ✔          |         ✅         |       ✔       |       ✅      |               |
| Pharah        |         ✅         |          ✔          |         ✔         |       ✔       |       ✅      |               |
| Reaper        |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Sojourn       |                   |                     |                   |               |              |               |
| Soldier: 76   |         ✅         |          ✅          |         ✅         |       ✔       |       ✅      |               |
| Sombra        |                   |          ✔          |         ✔         |               |       ✔      |               |
| Symmetra      |         ✔         |          ✔          |         ✔         |       ✔       |       ✅      |               |
| Torbjorn      |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Tracer        |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Widowmaker    |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Ana           |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Baptiste      |         ✅         |          ✅          |         ✔         |       ✔       |       ✅      |               |
| Brigitte      |         ✅         |          ✅          |         ✅         |       ✔       |       ✔      | ✅ Shield Bash |
| Kiriko        |                   |                     |                   |               |              |               |
| Lifeweaver    |                   |                     |                   |               |              |               |
| Lucio         |         ✅         |          ✅          |         ✅         |       ✅       |       ✔      |               |
| Mercy         |         ✅         |          ✅          |         ✔         |       ✅       |       ✔      |   ✅ Passive   |
| Moira         |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |               |
| Zenyatta      |         ✅         |          ✅          |         ✅         |       ✅       |       ✅      |  ✅ Snap Kick  |

## Changelog

See [releases](https://github.com/MaxwellJung/ow1_emulator/releases)

## Building

For instructions on how to use OverPy, see [here](https://github.com/Zezombye/overpy/wiki)
  
1. Compile main.opy using the compiling instructions at [OverPy Wiki](https://github.com/Zezombye/overpy/wiki/General-usage#Compiling)
2. Open a custom game in Overwatch
3. Paste the compiled gamemode code

## Contributing

1. Find an [issue](https://github.com/MaxwellJung/ow1_emulator/issues) to fix (or submit one yourself)
2. Fork this repo, make a new branch from staging build, then fix the issue from that new branch
3. Submit [pull request](https://github.com/MaxwellJung/ow1_emulator/pulls) to merge your branch to staging branch (make sure to [reference the issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue) and resolve any potential merge conflicts)
4. Wait for your PR to be reviewed and approved.

## Release Cycle

1. For every 3~5 features added to staging branch, the devs will compile a staging build and test each feature manually.
2. If your feature fails the test or fails to meet quality expectations, the PR corresponding to that feature will be reverted to drop the changes.
3. After each feature in staging build is confirmed, the staging branch will be merged to main branch and a new main release build will be announced.

## Coding Style Guidelines

This codebase follows Python's [PEP 8 style guide](https://peps.python.org/pep-0008/) since OverPy follows Python syntax.

1. Variable names should be snake_case. Example: hero_health_armor
2. Function names should be camelCase. Example: applyCustomHealth()
3. File names should be snake_case. Example: custom_heroes.opy
4. No [magic numbers](https://stackoverflow.com/q/47882). Constants should always be referred to by the names defined in ow1_constants.opy or ow2_constants.opy.
5. Rule/subroutine names should follow the format: `rule "[file_name.opy]: My custom rule":` and `@Name "[file_name.opy]: mySubroutineFunc()"`
6. Keep rules simple. Each rule should only perform one task. Try to limit rules to at most 10 lines of code and group large blocks of code into subroutines whenever possible. See `ow1/heroes/bastion.opy` as an example.
