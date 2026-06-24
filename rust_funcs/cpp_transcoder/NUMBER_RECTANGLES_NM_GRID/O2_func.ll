define noundef range(i32 -536870912, 536870912) i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #4 {
start:
  %_5 = mul i32 %m, %n
  %_6 = add i32 %n, 1
  %_4 = mul i32 %_5, %_6
  %_7 = add i32 %m, 1
  %_3 = mul i32 %_4, %_7
  %_0 = sdiv i32 %_3, 4
  ret i32 %_0
}
