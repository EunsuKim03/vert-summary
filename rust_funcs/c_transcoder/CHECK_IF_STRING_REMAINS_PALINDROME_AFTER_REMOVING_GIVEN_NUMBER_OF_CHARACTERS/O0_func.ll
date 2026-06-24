define i32 @f_gold(ptr align 4 %str.0, i64 %str.1, i32 %n) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_5 = sext i32 %n to i64
  %_4 = icmp uge i64 %str.1, %_5
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb3

bb1:                                              ; preds = %start
  store i32 1, ptr %_0, align 4
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}
