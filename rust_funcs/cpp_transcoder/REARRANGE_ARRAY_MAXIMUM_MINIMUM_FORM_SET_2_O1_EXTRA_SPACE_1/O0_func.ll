define void @f_gold(ptr align 4 %arr.0, i64 %arr.1, float %n) unnamed_addr #3 {
start:
  %self.i2 = alloca [8 x i8], align 8
  %self.i = alloca [8 x i8], align 8
  %_15 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %min_ele = alloca [4 x i8], align 4
  %max_ele = alloca [4 x i8], align 4
; call core::slice::<impl [T]>::last
  %_5 = call align 4 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4last17h9ecd351e0ead3e9dE"(ptr align 4 %arr.0, i64 %arr.1) #20
  store ptr %_5, ptr %self.i2, align 8
  %0 = load ptr, ptr %self.i2, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq i64 %1, 0
  %_2.i3 = select i1 %2, i64 0, i64 1
  %3 = trunc nuw i64 %_2.i3 to i1
  br i1 %3, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit6", label %bb2.i4

bb2.i4:                                           ; preds = %start
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_6f534572397d4b9847128da29943f6db) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit6": ; preds = %start
  %val.i5 = load ptr, ptr %self.i2, align 8
  %4 = load float, ptr %val.i5, align 4
  store float %4, ptr %max_ele, align 4
; call core::slice::<impl [T]>::first
  %_9 = call align 4 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$5first17h150de000ba976fa4E"(ptr align 4 %arr.0, i64 %arr.1) #20
  store ptr %_9, ptr %self.i, align 8
  %5 = load ptr, ptr %self.i, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = icmp eq i64 %6, 0
  %_2.i = select i1 %7, i64 0, i64 1
  %8 = trunc nuw i64 %_2.i to i1
  br i1 %8, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit", label %bb2.i

bb2.i:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit6"
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_4b2cca7f347e70624ac708438db710a9) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit6"
  %val.i = load ptr, ptr %self.i, align 8
  %9 = load float, ptr %val.i, align 4
  store float %9, ptr %min_ele, align 4
  %_13 = call i64 @llvm.fptoui.sat.i64.f32(float %n)
; call <I as core::iter::traits::collect::IntoIterator>::into_iter
  %10 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h5b478af43da1e35bE"(i64 0, i64 %_13) #20
  %_11.0 = extractvalue { i64, i64 } %10, 0
  %_11.1 = extractvalue { i64, i64 } %10, 1
  store i64 %_11.0, ptr %iter, align 8
  %11 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_11.1, ptr %11, align 8
  br label %bb6

bb6:                                              ; preds = %bb13, %bb15, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h613ca36ca27ee72bE.exit"
; call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %12 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hc534efd977cbb222E"(ptr align 8 %iter) #20
  %13 = extractvalue { i64, i64 } %12, 0
  %14 = extractvalue { i64, i64 } %12, 1
  store i64 %13, ptr %_15, align 8
  %15 = getelementptr inbounds i8, ptr %_15, i64 8
  store i64 %14, ptr %15, align 8
  %_17 = load i64, ptr %_15, align 8
  %16 = getelementptr inbounds i8, ptr %_15, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = trunc nuw i64 %_17 to i1
  br i1 %18, label %bb9, label %bb10

bb9:                                              ; preds = %bb6
  %19 = getelementptr inbounds i8, ptr %_15, i64 8
  %i = load i64, ptr %19, align 8
  %_20 = urem i64 %i, 2
  %_19 = icmp eq i64 %_20, 0
  br i1 %_19, label %bb12, label %bb14

bb10:                                             ; preds = %bb6
  ret void

bb14:                                             ; preds = %bb9
  %_26 = load float, ptr %min_ele, align 4
  %_29 = icmp ult i64 %i, %arr.1
  br i1 %_29, label %bb15, label %panic

bb12:                                             ; preds = %bb9
  %_22 = load float, ptr %max_ele, align 4
  %_25 = icmp ult i64 %i, %arr.1
  br i1 %_25, label %bb13, label %panic1

bb15:                                             ; preds = %bb14
  %20 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i
  store float %_26, ptr %20, align 4
  %21 = load float, ptr %min_ele, align 4
  %22 = fadd float %21, 1.000000e+00
  store float %22, ptr %min_ele, align 4
  br label %bb6

panic:                                            ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_ddee183a7685b6485c6b77d2651c9d0f) #22
  unreachable

bb13:                                             ; preds = %bb12
  %23 = getelementptr inbounds nuw float, ptr %arr.0, i64 %i
  store float %_22, ptr %23, align 4
  %24 = load float, ptr %max_ele, align 4
  %25 = fsub float %24, 1.000000e+00
  store float %25, ptr %max_ele, align 4
  br label %bb6

panic1:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %i, i64 %arr.1, ptr align 8 @alloc_dc51205c9db4b3331cd1a90666556db1) #22
  unreachable

bb8:                                              ; No predecessors!
  unreachable
}
