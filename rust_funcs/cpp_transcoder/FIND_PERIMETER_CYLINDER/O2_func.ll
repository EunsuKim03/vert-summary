define noundef range(i32 0, -1) i32 @f_gold(i32 noundef %diameter, i32 noundef %height) unnamed_addr #4 {
start:
  %_3 = add i32 %height, %diameter
  %_0 = shl i32 %_3, 1
  ret i32 %_0
}
