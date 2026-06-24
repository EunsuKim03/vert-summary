define noundef i32 @f_gold(i64 %0, float noundef %low, float noundef %high, float noundef %x) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb16, %bb22, %start
  %low.tr = phi float [ %low, %start ], [ %low.tr, %bb22 ], [ %_21, %bb16 ]
  %high.tr = phi float [ %high, %start ], [ %_27, %bb22 ], [ %high.tr, %bb16 ]
  store i64 %0, ptr %arr, align 8
  %_6 = fadd float %low.tr, %high.tr
  %mid = fmul float %_6, 5.000000e-01
  %_9 = tail call i64 @llvm.fptoui.sat.i64.f32(float %low.tr)
  %_10 = icmp ult i64 %_9, 2
  br i1 %_10, label %bb1, label %panic

bb1:                                              ; preds = %tailrecurse
  %1 = getelementptr inbounds nuw float, ptr %arr, i64 %_9
  %_8 = load float, ptr %1, align 4, !noundef !37
  %_7 = fcmp ugt float %x, %_8
  br i1 %_7, label %bb3, label %bb2

panic:                                            ; preds = %tailrecurse
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_9, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0ede3545f0ddfc2307823b3d1308bf9c) #24
  unreachable

bb3:                                              ; preds = %bb1
  %_13 = tail call i64 @llvm.fptoui.sat.i64.f32(float %high.tr)
  %_14 = icmp ult i64 %_13, 2
  br i1 %_14, label %bb4, label %panic1

bb2:                                              ; preds = %bb1
  %2 = tail call i32 @llvm.fptosi.sat.i32.f32(float %low.tr)
  br label %bb27

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds nuw float, ptr %arr, i64 %_13
  %_12 = load float, ptr %3, align 4, !noundef !37
  %_11 = fcmp ogt float %x, %_12
  br i1 %_11, label %bb27, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_13, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0cfd1ed7a246ddad1d928ca680821682) #24
  unreachable

bb6:                                              ; preds = %bb4
  %_17 = tail call i64 @llvm.fptoui.sat.i64.f32(float %mid)
  %_18 = icmp ult i64 %_17, 2
  br i1 %_18, label %bb7, label %panic2

bb7:                                              ; preds = %bb6
  %4 = getelementptr inbounds nuw float, ptr %arr, i64 %_17
  %_16 = load float, ptr %4, align 4, !noundef !37
  %_15 = fcmp oeq float %_16, %x
  br i1 %_15, label %bb8, label %bb10

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b2a0a8713e9aeb8c50a78f43cc67d55b) #24
  unreachable

bb8:                                              ; preds = %bb7
  %5 = tail call i32 @llvm.fptosi.sat.i32.f32(float %mid)
  br label %bb27

bb10:                                             ; preds = %bb7
  %_19 = fcmp olt float %_16, %x
  br i1 %_19, label %bb11, label %bb17

bb17:                                             ; preds = %bb10
  %_27 = fadd float %mid, -1.000000e+00
  %_26 = fcmp ult float %_27, %low.tr
  br i1 %_26, label %bb22, label %bb18

bb11:                                             ; preds = %bb10
  %_21 = fadd float %mid, 1.000000e+00
  %_20 = fcmp ugt float %_21, %high.tr
  br i1 %_20, label %bb16, label %bb12

bb22:                                             ; preds = %bb19, %bb17
  br label %tailrecurse

bb18:                                             ; preds = %bb17
  %_30 = tail call i64 @llvm.fptoui.sat.i64.f32(float %_27)
  %_31 = icmp ult i64 %_30, 2
  br i1 %_31, label %bb19, label %panic4

bb19:                                             ; preds = %bb18
  %6 = getelementptr inbounds nuw float, ptr %arr, i64 %_30
  %_29 = load float, ptr %6, align 4, !noundef !37
  %_28 = fcmp ogt float %x, %_29
  br i1 %_28, label %bb20, label %bb22

panic4:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_30, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4bea39901254538bf9fd58d8d9d2aac0) #24
  unreachable

bb20:                                             ; preds = %bb19
  %7 = tail call i32 @llvm.fptosi.sat.i32.f32(float %mid)
  br label %bb27

bb16:                                             ; preds = %bb13, %bb11
  br label %tailrecurse

bb12:                                             ; preds = %bb11
  %_24 = tail call i64 @llvm.fptoui.sat.i64.f32(float %_21)
  %_25 = icmp ult i64 %_24, 2
  br i1 %_25, label %bb13, label %panic5

bb13:                                             ; preds = %bb12
  %8 = getelementptr inbounds nuw float, ptr %arr, i64 %_24
  %_23 = load float, ptr %8, align 4, !noundef !37
  %_22 = fcmp ugt float %x, %_23
  br i1 %_22, label %bb16, label %bb14

panic5:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_24, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_816cf9c507bebe3aa2a0c869671c2791) #24
  unreachable

bb14:                                             ; preds = %bb13
  %9 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_21)
  br label %bb27

bb27:                                             ; preds = %bb4, %bb8, %bb20, %bb14, %bb2
  %_0.sroa.0.0 = phi i32 [ %2, %bb2 ], [ %5, %bb8 ], [ %9, %bb14 ], [ %7, %bb20 ], [ -1, %bb4 ]
  ret i32 %_0.sroa.0.0
}
