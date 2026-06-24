define i32 @f_gold(ptr align 8 %num) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_20 = alloca [16 x i8], align 8
  %_11 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  %series_index = alloca [8 x i8], align 8
  %series = alloca [24 x i8], align 4
  %1 = getelementptr inbounds nuw i32, ptr %series, i64 0
  store i32 1, ptr %1, align 4
  %2 = getelementptr inbounds nuw i32, ptr %series, i64 1
  store i32 3, ptr %2, align 4
  %3 = getelementptr inbounds nuw i32, ptr %series, i64 2
  store i32 2, ptr %3, align 4
  %4 = getelementptr inbounds nuw i32, ptr %series, i64 3
  store i32 -1, ptr %4, align 4
  %5 = getelementptr inbounds nuw i32, ptr %series, i64 4
  store i32 -3, ptr %5, align 4
  %6 = getelementptr inbounds nuw i32, ptr %series, i64 5
  store i32 -2, ptr %6, align 4
  store i64 0, ptr %series_index, align 8
  store i32 0, ptr %result, align 4
; invoke alloc::string::String::len
  %_8 = invoke i64 @_ZN5alloc6string6String3len17hba014f8b6dba9f4aE(ptr align 8 %num)
          to label %bb1 unwind label %cleanup

bb27:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf56058957c767eeE"(ptr align 8 %num) #21
          to label %bb28 unwind label %terminate

cleanup:                                          ; preds = %bb2.i, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %bb10, %bb9, %bb7, %panic1, %panic, %bb4, %bb2, %bb1, %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb27

bb1:                                              ; preds = %start
; invoke core::iter::traits::iterator::Iterator::rev
  %11 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17h96835abf7b756eceE(i64 0, i64 %_8)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { i64, i64 } %11, 0
  %_6.1 = extractvalue { i64, i64 } %11, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %12 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h8fe5403eb7950dabE"(i64 %_6.0, i64 %_6.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i64, i64 } %12, 0
  %_5.1 = extractvalue { i64, i64 } %12, 1
  store i64 %_5.0, ptr %iter, align 8
  %13 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %13, align 8
  br label %bb4

bb4:                                              ; preds = %bb20, %bb3
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %14 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h30dd91fc1a4e1e2fE"(ptr align 8 %iter)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = extractvalue { i64, i64 } %14, 1
  store i64 %15, ptr %_11, align 8
  %17 = getelementptr inbounds i8, ptr %_11, i64 8
  store i64 %16, ptr %17, align 8
  %_13 = load i64, ptr %_11, align 8
  %18 = getelementptr inbounds i8, ptr %_11, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = trunc nuw i64 %_13 to i1
  br i1 %20, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %21 = getelementptr inbounds i8, ptr %_11, i64 8
  %i = load i64, ptr %21, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %22 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcb57bb2e29166f65E"(ptr align 8 %num)
          to label %bb9 unwind label %cleanup

bb8:                                              ; preds = %bb5
  %_40 = load i32, ptr %result, align 4
  %_39 = icmp slt i32 %_40, 0
  br i1 %_39, label %bb21, label %bb25

bb25:                                             ; preds = %bb24, %bb8
  %_0 = load i32, ptr %result, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf56058957c767eeE"(ptr align 8 %num)
  ret i32 %_0

bb21:                                             ; preds = %bb8
  %_42 = load i32, ptr %result, align 4
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_42, i32 7)
  %_43.0 = extractvalue { i32, i1 } %23, 0
  %_43.1 = extractvalue { i32, i1 } %23, 1
  br i1 %_43.1, label %panic, label %bb22

bb22:                                             ; preds = %bb21
  br label %bb23

panic:                                            ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_6d3be1763b22d001e586574e7649a3d7) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb23:                                             ; preds = %bb22
  %_46 = icmp eq i32 %_43.0, -2147483648
  %_47 = and i1 false, %_46
  br i1 %_47, label %panic1, label %bb24

bb24:                                             ; preds = %bb23
  %24 = srem i32 %_43.0, 7
  store i32 %24, ptr %result, align 4
  br label %bb25

panic1:                                           ; preds = %bb23
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_6d3be1763b22d001e586574e7649a3d7) #23
          to label %unreachable unwind label %cleanup

bb9:                                              ; preds = %bb7
  %_21.0 = extractvalue { ptr, i64 } %22, 0
  %_21.1 = extractvalue { ptr, i64 } %22, 1
; invoke core::str::<impl str>::chars
  %25 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h18f501482cf8851eE"(ptr align 1 %_21.0, i64 %_21.1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %26 = extractvalue { ptr, ptr } %25, 0
  %27 = extractvalue { ptr, ptr } %25, 1
  store ptr %26, ptr %_20, align 8
  %28 = getelementptr inbounds i8, ptr %_20, i64 8
  store ptr %27, ptr %28, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_18 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha4dcb409b3d6fce6E(ptr align 8 %_20, i64 %i)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  store i32 %_18, ptr %self.i, align 4
  %29 = load i32, ptr %self.i, align 4
  %30 = icmp eq i32 %29, 1114112
  %_2.i = select i1 %30, i64 0, i64 1
  %31 = trunc nuw i64 %_2.i to i1
  br i1 %31, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h85cd0ecd60771330E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb11
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_d2913cd79f6b0fcddf362a1b36f4ffd0) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h85cd0ecd60771330E.exit": ; preds = %bb11
  %val.i = load i32, ptr %self.i, align 4
  br label %bb12

bb12:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h85cd0ecd60771330E.exit"
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_24.0 = extractvalue { i32, i1 } %32, 0
  %_24.1 = extractvalue { i32, i1 } %32, 1
  br i1 %_24.1, label %panic2, label %bb13

bb13:                                             ; preds = %bb12
  %_27 = load i64, ptr %series_index, align 8
  %_28 = icmp ult i64 %_27, 6
  br i1 %_28, label %bb14, label %panic3

panic2:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3dd178a147623eb10864a2d7f40dbb28) #23
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb13
  %33 = getelementptr inbounds nuw i32, ptr %series, i64 %_27
  %_26 = load i32, ptr %33, align 4
  %34 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_24.0, i32 %_26)
  %_29.0 = extractvalue { i32, i1 } %34, 0
  %_29.1 = extractvalue { i32, i1 } %34, 1
  br i1 %_29.1, label %panic4, label %bb15

panic3:                                           ; preds = %bb13
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_27, i64 6, ptr align 8 @alloc_e58a1a34165f285525d552e2861b928e) #23
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb14
  %35 = load i32, ptr %result, align 4
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %35, i32 %_29.0)
  %_30.0 = extractvalue { i32, i1 } %36, 0
  %_30.1 = extractvalue { i32, i1 } %36, 1
  br i1 %_30.1, label %panic5, label %bb16

panic4:                                           ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_368b1ca03e0a7e8d225e3b0fd1367de2) #23
          to label %unreachable unwind label %cleanup

bb16:                                             ; preds = %bb15
  store i32 %_30.0, ptr %result, align 4
  %_32 = load i64, ptr %series_index, align 8
  %_33.0 = add i64 %_32, 1
  %_33.1 = icmp ult i64 %_33.0, %_32
  br i1 %_33.1, label %panic6, label %bb17

panic5:                                           ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_739400b29ad65dce45f0757111b67e07) #23
          to label %unreachable unwind label %cleanup

bb17:                                             ; preds = %bb16
  br label %bb18

panic6:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a9fbd16601eb4e2429c50d0e7f369591) #23
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb17
  %37 = urem i64 %_33.0, 6
  store i64 %37, ptr %series_index, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  %38 = load i32, ptr %result, align 4
  %_37 = icmp eq i32 %38, -2147483648
  %_38 = and i1 false, %_37
  br i1 %_38, label %panic7, label %bb20

bb20:                                             ; preds = %bb19
  %39 = load i32, ptr %result, align 4
  %40 = srem i32 %39, 7
  store i32 %40, ptr %result, align 4
  br label %bb4

panic7:                                           ; preds = %bb19
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_fb702cd23258d81631c7a26d617e7749) #23
          to label %unreachable unwind label %cleanup

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb27
  %41 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb28:                                             ; preds = %bb27
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds i8, ptr %0, i64 8
  %44 = load i32, ptr %43, align 8
  %45 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %46 = insertvalue { ptr, i32 } %45, i32 %44, 1
  resume { ptr, i32 } %46
}
