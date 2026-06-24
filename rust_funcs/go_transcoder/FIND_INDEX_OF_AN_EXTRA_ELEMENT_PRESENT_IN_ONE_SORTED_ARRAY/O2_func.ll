define noundef range(i32 -2147483648, 3) i32 @f_gold(i64 %0, i64 %1, i32 noundef %n) unnamed_addr #1 {
start:
  %arr1.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr1.sroa.2.0.extract.trunc = trunc nuw i64 %arr1.sroa.2.0.extract.shift to i32
  %2 = bitcast i32 %arr1.sroa.2.0.extract.trunc to float
  %arr2.sroa.2.0.extract.shift = lshr i64 %1, 32
  %arr2.sroa.2.0.extract.trunc = trunc nuw i64 %arr2.sroa.2.0.extract.shift to i32
  %3 = bitcast i32 %arr2.sroa.2.0.extract.trunc to float
  %exitcond.not = icmp slt i32 %n, 1
  br i1 %exitcond.not, label %bb6, label %bb7

bb7:                                              ; preds = %start
  %arr2.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %4 = bitcast i32 %arr2.sroa.0.0.extract.trunc to float
  %arr1.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %5 = bitcast i32 %arr1.sroa.0.0.extract.trunc to float
  %_5 = fcmp une float %5, %4
  br i1 %_5, label %bb6, label %bb1.1

bb6:                                              ; preds = %bb1.2, %bb1.1, %bb7, %start
  %i.sroa.0.0 = phi i32 [ %n, %start ], [ 0, %bb7 ], [ 1, %bb1.1 ], [ 2, %bb1.2 ]
  ret i32 %i.sroa.0.0

bb1.1:                                            ; preds = %bb7
  %exitcond.1.not = icmp eq i32 %n, 1
  %_5.1 = fcmp une float %2, %3
  %or.cond = select i1 %exitcond.1.not, i1 true, i1 %_5.1
  br i1 %or.cond, label %bb6, label %bb1.2

bb1.2:                                            ; preds = %bb1.1
  %exitcond.2.not = icmp eq i32 %n, 2
  br i1 %exitcond.2.not, label %bb6, label %panic

panic:                                            ; preds = %bb1.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bd94272881185126da3e3498a19d69ed) #18
  unreachable
}
