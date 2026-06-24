define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %b2 = alloca [4 x i8], align 4
  %a1 = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  store i32 0, ptr %res, align 4
  store i32 %a, ptr %a1, align 4
  store i32 %b, ptr %b2, align 4
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  %_7 = load i32, ptr %b2, align 4
  %_6 = icmp ugt i32 %_7, 0
  br i1 %_6, label %bb2, label %bb8

bb8:                                              ; preds = %bb1
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_10 = load i32, ptr %b2, align 4
  %_9 = and i32 %_10, 1
  %_8 = icmp eq i32 %_9, 1
  br i1 %_8, label %bb3, label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %_14 = load i32, ptr %a1, align 4
  %0 = shl i32 %_14, 1
  store i32 %0, ptr %a1, align 4
  %_17 = load i32, ptr %b2, align 4
  %1 = lshr i32 %_17, 1
  store i32 %1, ptr %b2, align 4
  br label %bb1

bb3:                                              ; preds = %bb2
  %_11 = load i32, ptr %res, align 4
  %_12 = load i32, ptr %a1, align 4
  %_13.0 = add i32 %_11, %_12
  %_13.1 = icmp ult i32 %_13.0, %_11
  br i1 %_13.1, label %panic, label %bb4

bb4:                                              ; preds = %bb3
  store i32 %_13.0, ptr %res, align 4
  br label %bb5

panic:                                            ; preds = %bb3
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7d3f29050b4206670666c491b71890ba) #22
  unreachable
}
