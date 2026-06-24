define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %self.i3 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_25 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %iter = alloca [24 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %_8 = alloca [24 x i8], align 8
  %cur_count = alloca [4 x i8], align 4
  %_6 = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
  %count = alloca [4 x i8], align 4
  store i32 0, ptr %count, align 4
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf9e0ed14c4526bedE"(ptr align 1 %str.0, i64 %str.1) #17
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  store ptr %1, ptr %_6, align 8
  %3 = getelementptr inbounds i8, ptr %_6, i64 8
  store ptr %2, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_4 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE(ptr align 8 %_6, i64 0) #17
  store i32 %_4, ptr %self.i3, align 4
  %4 = load i32, ptr %self.i3, align 4
  %5 = icmp eq i32 %4, 1114112
  %_2.i4 = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_2.i4 to i1
  br i1 %6, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit7", label %bb2.i5

bb2.i5:                                           ; preds = %start
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_ddf124d032e6dafab08501bf6173afd8) #23
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit7": ; preds = %start
  %val.i6 = load i32, ptr %self.i3, align 4
  store i32 %val.i6, ptr %res, align 4
  store i32 1, ptr %cur_count, align 4
; call core::str::<impl str>::chars
  %7 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf9e0ed14c4526bedE"(ptr align 1 %str.0, i64 %str.1) #17
  %_10.0 = extractvalue { ptr, ptr } %7, 0
  %_10.1 = extractvalue { ptr, ptr } %7, 1
; call core::iter::traits::iterator::Iterator::enumerate
  call void @_ZN4core4iter6traits8iterator8Iterator9enumerate17hf827651ce4aa7fbeE(ptr sret([24 x i8]) align 8 %_9, ptr %_10.0, ptr %_10.1) #17
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd7dbb21b556126b6E"(ptr sret([24 x i8]) align 8 %_8, ptr align 8 %_9) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_8, i64 24, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb20, %bb23, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit7"
; call <core::iter::adapters::enumerate::Enumerate<I> as core::iter::traits::iterator::Iterator>::next
  %8 = call { i64, i32 } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3ba24747a758495E"(ptr align 8 %iter) #17
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = extractvalue { i64, i32 } %8, 1
  store i64 %9, ptr %_12, align 8
  %11 = getelementptr inbounds i8, ptr %_12, i64 8
  store i32 %10, ptr %11, align 8
  %12 = load i64, ptr %_12, align 8
  %13 = getelementptr inbounds i8, ptr %_12, i64 8
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 1114112
  %_14 = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_14 to i1
  br i1 %16, label %bb10, label %bb11

bb10:                                             ; preds = %bb7
  %i = load i64, ptr %_12, align 8
  %17 = getelementptr inbounds i8, ptr %_12, i64 8
  %c = load i32, ptr %17, align 8
; call core::str::<impl str>::len
  %_19 = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17hce6fe07b9df6f168E"(ptr align 1 %str.0, i64 %str.1) #17
  %_20.0 = sub i64 %_19, 1
  %_20.1 = icmp ult i64 %_19, 1
  br i1 %_20.1, label %panic, label %bb13

bb11:                                             ; preds = %bb7
  %_0 = load i32, ptr %res, align 4
  ret i32 %_0

bb13:                                             ; preds = %bb10
  %_17 = icmp ult i64 %i, %_20.0
  br i1 %_17, label %bb14, label %bb21

panic:                                            ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_2d6a2e31fc23d5dc46090792e65a6d2a) #23
  unreachable

bb21:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit", %bb13
  %_30 = load i32, ptr %cur_count, align 4
  %_31 = load i32, ptr %count, align 4
  %_29 = icmp sgt i32 %_30, %_31
  br i1 %_29, label %bb22, label %bb23

bb14:                                             ; preds = %bb13
; call core::str::<impl str>::chars
  %18 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hf9e0ed14c4526bedE"(ptr align 1 %str.0, i64 %str.1) #17
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  store ptr %19, ptr %_25, align 8
  %21 = getelementptr inbounds i8, ptr %_25, i64 8
  store ptr %20, ptr %21, align 8
  %_27.0 = add i64 %i, 1
  %_27.1 = icmp ult i64 %_27.0, %i
  br i1 %_27.1, label %panic1, label %bb16

bb16:                                             ; preds = %bb14
; call core::iter::traits::iterator::Iterator::nth
  %_23 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE(ptr align 8 %_25, i64 %_27.0) #17
  store i32 %_23, ptr %self.i, align 4
  %22 = load i32, ptr %self.i, align 4
  %23 = icmp eq i32 %22, 1114112
  %_2.i = select i1 %23, i64 0, i64 1
  %24 = trunc nuw i64 %_2.i to i1
  br i1 %24, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb16
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_515334fc877a32c58f1f4872cbff2357) #23
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit": ; preds = %bb16
  %val.i = load i32, ptr %self.i, align 4
  %_21 = icmp eq i32 %c, %val.i
  br i1 %_21, label %bb19, label %bb21

panic1:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_2555a001936801d403f2b30c4134126c) #23
  unreachable

bb19:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit"
  %25 = load i32, ptr %cur_count, align 4
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %25, i32 1)
  %_28.0 = extractvalue { i32, i1 } %26, 0
  %_28.1 = extractvalue { i32, i1 } %26, 1
  br i1 %_28.1, label %panic2, label %bb20

bb23:                                             ; preds = %bb22, %bb21
  store i32 1, ptr %cur_count, align 4
  br label %bb7

bb22:                                             ; preds = %bb21
  %_32 = load i32, ptr %cur_count, align 4
  store i32 %_32, ptr %count, align 4
  store i32 %c, ptr %res, align 4
  br label %bb23

bb20:                                             ; preds = %bb19
  store i32 %_28.0, ptr %cur_count, align 4
  br label %bb7

panic2:                                           ; preds = %bb19
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1122a51971c7de1659abeeaa1e43040b) #23
  unreachable

bb9:                                              ; No predecessors!
  unreachable
}
