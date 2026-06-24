define noundef i32 @f_gold(i32 noundef %dist) unnamed_addr #1 {
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
  %_0.i.not.i20 = icmp slt i32 %dist, 3
  br i1 %_0.i.not.i20, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %start, %bb8
  %iter.sroa.0.021 = phi i32 [ %spec.select13, %bb8 ], [ 3, %start ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.021, %dist
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %3 = zext i1 %not._0.i3.i to i32
  %spec.select13 = add nuw nsw i32 %iter.sroa.0.021, %3
  %_12 = add nsw i32 %iter.sroa.0.021, -1
  %_11 = sext i32 %_12 to i64
  %_13 = icmp samesign ult i32 %iter.sroa.0.021, 5
  br i1 %_13, label %bb5, label %panic1

bb4:                                              ; preds = %bb8, %start
  %_24 = sext i32 %dist to i64
  %_25 = icmp ult i32 %dist, 4
  br i1 %_25, label %bb9, label %panic

bb9:                                              ; preds = %bb4
  %4 = getelementptr inbounds nuw i32, ptr %count, i64 %_24
  %_0 = load i32, ptr %4, align 4, !noundef !23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %count)
  ret i32 %_0

panic:                                            ; preds = %bb4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_24, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a1532442f12c3cdc3a36a61fe394730e) #18
  unreachable

bb5:                                              ; preds = %bb2.i
  %_16 = add nsw i32 %iter.sroa.0.021, -2
  %_15 = sext i32 %_16 to i64
  %_17 = icmp ult i32 %_16, 4
  br i1 %_17, label %bb6, label %panic2

panic1:                                           ; preds = %bb2.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_11, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ab9634c9265024aa97d2f12978cb09a8) #18
  unreachable

bb6:                                              ; preds = %bb5
  %5 = getelementptr inbounds nuw i32, ptr %count, i64 %_11
  %_10 = load i32, ptr %5, align 4, !noundef !23
  %6 = getelementptr inbounds nuw i32, ptr %count, i64 %_15
  %_14 = load i32, ptr %6, align 4, !noundef !23
  %_9 = add i32 %_14, %_10
  %_20 = add nsw i32 %iter.sroa.0.021, -3
  %_19 = sext i32 %_20 to i64
  %_21 = icmp ult i32 %_20, 4
  br i1 %_21, label %bb7, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_15, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b6dcb6139c8e1176cc907b4b7a2a7adf) #18
  unreachable

bb7:                                              ; preds = %bb6
  %_22 = zext nneg i32 %iter.sroa.0.021 to i64
  %_23.not = icmp eq i32 %iter.sroa.0.021, 4
  br i1 %_23.not, label %panic4, label %bb8

panic3:                                           ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_aa93442ca41c8b0f86424bc53081ea29) #18
  unreachable

bb8:                                              ; preds = %bb7
  %7 = getelementptr inbounds nuw i32, ptr %count, i64 %_19
  %_18 = load i32, ptr %7, align 4, !noundef !23
  %8 = getelementptr inbounds nuw i32, ptr %count, i64 %_22
  %9 = add i32 %_9, %_18
  store i32 %9, ptr %8, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select13, %dist
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic4:                                           ; preds = %bb7
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_22, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c9fbce978d254026e73af33fe1e36907) #18
  unreachable
}
