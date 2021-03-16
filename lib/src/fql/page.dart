import 'result.dart';

enum CursorType { EMPTY }

class Page {
  final Object before;
  final Object after;
  final List data;

  Page(this.before, this.after, this.data);

  factory Page.fromResource(
      {required Object before, required Object after, required List data}) {
    var beforeCursor = before;
    if (before is List) {
      beforeCursor = List.from(before).map((element) {
        if (element is RefResult) {
          return element.asRef();
        }
        return element;
      }).toList(growable: false);
    }

    var afterCursor = after;
    if (after is List) {
      afterCursor = List.from(after).map((element) {
        if (element is RefResult) {
          return element.asRef();
        }
        return element;
      }).toList(growable: false);
    }

    return Page(beforeCursor, afterCursor, data);
  }

  @override
  String toString() {
    return 'Page(${{
      'before': before,
      'after': after,
      'size': data.length
    }.toString()})';
  }
}
