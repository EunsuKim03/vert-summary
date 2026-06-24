define noundef range(i32 0, -2147483648) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %ar.0, i64 noundef range(i64 0, 2305843009213693952) %ar.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_7 = sext i32 %n to i64
  %_6 = add nsw i64 %_7, -1
  %_417.not = icmp eq i64 %_6, 0
  br i1 %_417.not, label %bb12, label %bb3.preheader

bb3.preheader:                                    ; preds = %start, %bb10
  %res.sroa.0.019 = phi i32 [ %_0.sroa.0.0.i, %bb10 ], [ 0, %start ]
  %i.sroa.0.018 = phi i64 [ %1, %bb10 ], [ 0, %start ]
  %0 = add i64 %i.sroa.0.018, 1
  %umax24 = tail call i64 @llvm.umax.i64(i64 %_6, i64 %0)
  br label %bb4

bb12:                                             ; preds = %bb10, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %_0.sroa.0.0.i, %bb10 ]
  ret i32 %res.sroa.0.0.lcssa

bb4:                                              ; preds = %bb3.preheader, %bb7
  %i.sroa.0.116 = phi i64 [ %i.sroa.0.018, %bb3.preheader ], [ %_17, %bb7 ]
  %count.sroa.0.015 = phi i32 [ 1, %bb3.preheader ], [ %4, %bb7 ]
  %_15 = icmp ult i64 %i.sroa.0.116, %ar.1
  br i1 %_15, label %bb5, label %panic

bb10:                                             ; preds = %bb6, %bb7
  %count.sroa.0.0.lcssa = phi i32 [ %count.sroa.0.015, %bb6 ], [ %4, %bb7 ]
  %i.sroa.0.1.lcssa = phi i64 [ %i.sroa.0.116, %bb6 ], [ %umax24, %bb7 ]
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %count.sroa.0.0.lcssa, i32 %res.sroa.0.019)
  %1 = add i64 %i.sroa.0.1.lcssa, 1
  %_4 = icmp ult i64 %1, %_6
  br i1 %_4, label %bb3.preheader, label %bb12

bb5:                                              ; preds = %bb4
  %_17 = add i64 %i.sroa.0.116, 1
  %_19 = icmp ult i64 %_17, %ar.1
  br i1 %_19, label %bb6, label %panic1

panic:                                            ; preds = %bb4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.sroa.0.018, i64 %ar.1)
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax, i64 noundef %ar.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_93246e8284e297d48b1a90a2910f1d78) #24
  unreachable

bb6:                                              ; preds = %bb5
  %2 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %i.sroa.0.116
  %_12 = load i32, ptr %2, align 4, !noundef !37
  %3 = getelementptr inbounds nuw i32, ptr %ar.0, i64 %_17
  %_16 = load i32, ptr %3, align 4, !noundef !37
  %_11 = icmp eq i32 %_12, %_16
  br i1 %_11, label %bb7, label %bb10

panic1:                                           ; preds = %bb5
  %umax23 = tail call i64 @llvm.umax.i64(i64 %ar.1, i64 %0)
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umax23, i64 noundef %ar.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fba2c703b594f75a2efc437bd70a2d30) #24
  unreachable

bb7:                                              ; preds = %bb6
  %4 = add i32 %count.sroa.0.015, 1
  %exitcond.not = icmp eq i64 %_17, %umax24
  br i1 %exitcond.not, label %bb10, label %bb4
}
