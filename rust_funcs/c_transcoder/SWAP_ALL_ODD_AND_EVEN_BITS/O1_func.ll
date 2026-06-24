define noundef i32 @f_gold(i32 noundef %x) unnamed_addr #6 {
start:
  %even_bits = lshr i32 %x, 1
  %even_bits1 = and i32 %even_bits, 1431655765
  %odd_bits = shl i32 %x, 1
  %odd_bits2 = and i32 %odd_bits, -1431655766
  %_0 = or disjoint i32 %even_bits1, %odd_bits2
  ret i32 %_0
}
