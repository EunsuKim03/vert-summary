define i32 @f_gold(ptr align 8 %bin) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %self.i8 = alloca [4 x i8], align 4
  %self.i = alloca [4 x i8], align 4
  %0 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %iter = alloca [16 x i8], align 8
  %sum = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
; invoke alloc::string::String::len
  %n = invoke i64 @_ZN5alloc6string6String3len17h6816b9da788f87d8E(ptr align 8 %bin)
          to label %bb1 unwind label %cleanup

bb44:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4c345d693a8369d9E"(ptr align 8 %bin) #21
          to label %bb45 unwind label %terminate

cleanup:                                          ; preds = %bb2.i10, %bb2.i, %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %bb17, %bb16, %bb14, %panic1, %bb11, %bb9, %bb8, %panic, %bb3, %bb2, %bb1, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb44

bb1:                                              ; preds = %start
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %5 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h62da2c42fb3c0a43E"(ptr align 8 %bin)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %_8.0 = extractvalue { ptr, i64 } %5, 0
  %_8.1 = extractvalue { ptr, i64 } %5, 1
; invoke core::str::<impl str>::chars
  %6 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h20c291155efe6eacE"(ptr align 1 %_8.0, i64 %_8.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_7.0 = extractvalue { ptr, ptr } %6, 0
  %_7.1 = extractvalue { ptr, ptr } %6, 1
; invoke <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::last
  %_6 = invoke i32 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4last17h2e155e8bf2705ff1E"(ptr %_7.0, ptr %_7.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  store i32 %_6, ptr %self.i8, align 4
  %7 = load i32, ptr %self.i8, align 4
  %8 = icmp eq i32 %7, 1114112
  %_2.i9 = select i1 %8, i64 0, i64 1
  %9 = trunc nuw i64 %_2.i9 to i1
  br i1 %9, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc0bfb5a623bb2eadE.exit13", label %bb2.i10

bb2.i10:                                          ; preds = %bb4
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_727145921074ec6c043ddee0f6bf3ae3) #22
          to label %.noexc12 unwind label %cleanup

.noexc12:                                         ; preds = %bb2.i10
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hc0bfb5a623bb2eadE.exit13": ; preds = %bb4
  %val.i11 = load i32, ptr %self.i8, align 4
  br label %bb5

bb5:                                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc0bfb5a623bb2eadE.exit13"
  %_4 = icmp eq i32 %val.i11, 49
  br i1 %_4, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  store i32 0, ptr %sum, align 4
  %_15.0 = sub i64 %n, 2
  %_15.1 = icmp ult i64 %n, 2
  br i1 %_15.1, label %panic, label %bb8

bb6:                                              ; preds = %bb5
  store i32 0, ptr %_0, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4c345d693a8369d9E"(ptr align 8 %bin)
  br label %bb43

bb8:                                              ; preds = %bb7
; invoke core::iter::traits::iterator::Iterator::rev
  %10 = invoke { i64, i64 } @_ZN4core4iter6traits8iterator8Iterator3rev17hdd990c57bb1fae06E(i64 0, i64 %_15.0)
          to label %bb9 unwind label %cleanup

panic:                                            ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_a29cafadd0d67dde3cf74d972fca5ae6) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb9:                                              ; preds = %bb8
  %_12.0 = extractvalue { i64, i64 } %10, 0
  %_12.1 = extractvalue { i64, i64 } %10, 1
; invoke <I as core::iter::traits::collect::IntoIterator>::into_iter
  %11 = invoke { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4665ba3d933fd573E"(i64 %_12.0, i64 %_12.1)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %_11.0 = extractvalue { i64, i64 } %11, 0
  %_11.1 = extractvalue { i64, i64 } %11, 1
  store i64 %_11.0, ptr %iter, align 8
  %12 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %_11.1, ptr %12, align 8
  br label %bb11

bb11:                                             ; preds = %bb25, %bb29, %bb33, %bb37, %bb35, %bb19, %bb10
; invoke <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
  %13 = invoke { i64, i64 } @"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd93826230d498a25E"(ptr align 8 %iter)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  %14 = extractvalue { i64, i64 } %13, 0
  %15 = extractvalue { i64, i64 } %13, 1
  store i64 %14, ptr %_17, align 8
  %16 = getelementptr inbounds i8, ptr %_17, i64 8
  store i64 %15, ptr %16, align 8
  %_19 = load i64, ptr %_17, align 8
  %17 = getelementptr inbounds i8, ptr %_17, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = trunc nuw i64 %_19 to i1
  br i1 %19, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %20 = getelementptr inbounds i8, ptr %_17, i64 8
  %i = load i64, ptr %20, align 8
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %21 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h62da2c42fb3c0a43E"(ptr align 8 %bin)
          to label %bb16 unwind label %cleanup

bb15:                                             ; preds = %bb12
  %_50 = load i32, ptr %sum, align 4
  br label %bb38

bb38:                                             ; preds = %bb15
  %_53 = icmp eq i32 %_50, -2147483648
  %_54 = and i1 false, %_53
  br i1 %_54, label %panic1, label %bb39

bb39:                                             ; preds = %bb38
  %_49 = srem i32 %_50, 10
  %_48 = icmp eq i32 %_49, 0
  br i1 %_48, label %bb40, label %bb41

panic1:                                           ; preds = %bb38
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_b9c1e8607fbc23cb3ab96539e045c5ab) #23
          to label %unreachable unwind label %cleanup

bb41:                                             ; preds = %bb39
  store i32 0, ptr %_0, align 4
  br label %bb42

bb40:                                             ; preds = %bb39
  store i32 1, ptr %_0, align 4
  br label %bb42

bb42:                                             ; preds = %bb40, %bb41
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4c345d693a8369d9E"(ptr align 8 %bin)
  br label %bb43

bb43:                                             ; preds = %bb6, %bb42
  %22 = load i32, ptr %_0, align 4
  ret i32 %22

bb16:                                             ; preds = %bb14
  %_26.0 = extractvalue { ptr, i64 } %21, 0
  %_26.1 = extractvalue { ptr, i64 } %21, 1
; invoke core::str::<impl str>::chars
  %23 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17h20c291155efe6eacE"(ptr align 1 %_26.0, i64 %_26.1)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb16
  %24 = extractvalue { ptr, ptr } %23, 0
  %25 = extractvalue { ptr, ptr } %23, 1
  store ptr %24, ptr %_25, align 8
  %26 = getelementptr inbounds i8, ptr %_25, i64 8
  store ptr %25, ptr %26, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %_23 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h7ad5224fba937616E(ptr align 8 %_25, i64 %i)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb17
  store i32 %_23, ptr %self.i, align 4
  %27 = load i32, ptr %self.i, align 4
  %28 = icmp eq i32 %27, 1114112
  %_2.i = select i1 %28, i64 0, i64 1
  %29 = trunc nuw i64 %_2.i to i1
  br i1 %29, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc0bfb5a623bb2eadE.exit", label %bb2.i

bb2.i:                                            ; preds = %bb18
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr align 8 @alloc_3ff78cd81411cbc57f0cb57b37f5ad37) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hc0bfb5a623bb2eadE.exit": ; preds = %bb18
  %val.i = load i32, ptr %self.i, align 4
  br label %bb19

bb19:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc0bfb5a623bb2eadE.exit"
  %_21 = icmp eq i32 %val.i, 49
  br i1 %_21, label %bb20, label %bb11

bb20:                                             ; preds = %bb19
  %_30.0 = sub i64 %n, %i
  %_30.1 = icmp ult i64 %n, %i
  br i1 %_30.1, label %panic2, label %bb21

bb21:                                             ; preds = %bb20
  %_31.0 = sub i64 %_30.0, 1
  %_31.1 = icmp ult i64 %_30.0, 1
  br i1 %_31.1, label %panic3, label %bb22

panic2:                                           ; preds = %bb20
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_43d51406953c6fb38a41bdbcd0d4ab5b) #23
          to label %unreachable unwind label %cleanup

bb22:                                             ; preds = %bb21
  br label %bb23

panic3:                                           ; preds = %bb21
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_43d51406953c6fb38a41bdbcd0d4ab5b) #23
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb22
  %_33 = urem i64 %_31.0, 4
  %_32 = icmp eq i64 %_33, 1
  br i1 %_32, label %bb24, label %bb26

bb26:                                             ; preds = %bb23
  br label %bb27

bb24:                                             ; preds = %bb23
  %30 = load i32, ptr %sum, align 4
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %30, i32 2)
  %_35.0 = extractvalue { i32, i1 } %31, 0
  %_35.1 = extractvalue { i32, i1 } %31, 1
  br i1 %_35.1, label %panic7, label %bb25

bb27:                                             ; preds = %bb26
  %_37 = urem i64 %_31.0, 4
  %_36 = icmp eq i64 %_37, 2
  br i1 %_36, label %bb28, label %bb30

bb30:                                             ; preds = %bb27
  br label %bb31

bb28:                                             ; preds = %bb27
  %32 = load i32, ptr %sum, align 4
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %32, i32 4)
  %_39.0 = extractvalue { i32, i1 } %33, 0
  %_39.1 = extractvalue { i32, i1 } %33, 1
  br i1 %_39.1, label %panic6, label %bb29

bb31:                                             ; preds = %bb30
  %_41 = urem i64 %_31.0, 4
  %_40 = icmp eq i64 %_41, 3
  br i1 %_40, label %bb32, label %bb34

bb34:                                             ; preds = %bb31
  br label %bb35

bb32:                                             ; preds = %bb31
  %34 = load i32, ptr %sum, align 4
  %35 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %34, i32 8)
  %_43.0 = extractvalue { i32, i1 } %35, 0
  %_43.1 = extractvalue { i32, i1 } %35, 1
  br i1 %_43.1, label %panic5, label %bb33

bb35:                                             ; preds = %bb34
  %_45 = urem i64 %_31.0, 4
  %_44 = icmp eq i64 %_45, 0
  br i1 %_44, label %bb36, label %bb11

bb36:                                             ; preds = %bb35
  %36 = load i32, ptr %sum, align 4
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %36, i32 6)
  %_47.0 = extractvalue { i32, i1 } %37, 0
  %_47.1 = extractvalue { i32, i1 } %37, 1
  br i1 %_47.1, label %panic4, label %bb37

bb37:                                             ; preds = %bb36
  store i32 %_47.0, ptr %sum, align 4
  br label %bb11

panic4:                                           ; preds = %bb36
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_edb92649a85e0c5af1124f108f5ddfca) #23
          to label %unreachable unwind label %cleanup

bb33:                                             ; preds = %bb32
  store i32 %_43.0, ptr %sum, align 4
  br label %bb11

panic5:                                           ; preds = %bb32
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_b289c504a0838d5bff2e72f2e1e1f36b) #23
          to label %unreachable unwind label %cleanup

bb29:                                             ; preds = %bb28
  store i32 %_39.0, ptr %sum, align 4
  br label %bb11

panic6:                                           ; preds = %bb28
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_a57ec0a0628ef5c00d69f6465fbbf8de) #23
          to label %unreachable unwind label %cleanup

bb25:                                             ; preds = %bb24
  store i32 %_35.0, ptr %sum, align 4
  br label %bb11

panic7:                                           ; preds = %bb24
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_1ab06eaf894637327d3e99bee6b570ca) #23
          to label %unreachable unwind label %cleanup

bb13:                                             ; No predecessors!
  unreachable

terminate:                                        ; preds = %bb44
  %38 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb45:                                             ; preds = %bb44
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds i8, ptr %0, i64 8
  %41 = load i32, ptr %40, align 8
  %42 = insertvalue { ptr, i32 } poison, ptr %39, 0
  %43 = insertvalue { ptr, i32 } %42, i32 %41, 1
  resume { ptr, i32 } %43
}
