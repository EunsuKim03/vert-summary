define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_4 = icmp sgt i32 %k, %n
  %1 = trunc i64 %0 to i32
  %2 = bitcast i32 %1 to float
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = bitcast i32 %4 to float
  br i1 %_4, label %bb11, label %bb2

bb2:                                              ; preds = %start
  %_2714 = icmp sgt i32 %k, 1
  br i1 %_2714, label %bb12.preheader, label %bb13

bb12.preheader:                                   ; preds = %bb2
  %.not35 = icmp eq i32 %k, 2
  br i1 %.not35, label %bb13.thread, label %panic4

bb13:                                             ; preds = %bb2
  %6 = add i32 %k, -1
  %_3417 = icmp slt i32 %k, %n
  br i1 %_3417, label %bb17.preheader, label %bb18

bb13.thread:                                      ; preds = %bb12.preheader
  %_341737 = icmp slt i32 %k, %n
  br i1 %_341737, label %panic, label %bb18

bb17.preheader:                                   ; preds = %bb13
  %7 = sext i32 %k to i64
  %wide.trip.count = sext i32 %n to i64
  %indvars.iv.next30 = add nsw i64 %7, 1
  %_17 = icmp ult i32 %k, 2
  br i1 %_17, label %bb6, label %panic

bb18:                                             ; preds = %bb6, %bb6.1, %bb13.thread, %bb13
  %max_end.sroa.0.0.lcssa = phi i32 [ %6, %bb13 ], [ 1, %bb13.thread ], [ %max_end.sroa.0.1, %bb6 ], [ %max_end.sroa.0.1.1, %bb6.1 ]
  %reass.sub = sub i32 %max_end.sroa.0.0.lcssa, %k
  %8 = add i32 %reass.sub, 1
  br label %bb11

bb11:                                             ; preds = %start, %bb18
  %_0.sroa.0.0 = phi i32 [ %8, %bb18 ], [ -1, %start ]
  ret i32 %_0.sroa.0.0

bb6:                                              ; preds = %bb17.preheader
  %9 = getelementptr inbounds nuw float, ptr %arr, i64 %7
  %_15 = load float, ptr %9, align 4, !noundef !23
  %_14 = fsub float %_15, %2
  %10 = fadd float %_14, %2
  %_22 = fcmp ogt float %10, %2
  %max_end.sroa.0.1 = select i1 %_22, i32 %k, i32 %6
  %max_sum.sroa.0.1 = select i1 %_22, float %10, float %2
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count
  br i1 %exitcond33.not, label %bb18, label %bb17.1

panic:                                            ; preds = %bb13.thread, %bb6.1, %bb17.1, %bb17.preheader
  %_16.lcssa = phi i64 [ %7, %bb17.preheader ], [ %indvars.iv.next30, %bb17.1 ], [ %indvars.iv.next30.1, %bb6.1 ], [ 2, %bb13.thread ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_62a21c41ce995021be5d7ae88eb2b2bc) #18
  unreachable

bb17.1:                                           ; preds = %bb6
  %_17.1 = icmp ult i64 %indvars.iv.next30, 2
  br i1 %_17.1, label %bb6.1, label %panic

bb6.1:                                            ; preds = %bb17.1
  %indvars.iv.next30.1 = or disjoint i64 %7, 2
  %11 = trunc nuw nsw i64 %indvars.iv.next30 to i32
  %12 = getelementptr inbounds nuw float, ptr %arr, i64 %indvars.iv.next30
  %_15.1 = load float, ptr %12, align 4, !noundef !23
  %_14.1 = fsub float %_15.1, %5
  %13 = fadd float %10, %_14.1
  %_22.1 = fcmp ogt float %13, %max_sum.sroa.0.1
  %max_end.sroa.0.1.1 = select i1 %_22.1, i32 %11, i32 %max_end.sroa.0.1
  %exitcond33.1.not = icmp eq i64 %indvars.iv.next30.1, %wide.trip.count
  br i1 %exitcond33.1.not, label %bb18, label %panic

panic4:                                           ; preds = %bb12.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_69bce646457c5e9b70395143f982dca1) #18
  unreachable
}
