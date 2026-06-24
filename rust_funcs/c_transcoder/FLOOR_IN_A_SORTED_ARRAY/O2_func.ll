define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_7 = sext i32 %n to i64
  %_6 = add nsw i64 %_7, -1
  %_8 = icmp ult i64 %_6, 2
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %_8, label %bb1, label %panic

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_6
  %_5 = load i32, ptr %4, align 4, !noundef !23
  %_4.not = icmp slt i32 %x, %_5
  br i1 %_4.not, label %bb3, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_6, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6404a44fa4ef95d4358b8a2729ccab3c) #18
  unreachable

bb3:                                              ; preds = %bb1
  %_9 = icmp slt i32 %x, %1
  %exitcond.not = icmp eq i32 %n, 1
  %or.cond = or i1 %_9, %exitcond.not
  br i1 %or.cond, label %bb10, label %bb11

bb2:                                              ; preds = %bb1
  %5 = add i32 %n, -1
  br label %bb10

bb11:                                             ; preds = %bb3
  %_13 = icmp slt i32 %x, %3
  br i1 %_13, label %bb10, label %bb6.1

bb10:                                             ; preds = %bb11, %bb6.1, %bb3, %bb2
  %_0.sroa.0.0 = phi i32 [ %5, %bb2 ], [ -1, %bb3 ], [ -1, %bb6.1 ], [ 0, %bb11 ]
  ret i32 %_0.sroa.0.0

bb6.1:                                            ; preds = %bb11
  %exitcond.1.not = icmp eq i32 %n, 2
  br i1 %exitcond.1.not, label %bb10, label %panic1

panic1:                                           ; preds = %bb6.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_73e5a2c70922e3ef7c1ab2fc18c99199) #18
  unreachable
}
