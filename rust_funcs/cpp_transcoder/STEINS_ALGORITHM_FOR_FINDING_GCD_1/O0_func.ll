define i32 @f_gold(i32 %a, i32 %b) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp eq i32 %a, %b
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_4 = icmp eq i32 %a, 0
  br i1 %_4, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i32 %a, ptr %_0, align 4
  br label %bb25

bb4:                                              ; preds = %bb2
  %_5 = icmp eq i32 %b, 0
  br i1 %_5, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  store i32 %b, ptr %_0, align 4
  br label %bb25

bb6:                                              ; preds = %bb4
  %_7 = and i32 %a, 1
  %_6 = icmp eq i32 %_7, 0
  br i1 %_6, label %bb7, label %bb8

bb5:                                              ; preds = %bb4
  store i32 %a, ptr %_0, align 4
  br label %bb25

bb8:                                              ; preds = %bb6
  %_23 = and i32 %b, 1
  %_22 = icmp eq i32 %_23, 0
  br i1 %_22, label %bb16, label %bb17

bb7:                                              ; preds = %bb6
  %_9 = and i32 %b, 1
  %_8 = icmp ne i32 %_9, 0
  br i1 %_8, label %bb9, label %bb11

bb17:                                             ; preds = %bb8
  %_27 = icmp sgt i32 %a, %b
  br i1 %_27, label %bb19, label %bb20

bb16:                                             ; preds = %bb8
  %_24 = ashr i32 %b, 1
  %0 = call i32 @f_gold(i32 %a, i32 %_24)
  store i32 %0, ptr %_0, align 4
  br label %bb25

bb20:                                             ; preds = %bb17
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %b, i32 %a)
  %_35.0 = extractvalue { i32, i1 } %1, 0
  %_35.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_35.1, label %panic, label %bb23

bb19:                                             ; preds = %bb17
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %a, i32 %b)
  %_30.0 = extractvalue { i32, i1 } %2, 0
  %_30.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_30.1, label %panic1, label %bb21

bb23:                                             ; preds = %bb20
  %_33 = ashr i32 %_35.0, 1
  %3 = call i32 @f_gold(i32 %_33, i32 %a)
  store i32 %3, ptr %_0, align 4
  br label %bb25

panic:                                            ; preds = %bb20
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b8838555fb1895c841eaaaf08911df8d) #22
  unreachable

bb25:                                             ; preds = %bb1, %bb3, %bb5, %bb9, %bb11, %bb16, %bb21, %bb23
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb21:                                             ; preds = %bb19
  %_28 = ashr i32 %_30.0, 1
  %5 = call i32 @f_gold(i32 %_28, i32 %b)
  store i32 %5, ptr %_0, align 4
  br label %bb25

panic1:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_abcb1e114ca23c7f96e2a872eb4295e5) #22
  unreachable

bb11:                                             ; preds = %bb7
  %_14 = ashr i32 %a, 1
  %_17 = ashr i32 %b, 1
  %_13 = call i32 @f_gold(i32 %_14, i32 %_17)
  %6 = shl i32 %_13, 1
  store i32 %6, ptr %_0, align 4
  br label %bb25

bb9:                                              ; preds = %bb7
  %_10 = ashr i32 %a, 1
  %7 = call i32 @f_gold(i32 %_10, i32 %b)
  store i32 %7, ptr %_0, align 4
  br label %bb25
}
