define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_12 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %min_index = alloca [4 x i8], align 4
  %min = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 0
  %_4 = load i32, ptr %2, align 4
  %3 = sitofp i32 %_4 to float
  store float %3, ptr %min, align 4
  store i32 0, ptr %min_index, align 4
  %_10 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %4 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17he023672f78f1b00eE"(i64 0, i64 %_10) #20
  %_8.0 = extractvalue { i64, i64 } %4, 0
  %_8.1 = extractvalue { i64, i64 } %4, 1
  store i64 %_8.0, ptr %iter, align 8
  %5 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_8.1, ptr %5, align 8
  br label %bb3

bb3:                                              ; preds = %bb10, %bb8, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %6 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc7e85400f0545d10E"(ptr align 8 %iter) #20
  %7 = extractvalue { i64, i64 } %6, 0
  %8 = extractvalue { i64, i64 } %6, 1
  store i64 %7, ptr %_12, align 8
  %9 = getelementptr inbounds i8, ptr %_12, i64 8
  store i64 %8, ptr %9, align 8
  %_14 = load i64, ptr %_12, align 8
  %10 = getelementptr inbounds i8, ptr %_12, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = trunc nuw i64 %_14 to i1
  br i1 %12, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %13 = getelementptr inbounds i8, ptr %_12, i64 8
  %i = load i64, ptr %13, align 8
  %_17 = load float, ptr %min, align 4
  %_20 = icmp ult i64 %i, 2
  br i1 %_20, label %bb8, label %panic

bb7:                                              ; preds = %bb3
  %_0 = load i32, ptr %min_index, align 4
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_19 = load i32, ptr %14, align 4
  %_18 = sitofp i32 %_19 to float
  %_16 = fcmp ogt float %_17, %_18
  br i1 %_16, label %bb9, label %bb3

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_5d92c5a971cfec81e96183ea68862ccf) #22
  unreachable

bb9:                                              ; preds = %bb8
  %_22 = icmp ult i64 %i, 2
  br i1 %_22, label %bb10, label %panic1

bb10:                                             ; preds = %bb9
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %i
  %_21 = load i32, ptr %15, align 4
  %16 = sitofp i32 %_21 to float
  store float %16, ptr %min, align 4
  %17 = trunc i64 %i to i32
  store i32 %17, ptr %min_index, align 4
  br label %bb3

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_1590f74cecc0578df8e342558b972497) #22
  unreachable

bb5:                                              ; No predecessors!
  unreachable
}
