define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %m, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %arr2 = alloca [8 x i8], align 8
  %arr1 = alloca [8 x i8], align 8
  store i64 %0, ptr %arr1, align 8
  store i64 %1, ptr %arr2, align 8
  %2 = add i32 %n, -1
  %_817 = icmp sgt i32 %m, 0
  %_1018 = icmp sgt i32 %2, -1
  %or.cond19 = and i1 %_817, %_1018
  br i1 %or.cond19, label %bb3, label %bb16

bb16:                                             ; preds = %bb13, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1, %bb13 ]
  ret i32 %count.sroa.0.0.lcssa

bb3:                                              ; preds = %start, %bb13
  %r.sroa.0.022 = phi i32 [ %r.sroa.0.1, %bb13 ], [ %2, %start ]
  %l.sroa.0.021 = phi i32 [ %l.sroa.0.1, %bb13 ], [ 0, %start ]
  %count.sroa.0.020 = phi i32 [ %count.sroa.0.1, %bb13 ], [ 0, %start ]
  %_15 = sext i32 %l.sroa.0.021 to i64
  %_17 = icmp ult i32 %l.sroa.0.021, 2
  br i1 %_17, label %bb4, label %panic

bb4:                                              ; preds = %bb3
  %_19 = zext nneg i32 %r.sroa.0.022 to i64
  %_21 = icmp samesign ult i32 %r.sroa.0.022, 2
  br i1 %_21, label %bb5, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cef553a4c40b273bd78b9cab4cb161a0) #18
  unreachable

bb5:                                              ; preds = %bb4
  %3 = getelementptr inbounds nuw i32, ptr %arr1, i64 %_15
  %_14 = load i32, ptr %3, align 4, !noundef !23
  %4 = getelementptr inbounds nuw i32, ptr %arr2, i64 %_19
  %_18 = load i32, ptr %4, align 4, !noundef !23
  %_13 = add i32 %_18, %_14
  %_12 = icmp eq i32 %_13, %x
  br i1 %_12, label %bb6, label %bb9

panic1:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_df96962c0c1739d9fdf3737911a2baad) #18
  unreachable

bb6:                                              ; preds = %bb5
  %5 = add nuw nsw i32 %l.sroa.0.021, 1
  %6 = add nsw i32 %r.sroa.0.022, -1
  %7 = add i32 %count.sroa.0.020, 1
  br label %bb13

bb9:                                              ; preds = %bb5
  %_22 = icmp slt i32 %_13, %x
  br i1 %_22, label %bb10, label %bb11

bb11:                                             ; preds = %bb9
  %8 = add nsw i32 %r.sroa.0.022, -1
  br label %bb13

bb10:                                             ; preds = %bb9
  %9 = add nuw nsw i32 %l.sroa.0.021, 1
  br label %bb13

bb13:                                             ; preds = %bb11, %bb10, %bb6
  %count.sroa.0.1 = phi i32 [ %7, %bb6 ], [ %count.sroa.0.020, %bb10 ], [ %count.sroa.0.020, %bb11 ]
  %l.sroa.0.1 = phi i32 [ %5, %bb6 ], [ %9, %bb10 ], [ %l.sroa.0.021, %bb11 ]
  %r.sroa.0.1 = phi i32 [ %6, %bb6 ], [ %r.sroa.0.022, %bb10 ], [ %8, %bb11 ]
  %_8 = icmp samesign ult i32 %l.sroa.0.1, %m
  %_10 = icmp sgt i32 %r.sroa.0.1, -1
  %or.cond = select i1 %_8, i1 %_10, i1 false
  br i1 %or.cond, label %bb3, label %bb16
}
