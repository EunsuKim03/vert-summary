define void @f_gold(ptr noalias noundef nonnull writeonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i3 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i3, label %bb5, label %bb6

bb5:                                              ; preds = %start, %bb7
  %spec.select5 = phi i32 [ %spec.select, %bb7 ], [ 1, %start ]
  %iter.sroa.0.04 = phi i32 [ %spec.select5, %bb7 ], [ 0, %start ]
  %_11 = zext nneg i32 %iter.sroa.0.04 to i64
  %_13 = icmp samesign ugt i64 %arr.1, %_11
  br i1 %_13, label %bb7, label %panic

bb6:                                              ; preds = %bb7, %start
  ret void

bb7:                                              ; preds = %bb5
  %_10 = add nuw i32 %iter.sroa.0.04, 1
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_11
  %1 = sitofp i32 %_10 to float
  store float %1, ptr %0, align 4
  %_0.i.i.i = icmp slt i32 %spec.select5, %n
  %2 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select5, %2
  br i1 %_0.i.i.i, label %bb5, label %bb6

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c0e7c54de9d361136dcb9123f37c94fd) #24
  unreachable
}
