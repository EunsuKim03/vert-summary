define noundef range(i32 -2147483648, 361) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_2523 = icmp sgt i32 %n, 0
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  %l.sroa.0.1.lcssa.sroa.gep53 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  br i1 %_2523, label %bb9.preheader, label %bb10

bb9.preheader:                                    ; preds = %start
  %_1017 = icmp slt i32 %1, 180
  br i1 %_1017, label %bb7, label %bb7.loopexit

bb10:                                             ; preds = %bb7, %bb7.1, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 360, %start ], [ %_0.sroa.0.0.i, %bb7 ], [ %_0.sroa.0.0.i.1, %bb7.1 ]
  ret i32 %ans.sroa.0.0.lcssa

panic:                                            ; preds = %bb7.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9102ad4e2ddcccc41523ce06867f21d3) #18
  unreachable

bb7.loopexit:                                     ; preds = %bb9.preheader
  %_15.neg = shl nuw i32 %1, 1
  %4 = add i32 %_15.neg, -360
  %_0.sroa.0.0.i10 = tail call noundef i32 @llvm.smin.i32(i32 %4, i32 360)
  br label %bb7

bb7:                                              ; preds = %bb7.loopexit, %bb9.preheader
  %sum.sroa.0.1.lcssa = phi i32 [ %1, %bb9.preheader ], [ 0, %bb7.loopexit ]
  %l.sroa.0.1.lcssa.sroa.phi = phi ptr [ %arr, %bb9.preheader ], [ %l.sroa.0.1.lcssa.sroa.gep53, %bb7.loopexit ]
  %l.sroa.0.1.lcssa = phi i64 [ 1, %bb9.preheader ], [ 2, %bb7.loopexit ]
  %ans.sroa.0.1.lcssa = phi i32 [ 360, %bb9.preheader ], [ %_0.sroa.0.0.i10, %bb7.loopexit ]
  %_23 = sub i32 180, %sum.sroa.0.1.lcssa
  %_34 = icmp slt i32 %_23, 0
  %_23.neg = add nsw i32 %sum.sroa.0.1.lcssa, 2147483468
  %_22.sroa.0.0 = select i1 %_34, i32 %_23.neg, i32 %_23
  %_21 = shl i32 %_22.sroa.0.0, 1
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %_21, i32 %ans.sroa.0.1.lcssa)
  %exitcond33.not = icmp eq i32 %n, 1
  br i1 %exitcond33.not, label %bb10, label %bb9.1

bb9.1:                                            ; preds = %bb7
  %5 = add i32 %sum.sroa.0.1.lcssa, %3
  %_1017.1 = icmp sgt i32 %5, 179
  br i1 %_1017.1, label %bb6.1, label %bb7.1

bb6.1:                                            ; preds = %bb9.1
  %_15.neg.1 = shl nuw i32 %5, 1
  %6 = add i32 %_15.neg.1, -360
  %_0.sroa.0.0.i10.1 = tail call noundef i32 @llvm.smin.i32(i32 %6, i32 %_0.sroa.0.0.i)
  %_17.1 = load i32, ptr %l.sroa.0.1.lcssa.sroa.phi, align 4, !noundef !23
  %7 = sub i32 %5, %_17.1
  %_10.1 = icmp sgt i32 %7, 179
  br i1 %_10.1, label %bb4.1.1, label %bb7.1

bb4.1.1:                                          ; preds = %bb6.1
  br i1 %_1017, label %bb6.1.1, label %panic1

bb6.1.1:                                          ; preds = %bb4.1.1
  %_15.neg.1.1 = shl nuw i32 %7, 1
  %8 = add i32 %_15.neg.1.1, -360
  %_0.sroa.0.0.i10.1.1 = tail call noundef i32 @llvm.smin.i32(i32 %8, i32 %_0.sroa.0.0.i10.1)
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %l.sroa.0.1.lcssa
  %_17.1.1 = load i32, ptr %9, align 4, !noundef !23
  %10 = sub i32 %7, %_17.1.1
  %_10.1.1 = icmp sgt i32 %10, 179
  br i1 %_10.1.1, label %panic1, label %bb7.1

bb7.1:                                            ; preds = %bb6.1, %bb6.1.1, %bb9.1
  %sum.sroa.0.1.lcssa.1 = phi i32 [ %5, %bb9.1 ], [ %7, %bb6.1 ], [ %10, %bb6.1.1 ]
  %ans.sroa.0.1.lcssa.1 = phi i32 [ %_0.sroa.0.0.i, %bb9.1 ], [ %_0.sroa.0.0.i10.1, %bb6.1 ], [ %_0.sroa.0.0.i10.1.1, %bb6.1.1 ]
  %_23.1 = sub i32 180, %sum.sroa.0.1.lcssa.1
  %_34.1 = icmp slt i32 %_23.1, 0
  %_23.neg.1 = add nsw i32 %sum.sroa.0.1.lcssa.1, 2147483468
  %_22.sroa.0.0.1 = select i1 %_34.1, i32 %_23.neg.1, i32 %_23.1
  %_21.1 = shl i32 %_22.sroa.0.0.1, 1
  %_0.sroa.0.0.i.1 = tail call noundef i32 @llvm.smin.i32(i32 %_21.1, i32 %ans.sroa.0.1.lcssa.1)
  %exitcond33.1.not = icmp eq i32 %n, 2
  br i1 %exitcond33.1.not, label %bb10, label %panic

panic1:                                           ; preds = %bb6.1.1, %bb4.1.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_053dcd8a6fd7a249eb4c2ce4acfda30d) #18
  unreachable
}
