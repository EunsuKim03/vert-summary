define noundef i32 @f_gold(i64 %0, i32 noundef %low, i32 noundef %high) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_4 = sext i32 %low to i64
  %_5 = icmp ult i32 %low, 2
  br i1 %_5, label %bb1, label %panic

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_4
  %2 = load i32, ptr %1, align 4, !noundef !23
  %smax = tail call i32 @llvm.smax.i32(i32 %high, i32 %low)
  %narrow = add nuw nsw i32 %low, 1
  %indvars.iv.next.peel = zext nneg i32 %narrow to i64
  %exitcond.not.peel.not = icmp slt i32 %low, %high
  br i1 %exitcond.not.peel.not, label %bb3.peel, label %bb9

bb3.peel:                                         ; preds = %bb1
  %_13.peel = icmp eq i32 %low, 0
  br i1 %_13.peel, label %bb4.peel, label %panic1

bb4.peel:                                         ; preds = %bb3.peel
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv.next.peel
  %_10.peel = load i32, ptr %3, align 4, !noundef !23
  %_9.peel = icmp sgt i32 %_10.peel, %2
  br i1 %_9.peel, label %bb1.peel.newph, label %bb9

bb1.peel.newph:                                   ; preds = %bb4.peel
  %exitcond.not = icmp eq i32 %smax, 1
  br i1 %exitcond.not, label %bb9, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_4, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_85b482372b0f0c1c7f6f18e41e80e072) #18
  unreachable

bb9:                                              ; preds = %bb1.peel.newph, %bb4.peel, %bb1
  %max.sroa.0.0.lcssa = phi i32 [ %2, %bb1 ], [ %2, %bb4.peel ], [ %_10.peel, %bb1.peel.newph ]
  ret i32 %max.sroa.0.0.lcssa

panic1:                                           ; preds = %bb1.peel.newph, %bb3.peel
  %indvars.iv.next.lcssa14 = phi i64 [ %indvars.iv.next.peel, %bb3.peel ], [ 2, %bb1.peel.newph ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv.next.lcssa14, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_16ba686749d500822906d29c9b5e2af2) #18
  unreachable
}
