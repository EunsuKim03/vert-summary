define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str1.0, i64 noundef range(i64 0, 2305843009213693952) %str1.1, ptr noalias noundef nonnull readonly align 4 captures(none) %str2.0, i64 noundef range(i64 0, 2305843009213693952) %str2.1, i32 noundef %m, i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i9 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i9, label %bb5, label %bb6

bb5:                                              ; preds = %start, %bb8
  %spec.select512 = phi i32 [ %spec.select5, %bb8 ], [ 1, %start ]
  %j.sroa.0.011 = phi i64 [ %spec.select, %bb8 ], [ 0, %start ]
  %iter.sroa.0.010 = phi i32 [ %spec.select512, %bb8 ], [ 0, %start ]
  %_17 = icmp samesign ult i64 %j.sroa.0.011, %str1.1
  br i1 %_17, label %bb7, label %panic

bb6:                                              ; preds = %bb8, %start
  %j.sroa.0.0.lcssa = phi i64 [ 0, %start ], [ %spec.select, %bb8 ]
  %_23 = sext i32 %m to i64
  %_22 = icmp eq i64 %j.sroa.0.0.lcssa, %_23
  %. = zext i1 %_22 to i32
  ret i32 %.

bb7:                                              ; preds = %bb5
  %_19 = zext nneg i32 %iter.sroa.0.010 to i64
  %_21 = icmp samesign ugt i64 %str2.1, %_19
  br i1 %_21, label %bb8, label %panic1

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %j.sroa.0.011, i64 noundef %str1.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_df0d28f8e212e7c20118b4eb363d01dc) #24
  unreachable

bb8:                                              ; preds = %bb7
  %0 = getelementptr inbounds nuw i32, ptr %str1.0, i64 %j.sroa.0.011
  %_14 = load i32, ptr %0, align 4, !range !1630, !noundef !37
  %1 = getelementptr inbounds nuw i32, ptr %str2.0, i64 %_19
  %_18 = load i32, ptr %1, align 4, !range !1630, !noundef !37
  %_13 = icmp eq i32 %_14, %_18
  %2 = zext i1 %_13 to i64
  %spec.select = add nuw nsw i64 %j.sroa.0.011, %2
  %_0.i.i.i = icmp slt i32 %spec.select512, %n
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select5 = add nuw nsw i32 %spec.select512, %3
  br i1 %_0.i.i.i, label %bb5, label %bb6

panic1:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef %str2.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3b5e12df789008d7c3513d00f6718d7c) #24
  unreachable
}
