define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 4 captures(none) dereferenceable(40000) %arr, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_0.i.i.i16 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i16, label %bb5, label %bb6

bb5:                                              ; preds = %start, %bb19
  %spec.select21 = phi i32 [ %spec.select, %bb19 ], [ 1, %start ]
  %ans.sroa.0.020 = phi i32 [ %_0.sroa.0.0.i.i12, %bb19 ], [ -2147483648, %start ]
  %maxval.sroa.0.019 = phi i32 [ %spec.store.select, %bb19 ], [ 1, %start ]
  %minval.sroa.0.018 = phi i32 [ %minval.sroa.0.1, %bb19 ], [ 1, %start ]
  %iter.sroa.0.017 = phi i32 [ %spec.select21, %bb19 ], [ 0, %start ]
  %_14 = zext nneg i32 %iter.sroa.0.017 to i64
  %_15 = icmp samesign ult i32 %iter.sroa.0.017, 10000
  br i1 %_15, label %bb7, label %panic

bb6:                                              ; preds = %bb19, %start
  %ans.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i.i12, %bb19 ]
  ret i32 %ans.sroa.0.0.lcssa

bb7:                                              ; preds = %bb5
  %0 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14
  %_13 = load i32, ptr %0, align 4, !noundef !37
  %_12 = icmp sgt i32 %_13, 0
  br i1 %_12, label %bb9, label %bb13

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef 10000, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_602245a8c0c4b065880903093fc7db90) #24
  unreachable

bb13:                                             ; preds = %bb7
  %_18 = icmp eq i32 %_13, 0
  br i1 %_18, label %bb19, label %bb16

bb16:                                             ; preds = %bb13
  %1 = mul i32 %_13, %minval.sroa.0.018
  %2 = mul i32 %_13, %maxval.sroa.0.019
  br label %bb19

bb19:                                             ; preds = %bb13, %bb16, %bb9
  %minval.sroa.0.1 = phi i32 [ %_0.sroa.0.0.i.i13, %bb9 ], [ %2, %bb16 ], [ 1, %bb13 ]
  %maxval.sroa.0.1 = phi i32 [ %4, %bb9 ], [ %1, %bb16 ], [ 0, %bb13 ]
  %_0.sroa.0.0.i.i12 = tail call noundef i32 @llvm.smax.i32(i32 %maxval.sroa.0.1, i32 %ans.sroa.0.020)
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %maxval.sroa.0.1, i32 1)
  %_0.i.i.i = icmp slt i32 %spec.select21, %n
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select21, %3
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb9:                                              ; preds = %bb7
  %4 = mul i32 %_13, %maxval.sroa.0.019
  %_17 = mul i32 %_13, %minval.sroa.0.018
  %_0.sroa.0.0.i.i13 = tail call noundef range(i32 -2147483648, 2) i32 @llvm.smin.i32(i32 %_17, i32 1)
  br label %bb19
}
