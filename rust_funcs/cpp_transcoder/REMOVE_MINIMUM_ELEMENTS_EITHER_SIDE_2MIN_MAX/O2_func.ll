define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_3419 = icmp sgt i32 %n, 0
  br i1 %_3419, label %bb22.preheader, label %bb23.thread

bb22.preheader:                                   ; preds = %start
  %wide.trip.count30 = zext nneg i32 %n to i64
  br label %bb22

bb23:                                             ; preds = %bb18
  %0 = xor i32 %longest_end.sroa.0.1.lcssa, -1
  %_30 = icmp eq i32 %longest_start.sroa.0.1.lcssa.fr, -1
  %_32.neg = add i32 %longest_start.sroa.0.1.lcssa.fr, %0
  br i1 %_30, label %bb23.thread, label %1

bb23.thread:                                      ; preds = %start, %bb23
  br label %1

1:                                                ; preds = %bb23, %bb23.thread
  %2 = phi i32 [ 0, %bb23.thread ], [ %_32.neg, %bb23 ]
  %_0.sroa.0.0 = add i32 %2, %n
  ret i32 %_0.sroa.0.0

bb22:                                             ; preds = %bb22.preheader, %bb18
  %indvars.iv = phi i64 [ 0, %bb22.preheader ], [ %indvars.iv.next, %bb18 ]
  %longest_start.sroa.0.022 = phi i32 [ -1, %bb22.preheader ], [ %longest_start.sroa.0.1.lcssa.fr, %bb18 ]
  %longest_end.sroa.0.021 = phi i32 [ 0, %bb22.preheader ], [ %longest_end.sroa.0.1.lcssa, %bb18 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb27

bb27:                                             ; preds = %bb22, %bb11
  %indvars.iv25 = phi i64 [ %indvars.iv, %bb22 ], [ %indvars.iv.next26, %bb11 ]
  %longest_start.sroa.0.118 = phi i32 [ %longest_start.sroa.0.022, %bb22 ], [ %spec.select9, %bb11 ]
  %longest_end.sroa.0.117 = phi i32 [ %longest_end.sroa.0.021, %bb22 ], [ %spec.select, %bb11 ]
  %min.sroa.0.015 = phi float [ 0x47EFFFFFE0000000, %bb22 ], [ %min.sroa.0.1, %bb11 ]
  %max.sroa.0.014 = phi float [ 0xC7EFFFFFE0000000, %bb22 ], [ %max.sroa.0.1, %bb11 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %_14 = icmp samesign ugt i64 %arr.1, %indvars.iv25
  br i1 %_14, label %bb3, label %panic

bb18:                                             ; preds = %bb3, %bb11
  %longest_end.sroa.0.1.lcssa = phi i32 [ %longest_end.sroa.0.117, %bb3 ], [ %spec.select, %bb11 ]
  %longest_start.sroa.0.1.lcssa = phi i32 [ %longest_start.sroa.0.118, %bb3 ], [ %spec.select9, %bb11 ]
  %longest_start.sroa.0.1.lcssa.fr = freeze i32 %longest_start.sroa.0.1.lcssa
  %exitcond31.not = icmp eq i64 %indvars.iv.next, %wide.trip.count30
  br i1 %exitcond31.not, label %bb23, label %bb22

bb3:                                              ; preds = %bb27
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %indvars.iv25
  %val = load float, ptr %4, align 4, !noundef !23
  %_15 = fcmp olt float %val, %min.sroa.0.015
  %min.sroa.0.1 = select i1 %_15, float %val, float %min.sroa.0.015
  %_17 = fcmp ogt float %val, %max.sroa.0.014
  %max.sroa.0.1 = select i1 %_17, float %val, float %max.sroa.0.014
  %_20 = fmul float %min.sroa.0.1, 2.000000e+00
  %_19 = fcmp ugt float %_20, %max.sroa.0.1
  br i1 %_19, label %bb11, label %bb18

panic:                                            ; preds = %bb27
  %umax = tail call i64 @llvm.umax.i64(i64 %arr.1, i64 %indvars.iv)
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3e21be8764aaf124f0c06e6ff19bcc49) #18
  unreachable

bb11:                                             ; preds = %bb3
  %5 = sub nuw nsw i64 %indvars.iv25, %indvars.iv
  %_25 = sub i32 %longest_end.sroa.0.117, %longest_start.sroa.0.118
  %6 = sext i32 %_25 to i64
  %_23 = icmp sgt i64 %5, %6
  %_28 = icmp eq i32 %longest_start.sroa.0.118, -1
  %or.cond = or i1 %_28, %_23
  %7 = trunc nuw nsw i64 %indvars.iv25 to i32
  %spec.select = select i1 %or.cond, i32 %7, i32 %longest_end.sroa.0.117
  %spec.select9 = select i1 %or.cond, i32 %3, i32 %longest_start.sroa.0.118
  %exitcond.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count30
  br i1 %exitcond.not, label %bb18, label %bb27
}
