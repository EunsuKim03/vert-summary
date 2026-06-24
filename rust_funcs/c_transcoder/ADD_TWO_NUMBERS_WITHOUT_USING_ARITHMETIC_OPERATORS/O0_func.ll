define i32 @f_gold(i32 %0, i32 %1) unnamed_addr #3 {
start:
  %y = alloca [4 x i8], align 4
  %x = alloca [4 x i8], align 4
  store i32 %0, ptr %x, align 4
  store i32 %1, ptr %y, align 4
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %_4 = load i32, ptr %y, align 4
  %_3 = icmp ne i32 %_4, 0
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_0 = load i32, ptr %x, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_6 = load i32, ptr %x, align 4
  %_7 = load i32, ptr %y, align 4
  %carry = and i32 %_6, %_7
  %_8 = load i32, ptr %x, align 4
  %_9 = load i32, ptr %y, align 4
  %2 = xor i32 %_8, %_9
  store i32 %2, ptr %x, align 4
  %3 = shl i32 %carry, 1
  store i32 %3, ptr %y, align 4
  br label %bb1
}
