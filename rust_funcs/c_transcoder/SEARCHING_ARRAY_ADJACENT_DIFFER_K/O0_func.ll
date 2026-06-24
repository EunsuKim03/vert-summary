define i32 @f_gold(i64 %0, i32 %n, i32 %x, i32 %k) unnamed_addr #3 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %arr = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 8 %1, i64 8, i1 false)
  store float 0.000000e+00, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb7, %start
  %_7 = load float, ptr %i, align 4
  %_8 = sitofp i32 %n to float
  %_6 = fcmp olt float %_7, %_8
  br i1 %_6, label %bb2, label %bb9

bb9:                                              ; preds = %bb1
; call core::fmt::Arguments::from_str
  %2 = call { ptr, ptr } @_ZN4core3fmt9Arguments8from_str17h18fa1bd1189dbf2cE(ptr align 1 @alloc_3cc4ab2e96aee8eb167dc6f61e3ddf68, i64 23) #20
  %_27.0 = extractvalue { ptr, ptr } %2, 0
  %_27.1 = extractvalue { ptr, ptr } %2, 1
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17hba8f5eda1e4e495eE(ptr %_27.0, ptr %_27.1)
  store i32 -1, ptr %_0, align 4
  br label %bb12

bb2:                                              ; preds = %bb1
  %_12 = load float, ptr %i, align 4
  %_11 = call i64 @llvm.fptoui.sat.i64.f32(float %_12)
  %_13 = icmp ult i64 %_11, 2
  br i1 %_13, label %bb3, label %panic

bb12:                                             ; preds = %bb4, %bb9
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_11
  %_10 = load i32, ptr %4, align 4
  %_9 = icmp eq i32 %_10, %x
  br i1 %_9, label %bb4, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_11, i64 2, ptr align 8 @alloc_f130917001b82159dc55713b8a368182) #22
  unreachable

bb5:                                              ; preds = %bb3
  %_15 = load float, ptr %i, align 4
  %_22 = load float, ptr %i, align 4
  %_21 = call i64 @llvm.fptoui.sat.i64.f32(float %_22)
  %_23 = icmp ult i64 %_21, 2
  br i1 %_23, label %bb6, label %panic1

bb4:                                              ; preds = %bb3
  %_14 = load float, ptr %i, align 4
  %5 = call i32 @llvm.fptosi.sat.i32.f32(float %_14)
  store i32 %5, ptr %_0, align 4
  br label %bb12

bb6:                                              ; preds = %bb5
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_21
  %_20 = load i32, ptr %6, align 4
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_20, i32 %x)
  %_24.0 = extractvalue { i32, i1 } %7, 0
  %_24.1 = extractvalue { i32, i1 } %7, 1
  br i1 %_24.1, label %panic2, label %bb7

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 %_21, i64 2, ptr align 8 @alloc_86a08763c70965bb6e880d287fce8aa2) #22
  unreachable

bb7:                                              ; preds = %bb6
  %_18 = sitofp i32 %_24.0 to float
  %_25 = sitofp i32 %k to float
  %_17 = fdiv float %_18, %_25
; call core::f32::<impl f32>::max
  %_16 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17ha0273de216ec4c14E"(float 1.000000e+00, float %_17) #20
  %8 = fadd float %_15, %_16
  store float %8, ptr %i, align 4
  br label %bb1

panic2:                                           ; preds = %bb6
; call core::panicking::panic_const::panic_const_sub_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_sub_overflow17h134cc1a7f93654deE(ptr align 8 @alloc_b20922d3494bb270b83748d2ce05bbfe) #22
  unreachable
}
