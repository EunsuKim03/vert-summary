define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = and i32 %n, 1
  %_2 = icmp eq i32 %_3, 1
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 -1, ptr %_0, align 4
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}
