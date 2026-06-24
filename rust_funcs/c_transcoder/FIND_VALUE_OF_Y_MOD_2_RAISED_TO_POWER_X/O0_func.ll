define i32 @f_gold(i32 %y, i32 %x) unnamed_addr #3 {
start:
  %_0 = alloca [4 x i8], align 4
  %_5 = sitofp i32 %y to float
; call std::f32::<impl f32>::log2
  %_4 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4log217hce1bbafee3b286eeE"(float %_5) #20
  %_6 = sitofp i32 %x to float
  %_3 = fcmp olt float %_4, %_6
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %_7 = icmp sgt i32 %x, 63
  br i1 %_7, label %bb4, label %bb5

bb2:                                              ; preds = %start
  store i32 %y, ptr %_0, align 4
  br label %bb9

bb5:                                              ; preds = %bb3
  %_10 = icmp ult i32 %x, 32
  br i1 %_10, label %bb6, label %panic

bb4:                                              ; preds = %bb3
  store i32 %y, ptr %_0, align 4
  br label %bb9

bb6:                                              ; preds = %bb5
  %0 = and i32 %x, 31
  %_8 = shl i32 1, %0
  %_11 = icmp eq i32 %_8, 0
  br i1 %_11, label %panic1, label %bb7

panic:                                            ; preds = %bb5
; call core::panicking::panic_const::panic_const_shl_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_shl_overflow17hd71d3b3e3d52ab41E(ptr align 8 @alloc_05f43359f869a8c12e8b7e686e82a94c) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_12 = icmp eq i32 %_8, -1
  %_13 = icmp eq i32 %y, -2147483648
  %_14 = and i1 %_12, %_13
  br i1 %_14, label %panic2, label %bb8

panic1:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr align 8 @alloc_c35500c9e076b4dabd64ae608e1e139e) #22
  unreachable

bb8:                                              ; preds = %bb7
  %1 = srem i32 %y, %_8
  store i32 %1, ptr %_0, align 4
  br label %bb9

panic2:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr align 8 @alloc_c35500c9e076b4dabd64ae608e1e139e) #22
  unreachable

bb9:                                              ; preds = %bb2, %bb4, %bb8
  %2 = load i32, ptr %_0, align 4
  ret i32 %2
}
