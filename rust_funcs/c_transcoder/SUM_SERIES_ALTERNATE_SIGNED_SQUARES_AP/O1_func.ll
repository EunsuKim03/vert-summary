define noundef i32 @f_gold(i32 noundef %n, i64 %0) unnamed_addr #3 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_5 = shl i32 %n, 1
  %_0.i.i.i10 = icmp sgt i32 %_5, 0
  br i1 %_0.i.i.i10, label %bb8.peel, label %bb6

bb8.peel:                                         ; preds = %start
  %_14.peel = load i32, ptr %a, align 8, !noundef !37
  %_13.peel = mul i32 %_14.peel, %_14.peel
  %1 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %_18.peel23 = load i32, ptr %1, align 4, !noundef !37
  %_17.peel24 = mul i32 %_18.peel23, %_18.peel23
  %2 = sub i32 %_13.peel, %_17.peel24
  %_0.i.i.i.peel31 = icmp sgt i32 %_5, 2
  %spec.select.peel32 = select i1 %_0.i.i.i.peel31, i32 3, i32 2
  br i1 %_0.i.i.i.peel31, label %bb5, label %bb6

bb5:                                              ; preds = %bb8.peel, %bb13
  %spec.select13 = phi i32 [ %spec.select, %bb13 ], [ %spec.select.peel32, %bb8.peel ]
  %res.sroa.0.012 = phi i32 [ %res.sroa.0.1, %bb13 ], [ %2, %bb8.peel ]
  %iter.sroa.0.011 = phi i32 [ %spec.select13, %bb13 ], [ 2, %bb8.peel ]
  %3 = and i32 %iter.sroa.0.011, 1
  %_11 = icmp eq i32 %3, 0
  %_15 = zext nneg i32 %iter.sroa.0.011 to i64
  %_16 = icmp samesign ult i32 %iter.sroa.0.011, 2
  br i1 %_11, label %bb7, label %bb10

bb6:                                              ; preds = %bb8.peel, %bb13, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb8.peel ], [ %res.sroa.0.1, %bb13 ]
  ret i32 %res.sroa.0.0.lcssa

bb10:                                             ; preds = %bb5
  br i1 %_16, label %bb11, label %panic

bb7:                                              ; preds = %bb5
  br i1 %_16, label %bb8, label %panic2

bb11:                                             ; preds = %bb10
  %4 = getelementptr inbounds nuw i32, ptr %a, i64 %_15
  %_18 = load i32, ptr %4, align 4, !noundef !37
  %_17 = mul i32 %_18, %_18
  %5 = sub i32 %res.sroa.0.012, %_17
  br label %bb13

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c3a9b5b57c6ac84720354e0fe40857da) #24
  unreachable

bb13:                                             ; preds = %bb8, %bb11
  %res.sroa.0.1 = phi i32 [ %8, %bb8 ], [ %5, %bb11 ]
  %_0.i.i.i = icmp slt i32 %spec.select13, %_5
  %6 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select13, %6
  br i1 %_0.i.i.i, label %bb5, label %bb6, !llvm.loop !1630

bb8:                                              ; preds = %bb7
  %7 = getelementptr inbounds nuw i32, ptr %a, i64 %_15
  %_14 = load i32, ptr %7, align 4, !noundef !37
  %_13 = mul i32 %_14, %_14
  %8 = add i32 %_13, %res.sroa.0.012
  br label %bb13

panic2:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_705db24cb77cee2129f1cd5423e2b42f) #24
  unreachable
}
