define noundef i32 @f_gold(i32 noundef %dist) unnamed_addr #3 {
start:
  %count = alloca [16 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %count)
  store i32 1, ptr %count, align 4
  %0 = getelementptr inbounds nuw i8, ptr %count, i64 4
  store i32 1, ptr %0, align 4
  %1 = getelementptr inbounds nuw i8, ptr %count, i64 8
  store i32 2, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %count, i64 12
  store i32 0, ptr %2, align 4
  %_0.i.not.i.i25 = icmp slt i32 %dist, 3
  br i1 %_0.i.not.i.i25, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %.not = icmp eq i32 %dist, 3
  %iter.sroa.7.131 = zext i1 %.not to i8
  %_0.i3.i.i26.not = icmp eq i32 %dist, 3
  %iter.sroa.0.130 = select i1 %_0.i3.i.i26.not, i32 3, i32 4
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb11
  %_0.sroa.3.0.i.i34 = phi i32 [ 3, %bb6.lr.ph ], [ %_0.sroa.3.0.i.i, %bb11 ]
  %iter.sroa.7.133 = phi i8 [ %iter.sroa.7.131, %bb6.lr.ph ], [ %iter.sroa.7.1, %bb11 ]
  %iter.sroa.0.132 = phi i32 [ %iter.sroa.0.130, %bb6.lr.ph ], [ %iter.sroa.0.1, %bb11 ]
  %_13 = add i32 %_0.sroa.3.0.i.i34, -1
  %_12 = sext i32 %_13 to i64
  %_14 = icmp ult i32 %_13, 4
  br i1 %_14, label %bb8, label %panic1

bb7:                                              ; preds = %bb11, %start
  %_25 = sext i32 %dist to i64
  %_26 = icmp ult i32 %dist, 4
  br i1 %_26, label %bb12, label %panic

bb12:                                             ; preds = %bb7
  %3 = getelementptr inbounds nuw i32, ptr %count, i64 %_25
  %_0 = load i32, ptr %3, align 4, !noundef !37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %count)
  ret i32 %_0

panic:                                            ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_25, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a1532442f12c3cdc3a36a61fe394730e) #24
  unreachable

bb8:                                              ; preds = %bb6
  %_17 = add nsw i32 %_0.sroa.3.0.i.i34, -2
  %_16 = sext i32 %_17 to i64
  %_18 = icmp ult i32 %_17, 4
  br i1 %_18, label %bb9, label %panic2

panic1:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ab9634c9265024aa97d2f12978cb09a8) #24
  unreachable

bb9:                                              ; preds = %bb8
  %4 = getelementptr inbounds nuw i32, ptr %count, i64 %_12
  %_11 = load i32, ptr %4, align 4, !noundef !37
  %5 = getelementptr inbounds nuw i32, ptr %count, i64 %_16
  %_15 = load i32, ptr %5, align 4, !noundef !37
  %_10 = add i32 %_15, %_11
  %_21 = add nsw i32 %_0.sroa.3.0.i.i34, -3
  %_20 = sext i32 %_21 to i64
  %_22 = icmp ult i32 %_21, 4
  br i1 %_22, label %bb10, label %panic3

panic2:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b6dcb6139c8e1176cc907b4b7a2a7adf) #24
  unreachable

bb10:                                             ; preds = %bb9
  %_23 = zext nneg i32 %_0.sroa.3.0.i.i34 to i64
  %_24 = icmp ult i32 %_0.sroa.3.0.i.i34, 4
  br i1 %_24, label %bb11, label %panic4

panic3:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_20, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aa93442ca41c8b0f86424bc53081ea29) #24
  unreachable

bb11:                                             ; preds = %bb10
  %6 = getelementptr inbounds nuw i32, ptr %count, i64 %_20
  %_19 = load i32, ptr %6, align 4, !noundef !37
  %7 = getelementptr inbounds nuw i32, ptr %count, i64 %_23
  %8 = add i32 %_10, %_19
  store i32 %8, ptr %7, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.133 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.132, %dist
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.132, %dist
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.132, %spec.select
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.133, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.132
  br i1 %or.cond, label %bb7, label %bb6

panic4:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_23, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c9fbce978d254026e73af33fe1e36907) #24
  unreachable
}
