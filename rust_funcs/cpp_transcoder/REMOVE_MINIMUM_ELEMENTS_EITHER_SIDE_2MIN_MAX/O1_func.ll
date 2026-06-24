define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i32 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i32, label %bb8.preheader, label %bb6

bb8.preheader:                                    ; preds = %start, %bb26
  %spec.select1736 = phi i32 [ %spec.select17, %bb26 ], [ 1, %start ]
  %longest_start.sroa.0.035 = phi i32 [ %longest_start.sroa.0.1.lcssa, %bb26 ], [ -1, %start ]
  %longest_end.sroa.0.034 = phi i32 [ %longest_end.sroa.0.1.lcssa, %bb26 ], [ 0, %start ]
  %iter.sroa.0.033 = phi i32 [ %spec.select1736, %bb26 ], [ 0, %start ]
  %0 = zext nneg i32 %iter.sroa.0.033 to i64
  br label %bb10

bb6.loopexit:                                     ; preds = %bb26
  %1 = xor i32 %longest_end.sroa.0.1.lcssa, -1
  br label %bb6

bb6:                                              ; preds = %bb6.loopexit, %start
  %longest_end.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %1, %bb6.loopexit ]
  %longest_start.sroa.0.0.lcssa = phi i32 [ -1, %start ], [ %longest_start.sroa.0.1.lcssa, %bb6.loopexit ]
  %_40 = icmp eq i32 %longest_start.sroa.0.0.lcssa, -1
  %_42.neg = add i32 %longest_start.sroa.0.0.lcssa, %longest_end.sroa.0.0.lcssa
  %2 = select i1 %_40, i32 0, i32 %_42.neg
  %_0.sroa.0.0 = add i32 %2, %n
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb8.preheader, %bb19
  %indvars.iv.in = phi i64 [ %0, %bb8.preheader ], [ %indvars.iv, %bb19 ]
  %longest_start.sroa.0.130 = phi i32 [ %longest_start.sroa.0.035, %bb8.preheader ], [ %spec.select9, %bb19 ]
  %longest_end.sroa.0.129 = phi i32 [ %longest_end.sroa.0.034, %bb8.preheader ], [ %spec.select, %bb19 ]
  %max.sroa.0.028 = phi float [ 0xC7EFFFFFE0000000, %bb8.preheader ], [ %max.sroa.0.1, %bb19 ]
  %min.sroa.0.027 = phi float [ 0x47EFFFFFE0000000, %bb8.preheader ], [ %min.sroa.0.1, %bb19 ]
  %iter1.sroa.0.026 = phi i32 [ %iter.sroa.0.033, %bb8.preheader ], [ %6, %bb19 ]
  %indvars.iv = add nuw nsw i64 %indvars.iv.in, 1
  %_22 = zext nneg i32 %iter1.sroa.0.026 to i64
  %_24 = icmp samesign ugt i64 %arr.1, %_22
  br i1 %_24, label %bb11, label %panic

bb26:                                             ; preds = %bb11, %bb19
  %longest_end.sroa.0.1.lcssa = phi i32 [ %longest_end.sroa.0.129, %bb11 ], [ %spec.select, %bb19 ]
  %longest_start.sroa.0.1.lcssa = phi i32 [ %longest_start.sroa.0.130, %bb11 ], [ %spec.select9, %bb19 ]
  %_0.i.i.i = icmp slt i32 %spec.select1736, %n
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select17 = add nuw nsw i32 %spec.select1736, %3
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb6.loopexit

bb11:                                             ; preds = %bb10
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_22
  %val = load float, ptr %4, align 4, !noundef !37
  %_25 = fcmp olt float %val, %min.sroa.0.027
  %min.sroa.0.1 = select i1 %_25, float %val, float %min.sroa.0.027
  %_27 = fcmp ogt float %val, %max.sroa.0.028
  %max.sroa.0.1 = select i1 %_27, float %val, float %max.sroa.0.028
  %_30 = fmul float %min.sroa.0.1, 2.000000e+00
  %_29 = fcmp ugt float %_30, %max.sroa.0.1
  br i1 %_29, label %bb19, label %bb26

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_22, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3e21be8764aaf124f0c06e6ff19bcc49) #24
  unreachable

bb19:                                             ; preds = %bb11
  %_34 = sub nsw i32 %iter1.sroa.0.026, %iter.sroa.0.033
  %_35 = sub i32 %longest_end.sroa.0.129, %longest_start.sroa.0.130
  %_33 = icmp sgt i32 %_34, %_35
  %_38 = icmp eq i32 %longest_start.sroa.0.130, -1
  %or.cond = or i1 %_38, %_33
  %spec.select = select i1 %or.cond, i32 %iter1.sroa.0.026, i32 %longest_end.sroa.0.129
  %spec.select9 = select i1 %or.cond, i32 %iter.sroa.0.033, i32 %longest_start.sroa.0.130
  %5 = trunc nuw i64 %indvars.iv to i32
  %_0.i.i.i13 = icmp sgt i32 %n, %5
  %6 = trunc nuw i64 %indvars.iv to i32
  br i1 %_0.i.i.i13, label %bb10, label %bb26
}
