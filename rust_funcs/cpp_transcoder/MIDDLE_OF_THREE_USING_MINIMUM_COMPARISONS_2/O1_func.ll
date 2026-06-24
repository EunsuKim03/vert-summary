define noundef i32 @f_gold(i32 noundef %a, i32 noundef %b, i32 noundef %c) unnamed_addr #6 {
start:
  %x = sub i32 %a, %b
  %y = sub i32 %b, %c
  %_8 = mul i32 %y, %x
  %_7 = icmp sgt i32 %_8, 0
  %z = sub i32 %a, %c
  %_10 = mul i32 %z, %x
  %_9 = icmp sgt i32 %_10, 0
  %c.a = select i1 %_9, i32 %c, i32 %a
  %_0.sroa.0.0 = select i1 %_7, i32 %b, i32 %c.a
  ret i32 %_0.sroa.0.0
}
