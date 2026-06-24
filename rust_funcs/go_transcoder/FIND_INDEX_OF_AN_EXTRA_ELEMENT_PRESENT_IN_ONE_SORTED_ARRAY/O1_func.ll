define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n) unnamed_addr #3 {
start:
  %arr2 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 8
  store i64 %0, ptr %arr1, align 8
  store i64 %1, ptr %arr2, align 8
  br label %bb2

bb2:                                              ; preds = %bb7, %start
  %iter.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select, %bb7 ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %2 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0, %2
  br i1 %_0.i.i.i, label %bb5, label %bb11

bb5:                                              ; preds = %bb2
  %_12 = zext nneg i32 %iter.sroa.0.0 to i64
  %_13 = icmp samesign ult i32 %iter.sroa.0.0, 2
  br i1 %_13, label %bb7, label %panic

bb11:                                             ; preds = %bb7, %bb2
  %i.sroa.0.0 = phi i32 [ %n, %bb2 ], [ %iter.sroa.0.0, %bb7 ]
  ret i32 %i.sroa.0.0

bb7:                                              ; preds = %bb5
  %3 = getelementptr inbounds nuw float, ptr %arr1, i64 %_12
  %_11 = load float, ptr %3, align 4, !noundef !37
  %4 = getelementptr inbounds nuw float, ptr %arr2, i64 %_12
  %_14 = load float, ptr %4, align 4, !noundef !37
  %_10 = fcmp une float %_11, %_14
  br i1 %_10, label %bb11, label %bb2

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bd94272881185126da3e3498a19d69ed) #24
  unreachable
}
