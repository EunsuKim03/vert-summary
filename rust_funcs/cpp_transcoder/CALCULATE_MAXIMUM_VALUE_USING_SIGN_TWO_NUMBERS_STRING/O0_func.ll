define i32 @f_gold(ptr align 8 %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i23 = alloca [4 x i8], align 4
  %self.i17 = alloca [4 x i8], align 4
  %self.i11 = alloca [4 x i8], align 4
  %self.i5 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_53 = alloca [16 x i8], align 8
  %_42 = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %res = alloca [4 x i8], align 4
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %1 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3344d50dbfd05040E"(ptr align 8 %str)
          to label %bb1 unwind label %cleanup

bb38:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h091d5e48454b3247E"(ptr align 8 %str) #21
          to label %bb39 unwind label %terminate

cleanup:                                          ; preds = %bb2.i25, %bb2.i19, %bb2.i13, %bb2.i7, %bb2.i, %panic4, %panic3, %bb25, %bb24, %bb23, %panic2, %panic1, %bb32, %bb31, %bb30, %bb19, %bb18, %bb17, %bb14, %bb13, %bb11, %bb8, %bb6, %bb5, %panic, %bb2, %bb1, %start
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  store ptr %3, ptr %0, align 8
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 8
  br label %bb38

bb1:                                              ; preds = %start
  %_8.0 = extractvalue { ptr, i64 } %1, 0
  %_8.1 = extractvalue { ptr, i64 } %1, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfc48668df01f4095E"(ptr align 1 %_8.0, i64 %_8.1)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  store ptr %7, ptr %_7, align 8
  %9 = getelementptr inbounds i8, ptr %_7, i64 8
  store ptr %8, ptr %9, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_5 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0220c03172024189E(ptr align 8 %_7, i64 0)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i32 %_5, ptr %self.i23, align 4
  %10 = load i32, ptr %self.i23, align 4
  %11 = icmp eq i32 %10, 1114112
  %_2.i24 = select i1 %11, i64 0, i64 1
  %12 = trunc nuw i64 %_2.i24 to i1
  br i1 %12, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit28", label %bb2.i25

bb2.i25:                                          ; preds = %bb3
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_a1f4cf1a4601c43c42884e5f56939aa3) #22
          to label %.noexc27 unwind label %cleanup

.noexc27:                                         ; preds = %bb2.i25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit28": ; preds = %bb3
  %val.i26 = load i32, ptr %self.i23, align 4
  br label %bb4

bb4:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit28"
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i26, i32 48)
  %_11.0 = extractvalue { i32, i1 } %13, 0
  %_11.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_11.1, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  store i32 %_11.0, ptr %res, align 4
; invoke alloc::string::String::len
  %_14 = invoke i64 @_ZN5alloc6string6String3len17hf5200da9bfd44444E(ptr align 8 %str)
          to label %bb6 unwind label %cleanup

panic:                                            ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_fbde552bc10ec162ec54805e4511a002) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb6:                                              ; preds = %bb5
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %14 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0642071347af67e0E"(i64 1, i64 %_14)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %_12.0 = extractvalue { i64, i64 } %14, 0
  %_12.1 = extractvalue { i64, i64 } %14, 1
  store i64 %_12.0, ptr %iter, align 8
  %15 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_12.1, ptr %15, align 8
  br label %bb8

bb8:                                              ; preds = %bb29, %bb36, %bb7
; invoke core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
  %16 = invoke { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h53816c7c5b4f9d03E"(ptr align 8 %iter)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %17 = extractvalue { i64, i64 } %16, 0
  %18 = extractvalue { i64, i64 } %16, 1
  store i64 %17, ptr %_17, align 8
  %19 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %18, ptr %19, align 8
  %_19 = load i64, ptr %_17, align 8
  %20 = getelementptr inbounds i8, ptr %_17, i64 8
  %21 = load i64, ptr %20, align 8
  %22 = trunc nuw i64 %_19 to i1
  br i1 %22, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  %23 = getelementptr inbounds i8, ptr %_17, i64 8
  %i = load i64, ptr %23, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %24 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3344d50dbfd05040E"(ptr align 8 %str)
          to label %bb13 unwind label %cleanup

bb12:                                             ; preds = %bb9
  %_0 = load i32, ptr %res, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h091d5e48454b3247E"(ptr align 8 %str)
  ret i32 %_0

bb13:                                             ; preds = %bb11
  %_26.0 = extractvalue { ptr, i64 } %24, 0
  %_26.1 = extractvalue { ptr, i64 } %24, 1
; invoke core::str::<impl str>::chars
  %25 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfc48668df01f4095E"(ptr align 1 %_26.0, i64 %_26.1)
          to label %bb14 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %26 = extractvalue { ptr, ptr } %25, 0
  %27 = extractvalue { ptr, ptr } %25, 1
  store ptr %26, ptr %_25, align 8
  %28 = getelementptr inbounds i8, ptr %_25, i64 8
  store ptr %27, ptr %28, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_23 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0220c03172024189E(ptr align 8 %_25, i64 %i)
          to label %bb15 unwind label %cleanup

bb15:                                             ; preds = %bb14
  store i32 %_23, ptr %self.i17, align 4
  %29 = load i32, ptr %self.i17, align 4
  %30 = icmp eq i32 %29, 1114112
  %_2.i18 = select i1 %30, i64 0, i64 1
  %31 = trunc nuw i64 %_2.i18 to i1
  br i1 %31, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit22", label %bb2.i19

bb2.i19:                                          ; preds = %bb15
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_c5d461147459f590a67461437081ad1d) #22
          to label %.noexc21 unwind label %cleanup

.noexc21:                                         ; preds = %bb2.i19
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit22": ; preds = %bb15
  %val.i20 = load i32, ptr %self.i17, align 4
  br label %bb16

bb16:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit22"
  %_21 = icmp eq i32 %val.i20, 48
  br i1 %_21, label %bb23, label %bb17

bb17:                                             ; preds = %bb16
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %32 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3344d50dbfd05040E"(ptr align 8 %str)
          to label %bb18 unwind label %cleanup

bb23:                                             ; preds = %bb22, %bb21, %bb16
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %33 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3344d50dbfd05040E"(ptr align 8 %str)
          to label %bb24 unwind label %cleanup

bb18:                                             ; preds = %bb17
  %_33.0 = extractvalue { ptr, i64 } %32, 0
  %_33.1 = extractvalue { ptr, i64 } %32, 1
; invoke core::str::<impl str>::chars
  %34 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfc48668df01f4095E"(ptr align 1 %_33.0, i64 %_33.1)
          to label %bb19 unwind label %cleanup

bb19:                                             ; preds = %bb18
  %35 = extractvalue { ptr, ptr } %34, 0
  %36 = extractvalue { ptr, ptr } %34, 1
  store ptr %35, ptr %_32, align 8
  %37 = getelementptr inbounds i8, ptr %_32, i64 8
  store ptr %36, ptr %37, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_30 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0220c03172024189E(ptr align 8 %_32, i64 %i)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %bb19
  store i32 %_30, ptr %self.i11, align 4
  %38 = load i32, ptr %self.i11, align 4
  %39 = icmp eq i32 %38, 1114112
  %_2.i12 = select i1 %39, i64 0, i64 1
  %40 = trunc nuw i64 %_2.i12 to i1
  br i1 %40, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit16", label %bb2.i13

bb2.i13:                                          ; preds = %bb20
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_86b98c8458b33feca5b61b5f6460e1c8) #22
          to label %.noexc15 unwind label %cleanup

.noexc15:                                         ; preds = %bb2.i13
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit16": ; preds = %bb20
  %val.i14 = load i32, ptr %self.i11, align 4
  br label %bb21

bb21:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit16"
  %_28 = icmp eq i32 %val.i14, 49
  br i1 %_28, label %bb23, label %bb22

bb22:                                             ; preds = %bb21
  %_36 = load i32, ptr %res, align 4
  %_35 = icmp slt i32 %_36, 2
  br i1 %_35, label %bb23, label %bb30

bb30:                                             ; preds = %bb22
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %41 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3344d50dbfd05040E"(ptr align 8 %str)
          to label %bb31 unwind label %cleanup

bb31:                                             ; preds = %bb30
  %_54.0 = extractvalue { ptr, i64 } %41, 0
  %_54.1 = extractvalue { ptr, i64 } %41, 1
; invoke core::str::<impl str>::chars
  %42 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfc48668df01f4095E"(ptr align 1 %_54.0, i64 %_54.1)
          to label %bb32 unwind label %cleanup

bb32:                                             ; preds = %bb31
  %43 = extractvalue { ptr, ptr } %42, 0
  %44 = extractvalue { ptr, ptr } %42, 1
  store ptr %43, ptr %_53, align 8
  %45 = getelementptr inbounds i8, ptr %_53, i64 8
  store ptr %44, ptr %45, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_51 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0220c03172024189E(ptr align 8 %_53, i64 %i)
          to label %bb33 unwind label %cleanup

bb33:                                             ; preds = %bb32
  store i32 %_51, ptr %self.i5, align 4
  %46 = load i32, ptr %self.i5, align 4
  %47 = icmp eq i32 %46, 1114112
  %_2.i6 = select i1 %47, i64 0, i64 1
  %48 = trunc nuw i64 %_2.i6 to i1
  br i1 %48, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit10", label %bb2.i7

bb2.i7:                                           ; preds = %bb33
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_89528d77aa8a40e36e9d6d0db8889e7a) #22
          to label %.noexc9 unwind label %cleanup

.noexc9:                                          ; preds = %bb2.i7
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit10": ; preds = %bb33
  %val.i8 = load i32, ptr %self.i5, align 4
  br label %bb34

bb34:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit10"
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i8, i32 48)
  %_57.0 = extractvalue { i32, i1 } %49, 0
  %_57.1 = extractvalue { i32, i1 } %49, 1
  br i1 %_57.1, label %panic1, label %bb35

bb35:                                             ; preds = %bb34
  %50 = load i32, ptr %res, align 4
  %51 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %50, i32 %_57.0)
  %_58.0 = extractvalue { i32, i1 } %51, 0
  %_58.1 = extractvalue { i32, i1 } %51, 1
  br i1 %_58.1, label %panic2, label %bb36

panic1:                                           ; preds = %bb34
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c5728d6113a476b3d3aef9dc9b8d7ddf) #23
          to label %unreachable unwind label %cleanup

bb36:                                             ; preds = %bb35
  store i32 %_58.0, ptr %res, align 4
  br label %bb8

panic2:                                           ; preds = %bb35
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_bf76315ab41b1e5ddb18cf310412ec09) #23
          to label %unreachable unwind label %cleanup

bb24:                                             ; preds = %bb23
  %_43.0 = extractvalue { ptr, i64 } %33, 0
  %_43.1 = extractvalue { ptr, i64 } %33, 1
; invoke core::str::<impl str>::chars
  %52 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hfc48668df01f4095E"(ptr align 1 %_43.0, i64 %_43.1)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
  %53 = extractvalue { ptr, ptr } %52, 0
  %54 = extractvalue { ptr, ptr } %52, 1
  store ptr %53, ptr %_42, align 8
  %55 = getelementptr inbounds i8, ptr %_42, i64 8
  store ptr %54, ptr %55, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_40 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0220c03172024189E(ptr align 8 %_42, i64 %i)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
  store i32 %_40, ptr %self.i, align 4
  %56 = load i32, ptr %self.i, align 4
  %57 = icmp eq i32 %56, 1114112
  %_2.i = select i1 %57, i64 0, i64 1
  %58 = trunc nuw i64 %_2.i to i1
  br i1 %58, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb26
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_aed007ffc700f8b0e545c3d92234d7e0) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit": ; preds = %bb26
  %val.i = load i32, ptr %self.i, align 4
  br label %bb27

bb27:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h8eb8d9894db993a8E.exit"
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %val.i, i32 48)
  %_46.0 = extractvalue { i32, i1 } %59, 0
  %_46.1 = extractvalue { i32, i1 } %59, 1
  br i1 %_46.1, label %panic3, label %bb28

bb28:                                             ; preds = %bb27
  %60 = load i32, ptr %res, align 4
  %61 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %60, i32 %_46.0)
  %_47.0 = extractvalue { i32, i1 } %61, 0
  %_47.1 = extractvalue { i32, i1 } %61, 1
  br i1 %_47.1, label %panic4, label %bb29

panic3:                                           ; preds = %bb27
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_936a6b5d1b511bb1b36a61ffea448eb8) #23
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  store i32 %_47.0, ptr %res, align 4
  br label %bb8

panic4:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_07e5160772c3c199c792865e1405719e) #23
          to label %unreachable unwind label %cleanup

bb10:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb38
  %62 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb39:                                             ; preds = %bb38
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds i8, ptr %0, i64 8
  %65 = load i32, ptr %64, align 8
  %66 = insertvalue { ptr, i32 } poison, ptr %63, 0
  %67 = insertvalue { ptr, i32 } %66, i32 %65, 1
  resume { ptr, i32 } %67
}
