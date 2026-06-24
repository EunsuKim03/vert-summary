define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %even_bits = and i32 %x, -1431655766
  %odd_bits = and i32 %x, 1431655765
  %even_bits1 = lshr i32 %even_bits, 1
  %odd_bits2 = shl i32 %odd_bits, 1
  %_0 = or i32 %even_bits1, %odd_bits2
  ret i32 %_0
}
