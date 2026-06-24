define noundef i32 @f_gold(i32 noundef %s) unnamed_addr #6 {
start:
  %length = sdiv i32 %s, 3
  %s1 = sub i32 %s, %length
  %breadth = sdiv i32 %s1, 2
  %height = sub i32 %s1, %breadth
  %_6 = mul i32 %breadth, %length
  %_0 = mul i32 %_6, %height
  ret i32 %_0
}
