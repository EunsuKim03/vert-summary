define i32 @f_gold(ptr align 8 %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_19 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %base = alloca [4 x i8], align 4
  %dec_value = alloca [4 x i8], align 4
  %num = alloca [24 x i8], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %num, ptr align 8 %n, i64 24, i1 false)
  store i32 0, ptr %dec_value, align 4
  store i32 1, ptr %base, align 4
; invoke alloc::string::String::len
  %len = invoke i64 @_ZN5alloc6string6String3len17hd631050cbf29f505E(ptr align 8 %num)
          to label %bb1 unwind label %cleanup

bb18:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc298484a04dcddf3E"(ptr align 8 %num) #21
          to label %bb19 unwind label %terminate

cleanup:                                          ; preds = %bb2.i, %panic1, %panic, %bb10, %bb9, %bb7, %bb4, %bb2, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb18

bb1:                                              ; preds = %start
; invoke core::iter::traits::iterator::Iterator::rev
  %5 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17h42787bb1c5e9c850E(i64 0, i64 %len)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_8.0 = extractvalue { i64, i64 } %5, 0
  %_8.1 = extractvalue { i64, i64 } %5, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %6 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h3fc905d6c43c1fc3E"(i64 %_8.0, i64 %_8.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_7.0 = extractvalue { i64, i64 } %6, 0
  %_7.1 = extractvalue { i64, i64 } %6, 1
  store i64 %_7.0, ptr %iter, align 8
  %7 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_7.1, ptr %7, align 8
  br label %bb4

bb4:                                              ; preds = %bb16, %bb3
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %8 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf2cc2fee1aa5fd3cE"(ptr align 8 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  store i64 %9, ptr %_11, align 8
  %11 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %10, ptr %11, align 8
  %_13 = load i64, ptr %_11, align 8
  %12 = getelementptr inbounds i8, ptr %_11, i64 8
  %13 = load i64, ptr %12, align 8
  %14 = trunc nuw i64 %_13 to i1
  br i1 %14, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds i8, ptr %_11, i64 8
  %i = load i64, ptr %15, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %16 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h763a10fb3a4069e5E"(ptr align 8 %num)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
  %_0 = load i32, ptr %dec_value, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc298484a04dcddf3E"(ptr align 8 %num)
  ret i32 %_0

bb9:                                              ; preds = %bb7
  %_20.0 = extractvalue { ptr, i64 } %16, 0
  %_20.1 = extractvalue { ptr, i64 } %16, 1
; invoke core::str::<impl str>::chars
  %17 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hbf677d6f3d5c9b74E"(ptr align 1 %_20.0, i64 %_20.1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %18 = extractvalue { ptr, ptr } %17, 0
  %19 = extractvalue { ptr, ptr } %17, 1
  store ptr %18, ptr %_19, align 8
  %20 = getelementptr inbounds i8, ptr %_19, i64 8
  store ptr %19, ptr %20, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_17 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246cad64f5fa2adcE(ptr align 8 %_19, i64 %i)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  store i32 %_17, ptr %self.i, align 4
  %21 = load i32, ptr %self.i, align 4
  %22 = icmp eq i32 %21, 1114112
  %_2.i = select i1 %22, i64 0, i64 1
  %23 = trunc nuw i64 %_2.i to i1
  br i1 %23, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hf32d2a76d04e4269E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb11
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_5ab67f4d81421021ad69b3d4fe1cd221) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hf32d2a76d04e4269E.exit": ; preds = %bb11
  %val.i = load i32, ptr %self.i, align 4
  br label %bb12

bb12:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hf32d2a76d04e4269E.exit"
  %_15 = icmp eq i32 %val.i, 49
  br i1 %_15, label %bb13, label %bb15

bb15:                                             ; preds = %bb14, %bb12
  %24 = load i32, ptr %base, align 4
  %25 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %24, i32 2)
  %_24.0 = extractvalue { i32, i1 } %25, 0
  %_24.1 = extractvalue { i32, i1 } %25, 1
  br i1 %_24.1, label %panic1, label %bb16

bb13:                                             ; preds = %bb12
  %_22 = load i32, ptr %base, align 4
  %26 = load i32, ptr %dec_value, align 4
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %26, i32 %_22)
  %_23.0 = extractvalue { i32, i1 } %27, 0
  %_23.1 = extractvalue { i32, i1 } %27, 1
  br i1 %_23.1, label %panic, label %bb14

bb14:                                             ; preds = %bb13
  store i32 %_23.0, ptr %dec_value, align 4
  br label %bb15

panic:                                            ; preds = %bb13
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_7744e0cee9f55c62f5693dafe97874ae) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic1, %panic
  unreachable

bb16:                                             ; preds = %bb15
  store i32 %_24.0, ptr %base, align 4
  br label %bb4

panic1:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_06c1c6a618eca9ef048fe8d667ecf3c6) #23
          to label %unreachable unwind label %cleanup

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb18
  %28 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb19:                                             ; preds = %bb18
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  %31 = load i32, ptr %30, align 8
  %32 = insertvalue { ptr, i32 } poison, ptr %29, 0
  %33 = insertvalue { ptr, i32 } %32, i32 %31, 1
  resume { ptr, i32 } %33
}
