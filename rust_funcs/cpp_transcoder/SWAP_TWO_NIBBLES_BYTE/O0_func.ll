define i32 @f_gold(i32 %x) unnamed_addr #3 {
start:
  %x1 = alloca [4 x i8], align 4
  store i32 %x, ptr %x1, align 4
  %_5 = load i32, ptr %x1, align 4
  %_4 = and i32 %_5, 15
  %_3 = shl i32 %_4, 4
  %_10 = load i32, ptr %x1, align 4
  %_9 = and i32 %_10, 240
  %_8 = ashr i32 %_9, 4
  %0 = or i32 %_3, %_8
  store i32 %0, ptr %x1, align 4
  %_0 = load i32, ptr %x1, align 4
  ret i32 %_0
}
