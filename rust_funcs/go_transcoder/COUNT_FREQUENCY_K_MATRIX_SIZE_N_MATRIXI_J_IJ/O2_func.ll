define noundef i32 @f_gold(i32 noundef %n, i32 noundef %k) unnamed_addr #4 {
start:
  %_4 = add i32 %n, 1
  %_3.not = icmp slt i32 %_4, %k
  %0 = add i32 %k, -1
  %_6 = shl i32 %n, 1
  %_5 = or disjoint i32 %_6, 1
  %1 = sub i32 %_5, %k
  %_0.sroa.0.0 = select i1 %_3.not, i32 %1, i32 %0
  ret i32 %_0.sroa.0.0
}
