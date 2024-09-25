List<int> bubbleSort(List<int> list, [int? n]) {
  n ??= list.length; 
  return (n == 1)
      ? list 
      : bubbleSort(
          list..asMap().forEach((i, value) {
            if (i < n! - 1 && list[i] > list[i + 1]) {
              final temp = list[i];
              list[i] = list[i + 1];
              list[i + 1] = temp;
            }
          }),
          n - 1); 
}
