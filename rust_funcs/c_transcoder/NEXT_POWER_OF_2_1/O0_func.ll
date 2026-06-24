define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %0 = alloca [4 x i8], align 4
  %p = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 1, ptr %p, align 4
  %_3 = icmp ugt i32 %n, 0
  br i1 %_3, label %bb1, label %bb4

bb4:                                              ; preds = %bb5, %bb1, %start
  %_7 = load i32, ptr %p, align 4
  %_6 = icmp ult i32 %_7, %n
  br i1 %_6, label %bb5, label %bb7

bb1:                                              ; preds = %start
  %1 = call i32 @llvm.cttz.i32(i32 %n, i1 false)
  store i32 %1, ptr %0, align 4
  %_0.i = load i32, ptr %0, align 4
  %_4 = icmp eq i32 %_0.i, 0
  br i1 %_4, label %bb3, label %bb4

bb3:                                              ; preds = %bb1
  store i32 %n, ptr %_0, align 4
  br label %bb8

bb7:                                              ; preds = %bb4
  %2 = load i32, ptr %p, align 4
  store i32 %2, ptr %_0, align 4
  br label %bb8

bb5:                                              ; preds = %bb4
  %3 = load i32, ptr %p, align 4
  %4 = shl i32 %3, 1
  store i32 %4, ptr %p, align 4
  br label %bb4

bb8:                                              ; preds = %bb3, %bb7
  %5 = load i32, ptr %_0, align 4
  ret i32 %5
}
