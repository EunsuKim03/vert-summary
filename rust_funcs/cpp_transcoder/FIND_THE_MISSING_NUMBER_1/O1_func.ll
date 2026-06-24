define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_5 = add i32 %n, 1
  %_0.i.not.i.i8 = icmp slt i32 %_5, 2
  br i1 %_0.i.not.i.i8, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %.not = icmp eq i32 %_5, 2
  %iter.sroa.7.114 = zext i1 %.not to i8
  %_0.i3.i.i9.not = icmp eq i32 %_5, 2
  %iter.sroa.0.113 = select i1 %_0.i3.i.i9.not, i32 2, i32 3
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb8
  %_0.sroa.3.0.i.i18 = phi i32 [ 2, %bb6.lr.ph ], [ %_0.sroa.3.0.i.i, %bb8 ]
  %iter.sroa.7.117 = phi i8 [ %iter.sroa.7.114, %bb6.lr.ph ], [ %iter.sroa.7.1, %bb8 ]
  %iter.sroa.0.116 = phi i32 [ %iter.sroa.0.113, %bb6.lr.ph ], [ %iter.sroa.0.1, %bb8 ]
  %total.sroa.0.015 = phi i32 [ 1, %bb6.lr.ph ], [ %3, %bb8 ]
  %_13 = sext i32 %_0.sroa.3.0.i.i18 to i64
  %_12 = add nsw i64 %_13, -2
  %_14 = icmp ult i64 %_12, 2
  br i1 %_14, label %bb8, label %panic

bb7:                                              ; preds = %bb8, %start
  %total.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %3, %bb8 ]
  ret i32 %total.sroa.0.0.lcssa

bb8:                                              ; preds = %bb6
  %1 = add i32 %_0.sroa.3.0.i.i18, %total.sroa.0.015
  %2 = getelementptr inbounds nuw i32, ptr %a, i64 %_12
  %_11 = load i32, ptr %2, align 4, !noundef !37
  %3 = sub i32 %1, %_11
  %_10.i.i = trunc nuw i8 %iter.sroa.7.117 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.116, %_5
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.116, %_5
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.116, %spec.select
  %4 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %4, i8 %iter.sroa.7.117, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.116
  br i1 %or.cond, label %bb7, label %bb6

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fa4536fa7a8b60cc860a632acbdca4d0) #24
  unreachable
}
