define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %_0.i.i.i15 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i15, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %start
  %x1.sroa.0.0.lcssa.in = phi i64 [ %0, %start ], [ %3, %bb7 ]
  %_17 = add i32 %n, 1
  br label %bb10

bb10:                                             ; preds = %bb10, %bb6
  %iter1.sroa.0.0 = phi i32 [ 2, %bb6 ], [ %iter1.sroa.0.1, %bb10 ]
  %iter1.sroa.7.0 = phi i8 [ 0, %bb6 ], [ %iter1.sroa.7.1, %bb10 ]
  %x2.sroa.0.0 = phi i32 [ 1, %bb6 ], [ %2, %bb10 ]
  %_10.i.i = trunc nuw i8 %iter1.sroa.7.0 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter1.sroa.0.0, %_17
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter1.sroa.0.0, %_17
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select12 = zext i1 %narrow to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.0, %spec.select12
  %1 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter1.sroa.7.1 = select i1 %1, i8 %iter1.sroa.7.0, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter1.sroa.0.0
  %2 = xor i32 %_0.sroa.3.0.i.i, %x2.sroa.0.0
  br i1 %or.cond, label %bb13, label %bb10

bb13:                                             ; preds = %bb10
  %x1.sroa.0.0.lcssa = trunc i64 %x1.sroa.0.0.lcssa.in to i32
  %_0 = xor i32 %x2.sroa.0.0, %x1.sroa.0.0.lcssa
  ret i32 %_0

bb7:                                              ; preds = %start
  %3 = xor i64 %a.sroa.2.0.extract.shift, %0
  %_0.i.i.i.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i.not, label %bb6, label %panic

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7dbce5e5cb39e1f3c66dc03311dd6197) #24
  unreachable
}
