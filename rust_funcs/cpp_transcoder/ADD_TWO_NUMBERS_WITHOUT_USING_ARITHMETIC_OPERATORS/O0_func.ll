define i32 @f_gold(i32 %x, i32 %y) unnamed_addr #3 {
start:
  %y2 = alloca [4 x i8], align 4
  %x1 = alloca [4 x i8], align 4
  store i32 %x, ptr %x1, align 4
  store i32 %y, ptr %y2, align 4
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %_6 = load i32, ptr %y2, align 4
  %_5 = icmp ne i32 %_6, 0
  br i1 %_5, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_0 = load i32, ptr %x1, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_8 = load i32, ptr %x1, align 4
  %_9 = load i32, ptr %y2, align 4
  %carry = and i32 %_8, %_9
  %_10 = load i32, ptr %x1, align 4
  %_11 = load i32, ptr %y2, align 4
  %0 = xor i32 %_10, %_11
  store i32 %0, ptr %x1, align 4
  %1 = shl i32 %carry, 1
  store i32 %1, ptr %y2, align 4
  br label %bb1
}
