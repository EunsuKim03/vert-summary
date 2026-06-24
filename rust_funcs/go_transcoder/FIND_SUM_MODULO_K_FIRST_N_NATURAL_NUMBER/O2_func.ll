define noundef i32 @f_gold(i32 noundef %N, i32 noundef %K) unnamed_addr #1 {
start:
  %_0.i.not.i13 = icmp slt i32 %N, 1
  br i1 %_0.i.not.i13, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %start
  %_10 = icmp eq i32 %K, 0
  br i1 %_10, label %panic, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb2.i
  %ans.sroa.0.015 = phi i32 [ %1, %bb2.i ], [ 0, %bb2.i.lr.ph ]
  %iter.sroa.0.014 = phi i32 [ %spec.select11, %bb2.i ], [ 1, %bb2.i.lr.ph ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.014, %N
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %0 = zext i1 %not._0.i3.i to i32
  %spec.select11 = add nuw nsw i32 %iter.sroa.0.014, %0
  %_9 = srem i32 %iter.sroa.0.014, %K
  %1 = add i32 %_9, %ans.sroa.0.015
  %_0.i.not.i = icmp sgt i32 %spec.select11, %N
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb4:                                              ; preds = %bb2.i, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb2.i ]
  ret i32 %ans.sroa.0.0.lcssa

panic:                                            ; preds = %bb2.i.lr.ph
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a3ae2754bcc943616a0148e5e96d8781) #17
  unreachable
}
