define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_30 = alloca [16 x i8], align 8
  %_28 = alloca [4 x i8], align 4
  %j = alloca [4 x i8], align 4
  %_12 = alloca [16 x i8], align 8
  %_10 = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %_3 = invoke i64 @_ZN5alloc6string6String3len17h0b892e071d44744bE(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb27:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf2eca6765940d1bE"(ptr align 8 %str) #21
          to label %bb28 unwind label %terminate

cleanup:                                          ; preds = %panic2, %panic1, %bb18, %bb17, %bb16, %bb15, %panic, %bb6, %bb5, %bb4, %bb3, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb27

bb1:                                              ; preds = %start
  %n = trunc i64 %_3 to i32
  store i32 0, ptr %i, align 4
  br label %bb2

bb2:                                              ; preds = %bb9, %bb1
  %_7 = load i32, ptr %i, align 4
  %_6 = icmp slt i32 %_7, %n
  br i1 %_6, label %bb3, label %bb10

bb10:                                             ; preds = %bb7, %bb2
  %_21 = load i32, ptr %i, align 4
  %5 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_21, i32 2)
  %_22.0 = extractvalue { i32, i1 } %5, 0
  %_22.1 = extractvalue { i32, i1 } %5, 1
  br i1 %_22.1, label %panic, label %bb11

bb3:                                              ; preds = %bb2
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %6 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcc35a331f548a1f4E"(ptr align 8 %str)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %_13.0 = extractvalue { ptr, i64 } %6, 0
  %_13.1 = extractvalue { ptr, i64 } %6, 1
; invoke core::str::<impl str>::chars
  %7 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h775ff114d28224e8E"(ptr align 1 %_13.0, i64 %_13.1)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %8 = extractvalue { ptr, ptr } %7, 0
  %9 = extractvalue { ptr, ptr } %7, 1
  store ptr %8, ptr %_12, align 8
  %10 = getelementptr inbounds i8, ptr %_12, i64 8
  store ptr %9, ptr %10, align 8
  %_16 = load i32, ptr %i, align 4
  %_15 = sext i32 %_16 to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %11 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr align 8 %_12, i64 %_15)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i32 %11, ptr %_10, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_8 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h371010e16fec101cE"(ptr align 4 %_10, ptr align 4 @alloc_5e1f7e2186c534569e1bce6fa9329954)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  br i1 %_8, label %bb8, label %bb10

bb8:                                              ; preds = %bb7
  %12 = load i32, ptr %i, align 4
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %12, i32 1)
  %_18.0 = extractvalue { i32, i1 } %13, 0
  %_18.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_18.1, label %panic2, label %bb9

bb11:                                             ; preds = %bb10
  %_19 = icmp ne i32 %_22.0, %n
  br i1 %_19, label %bb12, label %bb13

panic:                                            ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_a7a78d6babaf1c36154ae08bce94147d) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic1, %panic
  unreachable

bb13:                                             ; preds = %bb11
  %14 = load i32, ptr %i, align 4
  store i32 %14, ptr %j, align 4
  br label %bb14

bb12:                                             ; preds = %bb11
  store i32 0, ptr %_0, align 4
  br label %bb25

bb14:                                             ; preds = %bb21, %bb13
  %_25 = load i32, ptr %j, align 4
  %_24 = icmp slt i32 %_25, %n
  br i1 %_24, label %bb15, label %bb22

bb22:                                             ; preds = %bb19, %bb14
  %_38 = load i32, ptr %j, align 4
  %_37 = icmp ne i32 %_38, %n
  br i1 %_37, label %bb23, label %bb24

bb15:                                             ; preds = %bb14
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcc35a331f548a1f4E"(ptr align 8 %str)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
  %_31.0 = extractvalue { ptr, i64 } %15, 0
  %_31.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %16 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h775ff114d28224e8E"(ptr align 1 %_31.0, i64 %_31.1)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %17 = extractvalue { ptr, ptr } %16, 0
  %18 = extractvalue { ptr, ptr } %16, 1
  store ptr %17, ptr %_30, align 8
  %19 = getelementptr inbounds i8, ptr %_30, i64 8
  store ptr %18, ptr %19, align 8
  %_34 = load i32, ptr %j, align 4
  %_33 = sext i32 %_34 to i64
; invoke core::iter::traits::iterator::Iterator::nth
  %20 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr align 8 %_30, i64 %_33)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  store i32 %20, ptr %_28, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_26 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h371010e16fec101cE"(ptr align 4 %_28, ptr align 4 @alloc_4ec106804a8f5cec067459e8804c2e9d)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  br i1 %_26, label %bb20, label %bb22

bb20:                                             ; preds = %bb19
  %21 = load i32, ptr %j, align 4
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %21, i32 1)
  %_36.0 = extractvalue { i32, i1 } %22, 0
  %_36.1 = extractvalue { i32, i1 } %22, 1
  br i1 %_36.1, label %panic1, label %bb21

bb24:                                             ; preds = %bb22
  store i32 1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf2eca6765940d1bE"(ptr align 8 %str)
  br label %bb26

bb23:                                             ; preds = %bb22
  store i32 0, ptr %_0, align 4
  br label %bb25

bb26:                                             ; preds = %bb25, %bb24
  %23 = load i32, ptr %_0, align 4
  ret i32 %23

bb25:                                             ; preds = %bb12, %bb23
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf2eca6765940d1bE"(ptr align 8 %str)
  br label %bb26

bb21:                                             ; preds = %bb20
  store i32 %_36.0, ptr %j, align 4
  br label %bb14

panic1:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_abbc0e9dd01adc6345d81cd68b333e35) #23
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb8
  store i32 %_18.0, ptr %i, align 4
  br label %bb2

panic2:                                           ; preds = %bb8
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b0ebfee265791e307cb44c887c624561) #23
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb27
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #18
  unreachable

bb28:                                             ; preds = %bb27
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = insertvalue { ptr, i32 } poison, ptr %25, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}
