define void @f_gold(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i8 = alloca [4 x i8], align 4
  %self.i2 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_34 = alloca [16 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %v = alloca [4 x i8], align 4
  %result = alloca [24 x i8], align 8
; invoke alloc::string::String::new
  invoke void @_ZN5alloc6string6String3new17h3024b5ca747b06b6E(ptr sret([24 x i8]) align 8 %result)
          to label %bb1 unwind label %cleanup

bb28:                                             ; preds = %bb27, %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E"(ptr align 8 %str) #21
          to label %bb29 unwind label %terminate

cleanup:                                          ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb28

bb1:                                              ; preds = %start
  store i32 1, ptr %v, align 4
; invoke alloc::string::String::len
  %_6 = invoke i64 @_ZN5alloc6string6String3len17h7eabb011bf6dd62cE(ptr align 8 %str)
          to label %bb2 unwind label %cleanup1

bb27:                                             ; preds = %cleanup1
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E"(ptr align 8 %result) #21
          to label %bb28 unwind label %terminate

cleanup1:                                         ; preds = %bb2.i10, %bb2.i4, %bb2.i, %bb24, %bb22, %bb21, %bb20, %bb16, %bb15, %bb14, %bb10, %bb9, %bb7, %bb4, %bb2, %bb1
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  store ptr %6, ptr %0, align 8
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %7, ptr %8, align 8
  br label %bb27

bb2:                                              ; preds = %bb1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %9 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h55f504a307a83105E"(i64 0, i64 %_6)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  %_4.0 = extractvalue { i64, i64 } %9, 0
  %_4.1 = extractvalue { i64, i64 } %9, 1
  store i64 %_4.0, ptr %iter, align 8
  %10 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_4.1, ptr %10, align 8
  br label %bb4

bb4:                                              ; preds = %bb13, %bb25, %bb19, %bb18, %bb3
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %11 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hd91af3c9e163acbcE"(ptr align 8 %iter)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %_9, align 8
  %14 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %13, ptr %14, align 8
  %_11 = load i64, ptr %_9, align 8
  %15 = getelementptr inbounds i8, ptr %_9, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = trunc nuw i64 %_11 to i1
  br i1 %17, label %bb7, label %bb8

bb7:                                              ; preds = %bb5
  %18 = getelementptr inbounds i8, ptr %_9, i64 8
  %i = load i64, ptr %18, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %19 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h90598648b4561b41E"(ptr align 8 %str)
          to label %bb9 unwind label %cleanup1

bb8:                                              ; preds = %bb5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %result, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h611da46daeed8de3E"(ptr align 8 %str)
  ret void

bb9:                                              ; preds = %bb7
  %_18.0 = extractvalue { ptr, i64 } %19, 0
  %_18.1 = extractvalue { ptr, i64 } %19, 1
; invoke core::str::<impl str>::chars
  %20 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17ha8ed7f1f52fa35f4E"(ptr align 1 %_18.0, i64 %_18.1)
          to label %bb10 unwind label %cleanup1

bb10:                                             ; preds = %bb9
  %21 = extractvalue { ptr, ptr } %20, 0
  %22 = extractvalue { ptr, ptr } %20, 1
  store ptr %21, ptr %_17, align 8
  %23 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %22, ptr %23, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_15 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3601c5abefbbf74E(ptr align 8 %_17, i64 %i)
          to label %bb11 unwind label %cleanup1

bb11:                                             ; preds = %bb10
  store i32 %_15, ptr %self.i8, align 4
  %24 = load i32, ptr %self.i8, align 4
  %25 = icmp eq i32 %24, 1114112
  %_2.i9 = select i1 %25, i64 0, i64 1
  %26 = trunc nuw i64 %_2.i9 to i1
  br i1 %26, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb5a7672955d0c174E.exit13", label %bb2.i10

bb2.i10:                                          ; preds = %bb11
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_8faa6c0b7533f1bb8f508d38d11be12e) #22
          to label %.noexc12 unwind label %cleanup1

.noexc12:                                         ; preds = %bb2.i10
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hb5a7672955d0c174E.exit13": ; preds = %bb11
  %val.i11 = load i32, ptr %self.i8, align 4
  br label %bb12

bb12:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb5a7672955d0c174E.exit13"
  %_13 = icmp eq i32 %val.i11, 32
  br i1 %_13, label %bb13, label %bb14

bb14:                                             ; preds = %bb12
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %27 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h90598648b4561b41E"(ptr align 8 %str)
          to label %bb15 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  store i32 1, ptr %v, align 4
  br label %bb4

bb15:                                             ; preds = %bb14
  %_25.0 = extractvalue { ptr, i64 } %27, 0
  %_25.1 = extractvalue { ptr, i64 } %27, 1
; invoke core::str::<impl str>::chars
  %28 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17ha8ed7f1f52fa35f4E"(ptr align 1 %_25.0, i64 %_25.1)
          to label %bb16 unwind label %cleanup1

bb16:                                             ; preds = %bb15
  %29 = extractvalue { ptr, ptr } %28, 0
  %30 = extractvalue { ptr, ptr } %28, 1
  store ptr %29, ptr %_24, align 8
  %31 = getelementptr inbounds i8, ptr %_24, i64 8
  store ptr %30, ptr %31, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_22 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3601c5abefbbf74E(ptr align 8 %_24, i64 %i)
          to label %bb17 unwind label %cleanup1

bb17:                                             ; preds = %bb16
  store i32 %_22, ptr %self.i2, align 4
  %32 = load i32, ptr %self.i2, align 4
  %33 = icmp eq i32 %32, 1114112
  %_2.i3 = select i1 %33, i64 0, i64 1
  %34 = trunc nuw i64 %_2.i3 to i1
  br i1 %34, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb5a7672955d0c174E.exit7", label %bb2.i4

bb2.i4:                                           ; preds = %bb17
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_bad3a55fe39c80b1e3ff6e559cfec948) #22
          to label %.noexc6 unwind label %cleanup1

.noexc6:                                          ; preds = %bb2.i4
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hb5a7672955d0c174E.exit7": ; preds = %bb17
  %val.i5 = load i32, ptr %self.i2, align 4
  br label %bb18

bb18:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb5a7672955d0c174E.exit7"
  %_20 = icmp ne i32 %val.i5, 32
  br i1 %_20, label %bb19, label %bb4

bb19:                                             ; preds = %bb18
  %_28 = load i32, ptr %v, align 4
  %_27 = icmp eq i32 %_28, 1
  br i1 %_27, label %bb20, label %bb4

bb20:                                             ; preds = %bb19
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %35 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h90598648b4561b41E"(ptr align 8 %str)
          to label %bb21 unwind label %cleanup1

bb21:                                             ; preds = %bb20
  %_35.0 = extractvalue { ptr, i64 } %35, 0
  %_35.1 = extractvalue { ptr, i64 } %35, 1
; invoke core::str::<impl str>::chars
  %36 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17ha8ed7f1f52fa35f4E"(ptr align 1 %_35.0, i64 %_35.1)
          to label %bb22 unwind label %cleanup1

bb22:                                             ; preds = %bb21
  %37 = extractvalue { ptr, ptr } %36, 0
  %38 = extractvalue { ptr, ptr } %36, 1
  store ptr %37, ptr %_34, align 8
  %39 = getelementptr inbounds i8, ptr %_34, i64 8
  store ptr %38, ptr %39, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_32 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3601c5abefbbf74E(ptr align 8 %_34, i64 %i)
          to label %bb23 unwind label %cleanup1

bb23:                                             ; preds = %bb22
  store i32 %_32, ptr %self.i, align 4
  %40 = load i32, ptr %self.i, align 4
  %41 = icmp eq i32 %40, 1114112
  %_2.i = select i1 %41, i64 0, i64 1
  %42 = trunc nuw i64 %_2.i to i1
  br i1 %42, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb5a7672955d0c174E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb23
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_af7177f9bf2cba357eba10f755c7c124) #22
          to label %.noexc unwind label %cleanup1

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hb5a7672955d0c174E.exit": ; preds = %bb23
  %val.i = load i32, ptr %self.i, align 4
  br label %bb24

bb24:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hb5a7672955d0c174E.exit"
; invoke alloc::string::String::push
  invoke void @_ZN5alloc6string6String4push17h826f3a69076e0699E(ptr align 8 %result, i32 %val.i)
          to label %bb25 unwind label %cleanup1

bb25:                                             ; preds = %bb24
  store i32 0, ptr %v, align 4
  br label %bb4

bb6:                                              ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb28, %bb27
  %43 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb29:                                             ; preds = %bb28
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds i8, ptr %0, i64 8
  %46 = load i32, ptr %45, align 8
  %47 = insertvalue { ptr, i32 } poison, ptr %44, 0
  %48 = insertvalue { ptr, i32 } %47, i32 %46, 1
  resume { ptr, i32 } %48
}
