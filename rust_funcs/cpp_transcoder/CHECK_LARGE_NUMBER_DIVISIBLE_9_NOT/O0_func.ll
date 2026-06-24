define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %digitSum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h06934b5630c76141E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb20:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e860817f2113f4E"(ptr align 8 %str) #21
          to label %bb21 unwind label %terminate

cleanup:                                          ; preds = %bb2.i, %panic2, %panic1, %bb9, %bb8, %bb6, %panic, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb20

bb1:                                              ; preds = %start
  store i32 0, ptr %digitSum, align 4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0495bfcf04820417E"(i64 0, i64 %n)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_5.0 = extractvalue { i64, i64 } %5, 0
  %_5.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_5.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_5.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb13, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hb9ecb368d06a81eeE"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_8, align 8
  %10 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %9, ptr %10, align 8
  %_10 = load i64, ptr %_8, align 8
  %11 = getelementptr inbounds i8, ptr %_8, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_10 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_8, i64 8
  %i = load i64, ptr %14, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5b0ac1b795820d24E"(ptr align 8 %str)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  %_24 = load i32, ptr %digitSum, align 4
  br label %bb14

bb14:                                             ; preds = %bb7
  %_27 = icmp eq i32 %_24, -2147483648
  %_28 = and i1 false, %_27
  br i1 %_28, label %panic, label %bb15

bb15:                                             ; preds = %bb14
  %_23 = srem i32 %_24, 9
  %_22 = icmp eq i32 %_23, 0
  br i1 %_22, label %bb16, label %bb17

panic:                                            ; preds = %bb14
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_30c741046adce937729b2c208b9af18e) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic2, %panic1, %panic
  unreachable

bb17:                                             ; preds = %bb15
  store i32 0, ptr %_0, align 4
  br label %bb18

bb16:                                             ; preds = %bb15
  store i32 1, ptr %_0, align 4
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb6e860817f2113f4E"(ptr align 8 %str)
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb8:                                              ; preds = %bb6
  %_18.0 = extractvalue { ptr, i64 } %15, 0
  %_18.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %17 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hdf84054dcc4985deE"(ptr align 1 %_18.0, i64 %_18.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %18 = extractvalue { ptr, ptr } %17, 0
  %19 = extractvalue { ptr, ptr } %17, 1
  store ptr %18, ptr %_17, align 8
  %20 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %19, ptr %20, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_15 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hf7caa050fa25d70aE(ptr align 8 %_17, i64 %i)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_15, ptr %self.i, align 4
  %21 = load i32, ptr %self.i, align 4
  %22 = icmp eq i32 %21, 1114112
  %_2.i = select i1 %22, i64 0, i64 1
  %23 = trunc nuw i64 %_2.i to i1
  br i1 %23, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h866b38a2d79899f5E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_f4b01a685803cf60fb2de928cc4a62da) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h866b38a2d79899f5E.exit": ; preds = %bb10
  %val.i = load i32, ptr %self.i, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h866b38a2d79899f5E.exit"
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_20.0 = extractvalue { i32, i1 } %24, 0
  %_20.1 = extractvalue { i32, i1 } %24, 1
  br i1 %_20.1, label %panic1, label %bb12

bb12:                                             ; preds = %bb11
  %25 = load i32, ptr %digitSum, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 %_20.0)
  %_21.0 = extractvalue { i32, i1 } %26, 0
  %_21.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_21.1, label %panic2, label %bb13

panic1:                                           ; preds = %bb11
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3decda463a3ec98e56999e320e7b7f04) #23
          to label %unreachable unwind label %cleanup

bb13:                                             ; preds = %bb12
  store i32 %_21.0, ptr %digitSum, align 4
  br label %bb3

panic2:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_48a924e07159b0706e8a80a63b7f831f) #23
          to label %unreachable unwind label %cleanup

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb20
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb21:                                             ; preds = %bb20
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8
  %31 = insertvalue { ptr, i32 } poison, ptr %28, 0
  %32 = insertvalue { ptr, i32 } %31, i32 %30, 1
  resume { ptr, i32 } %32
}
