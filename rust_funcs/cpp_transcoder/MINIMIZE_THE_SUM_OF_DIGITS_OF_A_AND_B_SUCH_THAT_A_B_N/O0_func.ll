define i32 @f_gold(i32 %n) unnamed_addr #3 {
start:
  %n1 = alloca [8 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %sum, align 4
  %0 = sext i32 %n to i64
  store i64 %0, ptr %n1, align 8
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %_5 = load i64, ptr %n1, align 8
  %_4 = icmp ugt i64 %_5, 0
  br i1 %_4, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  %_13 = load i32, ptr %sum, align 4
  %_12 = icmp eq i32 %_13, 1
  br i1 %_12, label %bb7, label %bb8

bb2:                                              ; preds = %bb1
  %_8 = load i64, ptr %n1, align 8
  %_7 = urem i64 %_8, 10
  %_6 = trunc i64 %_7 to i32
  %1 = load i32, ptr %sum, align 4
  %2 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 %_6)
  %_10.0 = extractvalue { i32, i1 } %2, 0
  %_10.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_10.1, label %panic, label %bb4

bb8:                                              ; preds = %bb6
  %3 = load i32, ptr %sum, align 4
  store i32 %3, ptr %_0, align 4
  br label %bb9

bb7:                                              ; preds = %bb6
  store i32 10, ptr %_0, align 4
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb4:                                              ; preds = %bb2
  store i32 %_10.0, ptr %sum, align 4
  %5 = load i64, ptr %n1, align 8
  %6 = udiv i64 %5, 10
  store i64 %6, ptr %n1, align 8
  br label %bb1

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_17b15959f6e6f1e2bd1e25d463b778e8) #22
  unreachable
}
