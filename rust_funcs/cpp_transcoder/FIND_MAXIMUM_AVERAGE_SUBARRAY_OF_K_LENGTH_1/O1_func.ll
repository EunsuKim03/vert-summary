define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_4 = icmp sgt i32 %k, %n
  br i1 %_4, label %bb20, label %bb2

bb2:                                              ; preds = %start
  %1 = load float, ptr %arr, align 8, !noundef !37
  %_0.i.i.i24 = icmp sgt i32 %k, 1
  br i1 %_0.i.i.i24, label %bb9, label %bb8

bb8:                                              ; preds = %bb9, %bb2
  %sum.sroa.0.0.lcssa = phi float [ %1, %bb2 ], [ %14, %bb9 ]
  %2 = add i32 %k, -1
  %_0.i.i.i1329 = icmp slt i32 %k, %n
  br i1 %_0.i.i.i1329, label %bb13.preheader, label %bb14

bb13.preheader:                                   ; preds = %bb8
  %spec.select1830 = add nsw i32 %k, 1
  %_26 = sext i32 %k to i64
  %_27 = icmp ult i32 %k, 2
  br i1 %_27, label %bb16, label %panic

bb14:                                             ; preds = %bb16, %bb16.1, %bb16.2, %bb8
  %max_end.sroa.0.0.lcssa = phi i32 [ %2, %bb8 ], [ %max_end.sroa.0.1, %bb16 ], [ %max_end.sroa.0.1.1, %bb16.1 ], [ %max_end.sroa.0.1.2, %bb16.2 ]
  %reass.sub = sub i32 %max_end.sroa.0.0.lcssa, %k
  %3 = add i32 %reass.sub, 1
  br label %bb20

bb20:                                             ; preds = %start, %bb14
  %_0.sroa.0.0 = phi i32 [ %3, %bb14 ], [ -1, %start ]
  ret i32 %_0.sroa.0.0

panic:                                            ; preds = %bb13.2, %bb13.1, %bb13.preheader
  %_26.lcssa = phi i64 [ %_26, %bb13.preheader ], [ %_26.1, %bb13.1 ], [ %_26.2, %bb13.2 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_26.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_62a21c41ce995021be5d7ae88eb2b2bc) #24
  unreachable

bb16:                                             ; preds = %bb13.preheader
  %4 = getelementptr inbounds nuw float, ptr %arr, i64 %_26
  %_25 = load float, ptr %4, align 4, !noundef !37
  %_28 = load float, ptr %arr, align 8, !noundef !37
  %_24 = fsub float %_25, %_28
  %5 = fadd float %sum.sroa.0.0.lcssa, %_24
  %_32 = fcmp ogt float %5, %sum.sroa.0.0.lcssa
  %max_end.sroa.0.1 = select i1 %_32, i32 %k, i32 %2
  %max_sum.sroa.0.1 = select i1 %_32, float %5, float %sum.sroa.0.0.lcssa
  %_0.i.i.i13 = icmp slt i32 %spec.select1830, %n
  %6 = zext i1 %_0.i.i.i13 to i32
  %spec.select18 = add nuw nsw i32 %spec.select1830, %6
  br i1 %_0.i.i.i13, label %bb13.1, label %bb14

bb13.1:                                           ; preds = %bb16
  %_26.1 = zext nneg i32 %spec.select1830 to i64
  %_27.1 = icmp ult i32 %spec.select1830, 2
  br i1 %_27.1, label %bb16.1, label %panic

bb16.1:                                           ; preds = %bb13.1
  %7 = getelementptr inbounds nuw float, ptr %arr, i64 %_26.1
  %_25.1 = load float, ptr %7, align 4, !noundef !37
  %8 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_28.1 = load float, ptr %8, align 4, !noundef !37
  %_24.1 = fsub float %_25.1, %_28.1
  %9 = fadd float %5, %_24.1
  %_32.1 = fcmp ogt float %9, %max_sum.sroa.0.1
  %max_end.sroa.0.1.1 = select i1 %_32.1, i32 %spec.select1830, i32 %max_end.sroa.0.1
  %max_sum.sroa.0.1.1 = select i1 %_32.1, float %9, float %max_sum.sroa.0.1
  %_0.i.i.i13.1 = icmp slt i32 %spec.select18, %n
  br i1 %_0.i.i.i13.1, label %bb13.2, label %bb14

bb13.2:                                           ; preds = %bb16.1
  %_26.2 = zext nneg i32 %spec.select18 to i64
  %_27.2 = icmp ult i32 %spec.select18, 2
  br i1 %_27.2, label %bb15.2, label %panic

bb15.2:                                           ; preds = %bb13.2
  %_30.2 = sub nsw i32 %spec.select18, %k
  %_29.2 = sext i32 %_30.2 to i64
  %_31.2 = icmp ult i32 %_30.2, 2
  br i1 %_31.2, label %bb16.2, label %panic2

bb16.2:                                           ; preds = %bb15.2
  %10 = getelementptr inbounds nuw float, ptr %arr, i64 %_26.2
  %_25.2 = load float, ptr %10, align 4, !noundef !37
  %11 = getelementptr inbounds nuw float, ptr %arr, i64 %_29.2
  %_28.2 = load float, ptr %11, align 4, !noundef !37
  %_24.2 = fsub float %_25.2, %_28.2
  %12 = fadd float %9, %_24.2
  %_32.2 = fcmp ogt float %12, %max_sum.sroa.0.1.1
  %max_end.sroa.0.1.2 = select i1 %_32.2, i32 %spec.select18, i32 %max_end.sroa.0.1.1
  br label %bb14

panic2:                                           ; preds = %bb15.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_29.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9a38b4b52e50d81fdd26e49fef928777) #24
  unreachable

bb9:                                              ; preds = %bb2
  %13 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_13 = load float, ptr %13, align 4, !noundef !37
  %14 = fadd float %1, %_13
  %_0.i.i.i.not = icmp eq i32 %k, 2
  br i1 %_0.i.i.i.not, label %bb8, label %panic4

panic4:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_69bce646457c5e9b70395143f982dca1) #24
  unreachable
}
