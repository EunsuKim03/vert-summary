define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i1 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_17 = alloca [24 x i8], align 8
  %_16 = alloca [24 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::is_empty
  %_2 = invoke zeroext i1 @_ZN5alloc6string6String8is_empty17h9a30430de6785e83E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb21:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9b58810b89a11504E"(ptr align 8 %str) #21
          to label %bb22 unwind label %terminate

cleanup:                                          ; preds = %bb2.i3, %bb2.i, %bb11, %bb10, %bb9, %bb17, %bb16, %bb15, %bb14, %bb13, %bb7, %bb5, %bb4, %bb3, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb21

bb1:                                              ; preds = %start
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6efcc8e5b94a3f8fE"(ptr align 8 %str)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %bb1
  store i32 0, ptr %_0, align 4
  br label %bb19

bb4:                                              ; preds = %bb3
  %_9.0 = extractvalue { ptr, i64 } %5, 0
  %_9.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc0f90ffbe6943cf9E"(ptr align 1 %_9.0, i64 %_9.1)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  store ptr %7, ptr %_8, align 8
  %9 = getelementptr inbounds i8, ptr %_8, i64 8
  store ptr %8, ptr %9, align 8
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %_6 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8f9811042d6d9d5E"(ptr align 8 %_8)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  store i32 %_6, ptr %self.i1, align 4
  %10 = load i32, ptr %self.i1, align 4
  %11 = icmp eq i32 %10, 1114112
  %_2.i2 = select i1 %11, i64 0, i64 1
  %12 = trunc nuw i64 %_2.i2 to i1
  br i1 %12, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h028a79ff5e44778fE.exit6", label %bb2.i3

bb2.i3:                                           ; preds = %bb6
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_3be61251d397de380e1f942174d07e58) #22
          to label %.noexc5 unwind label %cleanup

.noexc5:                                          ; preds = %bb2.i3
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h028a79ff5e44778fE.exit6": ; preds = %bb6
  %val.i4 = load i32, ptr %self.i1, align 4
  br label %bb7

bb7:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h028a79ff5e44778fE.exit6"
; invoke core::char::methods::<impl char>::is_uppercase
  %_4 = invoke zeroext i1 @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$12is_uppercase17h64a1156cb8a758efE"(i32 %val.i4)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br i1 %_4, label %bb9, label %bb13

bb13:                                             ; preds = %bb8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %13 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6efcc8e5b94a3f8fE"(ptr align 8 %str)
          to label %bb14 unwind label %cleanup

bb9:                                              ; preds = %bb8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %14 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6efcc8e5b94a3f8fE"(ptr align 8 %str)
          to label %bb10 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %_19.0 = extractvalue { ptr, i64 } %13, 0
  %_19.1 = extractvalue { ptr, i64 } %13, 1
; invoke core::str::<impl str>::chars
  %15 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc0f90ffbe6943cf9E"(ptr align 1 %_19.0, i64 %_19.1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_18.0 = extractvalue { ptr, ptr } %15, 0
  %_18.1 = extractvalue { ptr, ptr } %15, 1
; invoke core::iter::traits::iterator::Iterator::skip
  invoke void @_ZN4core4iter6traits8iterator8Iterator4skip17h90d9cb10ceae009cE(ptr sret([24 x i8]) align 8 %_17, ptr %_18.0, ptr %_18.1, i64 1)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %bb15
; invoke core::iter::traits::iterator::Iterator::collect
  invoke void @_ZN4core4iter6traits8iterator8Iterator7collect17hce7d73d185dc119fE(ptr sret([24 x i8]) align 8 %_16, ptr align 8 %_17)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %16 = invoke i32 @f_gold(ptr align 8 %_16)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  store i32 %16, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9b58810b89a11504E"(ptr align 8 %str)
  br label %bb20

bb20:                                             ; preds = %bb19, %bb18
  %17 = load i32, ptr %_0, align 4
  ret i32 %17

bb10:                                             ; preds = %bb9
  %_14.0 = extractvalue { ptr, i64 } %14, 0
  %_14.1 = extractvalue { ptr, i64 } %14, 1
; invoke core::str::<impl str>::chars
  %18 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc0f90ffbe6943cf9E"(ptr align 1 %_14.0, i64 %_14.1)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  store ptr %19, ptr %_13, align 8
  %21 = getelementptr inbounds i8, ptr %_13, i64 8
  store ptr %20, ptr %21, align 8
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::next
  %_11 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc8f9811042d6d9d5E"(ptr align 8 %_13)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i32 %_11, ptr %self.i, align 4
  %22 = load i32, ptr %self.i, align 4
  %23 = icmp eq i32 %22, 1114112
  %_2.i = select i1 %23, i64 0, i64 1
  %24 = trunc nuw i64 %_2.i to i1
  br i1 %24, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h028a79ff5e44778fE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb12
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_9fb45307076539891025761fcb51e142) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h028a79ff5e44778fE.exit": ; preds = %bb12
  %val.i = load i32, ptr %self.i, align 4
  br label %bb23

bb23:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h028a79ff5e44778fE.exit"
  store i32 %val.i, ptr %_0, align 4
  br label %bb19

bb19:                                             ; preds = %bb2, %bb23
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9b58810b89a11504E"(ptr align 8 %str)
  br label %bb20

terminate:                                        ; preds = %bb21
  %25 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb22:                                             ; preds = %bb21
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds i8, ptr %0, i64 8
  %28 = load i32, ptr %27, align 8
  %29 = insertvalue { ptr, i32 } poison, ptr %26, 0
  %30 = insertvalue { ptr, i32 } %29, i32 %28, 1
  resume { ptr, i32 } %30
}
