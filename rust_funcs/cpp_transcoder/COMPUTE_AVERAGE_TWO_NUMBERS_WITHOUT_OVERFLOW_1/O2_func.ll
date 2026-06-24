define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b) unnamed_addr #4 {
start:
  %_4 = sdiv i32 %a, 2
  %_5 = sdiv i32 %b, 2
  %_3 = add nsw i32 %_5, %_4
  %_8 = srem i32 %a, 2
  %_9 = srem i32 %b, 2
  %_7 = add nsw i32 %_9, %_8
  %_6.lhs.trunc = trunc nsw i32 %_7 to i8
  %_61 = sdiv i8 %_6.lhs.trunc, 2
  %_6.sext = sext i8 %_61 to i32
  %_0 = add i32 %_3, %_6.sext
  ret i32 %_0
}
