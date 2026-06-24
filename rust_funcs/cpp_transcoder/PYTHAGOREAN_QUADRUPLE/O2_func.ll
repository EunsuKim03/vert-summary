define noundef range(i32 0, 2) i32 @f_gold(i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d) unnamed_addr #4 {
start:
  %_7 = mul i32 %a, %a
  %_8 = mul i32 %b, %b
  %_6 = add i32 %_8, %_7
  %_9 = mul i32 %c, %c
  %sum = add i32 %_6, %_9
  %_11 = mul i32 %d, %d
  %_10 = icmp eq i32 %_11, %sum
  %. = zext i1 %_10 to i32
  ret i32 %.
}
