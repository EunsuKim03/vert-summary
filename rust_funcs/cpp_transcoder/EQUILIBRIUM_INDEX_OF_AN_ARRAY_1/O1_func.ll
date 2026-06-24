define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i20 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i20, label %bb5, label %bb9.preheader

bb9.preheader:                                    ; preds = %bb7, %start
  %sum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %start ], [ %5, %bb7 ]
  %_0.i.i.i1224 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i1224, label %bb11, label %bb17

bb5:                                              ; preds = %start, %bb7
  %spec.select23 = phi i32 [ %spec.select, %bb7 ], [ 1, %start ]
  %sum.sroa.0.022 = phi float [ %5, %bb7 ], [ 0.000000e+00, %start ]
  %iter.sroa.0.021 = phi i32 [ %spec.select23, %bb7 ], [ 0, %start ]
  %_13 = zext nneg i32 %iter.sroa.0.021 to i64
  %_15 = icmp samesign ugt i64 %arr.1, %_13
  br i1 %_15, label %bb7, label %panic4

bb11:                                             ; preds = %bb9.preheader, %bb16
  %spec.select1728 = phi i32 [ %spec.select17, %bb16 ], [ 1, %bb9.preheader ]
  %sum.sroa.0.127 = phi float [ %1, %bb16 ], [ %sum.sroa.0.0.lcssa, %bb9.preheader ]
  %leftsum.sroa.0.026 = phi float [ %2, %bb16 ], [ 0.000000e+00, %bb9.preheader ]
  %iter1.sroa.0.025 = phi i32 [ %spec.select1728, %bb16 ], [ 0, %bb9.preheader ]
  %_22 = zext nneg i32 %iter1.sroa.0.025 to i64
  %_24 = icmp samesign ugt i64 %arr.1, %_22
  br i1 %_24, label %bb13, label %panic

bb17:                                             ; preds = %bb16, %bb13, %bb9.preheader
  %i.sroa.0.0 = phi i32 [ -1, %bb9.preheader ], [ -1, %bb16 ], [ %iter1.sroa.0.025, %bb13 ]
  ret i32 %i.sroa.0.0

bb13:                                             ; preds = %bb11
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_22
  %_21 = load float, ptr %0, align 4, !noundef !37
  %1 = fsub float %sum.sroa.0.127, %_21
  %_25 = fcmp oeq float %leftsum.sroa.0.026, %1
  br i1 %_25, label %bb17, label %bb16

panic:                                            ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_22, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3c734b5d95c93ae0defc1b06948b1e70) #24
  unreachable

bb16:                                             ; preds = %bb13
  %2 = fadd float %leftsum.sroa.0.026, %_21
  %_0.i.i.i12 = icmp slt i32 %spec.select1728, %n
  %3 = zext i1 %_0.i.i.i12 to i32
  %spec.select17 = add nuw nsw i32 %spec.select1728, %3
  br i1 %_0.i.i.i12, label %bb11, label %bb17

bb7:                                              ; preds = %bb5
  %4 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_13
  %_12 = load float, ptr %4, align 4, !noundef !37
  %5 = fadd float %sum.sroa.0.022, %_12
  %_0.i.i.i = icmp slt i32 %spec.select23, %n
  %6 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select23, %6
  br i1 %_0.i.i.i, label %bb5, label %bb9.preheader

panic4:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_13, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fd4d4e0bc8dd673b80483533c39502d8) #24
  unreachable
}
