define noundef i32 @f_gold(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %arr, i32 noundef %n, float noundef %x) unnamed_addr #3 {
start:
  br label %bb2

bb2:                                              ; preds = %bb7, %start
  %iter.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select, %bb7 ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %0 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0, %0
  br i1 %_0.i.i.i, label %bb5, label %bb10

bb5:                                              ; preds = %bb2
  %_12 = zext nneg i32 %iter.sroa.0.0 to i64
  %_13 = icmp samesign ult i32 %iter.sroa.0.0, 2
  br i1 %_13, label %bb7, label %panic

bb10:                                             ; preds = %bb7, %bb2
  %i.sroa.0.0 = phi i32 [ -1, %bb2 ], [ %iter.sroa.0.0, %bb7 ]
  ret i32 %i.sroa.0.0

bb7:                                              ; preds = %bb5
  %1 = getelementptr inbounds nuw float, ptr %arr, i64 %_12
  %_11 = load float, ptr %1, align 4, !noundef !37
  %_10 = fcmp oeq float %_11, %x
  br i1 %_10, label %bb10, label %bb2

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8cc61879fec58dc62de52ece52e79931) #24
  unreachable
}
