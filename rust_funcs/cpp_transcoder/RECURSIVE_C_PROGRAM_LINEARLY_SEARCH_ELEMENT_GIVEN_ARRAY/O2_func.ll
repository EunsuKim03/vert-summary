define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %l, i32 noundef %r, i32 noundef %x) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_54 = icmp slt i32 %r, %l
  br i1 %_54, label %bb12, label %bb2.preheader

bb2.preheader:                                    ; preds = %start
  %1 = sext i32 %r to i64
  %2 = sext i32 %l to i64
  %_9 = icmp ult i32 %l, 2
  br i1 %_9, label %bb3, label %panic

bb3:                                              ; preds = %bb2.preheader
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %2
  %_7 = load i32, ptr %3, align 4, !noundef !23
  %_6 = icmp eq i32 %_7, %x
  br i1 %_6, label %bb12, label %bb5

panic:                                            ; preds = %bb2.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c62fc899894916d0cc2e61cf97ef2e81) #18
  unreachable

bb5:                                              ; preds = %bb3
  %_13 = icmp ult i32 %r, 2
  br i1 %_13, label %bb6, label %panic1

bb6:                                              ; preds = %bb5
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %1
  %_11 = load i32, ptr %4, align 4, !noundef !23
  %_10 = icmp eq i32 %_11, %x
  br i1 %_10, label %bb12, label %bb8

panic1:                                           ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %1, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7ea5a74eb217e91dca487057373648e4) #18
  unreachable

bb8:                                              ; preds = %bb6
  store i64 %0, ptr %arr, align 8
  br label %bb12

bb12:                                             ; preds = %bb3, %bb6, %bb8, %start
  %_0.sroa.0.0 = phi i32 [ -1, %start ], [ -1, %bb8 ], [ %r, %bb6 ], [ %l, %bb3 ]
  ret i32 %_0.sroa.0.0
}
