define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  br label %bb2

bb2:                                              ; preds = %bb7, %start
  %iter.sroa.0.0 = phi i32 [ 0, %start ], [ %spec.select5, %bb7 ]
  %best.sroa.0.0 = phi i32 [ 0, %start ], [ %best.sroa.0.2, %bb7 ]
  %times.sroa.0.0 = phi i32 [ 0, %start ], [ %times.sroa.0.1, %bb7 ]
  %_0.i.i.i = icmp slt i32 %iter.sroa.0.0, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select5 = add nuw nsw i32 %iter.sroa.0.0, %1
  br i1 %_0.i.i.i, label %bb5, label %bb16

bb5:                                              ; preds = %bb2
  %_14 = zext nneg i32 %iter.sroa.0.0 to i64
  %_15 = icmp samesign ult i32 %iter.sroa.0.0, 2
  br i1 %_15, label %bb7, label %panic

bb16:                                             ; preds = %bb7, %bb2
  %best.sroa.0.1 = phi i32 [ %best.sroa.0.0, %bb2 ], [ %best.sroa.0.2, %bb7 ]
  ret i32 %best.sroa.0.1

bb7:                                              ; preds = %bb5
  %2 = getelementptr inbounds nuw i32, ptr %a, i64 %_14
  %_13 = load i32, ptr %2, align 4, !noundef !37
  %_12 = icmp sgt i32 %_13, %best.sroa.0.0
  %3 = add i32 %times.sroa.0.0, 1
  %_17.not = icmp eq i32 %iter.sroa.0.0, 0
  %spec.select = select i1 %_17.not, i32 %times.sroa.0.0, i32 1
  %best.sroa.0.2 = tail call i32 @llvm.smax.i32(i32 %_13, i32 %best.sroa.0.0)
  %times.sroa.0.1 = select i1 %_12, i32 %spec.select, i32 %3
  %_18.not = icmp slt i32 %times.sroa.0.1, %k
  br i1 %_18.not, label %bb2, label %bb16

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a0ec31d67e4dcc4deccacfeb1011014) #24
  unreachable
}
