# Schedule Widget

Displays a highly customizable schedule view (with or without month card) which is able to display events and to be scrolled.

<p>
<img src="https://raw.githubusercontent.com/leo-ramos/schedule_widget/master/art/image1.png" alt="Screenshot month day view" width="250">
</p>

## Getting started

You should ensure that you add the router as a dependency in your flutter project.
```yaml
dependencies:
 schedule_widget: 0.0.3
```
You should then run `flutter packages upgrade` or update your packages in IntelliJ.

## Usage

Need to include the import the package to the dart file where it will be used, use the below command,

```dart
import 'package:schedule_widget/month_day_view.dart';
```
or 
```dart
import 'package:schedule_widget/week_day_view.dart';
```
**Week day view**

```dart
new WeekDayView(
    taskCardColor: const Color.fromARGB(255, 26, 43, 72),
    taskTitleColor: Colors.white,
    taskSubtitleColor: Colors.blueAccent,
    tasks: [
        Task(
        date: DateTime(2022, 2, 1, 1),
        title: "Teste 01",
        subtitle: "teste 01",
        ),
        Task(
        date: DateTime(2022, 1, 1, 2),
        title: "Teste 02",
        subtitle: "teste 02",
        ),
        Task(
        date: DateTime(2022, 1, 26, 3),
        title: "Teste 03",
        subtitle: "teste 03",
        ),
        Task(
        date: DateTime(2022, 1, 5, 4),
        title: "Teste 04",
        subtitle: "teste 04",
        ),
        Task(
        date: DateTime(2022, 1, 2, 5),
        title: "Teste 05",
        subtitle: "teste 05",
        ),
        Task(
        date: DateTime(2022, 1, 3, 3),
        title: "Teste Dia 6",
        subtitle: "teste dia 6",
        ),
        Task(
        date: DateTime(2022, 1, 2, 5),
        title: "Teste Dia 07",
        subtitle: "teste dia 07",
        ),
    ],
);
```

**Month day view**

```dart
new MonthDayView(
    taskCardColor: const Color.fromARGB(255, 26, 43, 72),
    taskTitleColor: Colors.white,
    taskSubtitleColor: Colors.blueAccent,
    tasks: [
        Task(
        date: DateTime(2022, 2, 1, 1),
        title: "Teste 01",
        subtitle: "teste 01",
        ),
        Task(
        date: DateTime(2022, 1, 1, 2),
        title: "Teste 02",
        subtitle: "teste 02",
        ),
        Task(
        date: DateTime(2022, 1, 26, 3),
        title: "Teste 03",
        subtitle: "teste 03",
        ),
        Task(
        date: DateTime(2022, 1, 5, 4),
        title: "Teste 04",
        subtitle: "teste 04",
        ),
        Task(
        date: DateTime(2022, 1, 2, 5),
        title: "Teste 05",
        subtitle: "teste 05",
        ),
        Task(
        date: DateTime(2022, 1, 3, 3),
        title: "Teste Dia 6",
        subtitle: "teste dia 6",
        ),
        Task(
        date: DateTime(2022, 1, 2, 5),
        title: "Teste Dia 07",
        subtitle: "teste dia 07",
        ),
    ],
);
```


## Options

 * `tasks` Tasks to display.
 * `taskCardColor` color from task container.
 * `taskTitleColor` color from task title.
 * `taskSubtitleColor` color from task subtitle.
 * `highlightTextColor` color from highlight text.
 * `highlightBackgroundColor` color from circular background border to highlight.
 * `textColor` color from days texts.
 * `monthCardColor` color from month container.
 * `monthTextColor` color from month name text.

 You can define the language with the `locale` property

 ## Contributions

You have a lot of options to contribute to this project ! You can :

* [Fork it](https://github.com/leo-ramos/schedule_widget/fork) on Github.
* [Submit](https://github.com/leo-ramos/schedule_widget/issues/new/choose) a feature request or a bug report.
* [Buy me a coffe](https://www.paypal.com/donate/?business=S57LX5P87MKG8&no_recurring=0&currency_code=BRLt) to the developer. Or [Pix](https://nubank.com.br/pagar/5788q/ZKZlPiMlYU) if you are a brazilian.