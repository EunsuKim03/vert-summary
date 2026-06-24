define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %bin.0, i64 noundef range(i64 0, 2305843009213693952) %bin.1) unnamed_addr #1 {
start:
  %_5 = add nsw i64 %bin.1, -1
  %_6.not = icmp eq i64 %bin.1, 0
  br i1 %_6.not, label %panic, label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds nuw i32, ptr %bin.0, i64 %_5
  %_4 = load i32, ptr %0, align 4, !range !1031, !noundef !23
  %_3 = icmp eq i32 %_4, 49
  br i1 %_3, label %bb22, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_5, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5e038110c12b6c668792afd25c9d028f) #18
  unreachable

bb3:                                              ; preds = %bb1
  %1 = add nsw i64 %bin.1, -2
  %_23.not11 = icmp eq i64 %1, 0
  br i1 %_23.not11, label %bb24, label %bb23.preheader

bb23.preheader:                                   ; preds = %bb3
  %_13.first_iter = icmp samesign ugt i64 %bin.1, 2
  br label %bb23

bb24:                                             ; preds = %bb19, %bb3
  %sum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb3 ], [ %sum.sroa.0.1, %bb19 ]
  %_22 = frem float %sum.sroa.0.0.lcssa, 1.000000e+01
  %_21 = fcmp oeq float %_22, 0.000000e+00
  %. = zext i1 %_21 to i32
  br label %bb22

bb23:                                             ; preds = %bb23.preheader, %bb19
  %sum.sroa.0.013 = phi float [ %sum.sroa.0.1, %bb19 ], [ 0.000000e+00, %bb23.preheader ]
  %iter.sroa.0.012 = phi i64 [ %_24, %bb19 ], [ %1, %bb23.preheader ]
  %_24 = add nsw i64 %iter.sroa.0.012, -1
  br i1 %_13.first_iter, label %bb5, label %panic1

bb22:                                             ; preds = %bb24, %bb1
  %_0.sroa.0.0 = phi i32 [ 0, %bb1 ], [ %., %bb24 ]
  ret i32 %_0.sroa.0.0

bb5:                                              ; preds = %bb23
  %2 = getelementptr inbounds nuw i32, ptr %bin.0, i64 %_24
  %_12 = load i32, ptr %2, align 4, !range !1031, !noundef !23
  %_11 = icmp eq i32 %_12, 49
  br i1 %_11, label %bb6, label %bb19

panic1:                                           ; preds = %bb23
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_24, i64 noundef %bin.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_494bdbd4910fb993a74023edd9d3d418) #18
  unreachable

bb6:                                              ; preds = %bb5
  %pos_from_right = sub i64 %bin.1, %iter.sroa.0.012
  %_17 = and i64 %pos_from_right, 3
  switch i64 %_17, label %default.unreachable17 [
    i64 1, label %bb7
    i64 2, label %bb9
    i64 3, label %bb11
    i64 0, label %bb13
  ]

default.unreachable17:                            ; preds = %bb6
  unreachable

bb19:                                             ; preds = %bb7, %bb11, %bb13, %bb9, %bb5
  %sum.sroa.0.1 = phi float [ %3, %bb7 ], [ %4, %bb9 ], [ %5, %bb11 ], [ %6, %bb13 ], [ %sum.sroa.0.013, %bb5 ]
  %_23.not = icmp eq i64 %_24, 0
  br i1 %_23.not, label %bb24, label %bb23

bb7:                                              ; preds = %bb6
  %3 = fadd float %sum.sroa.0.013, 2.000000e+00
  br label %bb19

bb9:                                              ; preds = %bb6
  %4 = fadd float %sum.sroa.0.013, 4.000000e+00
  br label %bb19

bb11:                                             ; preds = %bb6
  %5 = fadd float %sum.sroa.0.013, 8.000000e+00
  br label %bb19

bb13:                                             ; preds = %bb6
  %6 = fadd float %sum.sroa.0.013, 6.000000e+00
  br label %bb19
}
