define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i7 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i7, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb7.1, %bb7.2, %start
  %res.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %res.sroa.0.1, %bb7 ], [ %res.sroa.0.1.1, %bb7.1 ], [ %res.sroa.0.1.2, %bb7.2 ]
  ret i32 %res.sroa.0.0.lcssa

bb7:                                              ; preds = %start
  %_11 = load i32, ptr %arr, align 8, !noundef !37
  %_10.not = icmp sgt i32 %_11, 1
  %1 = add i32 %_11, 1
  %res.sroa.0.1 = select i1 %_10.not, i32 1, i32 %1
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %2 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_11.1 = load i32, ptr %2, align 4, !noundef !37
  %_10.not.1 = icmp sgt i32 %_11.1, %res.sroa.0.1
  %3 = select i1 %_10.not.1, i32 0, i32 %_11.1
  %res.sroa.0.1.1 = add i32 %3, %res.sroa.0.1
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb7.1
  %_12.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_12.2
  %_11.2 = load i32, ptr %4, align 4, !noundef !37
  %_10.not.2 = icmp sgt i32 %_11.2, %res.sroa.0.1.1
  %5 = select i1 %_10.not.2, i32 0, i32 %_11.2
  %res.sroa.0.1.2 = add i32 %5, %res.sroa.0.1.1
  br label %bb6

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2a76bf74108da6c498e82b762f36b8e6) #24
  unreachable
}
