define noundef range(i32 -1073741824, 1073741824) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i7 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i7, label %bb5, label %bb6

bb5:                                              ; preds = %start, %bb7
  %spec.select411 = phi i32 [ %spec.select4, %bb7 ], [ 1, %start ]
  %last.sroa.0.010 = phi i32 [ %_13, %bb7 ], [ 32, %start ]
  %res.sroa.0.09 = phi i32 [ %spec.select, %bb7 ], [ 0, %start ]
  %iter.sroa.0.08 = phi i32 [ %spec.select411, %bb7 ], [ 0, %start ]
  %_14 = zext nneg i32 %iter.sroa.0.08 to i64
  %_16 = icmp samesign ugt i64 %str.1, %_14
  br i1 %_16, label %bb7, label %panic

bb6.loopexit:                                     ; preds = %bb7
  %0 = sdiv i32 %spec.select, 2
  br label %bb6

bb6:                                              ; preds = %bb6.loopexit, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %0, %bb6.loopexit ]
  ret i32 %res.sroa.0.0.lcssa

bb7:                                              ; preds = %bb5
  %1 = getelementptr inbounds nuw i32, ptr %str.0, i64 %_14
  %_13 = load i32, ptr %1, align 4, !range !1630, !noundef !37
  %_12.not = icmp ne i32 %last.sroa.0.010, %_13
  %2 = zext i1 %_12.not to i32
  %spec.select = add i32 %res.sroa.0.09, %2
  %_0.i.i.i = icmp slt i32 %spec.select411, %n
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select4 = add nuw nsw i32 %spec.select411, %3
  br i1 %_0.i.i.i, label %bb5, label %bb6.loopexit

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef %str.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b4febcbffa2b604016f24cd2d90fd1c2) #24
  unreachable
}
