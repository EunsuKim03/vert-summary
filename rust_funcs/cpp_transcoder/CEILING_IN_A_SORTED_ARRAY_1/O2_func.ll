define noundef i32 @f_gold(i64 %0, float noundef %low, float noundef %high, float noundef %x) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  %_959 = tail call i64 @llvm.fptoui.sat.i64.f32(float %low)
  %_1060 = icmp ult i64 %_959, 2
  store i64 %0, ptr %arr, align 8
  br i1 %_1060, label %bb1.lr.ph.preheader, label %panic

bb1.lr.ph.preheader:                              ; preds = %start
  %_65461 = fadd float %low, %high
  br label %bb1.lr.ph

bb1.lr.ph:                                        ; preds = %bb1.lr.ph.preheader, %bb16
  %mid5567.in = phi float [ %_654, %bb16 ], [ %_65461, %bb1.lr.ph.preheader ]
  %_965 = phi i64 [ %.pre, %bb16 ], [ %_959, %bb1.lr.ph.preheader ]
  %high.tr.ph64 = phi float [ %high.tr56191, %bb16 ], [ %high, %bb1.lr.ph.preheader ]
  %low.tr.ph63 = phi float [ %_21, %bb16 ], [ %low, %bb1.lr.ph.preheader ]
  %1 = getelementptr inbounds nuw float, ptr %arr, i64 %_965
  %_8189 = load float, ptr %1, align 4, !noundef !23
  %_7190 = fcmp ugt float %x, %_8189
  br i1 %_7190, label %bb3, label %bb2

panic:                                            ; preds = %bb16, %start
  %_9.lcssa = phi i64 [ %_959, %start ], [ %.pre, %bb16 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_9.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0ede3545f0ddfc2307823b3d1308bf9c) #18
  unreachable

bb3:                                              ; preds = %bb1.lr.ph, %bb22
  %mid57192.in = phi float [ %_6, %bb22 ], [ %mid5567.in, %bb1.lr.ph ]
  %high.tr56191 = phi float [ %_27, %bb22 ], [ %high.tr.ph64, %bb1.lr.ph ]
  %mid57192 = fmul float %mid57192.in, 5.000000e-01
  %_13 = tail call i64 @llvm.fptoui.sat.i64.f32(float %high.tr56191)
  %_14 = icmp ult i64 %_13, 2
  br i1 %_14, label %bb4, label %panic1

bb2:                                              ; preds = %bb1.lr.ph, %bb22
  %2 = tail call i32 @llvm.fptosi.sat.i32.f32(float %low.tr.ph63)
  br label %bb27

bb4:                                              ; preds = %bb3
  %3 = getelementptr inbounds nuw float, ptr %arr, i64 %_13
  %_12 = load float, ptr %3, align 4, !noundef !23
  %_11 = fcmp ogt float %x, %_12
  br i1 %_11, label %bb27, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_13, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0cfd1ed7a246ddad1d928ca680821682) #18
  unreachable

bb6:                                              ; preds = %bb4
  %_17 = tail call i64 @llvm.fptoui.sat.i64.f32(float %mid57192)
  %_18 = icmp ult i64 %_17, 2
  br i1 %_18, label %bb7, label %panic2

bb7:                                              ; preds = %bb6
  %4 = getelementptr inbounds nuw float, ptr %arr, i64 %_17
  %_16 = load float, ptr %4, align 4, !noundef !23
  %_15 = fcmp oeq float %_16, %x
  br i1 %_15, label %bb8, label %bb10

panic2:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_17, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b2a0a8713e9aeb8c50a78f43cc67d55b) #18
  unreachable

bb8:                                              ; preds = %bb7
  %5 = tail call i32 @llvm.fptosi.sat.i32.f32(float %mid57192)
  br label %bb27

bb10:                                             ; preds = %bb7
  %_19 = fcmp olt float %_16, %x
  br i1 %_19, label %bb11, label %bb17

bb17:                                             ; preds = %bb10
  %_27 = fadd float %mid57192, -1.000000e+00
  %_26 = fcmp ult float %_27, %low.tr.ph63
  br i1 %_26, label %bb22, label %bb18

bb11:                                             ; preds = %bb10
  %_21 = fadd float %mid57192, 1.000000e+00
  %_20 = fcmp ugt float %_21, %high.tr56191
  %.pre = tail call i64 @llvm.fptoui.sat.i64.f32(float %_21)
  br i1 %_20, label %bb16, label %bb12

bb22:                                             ; preds = %bb19, %bb17
  store i64 %0, ptr %arr, align 8
  %_6 = fadd float %low.tr.ph63, %_27
  %_8 = load float, ptr %1, align 4, !noundef !23
  %_7 = fcmp ugt float %x, %_8
  br i1 %_7, label %bb3, label %bb2

bb18:                                             ; preds = %bb17
  %_30 = tail call i64 @llvm.fptoui.sat.i64.f32(float %_27)
  %_31 = icmp ult i64 %_30, 2
  br i1 %_31, label %bb19, label %panic4

bb19:                                             ; preds = %bb18
  %6 = getelementptr inbounds nuw float, ptr %arr, i64 %_30
  %_29 = load float, ptr %6, align 4, !noundef !23
  %_28 = fcmp ogt float %x, %_29
  br i1 %_28, label %bb20, label %bb22

panic4:                                           ; preds = %bb18
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_30, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4bea39901254538bf9fd58d8d9d2aac0) #18
  unreachable

bb20:                                             ; preds = %bb19
  %7 = tail call i32 @llvm.fptosi.sat.i32.f32(float %mid57192)
  br label %bb27

bb16:                                             ; preds = %bb11, %bb13
  %_10 = icmp ult i64 %.pre, 2
  store i64 %0, ptr %arr, align 8
  %_654 = fadd float %_21, %high.tr56191
  br i1 %_10, label %bb1.lr.ph, label %panic

bb12:                                             ; preds = %bb11
  %_25 = icmp ult i64 %.pre, 2
  br i1 %_25, label %bb13, label %panic5

bb13:                                             ; preds = %bb12
  %8 = getelementptr inbounds nuw float, ptr %arr, i64 %.pre
  %_23 = load float, ptr %8, align 4, !noundef !23
  %_22 = fcmp ugt float %x, %_23
  br i1 %_22, label %bb16, label %bb14

panic5:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %.pre, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_816cf9c507bebe3aa2a0c869671c2791) #18
  unreachable

bb14:                                             ; preds = %bb13
  %9 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_21)
  br label %bb27

bb27:                                             ; preds = %bb4, %bb8, %bb20, %bb14, %bb2
  %_0.sroa.0.0 = phi i32 [ %2, %bb2 ], [ %5, %bb8 ], [ %9, %bb14 ], [ %7, %bb20 ], [ -1, %bb4 ]
  ret i32 %_0.sroa.0.0
}
