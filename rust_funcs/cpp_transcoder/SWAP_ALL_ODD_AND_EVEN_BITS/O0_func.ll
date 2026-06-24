define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %odd_bits = alloca [4 x i8], align 4
  %even_bits = alloca [4 x i8], align 4
  %0 = and i32 %x, -1431655766
  store i32 %0, ptr %even_bits, align 4
  %1 = and i32 %x, 1431655765
  store i32 %1, ptr %odd_bits, align 4
  %2 = load i32, ptr %even_bits, align 4
  %3 = lshr i32 %2, 1
  store i32 %3, ptr %even_bits, align 4
  %4 = load i32, ptr %odd_bits, align 4
  %5 = shl i32 %4, 1
  store i32 %5, ptr %odd_bits, align 4
  %_8 = load i32, ptr %even_bits, align 4
  %_9 = load i32, ptr %odd_bits, align 4
  %_0 = or i32 %_8, %_9
  ret i32 %_0
}
