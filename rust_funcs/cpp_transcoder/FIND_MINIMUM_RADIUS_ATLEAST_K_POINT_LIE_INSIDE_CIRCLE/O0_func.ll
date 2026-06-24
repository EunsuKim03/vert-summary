define i32 @f_gold(i32 %k, i64 %0, i64 %1, i32 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_9 = alloca [8 x i8], align 4
  %iter = alloca [8 x i8], align 4
  %dis = alloca [24 x i8], align 8
  %3 = alloca [8 x i8], align 8
  %y = alloca [8 x i8], align 4
  %4 = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 4
  store i64 %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 8 %4, i64 8, i1 false)
  store i64 %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y, ptr align 8 %3, i64 8, i1 false)
; call alloc::vec::Vec<T>::new
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h183fbbd5832de085E"(ptr sret([24 x i8]) align 8 %dis) #20
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a32c9b1cace2e61E"(i32 0, i32 %n)
          to label %bb2 unwind label %cleanup

bb17:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E"(ptr align 8 %dis) #21
          to label %bb18 unwind label %terminate

cleanup:                                          ; preds = %bb11, %panic4, %panic3, %panic2, %panic1, %bb14, %panic, %bb12, %bb7, %bb3, %start
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  store ptr %7, ptr %2, align 8
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %8, ptr %9, align 8
  br label %bb17

bb2:                                              ; preds = %start
  %_6.0 = extractvalue { i32, i32 } %5, 0
  %_6.1 = extractvalue { i32, i32 } %5, 1
  store i32 %_6.0, ptr %iter, align 4
  %10 = getelementptr inbounds i8, ptr %iter, i64 4
  store i32 %_6.1, ptr %10, align 4
  br label %bb3

bb3:                                              ; preds = %bb19, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h9aad6bc48b926de7E"(ptr align 4 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  store i32 %12, ptr %_9, align 4
  %14 = getelementptr inbounds i8, ptr %_9, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %_9, align 4
  %16 = getelementptr inbounds i8, ptr %_9, i64 4
  %17 = load i32, ptr %16, align 4
  %_11 = zext i32 %15 to i64
  %18 = trunc nuw i64 %_11 to i1
  br i1 %18, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %19 = getelementptr inbounds i8, ptr %_9, i64 4
  %i = load i32, ptr %19, align 4
  %_19 = sext i32 %i to i64
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb8, label %panic1

bb7:                                              ; preds = %bb4
; invoke <alloc::vec::Vec<T,A> as core::ops::deref::DerefMut>::deref_mut
  %20 = invoke { ptr, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17he4f796f0bb61dcb4E"(ptr align 8 %dis)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb7
  %_35.0 = extractvalue { ptr, i64 } %20, 0
  %_35.1 = extractvalue { ptr, i64 } %20, 1
; invoke alloc::slice::<impl [T]>::sort_by
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by17h608b13231a9d7d4eE"(ptr align 4 %_35.0, i64 %_35.1)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  %_41 = sext i32 %k to i64
  %_42.0 = sub i64 %_41, 1
  %_42.1 = icmp ult i64 %_41, 1
  br i1 %_42.1, label %panic, label %bb14

bb14:                                             ; preds = %bb13
; invoke <alloc::vec::Vec<T,A> as core::ops::index::Index<I>>::index
  %_38 = invoke align 4 ptr @"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h97940fa83caacb18E"(ptr align 8 %dis, i64 %_42.0, ptr align 8 @alloc_91929aa5fd5ecdf230d71e4a2b4c6739)
          to label %bb15 unwind label %cleanup

panic:                                            ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_4ea72b7f7722f192ff24b3948f0cb998) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb15:                                             ; preds = %bb14
  %_37 = load float, ptr %_38, align 4
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_37)
; call core::ptr::drop_in_place<alloc::vec::Vec<f32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h6e63235cc0d24036E"(ptr align 8 %dis)
  ret i32 %_0

bb8:                                              ; preds = %bb6
  %21 = getelementptr inbounds nuw i32, ptr %x, i64 %_19
  %_18 = load i32, ptr %21, align 4
  %_17 = sitofp i32 %_18 to float
  %_23 = sext i32 %i to i64
  %_24 = icmp ult i64 %_23, 2
  br i1 %_24, label %bb9, label %panic2

panic1:                                           ; preds = %bb6
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_d62f07554f1472b25e34b1cc2dcde560) #23
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb8
  %22 = getelementptr inbounds nuw i32, ptr %x, i64 %_23
  %_22 = load i32, ptr %22, align 4
  %_21 = sitofp i32 %_22 to float
  %_16 = fmul float %_17, %_21
  %_28 = sext i32 %i to i64
  %_29 = icmp ult i64 %_28, 2
  br i1 %_29, label %bb10, label %panic3

panic2:                                           ; preds = %bb8
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_23, i64 2, ptr align 8 @alloc_3e31493e9bcc69489e8ba4452db61fdc) #23
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %bb9
  %23 = getelementptr inbounds nuw i32, ptr %y, i64 %_28
  %_27 = load i32, ptr %23, align 4
  %_26 = sitofp i32 %_27 to float
  %_32 = sext i32 %i to i64
  %_33 = icmp ult i64 %_32, 2
  br i1 %_33, label %bb11, label %panic4

panic3:                                           ; preds = %bb9
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_28, i64 2, ptr align 8 @alloc_2289d7baf47acc8e78c66ea16e2ee0d9) #23
          to label %unreachable unwind label %cleanup

bb11:                                             ; preds = %bb10
  %24 = getelementptr inbounds nuw i32, ptr %y, i64 %_32
  %_31 = load i32, ptr %24, align 4
  %_30 = sitofp i32 %_31 to float
  %_25 = fmul float %_26, %_30
  %_15 = fadd float %_16, %_25
; invoke alloc::vec::Vec<T,A>::push
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17haf513d1686ccb29eE"(ptr align 8 %dis, float %_15)
          to label %bb19 unwind label %cleanup

panic4:                                           ; preds = %bb10
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_32, i64 2, ptr align 8 @alloc_3cc49be8dd4c5db34cbe6f5c7f2dc42a) #23
          to label %unreachable unwind label %cleanup

bb19:                                             ; preds = %bb11
  br label %bb3

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb17
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb18:                                             ; preds = %bb17
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds i8, ptr %2, i64 8
  %28 = load i32, ptr %27, align 8
  %29 = insertvalue { ptr, i32 } poison, ptr %26, 0
  %30 = insertvalue { ptr, i32 } %29, i32 %28, 1
  resume { ptr, i32 } %30
}
