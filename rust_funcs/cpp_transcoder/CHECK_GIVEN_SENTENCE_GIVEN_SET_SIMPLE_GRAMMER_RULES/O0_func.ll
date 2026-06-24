define i32 @f_gold(ptr align 1 %str.0, i64 %str.1) unnamed_addr #3 {
start:
  %self.i38 = alloca [4 x i8], align 4
  %self.i33 = alloca [4 x i8], align 4
  %self.i28 = alloca [4 x i8], align 4
  %self.i23 = alloca [4 x i8], align 4
  %self.i18 = alloca [4 x i8], align 4
  %self.i13 = alloca [4 x i8], align 4
  %self.i8 = alloca [4 x i8], align 4
  %self.i3 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %_59 = alloca [16 x i8], align 8
  %_53 = alloca [16 x i8], align 8
  %_47 = alloca [16 x i8], align 8
  %_41 = alloca [16 x i8], align 8
  %_35 = alloca [16 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %index = alloca [8 x i8], align 8
  %curr_state = alloca [4 x i8], align 4
  %prev_state = alloca [4 x i8], align 4
  %_17 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %_0 = alloca [4 x i8], align 4
; call core::str::<impl str>::len
  %len = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$3len17h091e49773d1743e2E"(ptr align 1 %str.0, i64 %str.1) #19
; call core::str::<impl str>::chars
  %0 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h13d90a78e0475550E"(ptr align 1 %str.0, i64 %str.1) #19
  %1 = extractvalue { ptr, ptr } %0, 0
  %2 = extractvalue { ptr, ptr } %0, 1
  store ptr %1, ptr %_7, align 8
  %3 = getelementptr inbounds i8, ptr %_7, i64 8
  store ptr %2, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_5 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr align 8 %_7, i64 0) #19
  store i32 %_5, ptr %self.i38, align 4
  %4 = load i32, ptr %self.i38, align 4
  %5 = icmp eq i32 %4, 1114112
  %_2.i39 = select i1 %5, i64 0, i64 1
  %6 = trunc nuw i64 %_2.i39 to i1
  br i1 %6, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit42", label %bb2.i40

bb2.i40:                                          ; preds = %start
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_eb641e0e6f5032de832d395ace315118) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit42": ; preds = %start
  %val.i41 = load i32, ptr %self.i38, align 4
  %_3 = icmp ult i32 %val.i41, 65
  br i1 %_3, label %bb9, label %bb5

bb5:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit42"
; call core::str::<impl str>::chars
  %7 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h13d90a78e0475550E"(ptr align 1 %str.0, i64 %str.1) #19
  %8 = extractvalue { ptr, ptr } %7, 0
  %9 = extractvalue { ptr, ptr } %7, 1
  store ptr %8, ptr %_12, align 8
  %10 = getelementptr inbounds i8, ptr %_12, i64 8
  store ptr %9, ptr %10, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_10 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr align 8 %_12, i64 0) #19
  store i32 %_10, ptr %self.i33, align 4
  %11 = load i32, ptr %self.i33, align 4
  %12 = icmp eq i32 %11, 1114112
  %_2.i34 = select i1 %12, i64 0, i64 1
  %13 = trunc nuw i64 %_2.i34 to i1
  br i1 %13, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit37", label %bb2.i35

bb2.i35:                                          ; preds = %bb5
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_3524435204fdda3dfb8f46cc42a289b7) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit37": ; preds = %bb5
  %val.i36 = load i32, ptr %self.i33, align 4
  %_8 = icmp ugt i32 %val.i36, 90
  br i1 %_8, label %bb9, label %bb10

bb9:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit37", %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit42"
  store i32 0, ptr %_0, align 4
  br label %bb59

bb10:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit37"
; call core::str::<impl str>::chars
  %14 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h13d90a78e0475550E"(ptr align 1 %str.0, i64 %str.1) #19
  %15 = extractvalue { ptr, ptr } %14, 0
  %16 = extractvalue { ptr, ptr } %14, 1
  store ptr %15, ptr %_17, align 8
  %17 = getelementptr inbounds i8, ptr %_17, i64 8
  store ptr %16, ptr %17, align 8
  %_19.0 = sub i64 %len, 1
  %_19.1 = icmp ult i64 %len, 1
  br i1 %_19.1, label %panic, label %bb12

bb12:                                             ; preds = %bb10
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr align 8 %_17, i64 %_19.0) #19
  store i32 %_15, ptr %self.i28, align 4
  %18 = load i32, ptr %self.i28, align 4
  %19 = icmp eq i32 %18, 1114112
  %_2.i29 = select i1 %19, i64 0, i64 1
  %20 = trunc nuw i64 %_2.i29 to i1
  br i1 %20, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit32", label %bb2.i30

bb2.i30:                                          ; preds = %bb12
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_bc5a926cd0ddf41ff20213c75a10c600) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit32": ; preds = %bb12
  %val.i31 = load i32, ptr %self.i28, align 4
  %_13 = icmp ne i32 %val.i31, 46
  br i1 %_13, label %bb15, label %bb16

panic:                                            ; preds = %bb10
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_73d0aa1282d2c4e82b1b276aea430789) #22
  unreachable

bb16:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit32"
  store i32 0, ptr %prev_state, align 4
  store i32 0, ptr %curr_state, align 4
  store i64 1, ptr %index, align 8
  br label %bb17

bb15:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit32"
  store i32 0, ptr %_0, align 4
  br label %bb59

bb17:                                             ; preds = %bb57, %bb16
  %_24 = load i64, ptr %index, align 8
  %_23 = icmp ult i64 %_24, %len
  br i1 %_23, label %bb18, label %bb58

bb58:                                             ; preds = %bb17
  store i32 0, ptr %_0, align 4
  br label %bb59

bb18:                                             ; preds = %bb17
; call core::str::<impl str>::chars
  %21 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h13d90a78e0475550E"(ptr align 1 %str.0, i64 %str.1) #19
  %22 = extractvalue { ptr, ptr } %21, 0
  %23 = extractvalue { ptr, ptr } %21, 1
  store ptr %22, ptr %_29, align 8
  %24 = getelementptr inbounds i8, ptr %_29, i64 8
  store ptr %23, ptr %24, align 8
  %_30 = load i64, ptr %index, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_27 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr align 8 %_29, i64 %_30) #19
  store i32 %_27, ptr %self.i23, align 4
  %25 = load i32, ptr %self.i23, align 4
  %26 = icmp eq i32 %25, 1114112
  %_2.i24 = select i1 %26, i64 0, i64 1
  %27 = trunc nuw i64 %_2.i24 to i1
  br i1 %27, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit27", label %bb2.i25

bb2.i25:                                          ; preds = %bb18
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_0e8bb74db4fce2563fd66a9d95921d62) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit27": ; preds = %bb18
  %val.i26 = load i32, ptr %self.i23, align 4
  %_25 = icmp uge i32 %val.i26, 65
  br i1 %_25, label %bb22, label %bb27

bb59:                                             ; preds = %bb9, %bb15, %bb48, %bb51, %bb55, %bb58
  %28 = load i32, ptr %_0, align 4
  ret i32 %28

bb27:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit22", %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit27"
; call core::str::<impl str>::chars
  %29 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h13d90a78e0475550E"(ptr align 1 %str.0, i64 %str.1) #19
  %30 = extractvalue { ptr, ptr } %29, 0
  %31 = extractvalue { ptr, ptr } %29, 1
  store ptr %30, ptr %_41, align 8
  %32 = getelementptr inbounds i8, ptr %_41, i64 8
  store ptr %31, ptr %32, align 8
  %_42 = load i64, ptr %index, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_39 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr align 8 %_41, i64 %_42) #19
  store i32 %_39, ptr %self.i13, align 4
  %33 = load i32, ptr %self.i13, align 4
  %34 = icmp eq i32 %33, 1114112
  %_2.i14 = select i1 %34, i64 0, i64 1
  %35 = trunc nuw i64 %_2.i14 to i1
  br i1 %35, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit17", label %bb2.i15

bb2.i15:                                          ; preds = %bb27
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_8657e589edc6037bbf6d5becce9fa461) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit17": ; preds = %bb27
  %val.i16 = load i32, ptr %self.i13, align 4
  %_37 = icmp eq i32 %val.i16, 32
  br i1 %_37, label %bb31, label %bb32

bb22:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit27"
; call core::str::<impl str>::chars
  %36 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h13d90a78e0475550E"(ptr align 1 %str.0, i64 %str.1) #19
  %37 = extractvalue { ptr, ptr } %36, 0
  %38 = extractvalue { ptr, ptr } %36, 1
  store ptr %37, ptr %_35, align 8
  %39 = getelementptr inbounds i8, ptr %_35, i64 8
  store ptr %38, ptr %39, align 8
  %_36 = load i64, ptr %index, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_33 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr align 8 %_35, i64 %_36) #19
  store i32 %_33, ptr %self.i18, align 4
  %40 = load i32, ptr %self.i18, align 4
  %41 = icmp eq i32 %40, 1114112
  %_2.i19 = select i1 %41, i64 0, i64 1
  %42 = trunc nuw i64 %_2.i19 to i1
  br i1 %42, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit22", label %bb2.i20

bb2.i20:                                          ; preds = %bb22
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_cc1da2ea4000fc8ddbd27d055a127060) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit22": ; preds = %bb22
  %val.i21 = load i32, ptr %self.i18, align 4
  %_31 = icmp ule i32 %val.i21, 90
  br i1 %_31, label %bb26, label %bb27

bb26:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit22"
  store i32 0, ptr %curr_state, align 4
  br label %bb46

bb32:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit17"
; call core::str::<impl str>::chars
  %43 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h13d90a78e0475550E"(ptr align 1 %str.0, i64 %str.1) #19
  %44 = extractvalue { ptr, ptr } %43, 0
  %45 = extractvalue { ptr, ptr } %43, 1
  store ptr %44, ptr %_47, align 8
  %46 = getelementptr inbounds i8, ptr %_47, i64 8
  store ptr %45, ptr %46, align 8
  %_48 = load i64, ptr %index, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_45 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr align 8 %_47, i64 %_48) #19
  store i32 %_45, ptr %self.i8, align 4
  %47 = load i32, ptr %self.i8, align 4
  %48 = icmp eq i32 %47, 1114112
  %_2.i9 = select i1 %48, i64 0, i64 1
  %49 = trunc nuw i64 %_2.i9 to i1
  br i1 %49, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit12", label %bb2.i10

bb2.i10:                                          ; preds = %bb32
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_906ea8b3eba84eb3928fe673fa5c4ee4) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit12": ; preds = %bb32
  %val.i11 = load i32, ptr %self.i8, align 4
  %_43 = icmp uge i32 %val.i11, 97
  br i1 %_43, label %bb36, label %bb41

bb31:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit17"
  store i32 1, ptr %curr_state, align 4
  br label %bb46

bb41:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit7", %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit12"
; call core::str::<impl str>::chars
  %50 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h13d90a78e0475550E"(ptr align 1 %str.0, i64 %str.1) #19
  %51 = extractvalue { ptr, ptr } %50, 0
  %52 = extractvalue { ptr, ptr } %50, 1
  store ptr %51, ptr %_59, align 8
  %53 = getelementptr inbounds i8, ptr %_59, i64 8
  store ptr %52, ptr %53, align 8
  %_60 = load i64, ptr %index, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_57 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr align 8 %_59, i64 %_60) #19
  store i32 %_57, ptr %self.i, align 4
  %54 = load i32, ptr %self.i, align 4
  %55 = icmp eq i32 %54, 1114112
  %_2.i = select i1 %55, i64 0, i64 1
  %56 = trunc nuw i64 %_2.i to i1
  br i1 %56, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit", label %bb2.i

bb2.i:                                            ; preds = %bb41
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_79dd5ebd6dd86bca00ca3d84911dab46) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit": ; preds = %bb41
  %val.i = load i32, ptr %self.i, align 4
  %_55 = icmp eq i32 %val.i, 46
  br i1 %_55, label %bb45, label %bb46

bb36:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit12"
; call core::str::<impl str>::chars
  %57 = call { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h13d90a78e0475550E"(ptr align 1 %str.0, i64 %str.1) #19
  %58 = extractvalue { ptr, ptr } %57, 0
  %59 = extractvalue { ptr, ptr } %57, 1
  store ptr %58, ptr %_53, align 8
  %60 = getelementptr inbounds i8, ptr %_53, i64 8
  store ptr %59, ptr %60, align 8
  %_54 = load i64, ptr %index, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_51 = call i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb07dc82be75c5fd6E(ptr align 8 %_53, i64 %_54) #19
  store i32 %_51, ptr %self.i3, align 4
  %61 = load i32, ptr %self.i3, align 4
  %62 = icmp eq i32 %61, 1114112
  %_2.i4 = select i1 %62, i64 0, i64 1
  %63 = trunc nuw i64 %_2.i4 to i1
  br i1 %63, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit7", label %bb2.i5

bb2.i5:                                           ; preds = %bb36
; call core::option::unwrap_failed
  call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_29ca9265c64a591a504c55f40d9c34c3) #22
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit7": ; preds = %bb36
  %val.i6 = load i32, ptr %self.i3, align 4
  %_49 = icmp ule i32 %val.i6, 122
  br i1 %_49, label %bb40, label %bb41

bb40:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit7"
  store i32 2, ptr %curr_state, align 4
  br label %bb46

bb46:                                             ; preds = %bb26, %bb31, %bb40, %bb45, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit"
  %_62 = load i32, ptr %prev_state, align 4
  %_63 = load i32, ptr %curr_state, align 4
  %_61 = icmp eq i32 %_62, %_63
  br i1 %_61, label %bb47, label %bb49

bb45:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h08bfb85bcc933c95E.exit"
  store i32 3, ptr %curr_state, align 4
  br label %bb46

bb49:                                             ; preds = %bb47, %bb46
  %_67 = load i32, ptr %prev_state, align 4
  %_66 = icmp eq i32 %_67, 2
  br i1 %_66, label %bb50, label %bb52

bb47:                                             ; preds = %bb46
  %_65 = load i32, ptr %curr_state, align 4
  %_64 = icmp ne i32 %_65, 2
  br i1 %_64, label %bb48, label %bb49

bb48:                                             ; preds = %bb47
  store i32 0, ptr %_0, align 4
  br label %bb59

bb52:                                             ; preds = %bb50, %bb49
  %_71 = load i32, ptr %curr_state, align 4
  %_70 = icmp eq i32 %_71, 3
  br i1 %_70, label %bb53, label %bb56

bb50:                                             ; preds = %bb49
  %_69 = load i32, ptr %curr_state, align 4
  %_68 = icmp eq i32 %_69, 0
  br i1 %_68, label %bb51, label %bb52

bb51:                                             ; preds = %bb50
  store i32 0, ptr %_0, align 4
  br label %bb59

bb56:                                             ; preds = %bb53, %bb52
  %64 = load i64, ptr %index, align 8
  %_78.0 = add i64 %64, 1
  %_78.1 = icmp ult i64 %_78.0, %64
  br i1 %_78.1, label %panic1, label %bb57

bb53:                                             ; preds = %bb52
  %_73 = load i32, ptr %prev_state, align 4
  %_72 = icmp ne i32 %_73, 1
  br i1 %_72, label %bb54, label %bb56

bb54:                                             ; preds = %bb53
  %_76 = load i64, ptr %index, align 8
  %_77.0 = add i64 %_76, 1
  %_77.1 = icmp ult i64 %_77.0, %_76
  br i1 %_77.1, label %panic2, label %bb55

bb57:                                             ; preds = %bb56
  store i64 %_78.0, ptr %index, align 8
  %_79 = load i32, ptr %curr_state, align 4
  store i32 %_79, ptr %prev_state, align 4
  br label %bb17

panic1:                                           ; preds = %bb56
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_3634dd91e42c36cd11181b13e045c9bf) #22
  unreachable

bb55:                                             ; preds = %bb54
  %_74 = icmp eq i64 %_77.0, %len
  %65 = zext i1 %_74 to i32
  store i32 %65, ptr %_0, align 4
  br label %bb59

panic2:                                           ; preds = %bb54
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_f7b06437c8e7160d747b70ea94af8aa0) #22
  unreachable
}
