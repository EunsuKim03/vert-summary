define noundef i32 @f_gold(i32 noundef %side) unnamed_addr #4 {
start:
  %area = mul i32 %side, %side
  ret i32 %area
}
