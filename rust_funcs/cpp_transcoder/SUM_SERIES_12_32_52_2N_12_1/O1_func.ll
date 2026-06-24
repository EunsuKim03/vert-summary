define noundef range(i32 -715827882, 715827883) i32 @f_gold(i32 noundef %n) unnamed_addr #6 {
start:
  %_5 = shl i32 %n, 1
  %_4 = add i32 %_5, -1
  %_3 = mul i32 %_4, %n
  %_6 = or disjoint i32 %_5, 1
  %_2 = mul i32 %_3, %_6
  %result = sdiv i32 %_2, 3
  ret i32 %result
}
