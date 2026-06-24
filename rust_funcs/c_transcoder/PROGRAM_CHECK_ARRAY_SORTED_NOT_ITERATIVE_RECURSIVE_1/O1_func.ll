define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 {
start:
  %switch = icmp ult i32 %n, 2
  br i1 %switch, label %bb14, label %bb3

bb3:                                              ; preds = %start
  %_7 = sext i32 %n to i64
  br label %bb5

bb5:                                              ; preds = %bb11, %bb3
  %iter.sroa.0.0 = phi i64 [ 1, %bb3 ], [ %spec.select, %bb11 ]
  %_0.i.i.i = icmp ult i64 %iter.sroa.0.0, %_7
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %iter.sroa.0.0, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb8, label %bb14

bb8:                                              ; preds = %bb5
  %_15 = add i64 %iter.sroa.0.0, -1
  %_17 = icmp ult i64 %_15, %arr.1
  br i1 %_17, label %bb10, label %panic

bb14:                                             ; preds = %bb11, %bb5, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb5 ], [ 0, %bb11 ]
  ret i32 %_0.sroa.0.0

bb10:                                             ; preds = %bb8
  %_19 = icmp ult i64 %iter.sroa.0.0, %arr.1
  br i1 %_19, label %bb11, label %panic1

panic:                                            ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_82852f1eb202d1980b442d1ad28c4ad6) #24
  unreachable

bb11:                                             ; preds = %bb10
  %0 = getelementptr inbounds nuw float, ptr %arr.0, i64 %_15
  %_14 = load float, ptr %0, align 4, !noundef !37
  %1 = getelementptr inbounds nuw float, ptr %arr.0, i64 %iter.sroa.0.0
  %_18 = load float, ptr %1, align 4, !noundef !37
  %_13 = fcmp ogt float %_14, %_18
  br i1 %_13, label %bb14, label %bb5

panic1:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.0, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0583203e8485360543f7c91248432211) #24
  unreachable
}
