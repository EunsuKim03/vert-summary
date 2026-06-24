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
  %_8 = xor i32 %a, -1
  %_7 = and i32 %_8, 1
  %_6 = icmp eq i32 %_7, 1
  br i1 %_6, label %bb7, label %bb8

bb5:                                              ; preds = %bb4
  store i32 %a, ptr %_0, align 4
  br label %bb25

bb8:                                              ; preds = %bb6
  %_25 = xor i32 %b, -1
  %_24 = and i32 %_25, 1
  %_23 = icmp eq i32 %_24, 1
  br i1 %_23, label %bb16, label %bb17

bb7:                                              ; preds = %bb6
  %_10 = and i32 %b, 1
  %_9 = icmp eq i32 %_10, 1
  br i1 %_9, label %bb9, label %bb11

bb17:                                             ; preds = %bb8
  %_29 = icmp sgt i32 %a, %b
  br i1 %_29, label %bb19, label %bb20

bb16:                                             ; preds = %bb8
  %_26 = ashr i32 %b, 1
  %0 = call i32 @f_gold(i32 %a, i32 %_26)
  store i32 %0, ptr %_0, align 4
  br label %bb25

bb20:                                             ; preds = %bb17
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %b, i32 %a)
  %_37.0 = extractvalue { i32, i1 } %1, 0
  %_37.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_37.1, label %panic, label %bb23

bb19:                                             ; preds = %bb17
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %a, i32 %b)
  %_32.0 = extractvalue { i32, i1 } %2, 0
  %_32.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_32.1, label %panic1, label %bb21

bb23:                                             ; preds = %bb20
  %_35 = ashr i32 %_37.0, 1
  %3 = call i32 @f_gold(i32 %_35, i32 %a)
  store i32 %3, ptr %_0, align 4
  br label %bb25

panic:                                            ; preds = %bb20
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_beb99374574c36ccb9564734f8f63af8) #22
  unreachable

bb25:                                             ; preds = %bb1, %bb3, %bb5, %bb9, %bb11, %bb16, %bb21, %bb23
  %4 = load i32, ptr %_0, align 4
  ret i32 %4

bb21:                                             ; preds = %bb19
  %_30 = ashr i32 %_32.0, 1
  %5 = call i32 @f_gold(i32 %_30, i32 %b)
  store i32 %5, ptr %_0, align 4
  br label %bb25

panic1:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a94e7f8e73b5db59eb310bf7e90a033c) #22
  unreachable

bb11:                                             ; preds = %bb7
  %_15 = ashr i32 %a, 1
  %_18 = ashr i32 %b, 1
  %_14 = call i32 @f_gold(i32 %_15, i32 %_18)
  %6 = shl i32 %_14, 1
  store i32 %6, ptr %_0, align 4
  br label %bb25

bb9:                                              ; preds = %bb7
  %_11 = ashr i32 %a, 1
  %7 = call i32 @f_gold(i32 %_11, i32 %b)
  store i32 %7, ptr %_0, align 4
  br label %bb25
}
