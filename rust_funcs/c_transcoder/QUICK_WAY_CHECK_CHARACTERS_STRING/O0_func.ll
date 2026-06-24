define i32 @f_gold(ptr align 1 %s.0, i64 %s.1) unnamed_addr #3 {
start:
  %self.i1 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_18 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %_6 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %n = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h18a8b1f938f3a149E"(ptr align 1 %s.0, i64 %s.1) #20
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %0 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h652c2415d29de430E"(i64 1, i64 %n) #20
  %_3.0 = extractvalue { i64, i64 } %0, 0
  %_3.1 = extractvalue { i64, i64 } %0, 1
  store i64 %_3.0, ptr %iter, align 8
  %1 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_3.1, ptr %1, align 8
  br label %bb3

bb3:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit", %start
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %2 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h5ae42d374490f46dE"(ptr align 8 %iter) #20
  %3 = extractvalue { i64, i64 } %2, 0
  %4 = extractvalue { i64, i64 } %2, 1
  store i64 %3, ptr %_6, align 8
  %5 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 %4, ptr %5, align 8
  %_8 = load i64, ptr %_6, align 8
  %6 = getelementptr inbounds i8, ptr %_6, i64 8
  %7 = load i64, ptr %6, align 8
  %8 = trunc nuw i64 %_8 to i1
  br i1 %8, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %9 = getelementptr inbounds i8, ptr %_6, i64 8
  %i = load i64, ptr %9, align 8
; call core::str::<impl str>::chars
  %10 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h533345c21b09508dE"(ptr align 1 %s.0, i64 %s.1) #20
  %11 = extractvalue { ptr, ptr } %10, 0
  %12 = extractvalue { ptr, ptr } %10, 1
  store ptr %11, ptr %_14, align 8
  %13 = getelementptr inbounds i8, ptr %_14, i64 8
  store ptr %12, ptr %13, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_12 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E(ptr align 8 %_14, i64 %i) #20
  store i32 %_12, ptr %self.i1, align 4
  %14 = load i32, ptr %self.i1, align 4
  %15 = icmp eq i32 %14, 1114112
  %_2.i2 = select i1 %15, i64 0, i64 1
  %16 = trunc nuw i64 %_2.i2 to i1
  br i1 %16, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit5", label %bb2.i3

bb2.i3:                                           ; preds = %bb6
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_bb475a26277ca2c15ec0a50f1c2e3777) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit5": ; preds = %bb6
  %val.i4 = load i32, ptr %self.i1, align 4
; call core::str::<impl str>::chars
  %17 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h533345c21b09508dE"(ptr align 1 %s.0, i64 %s.1) #20
  %18 = extractvalue { ptr, ptr } %17, 0
  %19 = extractvalue { ptr, ptr } %17, 1
  store ptr %18, ptr %_18, align 8
  %20 = getelementptr inbounds i8, ptr %_18, i64 8
  store ptr %19, ptr %20, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_16 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E(ptr align 8 %_18, i64 0) #20
  store i32 %_16, ptr %self.i, align 4
  %21 = load i32, ptr %self.i, align 4
  %22 = icmp eq i32 %21, 1114112
  %_2.i = select i1 %22, i64 0, i64 1
  %23 = trunc nuw i64 %_2.i to i1
  br i1 %23, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit", label %bb2.i

bb2.i:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit5"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_9c351655574247d91bc2884715ebc867) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit5"
  %val.i = load i32, ptr %self.i, align 4
  %_10 = icmp ne i32 %val.i4, %val.i
  br i1 %_10, label %bb14, label %bb3

bb7:                                              ; preds = %bb3
  store i32 1, ptr %_0, align 4
  br label %bb15

bb15:                                             ; preds = %bb14, %bb7
  %24 = load i32, ptr %_0, align 4
  ret i32 %24

bb14:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit"
  store i32 0, ptr %_0, align 4
  br label %bb15

bb5:                                              ; No predecessors!
  unreachable
}
