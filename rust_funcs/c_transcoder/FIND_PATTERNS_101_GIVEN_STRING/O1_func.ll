define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1) unnamed_addr #3 {
start:
  switch i64 %str.1, label %bb4 [
    i64 0, label %panic
    i64 1, label %bb19
  ]

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_558d15100e9f44fd082272b0ba6c6ff4) #24
  unreachable

bb19:                                             ; preds = %bb18, %start
  %counter.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %counter.sroa.0.1, %bb18 ]
  ret i32 %counter.sroa.0.0.lcssa

bb4:                                              ; preds = %start, %bb18
  %counter.sroa.0.022 = phi i32 [ %counter.sroa.0.1, %bb18 ], [ 0, %start ]
  %i.sroa.0.021 = phi i64 [ %5, %bb18 ], [ 1, %start ]
  %last.sroa.0.0.in20 = phi ptr [ %4, %bb18 ], [ %str.0, %start ]
  %last.sroa.0.0 = load i32, ptr %last.sroa.0.0.in20, align 4, !range !1630, !noundef !37
  %0 = getelementptr inbounds nuw i32, ptr %str.0, i64 %i.sroa.0.021
  %_8 = load i32, ptr %0, align 4, !range !1630, !noundef !37
  %_7 = icmp eq i32 %_8, 48
  %_11 = icmp eq i32 %last.sroa.0.0, 49
  %or.cond = and i1 %_11, %_7
  br i1 %or.cond, label %bb7.preheader, label %bb17

bb7.preheader:                                    ; preds = %bb4
  %_1516 = icmp ult i64 %i.sroa.0.021, %str.1
  br i1 %_1516, label %bb8, label %panic2

bb17:                                             ; preds = %bb8, %bb12, %bb4
  %i.sroa.0.1 = phi i64 [ %i.sroa.0.217, %bb12 ], [ %i.sroa.0.021, %bb4 ], [ %i.sroa.0.217, %bb8 ]
  %counter.sroa.0.1 = phi i32 [ %3, %bb12 ], [ %counter.sroa.0.022, %bb4 ], [ %counter.sroa.0.022, %bb8 ]
  %_22 = icmp ult i64 %i.sroa.0.1, %str.1
  br i1 %_22, label %bb18, label %panic4

bb8:                                              ; preds = %bb7.preheader, %bb9
  %i.sroa.0.217 = phi i64 [ %2, %bb9 ], [ %i.sroa.0.021, %bb7.preheader ]
  %1 = getelementptr inbounds nuw i32, ptr %str.0, i64 %i.sroa.0.217
  %_13 = load i32, ptr %1, align 4, !range !1630, !noundef !37
  switch i32 %_13, label %bb17 [
    i32 48, label %bb9
    i32 49, label %bb12
  ]

panic2:                                           ; preds = %bb7.preheader, %bb9
  %i.sroa.0.2.lcssa = phi i64 [ %str.1, %bb9 ], [ %i.sroa.0.021, %bb7.preheader ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.2.lcssa, i64 noundef %str.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c3896cd4890585e857b24e82b89d3368) #24
  unreachable

bb9:                                              ; preds = %bb8
  %2 = add i64 %i.sroa.0.217, 1
  %exitcond.not = icmp eq i64 %2, %str.1
  br i1 %exitcond.not, label %panic2, label %bb8

bb12:                                             ; preds = %bb8
  %3 = add i32 %counter.sroa.0.022, 1
  br label %bb17

bb18:                                             ; preds = %bb17
  %4 = getelementptr inbounds nuw i32, ptr %str.0, i64 %i.sroa.0.1
  %5 = add nuw nsw i64 %i.sroa.0.1, 1
  %_5 = icmp ult i64 %5, %str.1
  br i1 %_5, label %bb4, label %bb19

panic4:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %i.sroa.0.1, i64 noundef %str.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9d15ed37cad1dba1314da640719bb96a) #24
  unreachable
}
