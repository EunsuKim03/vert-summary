define i32 @f_gold(i64 %0, i32 %size) unnamed_addr #3 {
start:
  %_13 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %curr_max = alloca [4 x i8], align 4
  %max_so_far = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %1, i64 8, i1 false)
  %2 = getelementptr inbounds nuw i32, ptr %a, i64 0
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %max_so_far, align 4
  %4 = getelementptr inbounds nuw i32, ptr %a, i64 0
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %curr_max, align 4
  %_11 = sext i32 %size to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %6 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h48f117d49633200aE"(i64 0, i64 %_11) #20
  %_9.0 = extractvalue { i64, i64 } %6, 0
  %_9.1 = extractvalue { i64, i64 } %6, 1
  store i64 %_9.0, ptr %iter, align 8
  %7 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_9.1, ptr %7, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %8 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5545788d730f338eE"(ptr align 8 %iter) #20
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  store i64 %9, ptr %_13, align 8
  %11 = getelementptr inbounds i8, ptr %_13, i64 8
  store i64 %10, ptr %11, align 8
  %_15 = load i64, ptr %_13, align 8
  %12 = getelementptr inbounds i8, ptr %_13, i64 8
  %13 = load i64, ptr %12, align 8
  %14 = trunc nuw i64 %_15 to i1
  br i1 %14, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %15 = getelementptr inbounds i8, ptr %_13, i64 8
  %i = load i64, ptr %15, align 8
  %_19 = icmp ult i64 %i, 2
  br i1 %_19, label %bb9, label %panic

bb8:                                              ; preds = %bb4
  %_0 = load i32, ptr %max_so_far, align 4
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %16 = getelementptr inbounds nuw i32, ptr %a, i64 %i
  %_18 = load i32, ptr %16, align 4
  %_21 = load i32, ptr %curr_max, align 4
  %_23 = icmp ult i64 %i, 2
  br i1 %_23, label %bb10, label %panic1

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_41c112c02773a421ed5ab39c60d56356) #22
  unreachable

bb10:                                             ; preds = %bb9
  %17 = getelementptr inbounds nuw i32, ptr %a, i64 %i
  %_22 = load i32, ptr %17, align 4
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_21, i32 %_22)
  %_24.0 = extractvalue { i32, i1 } %18, 0
  %_24.1 = extractvalue { i32, i1 } %18, 1
  br i1 %_24.1, label %panic2, label %bb11

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 2, ptr align 8 @alloc_3de79cdd369cf7afeca5fbf4b6a76e17) #22
  unreachable

bb11:                                             ; preds = %bb10
  %_17 = call i32 @max(i32 %_18, i32 %_24.0)
  store i32 %_17, ptr %curr_max, align 4
  %_26 = load i32, ptr %max_so_far, align 4
  %_27 = load i32, ptr %curr_max, align 4
  %_25 = call i32 @max(i32 %_26, i32 %_27)
  store i32 %_25, ptr %max_so_far, align 4
  br label %bb4

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_e9c3bcb4a42c356964cb8ede63a25d97) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
