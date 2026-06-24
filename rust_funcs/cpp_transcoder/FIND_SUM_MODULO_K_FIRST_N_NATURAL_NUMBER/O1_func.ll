define noundef i32 @f_gold(i32 noundef %N, i32 noundef %K) unnamed_addr #3 {
start:
  %_11 = icmp eq i32 %K, 0
  %_0.i.not.i.i10 = icmp slt i32 %N, 1
  br i1 %_0.i.not.i.i10, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %.not = icmp eq i32 %N, 1
  %iter.sroa.7.116 = zext i1 %.not to i8
  %_0.i3.i.i11.not = icmp eq i32 %N, 1
  %iter.sroa.0.115 = select i1 %_0.i3.i.i11.not, i32 1, i32 2
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb9
  %_0.sroa.3.0.i.i20 = phi i32 [ 1, %bb6.lr.ph ], [ %_0.sroa.3.0.i.i, %bb9 ]
  %iter.sroa.7.119 = phi i8 [ %iter.sroa.7.116, %bb6.lr.ph ], [ %iter.sroa.7.1, %bb9 ]
  %iter.sroa.0.118 = phi i32 [ %iter.sroa.0.115, %bb6.lr.ph ], [ %iter.sroa.0.1, %bb9 ]
  %ans.sroa.0.017 = phi i32 [ 0, %bb6.lr.ph ], [ %0, %bb9 ]
  br i1 %_11, label %panic, label %bb9

bb7:                                              ; preds = %bb9, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %0, %bb9 ]
  ret i32 %ans.sroa.0.0.lcssa

panic:                                            ; preds = %bb6
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_db975f24bc56e3cd2fa27704112745d7) #23
  unreachable

bb9:                                              ; preds = %bb6
  %_10 = srem i32 %_0.sroa.3.0.i.i20, %K
  %0 = add i32 %_10, %ans.sroa.0.017
  %_10.i.i = trunc nuw i8 %iter.sroa.7.119 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.118, %N
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.118, %N
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.118, %spec.select
  %1 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %1, i8 %iter.sroa.7.119, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.118
  br i1 %or.cond, label %bb7, label %bb6
}
