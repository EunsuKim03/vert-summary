define noundef range(i32 -2147483640, -2147483645) i32 @f_gold(i32 noundef %n) unnamed_addr #4 {
start:
  %0 = srem i32 %n, 10
  %a = sub nsw i32 %n, %0
  %1 = add i32 %a, 10
  %_6 = sub i32 %1, %n
  %_4 = icmp sgt i32 %0, %_6
  %spec.store.select = select i1 %_4, i32 %1, i32 %a
  ret i32 %spec.store.select
}
