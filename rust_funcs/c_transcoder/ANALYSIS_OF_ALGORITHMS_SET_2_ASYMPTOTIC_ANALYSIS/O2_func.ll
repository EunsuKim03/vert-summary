define noundef range(i32 -2147483648, 2147483647) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb2 ], [ 0, %start ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb5, label %bb6

bb6:                                              ; preds = %bb1
  %exitcond4.not = icmp eq i64 %indvars.iv, %arr.1
  br i1 %exitcond4.not, label %panic, label %bb2

bb5.split.loop.exit:                              ; preds = %bb2
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb5

bb5:                                              ; preds = %bb1, %bb5.split.loop.exit
  %i.sroa.0.0 = phi i32 [ %0, %bb5.split.loop.exit ], [ -1, %bb1 ]
  ret i32 %i.sroa.0.0

bb2:                                              ; preds = %bb6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv
  %_6 = load i32, ptr %1, align 4, !noundef !23
  %_5 = icmp eq i32 %_6, %x
  br i1 %_5, label %bb5.split.loop.exit, label %bb1

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_705e95fd4080310422b3cc72ca651943) #18
  unreachable
}
