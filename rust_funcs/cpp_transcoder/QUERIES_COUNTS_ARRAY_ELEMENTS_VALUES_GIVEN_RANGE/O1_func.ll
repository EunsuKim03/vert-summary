define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x, i32 noundef %y) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i7 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i7, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb7.1, %bb7.2, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb7 ], [ %spec.select.1, %bb7.1 ], [ %spec.select.2, %bb7.2 ]
  ret i32 %count.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_13 = load i32, ptr %arr, align 8, !noundef !37
  %_12.not = icmp sge i32 %_13, %x
  %_16.not = icmp sle i32 %_13, %y
  %or.cond.not = and i1 %_12.not, %_16.not
  %1 = zext i1 %or.cond.not to i32
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select4 = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_13.1 = load i32, ptr %2, align 4, !noundef !37
  %_12.not.1 = icmp sge i32 %_13.1, %x
  %_16.not.1 = icmp sle i32 %_13.1, %y
  %or.cond.not.1 = and i1 %_12.not.1, %_16.not.1
  %3 = zext i1 %or.cond.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %1, %3
  %_0.i.i.i.1 = icmp slt i32 %spec.select4, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb7.1
  %_14.2 = zext nneg i32 %spec.select4 to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14.2
  %_13.2 = load i32, ptr %4, align 4, !noundef !37
  %_12.not.2 = icmp sge i32 %_13.2, %x
  %_16.not.2 = icmp sle i32 %_13.2, %y
  %or.cond.not.2 = and i1 %_12.not.2, %_16.not.2
  %5 = zext i1 %or.cond.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %5
  br label %bb6

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f680369731030c1161ba990112b9b67d) #24
  unreachable
}
