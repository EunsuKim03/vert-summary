define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_0.i.i.i9 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i9, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb7.1, %bb7.2, %start
  %mn.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %_13, %bb7 ], [ %_0.sroa.0.0.i.1, %bb7.1 ], [ %_0.sroa.0.0.i.2, %bb7.2 ]
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %_13, %bb7 ], [ %2, %bb7.1 ], [ %4, %bb7.2 ]
  %_17 = sub i32 %sum.sroa.0.0.lcssa, %mn.sroa.0.0.lcssa
  %_0 = mul i32 %_17, %mn.sroa.0.0.lcssa
  ret i32 %_0

bb7:                                              ; preds = %start
  %_13 = load i32, ptr %a, align 8, !noundef !37
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %1 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %_13.1 = load i32, ptr %1, align 4, !noundef !37
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %_13, i32 %_13.1)
  %2 = add i32 %_13.1, %_13
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb7.1
  %_14.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %3 = getelementptr inbounds nuw i32, ptr %a, i64 %_14.2
  %_13.2 = load i32, ptr %3, align 4, !noundef !37
  %_0.sroa.0.0.i.2 = tail call noundef i32 @llvm.smin.i32(i32 %_0.sroa.0.0.i.1, i32 %_13.2)
  %4 = add i32 %_13.2, %2
  br label %bb6

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4bd3d8b7149ab27e362f96f177cf9513) #24
  unreachable
}
