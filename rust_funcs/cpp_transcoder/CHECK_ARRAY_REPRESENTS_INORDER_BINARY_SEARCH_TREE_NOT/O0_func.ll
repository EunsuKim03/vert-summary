define i32 @f_gold(i64 %0, i32 %n) unnamed_addr #3 {
start:
  %_8 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  %_3 = icmp eq i32 %n, 0
  br i1 %_3, label %bb2, label %bb1

bb1:                                              ; preds = %start
  %_4 = icmp eq i32 %n, 1
  br i1 %_4, label %bb2, label %bb3

bb2:                                              ; preds = %bb1, %start
  store i32 1, ptr %_0, align 4
  br label %bb14

bb3:                                              ; preds = %bb1
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf207481be7f05017E"(i32 1, i32 %n) #20
  %_5.0 = extractvalue { i32, i32 } %2, 0
  %_5.1 = extractvalue { i32, i32 } %2, 1
  store i32 %_5.0, ptr %iter, align 4
  %3 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_5.1, ptr %3, align 4
  br label %bb5

bb5:                                              ; preds = %bb12, %bb3
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h43da19155f07313dE"(ptr align 4 %iter) #20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = extractvalue { i32, i32 } %4, 1
  store i32 %5, ptr %_8, align 4
  %7 = getelementptr inbounds i8, ptr %_8, i64 4
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %_8, align 4
  %9 = getelementptr inbounds i8, ptr %_8, i64 4
  %10 = load i32, ptr %9, align 4
  %_10 = zext i32 %8 to i64
  %11 = trunc nuw i64 %_10 to i1
  br i1 %11, label %bb8, label %bb9

bb8:                                              ; preds = %bb5
  %12 = getelementptr inbounds i8, ptr %_8, i64 4
  %i = load i32, ptr %12, align 4
  %_15 = sext i32 %i to i64
  %_16.0 = sub i64 %_15, 1
  %_16.1 = icmp ult i64 %_15, 1
  br i1 %_16.1, label %panic, label %bb10

bb9:                                              ; preds = %bb5
  store i32 1, ptr %_0, align 4
  br label %bb14

bb14:                                             ; preds = %bb2, %bb13, %bb9
  %13 = load i32, ptr %_0, align 4
  ret i32 %13

bb10:                                             ; preds = %bb8
  %_17 = icmp ult i64 %_16.0, 2
  br i1 %_17, label %bb11, label %panic1

panic:                                            ; preds = %bb8
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8e4cfd470781556f22e7ec6716a2255f) #22
  unreachable

bb11:                                             ; preds = %bb10
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_16.0
  %_13 = load i32, ptr %14, align 4
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb12, label %panic2

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_16.0, i64 2, ptr align 8 @alloc_9a3b8d8505ff7f328a76038ccdd853c3) #22
  unreachable

bb12:                                             ; preds = %bb11
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_18 = load i32, ptr %15, align 4
  %_12 = icmp sgt i32 %_13, %_18
  br i1 %_12, label %bb13, label %bb5

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_1de4dca7228c0e7e7b08d10065fd390d) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i32 0, ptr %_0, align 4
  br label %bb14

bb7:                                              ; No predecessors!
  unreachable
}
