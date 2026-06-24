define i32 @f_gold(i64 %0, i32 %n, i32 %x) unnamed_addr #3 {
start:
  %end = alloca [8 x i8], align 8
  %start1 = alloca [8 x i8], align 8
  %min_len = alloca [4 x i8], align 4
  %curr_sum = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store float 0.000000e+00, ptr %curr_sum, align 4
  %2 = call i32 @llvm.fptosi.sat.i32.f32(float 0x7FF0000000000000)
  store i32 %2, ptr %min_len, align 4
  store i64 0, ptr %start1, align 8
  store i64 0, ptr %end, align 8
  br label %bb1

bb1:                                              ; preds = %bb8, %bb7, %start
  %_9 = load i64, ptr %end, align 8
  %_10 = sext i32 %n to i64
  %_8 = icmp ult i64 %_9, %_10
  br i1 %_8, label %bb2, label %bb14

bb14:                                             ; preds = %bb1
  %_0 = load i32, ptr %min_len, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb6, %bb1
  %_12 = load float, ptr %curr_sum, align 4
  %_13 = sitofp i32 %x to float
  %_11 = fcmp ole float %_12, %_13
  br i1 %_11, label %bb3, label %bb7

bb7:                                              ; preds = %bb13, %bb3, %bb2
  %_23 = load float, ptr %curr_sum, align 4
  %_24 = sitofp i32 %x to float
  %_22 = fcmp ogt float %_23, %_24
  br i1 %_22, label %bb8, label %bb1

bb3:                                              ; preds = %bb2
  %_15 = load i64, ptr %end, align 8
  %_16 = sext i32 %n to i64
  %_14 = icmp ult i64 %_15, %_16
  br i1 %_14, label %bb4, label %bb7

bb4:                                              ; preds = %bb3
  %_19 = load i64, ptr %end, align 8
  %_20 = icmp ult i64 %_19, 2
  br i1 %_20, label %bb5, label %panic4

bb8:                                              ; preds = %bb7
  %_26 = load i64, ptr %start1, align 8
  %_27 = sext i32 %n to i64
  %_25 = icmp ult i64 %_26, %_27
  br i1 %_25, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  %_29 = load i32, ptr %min_len, align 4
  %_32 = load i64, ptr %end, align 8
  %_33 = load i64, ptr %start1, align 8
  %_34.0 = sub i64 %_32, %_33
  %_34.1 = icmp ult i64 %_32, %_33
  br i1 %_34.1, label %panic, label %bb10

bb10:                                             ; preds = %bb9
  %_30 = trunc i64 %_34.0 to i32
; call core::cmp::min
  %_28 = call i32 @_ZN4core3cmp3min17hf0241b9e66a5993bE(i32 %_29, i32 %_30) #19
  store i32 %_28, ptr %min_len, align 4
  %_37 = load i64, ptr %start1, align 8
  %_38 = icmp ult i64 %_37, 2
  br i1 %_38, label %bb12, label %panic2

panic:                                            ; preds = %bb9
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_92f133cce597cd1267677c2da0920f33) #22
  unreachable

bb12:                                             ; preds = %bb10
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_37
  %_36 = load i32, ptr %3, align 4
  %_35 = sitofp i32 %_36 to float
  %4 = load float, ptr %curr_sum, align 4
  %5 = fsub float %4, %_35
  store float %5, ptr %curr_sum, align 4
  %6 = load i64, ptr %start1, align 8
  %_39.0 = add i64 %6, 1
  %_39.1 = icmp ult i64 %_39.0, %6
  br i1 %_39.1, label %panic3, label %bb13

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_37, i64 2, ptr align 8 @alloc_fe9247814b05322e5819fb2dd348a7d5) #22
  unreachable

bb13:                                             ; preds = %bb12
  store i64 %_39.0, ptr %start1, align 8
  br label %bb7

panic3:                                           ; preds = %bb12
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_024ca1e63ebe6ad1cfbe04a19dcab387) #22
  unreachable

bb5:                                              ; preds = %bb4
  %7 = getelementptr inbounds nuw i32, ptr %arr, i64 %_19
  %_18 = load i32, ptr %7, align 4
  %_17 = sitofp i32 %_18 to float
  %8 = load float, ptr %curr_sum, align 4
  %9 = fadd float %8, %_17
  store float %9, ptr %curr_sum, align 4
  %10 = load i64, ptr %end, align 8
  %_21.0 = add i64 %10, 1
  %_21.1 = icmp ult i64 %_21.0, %10
  br i1 %_21.1, label %panic5, label %bb6

panic4:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_19, i64 2, ptr align 8 @alloc_d89cbfa947f08c1313ebbda7b11ce473) #22
  unreachable

bb6:                                              ; preds = %bb5
  store i64 %_21.0, ptr %end, align 8
  br label %bb2

panic5:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_add_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h3fc9e60fb8716d57E(ptr align 8 @alloc_fa02676fb8e4c4f96d070a540ddc1b9e) #22
  unreachable
}
