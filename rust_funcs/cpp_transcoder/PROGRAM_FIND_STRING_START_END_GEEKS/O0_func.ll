define i32 @f_gold(ptr align 8 %str, ptr align 8 %corner) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_22 = alloca [24 x i8], align 8
  %_20 = alloca [1 x i8], align 1
  %_13 = alloca [24 x i8], align 8
  %_11 = alloca [1 x i8], align 1
  %_8 = alloca [1 x i8], align 1
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h3e9f50203a8c49d3E(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb24:                                             ; preds = %bb23, %bb22, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr align 8 %corner) #22
          to label %bb25 unwind label %terminate

cleanup:                                          ; preds = %bb17, %bb14, %bb13, %panic, %bb9, %bb11, %bb5, %bb4, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb24

bb1:                                              ; preds = %start
; invoke alloc::string::String::len
  %cl = invoke i64 @_ZN5alloc6string6String3len17h3e9f50203a8c49d3E(ptr align 8 %corner)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_7 = icmp ult i64 %n, %cl
  br i1 %_7, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %5 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E"(ptr align 8 %str, i64 0, i64 %cl, ptr align 8 @alloc_464163c4931dffbbf2f64995a909f071)
          to label %bb5 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i32 0, ptr %_0, align 4
  br label %bb19

bb5:                                              ; preds = %bb4
  %_14.0 = extractvalue { ptr, i64 } %5, 0
  %_14.1 = extractvalue { ptr, i64 } %5, 1
; invoke <T as alloc::string::ToString>::to_string
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E"(ptr sret([24 x i8]) align 8 %_13, ptr align 1 %_14.0, i64 %_14.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <alloc::string::String as core::cmp::Ord>::cmp
  %6 = invoke i8 @"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17h480af1a15d53b290E"(ptr align 8 %_13, ptr align 8 %corner)
          to label %bb7 unwind label %cleanup1

bb23:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr align 8 %_13) #22
          to label %bb24 unwind label %terminate

cleanup1:                                         ; preds = %bb7, %bb6
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %0, align 8
  %10 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb23

bb7:                                              ; preds = %bb6
  store i8 %6, ptr %_11, align 1
; invoke <core::cmp::Ordering as core::cmp::PartialEq>::eq
  %_9 = invoke zeroext i1 @"_ZN60_$LT$core..cmp..Ordering$u20$as$u20$core..cmp..PartialEq$GT$2eq17h874fa893c1500ba2E"(ptr align 1 %_11, ptr align 1 @alloc_914b2c69d7eca30497b9feaf15ac92f1)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  br i1 %_9, label %bb9, label %bb11

bb11:                                             ; preds = %bb8
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr align 8 %_13)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %bb8
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr align 8 %_13)
          to label %bb10 unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i8 0, ptr %_8, align 1
  br label %bb18

bb18:                                             ; preds = %bb17, %bb12
  %11 = load i8, ptr %_8, align 1
  %12 = trunc nuw i8 %11 to i1
  %13 = zext i1 %12 to i32
  store i32 %13, ptr %_0, align 4
  br label %bb19

bb10:                                             ; preds = %bb9
  %_27.0 = sub i64 %n, %cl
  %_27.1 = icmp ult i64 %n, %cl
  br i1 %_27.1, label %panic, label %bb13

bb13:                                             ; preds = %bb10
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %14 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E"(ptr align 8 %str, i64 %_27.0, i64 %n, ptr align 8 @alloc_62a8386542c978de5e962f01dc49365f)
          to label %bb14 unwind label %cleanup

panic:                                            ; preds = %bb10
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_913d84773652811edc9f6b84c65b690d) #24
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

bb14:                                             ; preds = %bb13
  %_23.0 = extractvalue { ptr, i64 } %14, 0
  %_23.1 = extractvalue { ptr, i64 } %14, 1
; invoke <T as alloc::string::ToString>::to_string
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E"(ptr sret([24 x i8]) align 8 %_22, ptr align 1 %_23.0, i64 %_23.1)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
; invoke <alloc::string::String as core::cmp::Ord>::cmp
  %15 = invoke i8 @"_ZN56_$LT$alloc..string..String$u20$as$u20$core..cmp..Ord$GT$3cmp17h480af1a15d53b290E"(ptr align 8 %_22, ptr align 8 %corner)
          to label %bb16 unwind label %cleanup2

bb22:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr align 8 %_22) #22
          to label %bb24 unwind label %terminate

cleanup2:                                         ; preds = %bb16, %bb15
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = extractvalue { ptr, i32 } %16, 1
  store ptr %17, ptr %0, align 8
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %18, ptr %19, align 8
  br label %bb22

bb16:                                             ; preds = %bb15
  store i8 %15, ptr %_20, align 1
; invoke <core::cmp::Ordering as core::cmp::PartialEq>::eq
  %20 = invoke zeroext i1 @"_ZN60_$LT$core..cmp..Ordering$u20$as$u20$core..cmp..PartialEq$GT$2eq17h874fa893c1500ba2E"(ptr align 1 %_20, ptr align 1 @alloc_914b2c69d7eca30497b9feaf15ac92f1)
          to label %bb17 unwind label %cleanup2

bb17:                                             ; preds = %bb16
  %21 = zext i1 %20 to i8
  store i8 %21, ptr %_8, align 1
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr align 8 %_22)
          to label %bb18 unwind label %cleanup

bb19:                                             ; preds = %bb3, %bb18
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr align 8 %corner)
          to label %bb20 unwind label %cleanup3

terminate:                                        ; preds = %bb25, %bb24, %bb23, %bb22
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #20
  unreachable

bb25:                                             ; preds = %bb24, %cleanup3
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr align 8 %str) #22
          to label %bb26 unwind label %terminate

cleanup3:                                         ; preds = %bb19
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  store ptr %24, ptr %0, align 8
  %26 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %25, ptr %26, align 8
  br label %bb25

bb20:                                             ; preds = %bb19
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr align 8 %str)
  %27 = load i32, ptr %_0, align 4
  ret i32 %27

bb26:                                             ; preds = %bb25
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds i8, ptr %0, i64 8
  %30 = load i32, ptr %29, align 8
  %31 = insertvalue { ptr, i32 } poison, ptr %28, 0
  %32 = insertvalue { ptr, i32 } %31, i32 %30, 1
  resume { ptr, i32 } %32
}
