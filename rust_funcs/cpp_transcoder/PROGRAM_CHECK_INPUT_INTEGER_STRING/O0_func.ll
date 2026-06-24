define i32 @f_gold(ptr align 8 %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %_4 = invoke i64 @_ZN5alloc6string6String3len17hfcc2e0f7aeef27d3E(ptr align 8 %s)
          to label %bb1 unwind label %cleanup

bb15:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2c72ce01f9ebc7b8E"(ptr align 8 %s) #21
          to label %bb16 unwind label %terminate

cleanup:                                          ; preds = %bb2.i, %bb11, %bb9, %bb8, %bb6, %bb3, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb15

bb1:                                              ; preds = %start
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %5 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9c8fdc0ecc39153cE"(i64 0, i64 %_4)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_2.0 = extractvalue { i64, i64 } %5, 0
  %_2.1 = extractvalue { i64, i64 } %5, 1
  store i64 %_2.0, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_2.1, ptr %6, align 8
  br label %bb3

bb3:                                              ; preds = %bb12, %bb2
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %7 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h35cfa1366baa7e5dE"(ptr align 8 %iter)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { i64, i64 } %7, 0
  %9 = extractvalue { i64, i64 } %7, 1
  store i64 %8, ptr %_7, align 8
  %10 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %9, ptr %10, align 8
  %_9 = load i64, ptr %_7, align 8
  %11 = getelementptr inbounds i8, ptr %_7, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = trunc nuw i64 %_9 to i1
  br i1 %13, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %14 = getelementptr inbounds i8, ptr %_7, i64 8
  %i = load i64, ptr %14, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %15 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf87fc13c1256fdc1E"(ptr align 8 %s)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb4
  store i32 1, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2c72ce01f9ebc7b8E"(ptr align 8 %s)
  br label %bb14

bb14:                                             ; preds = %bb13, %bb7
  %16 = load i32, ptr %_0, align 4
  ret i32 %16

bb8:                                              ; preds = %bb6
  %_16.0 = extractvalue { ptr, i64 } %15, 0
  %_16.1 = extractvalue { ptr, i64 } %15, 1
; invoke core::str::<impl str>::chars
  %17 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hd534654bcfd8bd3dE"(ptr align 1 %_16.0, i64 %_16.1)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %18 = extractvalue { ptr, ptr } %17, 0
  %19 = extractvalue { ptr, ptr } %17, 1
  store ptr %18, ptr %_15, align 8
  %20 = getelementptr inbounds i8, ptr %_15, i64 8
  store ptr %19, ptr %20, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_13 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb19c348888ec0dd6E(ptr align 8 %_15, i64 %i)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  store i32 %_13, ptr %self.i, align 4
  %21 = load i32, ptr %self.i, align 4
  %22 = icmp eq i32 %21, 1114112
  %_2.i = select i1 %22, i64 0, i64 1
  %23 = trunc nuw i64 %_2.i to i1
  br i1 %23, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h90bffef60b556327E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb10
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_32b331bd2fcbe08eb779d99b59ed9100) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h90bffef60b556327E.exit": ; preds = %bb10
  %val.i = load i32, ptr %self.i, align 4
  br label %bb11

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h90bffef60b556327E.exit"
; invoke core::char::methods::<impl char>::is_digit
  %_11 = invoke zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8is_digit17hd962c720ec50973aE"(i32 %val.i, i32 10)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  br i1 %_11, label %bb3, label %bb13

bb13:                                             ; preds = %bb12
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2c72ce01f9ebc7b8E"(ptr align 8 %s)
  br label %bb14

bb5:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb15
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb16:                                             ; preds = %bb15
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = insertvalue { ptr, i32 } poison, ptr %25, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}
