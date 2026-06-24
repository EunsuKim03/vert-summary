define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %bin.0, i64 noundef range(i64 0, 2305843009213693952) %bin.1) unnamed_addr #3 {
start:
  %_5 = add nsw i64 %bin.1, -1
  %_6.not = icmp eq i64 %bin.1, 0
  br i1 %_6.not, label %panic, label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds nuw i32, ptr %bin.0, i64 %_5
  %_4 = load i32, ptr %0, align 4, !range !1630, !noundef !37
  %_3 = icmp eq i32 %_4, 49
  br i1 %_3, label %bb28, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_5, i64 noundef %bin.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5e038110c12b6c668792afd25c9d028f) #24
  unreachable

bb3:                                              ; preds = %bb1
  %_11 = add nsw i64 %bin.1, -2
  %_0.i.i.i.i.not.not11 = icmp eq i64 %_11, 0
  br i1 %_0.i.i.i.i.not.not11, label %bb10, label %bb9.preheader

bb9.preheader:                                    ; preds = %bb3
  %iter.sroa.4.113 = add nsw i64 %bin.1, -3
  %_0.i1.i.i.i12 = add nsw i64 %bin.1, -3
  br label %bb9

bb9:                                              ; preds = %bb9.preheader, %bb25
  %iter.sroa.4.117 = phi i64 [ %iter.sroa.4.1, %bb25 ], [ %iter.sroa.4.113, %bb9.preheader ]
  %_0.i1.i.i.i16 = phi i64 [ %_0.i1.i.i.i, %bb25 ], [ %_0.i1.i.i.i12, %bb9.preheader ]
  %sum.sroa.0.015 = phi float [ %sum.sroa.0.1, %bb25 ], [ 0.000000e+00, %bb9.preheader ]
  %iter.sroa.4.014 = phi i64 [ %iter.sroa.4.117, %bb25 ], [ %_11, %bb9.preheader ]
  %_19 = icmp ult i64 %_0.i1.i.i.i16, %bin.1
  br i1 %_19, label %bb11, label %panic1

bb10:                                             ; preds = %bb25, %bb3
  %sum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb3 ], [ %sum.sroa.0.1, %bb25 ]
  %_28 = frem float %sum.sroa.0.0.lcssa, 1.000000e+01
  %_27 = fcmp oeq float %_28, 0.000000e+00
  %. = zext i1 %_27 to i32
  br label %bb28

bb28:                                             ; preds = %bb10, %bb1
  %_0.sroa.0.0 = phi i32 [ 0, %bb1 ], [ %., %bb10 ]
  ret i32 %_0.sroa.0.0

bb11:                                             ; preds = %bb9
  %1 = getelementptr inbounds nuw i32, ptr %bin.0, i64 %_0.i1.i.i.i16
  %_18 = load i32, ptr %1, align 4, !range !1630, !noundef !37
  %_17 = icmp eq i32 %_18, 49
  br i1 %_17, label %bb12, label %bb25

panic1:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_0.i1.i.i.i16, i64 noundef %bin.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_494bdbd4910fb993a74023edd9d3d418) #24
  unreachable

bb12:                                             ; preds = %bb11
  %pos_from_right = sub i64 %bin.1, %iter.sroa.4.014
  %_23 = and i64 %pos_from_right, 3
  switch i64 %_23, label %default.unreachable20 [
    i64 1, label %bb13
    i64 2, label %bb15
    i64 3, label %bb17
    i64 0, label %bb19
  ]

default.unreachable20:                            ; preds = %bb12
  unreachable

bb25:                                             ; preds = %bb13, %bb17, %bb19, %bb15, %bb11
  %sum.sroa.0.1 = phi float [ %2, %bb13 ], [ %3, %bb15 ], [ %4, %bb17 ], [ %5, %bb19 ], [ %sum.sroa.0.015, %bb11 ]
  %_0.i.i.i.i.not.not = icmp eq i64 %iter.sroa.4.117, 0
  %_0.i1.i.i.i = add i64 %iter.sroa.4.117, -1
  %iter.sroa.4.1 = tail call i64 @llvm.usub.sat.i64(i64 %iter.sroa.4.117, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb10, label %bb9

bb13:                                             ; preds = %bb12
  %2 = fadd float %sum.sroa.0.015, 2.000000e+00
  br label %bb25

bb15:                                             ; preds = %bb12
  %3 = fadd float %sum.sroa.0.015, 4.000000e+00
  br label %bb25

bb17:                                             ; preds = %bb12
  %4 = fadd float %sum.sroa.0.015, 8.000000e+00
  br label %bb25

bb19:                                             ; preds = %bb12
  %5 = fadd float %sum.sroa.0.015, 6.000000e+00
  br label %bb25
}
