define noundef i32 @f_gold(i64 %0, i32 noundef %l, i32 noundef %r, i32 noundef %x) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb8, %start
  %l.tr = phi i32 [ %l, %start ], [ %_14, %bb8 ]
  %r.tr = phi i32 [ %r, %start ], [ %_15, %bb8 ]
  store i64 %0, ptr %arr, align 8
  %_5 = icmp slt i32 %r.tr, %l.tr
  br i1 %_5, label %bb12, label %bb2

bb2:                                              ; preds = %tailrecurse
  %_8 = sext i32 %l.tr to i64
  %_9 = icmp ult i32 %l.tr, 2
  br i1 %_9, label %bb3, label %panic

bb3:                                              ; preds = %bb2
  %1 = getelementptr inbounds nuw i32, ptr %arr, i64 %_8
  %_7 = load i32, ptr %1, align 4, !noundef !37
  %_6 = icmp eq i32 %_7, %x
  br i1 %_6, label %bb12, label %bb5

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_8, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c62fc899894916d0cc2e61cf97ef2e81) #24
  unreachable

bb5:                                              ; preds = %bb3
  %_12 = sext i32 %r.tr to i64
  %_13 = icmp ult i32 %r.tr, 2
  br i1 %_13, label %bb6, label %panic1

bb6:                                              ; preds = %bb5
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %_12
  %_11 = load i32, ptr %2, align 4, !noundef !37
  %_10 = icmp eq i32 %_11, %x
  br i1 %_10, label %bb12, label %bb8

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7ea5a74eb217e91dca487057373648e4) #24
  unreachable

bb8:                                              ; preds = %bb6
  %_14 = add nuw nsw i32 %l.tr, 1
  %_15 = add nsw i32 %r.tr, -1
  br label %tailrecurse

bb12:                                             ; preds = %bb6, %bb3, %tailrecurse
  %_0.sroa.0.0 = phi i32 [ -1, %tailrecurse ], [ %l.tr, %bb3 ], [ %r.tr, %bb6 ]
  ret i32 %_0.sroa.0.0
}
