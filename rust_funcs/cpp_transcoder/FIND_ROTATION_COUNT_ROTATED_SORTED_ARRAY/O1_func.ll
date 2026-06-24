define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_4.not = icmp eq i64 %arr.1, 0
  br i1 %_4.not, label %panic, label %bb1

bb1:                                              ; preds = %start
  %_0.i.i.i6 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i6, label %bb6.preheader, label %bb7

bb6.preheader:                                    ; preds = %bb1
  %0 = load float, ptr %arr.0, align 4, !noundef !37
  br label %bb6

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b7c28014acd9faf9fd5683fe5e083162) #24
  unreachable

bb6:                                              ; preds = %bb6.preheader, %bb8
  %spec.select10 = phi i32 [ %spec.select, %bb8 ], [ 1, %bb6.preheader ]
  %min_index.sroa.0.09 = phi i32 [ %min_index.sroa.0.1, %bb8 ], [ 0, %bb6.preheader ]
  %min.sroa.0.08 = phi float [ %min.sroa.0.1, %bb8 ], [ %0, %bb6.preheader ]
  %iter.sroa.0.07 = phi i32 [ %spec.select10, %bb8 ], [ 0, %bb6.preheader ]
  %_15 = zext nneg i32 %iter.sroa.0.07 to i64
  %_16 = icmp samesign ugt i64 %arr.1, %_15
  br i1 %_16, label %bb8, label %panic1

bb7:                                              ; preds = %bb8, %bb1
  %min_index.sroa.0.0.lcssa = phi i32 [ 0, %bb1 ], [ %min_index.sroa.0.1, %bb8 ]
  ret i32 %min_index.sroa.0.0.lcssa

bb8:                                              ; preds = %bb6
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_15
  %_14 = load float, ptr %1, align 4, !noundef !37
  %_12 = fcmp ogt float %min.sroa.0.08, %_14
  %min.sroa.0.1 = select i1 %_12, float %_14, float %min.sroa.0.08
  %min_index.sroa.0.1 = select i1 %_12, i32 %iter.sroa.0.07, i32 %min_index.sroa.0.09
  %_0.i.i.i = icmp slt i32 %spec.select10, %n
  %2 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select10, %2
  br i1 %_0.i.i.i, label %bb6, label %bb7

panic1:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f77dfb3f2a8be0aee7623674f246f789) #24
  unreachable
}
