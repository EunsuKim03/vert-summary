define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %_3 = icmp eq i32 %n, 0
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_4 = icmp eq i32 %n, 1
  br i1 %_4, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 1, ptr %_0, align 4
  br label %bb14

bb3:                                              ; preds = %bb1
  %_7 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha861194ae6ff671fE"(i64 1, i64 %_7) #20
  %_5.0 = extractvalue { i64, i64 } %0, 0
  %_5.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_5.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %1, align 8
  br label %bb5

bb5:                                              ; preds = %bb12, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h7c4c451ee1811098E"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_9, align 8
  %5 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %4, ptr %5, align 8
  %_11 = load i64, ptr %_9, align 8
  %6 = getelementptr inbounds i8, ptr %_9, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_11 to i1
  br i1 %8, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %9 = getelementptr inbounds i8, ptr %_9, i64 8
  %i = load i64, ptr %9, align 8
  %_16.0 = sub i64 %i, 1
  %_16.1 = icmp ult i64 %i, 1
  br i1 %_16.1, label %panic, label %bb10

bb9:                                              ; preds = %bb5
  store i32 1, ptr %_0, align 4
  br label %bb14

bb14:                                             ; preds = %bb2, %bb13, %bb9
  %10 = load i32, ptr %_0, align 4
  ret i32 %10

bb10:                                             ; preds = %bb8
  %_19 = icmp ult i64 %_16.0, %arr.1
  br i1 %_19, label %bb11, label %panic1

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_bef368d9fdee747729bc67e87e50f699) #22
  unreachable

bb11:                                             ; preds = %bb10
  %11 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_16.0
  %_14 = load float, ptr %11, align 4
  %_23 = icmp ult i64 %i, %arr.1
  br i1 %_23, label %bb12, label %panic2

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16.0, i64 %arr.1, ptr align 8 @alloc_0c5158ce3085ac6b5da1973912014619) #22
  unreachable

bb12:                                             ; preds = %bb11
  %12 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i
  %_20 = load float, ptr %12, align 4
  %_13 = fcmp ogt float %_14, %_20
  br i1 %_13, label %bb13, label %bb5

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_f03e9e7085689ddf7e8c2b9714595b22) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i32 0, ptr %_0, align 4
  br label %bb14

bb7:                                              ; No predecessors!
  unreachable
}
