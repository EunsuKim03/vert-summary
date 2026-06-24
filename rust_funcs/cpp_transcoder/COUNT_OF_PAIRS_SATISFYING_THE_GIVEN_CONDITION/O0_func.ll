define i32 @f_gold(i32 %a, i32 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %result = alloca [4 x i8], align 4
  %_10 = alloca [16 x i8], align 8
  %_8 = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %s = alloca [24 x i8], align 8
  %b = alloca [4 x i8], align 4
  store i32 %0, ptr %b, align 4
; call <T as alloc::string::ToString>::to_string
  call void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h81533612180ee5f3E"(ptr sret([24 x i8]) align 8 %s, ptr align 4 %b) #17
  store i64 0, ptr %i, align 8
  br label %bb2

bb2:                                              ; preds = %bb8, %start
; invoke <alloc::string::String as core::ops::deref::Deref>::deref
  %2 = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5f9c822c21528e93E"(ptr align 8 %s)
          to label %bb3 unwind label %cleanup

bb20:                                             ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3b47f915c9f24febE"(ptr align 8 %s) #21
          to label %bb21 unwind label %terminate

cleanup:                                          ; preds = %panic3, %panic2, %bb11, %panic1, %panic, %bb14, %bb9, %bb5, %bb4, %bb3, %bb2
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  store ptr %4, ptr %1, align 8
  %6 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %5, ptr %6, align 8
  br label %bb20

bb3:                                              ; preds = %bb2
  %_11.0 = extractvalue { ptr, i64 } %2, 0
  %_11.1 = extractvalue { ptr, i64 } %2, 1
; invoke core::str::<impl str>::chars
  %7 = invoke { ptr, ptr } @"_ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc24d4cede43ab5d8E"(ptr align 1 %_11.0, i64 %_11.1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
  %8 = extractvalue { ptr, ptr } %7, 0
  %9 = extractvalue { ptr, ptr } %7, 1
  store ptr %8, ptr %_10, align 8
  %10 = getelementptr inbounds i8, ptr %_10, i64 8
  store ptr %9, ptr %10, align 8
  %_13 = load i64, ptr %i, align 8
; invoke core::iter::traits::iterator::Iterator::nth
  %11 = invoke i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h8e895b32304e1341E(ptr align 8 %_10, i64 %_13)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store i32 %11, ptr %_8, align 4
; invoke <core::option::Option<T> as core::cmp::PartialEq>::eq
  %_6 = invoke zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h33bdd4549103a2daE"(ptr align 4 %_8, ptr align 4 @alloc_39d65a58a7655737c877038bc6e949bc)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  br i1 %_6, label %bb7, label %bb9

bb9:                                              ; preds = %bb6
  %_18 = load i64, ptr %i, align 8
; invoke alloc::string::String::len
  %_19 = invoke i64 @_ZN5alloc6string6String3len17h742654014f5c533dE(ptr align 8 %s)
          to label %bb10 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %12 = load i64, ptr %i, align 8
  %_15.0 = add i64 %12, 1
  %_15.1 = icmp ult i64 %_15.0, %12
  br i1 %_15.1, label %panic3, label %bb8

bb10:                                             ; preds = %bb9
  %_17 = icmp eq i64 %_18, %_19
  br i1 %_17, label %bb11, label %bb14

bb14:                                             ; preds = %bb10
; invoke alloc::string::String::len
  %_27 = invoke i64 @_ZN5alloc6string6String3len17h742654014f5c533dE(ptr align 8 %s)
          to label %bb15 unwind label %cleanup

bb11:                                             ; preds = %bb10
; invoke alloc::string::String::len
  %_22 = invoke i64 @_ZN5alloc6string6String3len17h742654014f5c533dE(ptr align 8 %s)
          to label %bb12 unwind label %cleanup

bb15:                                             ; preds = %bb14
  %_29.0 = sub i64 %_27, 1
  %_29.1 = icmp ult i64 %_27, 1
  br i1 %_29.1, label %panic, label %bb16

bb16:                                             ; preds = %bb15
  %_25 = trunc i64 %_29.0 to i32
  %13 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %a, i32 %_25)
  %_30.0 = extractvalue { i32, i1 } %13, 0
  %_30.1 = extractvalue { i32, i1 } %13, 1
  br i1 %_30.1, label %panic1, label %bb17

panic:                                            ; preds = %bb15
; invoke core::panicking::panic_const::panic_const_sub_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_09e48fb57fd6a446ec231c4994c1eff9) #23
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic3, %panic2, %panic1, %panic
  unreachable

bb17:                                             ; preds = %bb16
  store i32 %_30.0, ptr %result, align 4
  br label %bb18

panic1:                                           ; preds = %bb16
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_ff1f25b9c96cd50e7fc37af1ec2317ae) #23
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb13, %bb17
  %_0 = load i32, ptr %result, align 4
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3b47f915c9f24febE"(ptr align 8 %s)
  ret i32 %_0

bb12:                                             ; preds = %bb11
  %_21 = trunc i64 %_22 to i32
  %14 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %a, i32 %_21)
  %_24.0 = extractvalue { i32, i1 } %14, 0
  %_24.1 = extractvalue { i32, i1 } %14, 1
  br i1 %_24.1, label %panic2, label %bb13

bb13:                                             ; preds = %bb12
  store i32 %_24.0, ptr %result, align 4
  br label %bb18

panic2:                                           ; preds = %bb12
; invoke core::panicking::panic_const::panic_const_mul_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_mul_overflow17h554ac164c12099f8E(ptr align 8 @alloc_4975b63f1785ecda4ba84a723bfd3896) #23
          to label %unreachable unwind label %cleanup

bb8:                                              ; preds = %bb7
  store i64 %_15.0, ptr %i, align 8
  br label %bb2

panic3:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_d476ed73cb92832841ad3d994d0200cb) #23
          to label %unreachable unwind label %cleanup

terminate:                                        ; preds = %bb20
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #19
  unreachable

bb21:                                             ; preds = %bb20
  %16 = load ptr, ptr %1, align 8
  %17 = getelementptr inbounds i8, ptr %1, i64 8
  %18 = load i32, ptr %17, align 8
  %19 = insertvalue { ptr, i32 } poison, ptr %16, 0
  %20 = insertvalue { ptr, i32 } %19, i32 %18, 1
  resume { ptr, i32 } %20
}
