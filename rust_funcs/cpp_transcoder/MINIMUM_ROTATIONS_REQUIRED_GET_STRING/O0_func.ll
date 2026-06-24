define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
  %_27 = alloca [1 x i8], align 1
  %substring = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_10 = alloca [24 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %tmp = alloca [24 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  store i8 0, ptr %_27, align 1
; invoke <T as alloc::string::ToString>::to_string
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h9dd87a98932031c0E"(ptr sret([24 x i8]) align 8 %_3, ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb21:                                             ; preds = %bb23, %bb24, %bb20, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr align 8 %str) #22
          to label %bb22 unwind label %terminate

cleanup:                                          ; preds = %bb16, %bb11, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb21

bb1:                                              ; preds = %start
  store i8 1, ptr %_27, align 1
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17hb6dfd764f43a4b9cE"(ptr align 8 %str)
          to label %bb2 unwind label %cleanup1

bb24:                                             ; preds = %cleanup1
  %6 = load i8, ptr %_27, align 1
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %bb23, label %bb21

cleanup1:                                         ; preds = %bb2, %bb1
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %0, align 8
  %11 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb24

bb2:                                              ; preds = %bb1
  %_5.0 = extractvalue { ptr, i64 } %5, 0
  %_5.1 = extractvalue { ptr, i64 } %5, 1
  store i8 0, ptr %_27, align 1
; invoke <alloc::string::String as core::ops::arith::Add<&str>>::add
  invoke void @"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17h039c713bc002d345E"(ptr sret([24 x i8]) align 8 %tmp, ptr align 8 %_3, ptr align 1 %_5.0, i64 %_5.1)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_27, align 1
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17hbf14732da591e297E(ptr align 8 %str)
          to label %bb4 unwind label %cleanup2

bb20:                                             ; preds = %cleanup2
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr align 8 %tmp) #22
          to label %bb21 unwind label %terminate

cleanup2:                                         ; preds = %bb14, %bb13, %panic, %bb10, %bb7, %bb5, %bb4, %bb3
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  store ptr %13, ptr %0, align 8
  %15 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %14, ptr %15, align 8
  br label %bb20

bb4:                                              ; preds = %bb3
; invoke core::ops::range::RangeInclusive<Idx>::new
  invoke void @"_ZN4core3ops5range25RangeInclusive$LT$Idx$GT$3new17hfe71e1fc7386d404E"(ptr sret([24 x i8]) align 8 %_10, i64 1, i64 %n)
          to label %bb5 unwind label %cleanup2

bb5:                                              ; preds = %bb4
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  invoke void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5a2b738d9296e560E"(ptr sret([24 x i8]) align 8 %_9, ptr align 8 %_10)
          to label %bb6 unwind label %cleanup2

bb6:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_9, i64 24, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb15, %bb6
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::RangeInclusive<A>>::next
  %16 = invoke { i64, i64 } @"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h4133e5c42f232b1bE"(ptr align 8 %iter)
          to label %bb8 unwind label %cleanup2

bb8:                                              ; preds = %bb7
  %17 = extractvalue { i64, i64 } %16, 0
  %18 = extractvalue { i64, i64 } %16, 1
  store i64 %17, ptr %_12, align 8
  %19 = getelementptr inbounds i8, ptr %_12, i64 8
  store i64 %18, ptr %19, align 8
  %_14 = load i64, ptr %_12, align 8
  %20 = getelementptr inbounds i8, ptr %_12, i64 8
  %21 = load i64, ptr %20, align 8
  %22 = trunc nuw i64 %_14 to i1
  br i1 %22, label %bb10, label %bb11

bb10:                                             ; preds = %bb8
  %23 = getelementptr inbounds i8, ptr %_12, i64 8
  %i = load i64, ptr %23, align 8
; invoke alloc::string::String::len
  %_21 = invoke i64 @_ZN5alloc6string6String3len17hbf14732da591e297E(ptr align 8 %str)
          to label %bb12 unwind label %cleanup2

bb11:                                             ; preds = %bb8
  %24 = trunc i64 %n to i32
  store i32 %24, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr align 8 %tmp)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb11
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr align 8 %str)
  br label %bb19

bb19:                                             ; preds = %bb18, %bb17
  %25 = load i32, ptr %_0, align 4
  ret i32 %25

bb12:                                             ; preds = %bb10
  %_23.0 = add i64 %i, %_21
  %_23.1 = icmp ult i64 %_23.0, %i
  br i1 %_23.1, label %panic, label %bb13

bb13:                                             ; preds = %bb12
; invoke <alloc::string::String as core::ops::index::Index<I>>::index
  %26 = invoke { ptr, i64 } @"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7697e78b495eea63E"(ptr align 8 %tmp, i64 %i, i64 %_23.0, ptr align 8 @alloc_224f273bde1b2028970a21d24455ab16)
          to label %bb14 unwind label %cleanup2

panic:                                            ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8a9f17abd59bf1ca389cf6b878cf6afd) #24
          to label %unreachable unwind label %cleanup2

unreachable:                                      ; preds = %panic
  unreachable

bb14:                                             ; preds = %bb13
  %_17.0 = extractvalue { ptr, i64 } %26, 0
  %_17.1 = extractvalue { ptr, i64 } %26, 1
  store ptr %_17.0, ptr %substring, align 8
  %27 = getelementptr inbounds i8, ptr %substring, i64 8
  store i64 %_17.1, ptr %27, align 8
; invoke <alloc::string::String as core::cmp::PartialEq<&str>>::eq
  %_24 = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h2a61bb9e5137b059E"(ptr align 8 %str, ptr align 8 %substring)
          to label %bb15 unwind label %cleanup2

bb15:                                             ; preds = %bb14
  br i1 %_24, label %bb16, label %bb7

bb16:                                             ; preds = %bb15
  %28 = trunc i64 %i to i32
  store i32 %28, ptr %_0, align 4
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr align 8 %tmp)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb16
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr align 8 %str)
  br label %bb19

bb9:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb21, %bb23, %bb20
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #21
  unreachable

bb23:                                             ; preds = %bb24
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr align 8 %_3) #22
          to label %bb21 unwind label %terminate

bb22:                                             ; preds = %bb21
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds i8, ptr %0, i64 8
  %32 = load i32, ptr %31, align 8
  %33 = insertvalue { ptr, i32 } poison, ptr %30, 0
  %34 = insertvalue { ptr, i32 } %33, i32 %32, 1
  resume { ptr, i32 } %34
}
