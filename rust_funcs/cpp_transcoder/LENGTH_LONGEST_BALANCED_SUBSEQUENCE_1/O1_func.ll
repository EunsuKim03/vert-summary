define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %s.0, i64 noundef range(i64 0, 2305843009213693952) %s.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i9 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i9, label %bb5, label %bb6

bb5:                                              ; preds = %start, %bb13
  %spec.select13 = phi i32 [ %spec.select, %bb13 ], [ 1, %start ]
  %invalid_open_braces.sroa.0.012 = phi i32 [ %invalid_open_braces.sroa.0.1, %bb13 ], [ 0, %start ]
  %invalid_close_braces.sroa.0.011 = phi i32 [ %invalid_close_braces.sroa.0.1, %bb13 ], [ 0, %start ]
  %iter.sroa.0.010 = phi i32 [ %spec.select13, %bb13 ], [ 0, %start ]
  %_14 = zext nneg i32 %iter.sroa.0.010 to i64
  %_16 = icmp samesign ugt i64 %s.1, %_14
  br i1 %_16, label %bb7, label %panic

bb6.loopexit:                                     ; preds = %bb13
  %0 = add i32 %invalid_close_braces.sroa.0.1, %invalid_open_braces.sroa.0.1
  br label %bb6

bb6:                                              ; preds = %bb6.loopexit, %start
  %1 = phi i32 [ 0, %start ], [ %0, %bb6.loopexit ]
  %_0 = sub i32 %n, %1
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %2 = getelementptr inbounds nuw i32, ptr %s.0, i64 %_14
  %_13 = load i32, ptr %2, align 4, !range !1630, !noundef !37
  %_12 = icmp eq i32 %_13, 40
  br i1 %_12, label %bb8, label %bb9

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef %s.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1e79f9fbdeb8616ee8fffed9c1f21f00) #24
  unreachable

bb9:                                              ; preds = %bb7
  %_17 = icmp eq i32 %invalid_open_braces.sroa.0.012, 0
  br i1 %_17, label %bb10, label %bb11

bb8:                                              ; preds = %bb7
  %3 = add i32 %invalid_open_braces.sroa.0.012, 1
  br label %bb13

bb11:                                             ; preds = %bb9
  %4 = add i32 %invalid_open_braces.sroa.0.012, -1
  br label %bb13

bb10:                                             ; preds = %bb9
  %5 = add i32 %invalid_close_braces.sroa.0.011, 1
  br label %bb13

bb13:                                             ; preds = %bb11, %bb10, %bb8
  %invalid_close_braces.sroa.0.1 = phi i32 [ %invalid_close_braces.sroa.0.011, %bb8 ], [ %5, %bb10 ], [ %invalid_close_braces.sroa.0.011, %bb11 ]
  %invalid_open_braces.sroa.0.1 = phi i32 [ %3, %bb8 ], [ 0, %bb10 ], [ %4, %bb11 ]
  %_0.i.i.i = icmp slt i32 %spec.select13, %n
  %6 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select13, %6
  br i1 %_0.i.i.i, label %bb5, label %bb6.loopexit
}
