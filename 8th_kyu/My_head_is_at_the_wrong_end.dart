List<String> fixTheMeerkat(List<String> arr) {
  List<String> result = [];
  for (int i = arr.length - 1; i >= 0; i--) {
    result.add(arr[i]);
  }
  return result;
}

bool listsEqual(List<dynamic> list1, List<dynamic> list2) {
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
  assert(listsEqual(fixTheMeerkat(["tail", "body", "head"]), ["head", "body", "tail"]));
  assert(listsEqual(fixTheMeerkat(["tails", "body", "heads"]), ["heads", "body", "tails"]));
  assert(listsEqual(fixTheMeerkat(["bottom", "middle", "top"]), ["top", "middle", "bottom"]));
  assert(listsEqual(fixTheMeerkat(["lower legs", "torso", "upper legs"]), ["upper legs", "torso", "lower legs"]));
  assert(listsEqual(fixTheMeerkat(["ground", "rainbow", "sky"]), ["sky", "rainbow", "ground"]));
}
