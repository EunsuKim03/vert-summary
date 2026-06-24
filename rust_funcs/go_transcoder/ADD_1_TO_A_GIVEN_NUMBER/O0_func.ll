define i32 @f_gold(i32 %0) unnamed_addr #3 {
start:
  %m = alloca [4 x i8], align 4
  %x = alloca [4 x i8], align 4
  store i32 %0, ptr %x, align 4
  store i32 1, ptr %m, align 4
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %_5 = load i32, ptr %x, align 4
  %_6 = load i32, ptr %m, align 4
  %_4 = and i32 %_5, %_6
  %_3 = icmp ne i32 %_4, 0
  br i1 %_3, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_11 = load i32, ptr %x, align 4
  %_12 = load i32, ptr %m, align 4
  %1 = xor i32 %_11, %_12
  store i32 %1, ptr %x, align 4
  %_0 = load i32, ptr %x, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_7 = load i32, ptr %x, align 4
  %_8 = load i32, ptr %m, align 4
  %2 = xor i32 %_7, %_8
  store i32 %2, ptr %x, align 4
  %3 = load i32, ptr %m, align 4
  %4 = shl i32 %3, 1
  store i32 %4, ptr %m, align 4
  br label %bb1
}
