define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
bb15:
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.3.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.3.0.extract.trunc = trunc nuw i64 %arr.sroa.3.0.extract.shift to i32
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  %_4.i.i.i.i = icmp sgt i32 %1, %3
  %maxele.sroa.speculated = select i1 %_4.i.i.i.i, i32 %arr.sroa.0.0.extract.trunc, i32 %arr.sroa.3.0.extract.trunc
  %_0.i.not.i19 = icmp slt i32 %maxele.sroa.speculated, 2
  br i1 %_0.i.not.i19, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb15
  %_3616 = icmp sgt i32 %n, 0
  %4 = add i32 %n, -3
  %.not = icmp ult i32 %4, -2
  %exitcond.not = icmp eq i32 %n, 1
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb18
  %ans.sroa.0.021 = phi i32 [ 0, %bb2.i.lr.ph ], [ %x.y.i, %bb18 ]
  %iter.sroa.0.020 = phi i32 [ 2, %bb2.i.lr.ph ], [ %spec.select13, %bb18 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.020, %maxele.sroa.speculated
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %5 = zext i1 %not._0.i3.i to i32
  %spec.select13 = add nuw nsw i32 %iter.sroa.0.020, %5
  br i1 %_3616, label %bb17.preheader, label %bb18

bb17.preheader:                                   ; preds = %bb2.i
  br i1 %.not, label %panic, label %bb17

bb4:                                              ; preds = %bb18, %bb15
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %bb15 ], [ %x.y.i, %bb18 ]
  ret i32 %ans.sroa.0.0.lcssa

bb18:                                             ; preds = %bb17, %bb17.1, %bb2.i
  %count.sroa.0.0.lcssa = phi i32 [ 0, %bb2.i ], [ %6, %bb17 ], [ %spec.select.1, %bb17.1 ]
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %ans.sroa.0.021, i32 %count.sroa.0.0.lcssa)
  %_0.i.not.i = icmp sgt i32 %spec.select13, %maxele.sroa.speculated
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb17:                                             ; preds = %bb17.preheader
  %_19 = srem i32 %arr.sroa.0.0.extract.trunc, %iter.sroa.0.020
  %_18 = icmp eq i32 %_19, 0
  %6 = zext i1 %_18 to i32
  br i1 %exitcond.not, label %bb18, label %bb17.1

bb17.1:                                           ; preds = %bb17
  %_19.1 = srem i32 %arr.sroa.3.0.extract.trunc, %iter.sroa.0.020
  %_18.1 = icmp eq i32 %_19.1, 0
  %7 = zext i1 %_18.1 to i32
  %spec.select.1 = add nuw nsw i32 %6, %7
  br label %bb18

panic:                                            ; preds = %bb17.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_734579732689645a3c43814221cdc57c) #18
  unreachable
}
