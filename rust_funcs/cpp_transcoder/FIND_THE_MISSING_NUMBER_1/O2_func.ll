define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_4 = add i32 %n, 1
  %_0.i.not.i13 = icmp slt i32 %_4, 2
  br i1 %_0.i.not.i13, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb5
  %total.sroa.0.015 = phi i32 [ %4, %bb5 ], [ 1, %start ]
  %iter.sroa.0.014 = phi i32 [ %spec.select11, %bb5 ], [ 2, %start ]
  %_12 = zext nneg i32 %iter.sroa.0.014 to i64
  %_11 = add nsw i64 %_12, -2
  %_13 = icmp ult i64 %_11, 2
  br i1 %_13, label %bb5, label %panic

bb4:                                              ; preds = %bb5, %start
  %total.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %4, %bb5 ]
  ret i32 %total.sroa.0.0.lcssa

bb5:                                              ; preds = %bb2.i
  %_0.i3.i = icmp sge i32 %iter.sroa.0.014, %_4
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %1 = zext i1 %not._0.i3.i to i32
  %spec.select11 = add nuw nsw i32 %iter.sroa.0.014, %1
  %2 = add i32 %total.sroa.0.015, %iter.sroa.0.014
  %3 = getelementptr inbounds nuw i32, ptr %a, i64 %_11
  %_10 = load i32, ptr %3, align 4, !noundef !23
  %4 = sub i32 %2, %_10
  %_0.i.not.i = icmp sgt i32 %spec.select11, %_4
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic:                                            ; preds = %bb2.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fa4536fa7a8b60cc860a632acbdca4d0) #18
  unreachable
}
