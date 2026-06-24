define i32 @f_gold(ptr align 4 %arr.0, i64 %arr.1, i32 %n) unnamed_addr #3 {
start:
  %_15 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %curr_count = alloca [4 x i8], align 4
  %res = alloca [4 x i8], align 4
  %max_count = alloca [4 x i8], align 4
; call alloc::slice::<impl [T]>::sort
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h639387eb4a5a5265E"(ptr align 4 %arr.0, i64 %arr.1) #20
  store i32 1, ptr %max_count, align 4
  %_9 = icmp ult i64 0, %arr.1
  br i1 %_9, label %bb2, label %panic

bb2:                                              ; preds = %start
  %0 = getelementptr inbounds nuw i32, ptr %arr.0, i64 0
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %res, align 4
  store i32 1, ptr %curr_count, align 4
  %_13 = sext i32 %n to i64
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %2 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd72c4af791633ebeE"(i64 1, i64 %_13) #20
  %_11.0 = extractvalue { i64, i64 } %2, 0
  %_11.1 = extractvalue { i64, i64 } %2, 1
  store i64 %_11.0, ptr %iter, align 8
  %3 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_11.1, ptr %3, align 8
  br label %bb4

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %arr.1, ptr align 8 @alloc_4cedbc4731a56febafc0883e86aa36ef) #22
  unreachable

bb4:                                              ; preds = %bb13, %bb18, %bb2
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %4 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd481e373f2bc1593E"(ptr align 8 %iter) #20
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %_15, align 8
  %7 = getelementptr inbounds i8, ptr %_15, i64 8
  store i64 %6, ptr %7, align 8
  %_17 = load i64, ptr %_15, align 8
  %8 = getelementptr inbounds i8, ptr %_15, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = trunc nuw i64 %_17 to i1
  br i1 %10, label %bb7, label %bb8

bb7:                                              ; preds = %bb4
  %11 = getelementptr inbounds i8, ptr %_15, i64 8
  %i = load i64, ptr %11, align 8
  %_23 = icmp ult i64 %i, %arr.1
  br i1 %_23, label %bb9, label %panic3

bb8:                                              ; preds = %bb4
  %_42 = load i32, ptr %curr_count, align 4
  %_43 = load i32, ptr %max_count, align 4
  %_41 = icmp sgt i32 %_42, %_43
  br i1 %_41, label %bb19, label %bb22

bb22:                                             ; preds = %bb21, %bb8
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb19:                                             ; preds = %bb8
  %_44 = load i32, ptr %curr_count, align 4
  store i32 %_44, ptr %max_count, align 4
  %_47 = sext i32 %n to i64
  %_48.0 = sub i64 %_47, 1
  %_48.1 = icmp ult i64 %_47, 1
  br i1 %_48.1, label %panic1, label %bb20

bb20:                                             ; preds = %bb19
  %_51 = icmp ult i64 %_48.0, %arr.1
  br i1 %_51, label %bb21, label %panic2

panic1:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_9ba50c5521f1a4b7152fa93b9ab2274a) #22
  unreachable

bb21:                                             ; preds = %bb20
  %12 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_48.0
  %_45 = load i32, ptr %12, align 4
  store i32 %_45, ptr %res, align 4
  br label %bb22

panic2:                                           ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_48.0, i64 %arr.1, ptr align 8 @alloc_5a61e5801751a068bf892f6ad929b9e4) #22
  unreachable

bb9:                                              ; preds = %bb7
  %13 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %i
  %_20 = load i32, ptr %13, align 4
  %_26.0 = sub i64 %i, 1
  %_26.1 = icmp ult i64 %i, 1
  br i1 %_26.1, label %panic4, label %bb10

panic3:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_40592c2622fe1e35a74419cee184f818) #22
  unreachable

bb10:                                             ; preds = %bb9
  %_29 = icmp ult i64 %_26.0, %arr.1
  br i1 %_29, label %bb11, label %panic5

panic4:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_aac688bb4e218d144077335eebbd6f3d) #22
  unreachable

bb11:                                             ; preds = %bb10
  %14 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_26.0
  %_24 = load i32, ptr %14, align 4
  %_19 = icmp eq i32 %_20, %_24
  br i1 %_19, label %bb12, label %bb14

panic5:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_26.0, i64 %arr.1, ptr align 8 @alloc_dc29205e65627d1bb774551b626c9acd) #22
  unreachable

bb14:                                             ; preds = %bb11
  %_32 = load i32, ptr %curr_count, align 4
  %_33 = load i32, ptr %max_count, align 4
  %_31 = icmp sgt i32 %_32, %_33
  br i1 %_31, label %bb15, label %bb18

bb12:                                             ; preds = %bb11
  %15 = load i32, ptr %curr_count, align 4
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %15, i32 1)
  %_30.0 = extractvalue { i32, i1 } %16, 0
  %_30.1 = extractvalue { i32, i1 } %16, 1
  br i1 %_30.1, label %panic8, label %bb13

bb18:                                             ; preds = %bb17, %bb14
  store i32 1, ptr %curr_count, align 4
  br label %bb4

bb15:                                             ; preds = %bb14
  %_34 = load i32, ptr %curr_count, align 4
  store i32 %_34, ptr %max_count, align 4
  %_37.0 = sub i64 %i, 1
  %_37.1 = icmp ult i64 %i, 1
  br i1 %_37.1, label %panic6, label %bb16

bb16:                                             ; preds = %bb15
  %_40 = icmp ult i64 %_37.0, %arr.1
  br i1 %_40, label %bb17, label %panic7

panic6:                                           ; preds = %bb15
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_836a2e4c3faaca9625f9223492380875) #22
  unreachable

bb17:                                             ; preds = %bb16
  %17 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_37.0
  %_35 = load i32, ptr %17, align 4
  store i32 %_35, ptr %res, align 4
  br label %bb18

panic7:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37.0, i64 %arr.1, ptr align 8 @alloc_e2bf0c9e1ee4a9892c87314b542fd0c1) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %_30.0, ptr %curr_count, align 4
  br label %bb4

panic8:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a06f0c55840afcf1894fbe6a794f0e1f) #22
  unreachable

bb6:                                              ; No predecessors!
  unreachable
}
