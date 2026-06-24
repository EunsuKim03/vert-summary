define i32 @f_gold(i32 %a, i32 %b, i32 %k) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %0 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %b, i32 %a)
  %_6.0 = extractvalue { i32, i1 } %0, 0
  %_6.1 = extractvalue { i32, i1 } %0, 1
  br i1 %_6.1, label %panic, label %bb1

bb1:                                              ; preds = %start
  %1 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_6.0, i32 1)
  %_7.0 = extractvalue { i32, i1 } %1, 0
  %_7.1 = extractvalue { i32, i1 } %1, 1
  br i1 %_7.1, label %panic1, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3f66a064b78827534b7d5a80eebdc211) #22
  unreachable

bb2:                                              ; preds = %bb1
  %2 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %k, i32 %b)
  %_10.0 = extractvalue { i32, i1 } %2, 0
  %_10.1 = extractvalue { i32, i1 } %2, 1
  br i1 %_10.1, label %panic2, label %bb3

panic1:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_3f66a064b78827534b7d5a80eebdc211) #22
  unreachable

bb3:                                              ; preds = %bb2
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %a, i32 1)
  %_12.0 = extractvalue { i32, i1 } %3, 0
  %_12.1 = extractvalue { i32, i1 } %3, 1
  br i1 %_12.1, label %panic3, label %bb4

panic2:                                           ; preds = %bb2
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_8ad831daf3225b66eeffe781d6797224) #22
  unreachable

bb4:                                              ; preds = %bb3
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_10.0, i32 %_12.0)
  %_13.0 = extractvalue { i32, i1 } %4, 0
  %_13.1 = extractvalue { i32, i1 } %4, 1
  br i1 %_13.1, label %panic4, label %bb5

panic3:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_c026fd1c403dc48d1912fe65ae18cae0) #22
  unreachable

bb5:                                              ; preds = %bb4
  %_14 = icmp eq i32 %_7.0, %_13.0
  br i1 %_14, label %bb6, label %bb7

panic4:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_8ad831daf3225b66eeffe781d6797224) #22
  unreachable

bb7:                                              ; preds = %bb5
; call core::cmp::Ord::min
  %5 = call i32 @_ZN4core3cmp3Ord3min17hbb43f00b64ec33d1E(i32 %_7.0, i32 %_13.0) #20
  store i32 %5, ptr %_0, align 4
  br label %bb8

bb6:                                              ; preds = %bb5
  store i32 0, ptr %_0, align 4
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7
  %6 = load i32, ptr %_0, align 4
  ret i32 %6
}
