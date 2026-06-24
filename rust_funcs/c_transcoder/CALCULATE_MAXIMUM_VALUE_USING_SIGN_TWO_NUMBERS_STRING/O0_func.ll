define i32 @f_gold(ptr align 4 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %_14 = alloca [8 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_11 = alloca [24 x i8], align 8
  %_10 = alloca [24 x i8], align 8
  %res = alloca [4 x i8], align 4
  %_7 = icmp ult i64 0, %str.1
  br i1 %_7, label %bb1, label %panic

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds nuw i32, ptr %str.0, i64 0
  %_4 = load i32, ptr %0, align 4
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_4, i32 48)
  %_9.0 = extractvalue { i32, i1 } %1, 0
  %_9.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_9.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 0, i64 %str.1, ptr align 8 @alloc_704684259ce9fb24bcc1d35342b2e4cc) #22
  unreachable

bb2:                                              ; preds = %bb1
  store i32 %_9.0, ptr %res, align 4
; call core::slice::<impl [T]>::iter
  %2 = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h52adac47544f70c7E"(ptr align 4 %str.0, i64 %str.1) #16
  %_12.0 = extractvalue { ptr, ptr } %2, 0
  %_12.1 = extractvalue { ptr, ptr } %2, 1
; call core::iter::traits::iterator::Iterator::skip
  call void @_ZN4core4iter6traits8iterator8Iterator4skip17h3aefd16d58e1a8b8E(ptr sret([24 x i8]) align 8 %_11, ptr %_12.0, ptr %_12.1, i64 1) #16
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h18a39922ad599496E"(ptr sret([24 x i8]) align 8 %_10, ptr align 8 %_11) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_10, i64 24, i1 false)
  br label %bb6

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_704684259ce9fb24bcc1d35342b2e4cc) #22
  unreachable

bb6:                                              ; preds = %bb15, %bb18, %bb2
; call <core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::next
  %3 = call align 4 ptr @"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4056f88646650ad8E"(ptr align 8 %iter) #16
  store ptr %3, ptr %_14, align 8
  %4 = load ptr, ptr %_14, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq i64 %5, 0
  %_16 = select i1 %6, i64 0, i64 1
  %7 = trunc nuw i64 %_16 to i1
  br i1 %7, label %bb9, label %bb10

bb9:                                              ; preds = %bb6
  %c = load ptr, ptr %_14, align 8
  %_19 = load i32, ptr %c, align 4
  %_18 = icmp eq i32 %_19, 48
  br i1 %_18, label %bb13, label %bb11

bb10:                                             ; preds = %bb6
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb11:                                             ; preds = %bb9
  %_21 = load i32, ptr %c, align 4
  %_20 = icmp eq i32 %_21, 49
  br i1 %_20, label %bb13, label %bb12

bb13:                                             ; preds = %bb12, %bb11, %bb9
  %_26 = load i32, ptr %c, align 4
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_26, i32 48)
  %_28.0 = extractvalue { i32, i1 } %8, 0
  %_28.1 = extractvalue { i32, i1 } %8, 1
  br i1 %_28.1, label %panic4, label %bb14

bb12:                                             ; preds = %bb11
  %_23 = load i32, ptr %res, align 4
  %_22 = icmp slt i32 %_23, 2
  br i1 %_22, label %bb13, label %bb16

bb16:                                             ; preds = %bb12
  %_32 = load i32, ptr %c, align 4
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_32, i32 48)
  %_34.0 = extractvalue { i32, i1 } %9, 0
  %_34.1 = extractvalue { i32, i1 } %9, 1
  br i1 %_34.1, label %panic2, label %bb17

bb17:                                             ; preds = %bb16
  %10 = load i32, ptr %res, align 4
  %11 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %10, i32 %_34.0)
  %_35.0 = extractvalue { i32, i1 } %11, 0
  %_35.1 = extractvalue { i32, i1 } %11, 1
  br i1 %_35.1, label %panic3, label %bb18

panic2:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_52e9c58626f6ecfacc29dfea7cc4774d) #22
  unreachable

bb18:                                             ; preds = %bb17
  store i32 %_35.0, ptr %res, align 4
  br label %bb6

panic3:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_mul_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_6bf52b46839199b9f033e61383cb8859) #22
  unreachable

bb14:                                             ; preds = %bb13
  %12 = load i32, ptr %res, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 %_28.0)
  %_29.0 = extractvalue { i32, i1 } %13, 0
  %_29.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_29.1, label %panic5, label %bb15

panic4:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_f43b0d9afff73ba680b697b70b51c45f) #22
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %_29.0, ptr %res, align 4
  br label %bb6

panic5:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_0ee155eb4d0f40e2cc77a329e434833c) #22
  unreachable

bb8:                                              ; No predecessors!
  unreachable
}
