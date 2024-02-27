List<bool> flickSwitch(List<String> lst) {
  bool isTrue = true;
  List<bool> result = [];
  for (int i = 0; i < lst.length; i++) {
    lst[i] == "flick" ? isTrue = !isTrue : isTrue = isTrue;
    result.add(isTrue);
  }
  return result;
}

bool listsAreEqual(List<dynamic> list1, List<dynamic> list2) {
  if (list1.length != list2.length) {
    return false;
  }

  for (int i = 0; i < list1.length; i++) {
    if (list1[i] != list2[i]) {
      return false;
    }
  }

  return true;
}


void main() {
  var expected1 = [true, false, false, false];
  var actual1 = flickSwitch(['codewars', 'flick', 'code', 'wars']);
  assert(listsAreEqual(expected1, actual1));

  var expected2 = [false, false, false, false];
  var actual2 = flickSwitch(['flick', 'chocolate', 'adventure', 'sunshine']);
  assert(listsAreEqual(expected2, actual2));

  var expected3 = [true, true, false, false, true];
  var actual3 = flickSwitch(['bicycle', 'jarmony', 'flick', 'sheep', 'flick']);
  assert(listsAreEqual(expected3, actual3));

  var expected4 = [true, true, true, false];
  var actual4 = flickSwitch(['john', 'smith', 'susan', 'flick']);
  assert(listsAreEqual(expected4, actual4));

  var expected5 = [false, true, false, true, false];
  var actual5 = flickSwitch(['flick', 'flick', 'flick', 'flick', 'flick']);
  assert(listsAreEqual(expected5, actual5));
}
