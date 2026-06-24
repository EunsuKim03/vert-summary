define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_1714 = icmp sgt i32 %n, 0
  br i1 %_1714, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %start
  %_11 = zext nneg i32 %n to i64
  br label %bb11.preheader

bb7:                                              ; preds = %bb12, %start
  %res.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb12 ]
  ret i32 %res.sroa.0.0.lcssa

bb11.preheader:                                   ; preds = %bb12, %bb6.lr.ph
  %indvars.iv21 = phi i64 [ 0, %bb6.lr.ph ], [ %indvars.iv.next22, %bb12 ]
  %res.sroa.0.016 = phi i32 [ -2147483648, %bb6.lr.ph ], [ %_0.sroa.0.0.i, %bb12 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %bb11

bb12:                                             ; preds = %bb4
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %4, i32 %res.sroa.0.016)
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %_11
  br i1 %exitcond25.not, label %bb7, label %bb11.preheader

bb11:                                             ; preds = %bb11.preheader, %bb4
  %indvars.iv = phi i64 [ 0, %bb11.preheader ], [ %indvars.iv.next, %bb4 ]
  %curr_sum.sroa.0.012 = phi i32 [ 0, %bb11.preheader ], [ %4, %bb4 ]
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv21
  %sext = shl i64 %1, 32
  %_9 = ashr exact i64 %sext, 32
  %index = urem i64 %_9, %_11
  %_15 = icmp samesign ult i64 %index, 2
  br i1 %_15, label %bb4, label %panic2

bb4:                                              ; preds = %bb11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %index
  %_14 = load i32, ptr %2, align 4, !noundef !23
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  %_13 = mul i32 %_14, %3
  %4 = add i32 %_13, %curr_sum.sroa.0.012
  %exitcond.not = icmp eq i64 %indvars.iv.next, %_11
  br i1 %exitcond.not, label %bb12, label %bb11

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %index, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_de6af84c3718d7d5eefbc3616487ef28) #18
  unreachable
}
