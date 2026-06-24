define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 {
start:
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %exitcond.not = icmp slt i32 %n, 1
  br i1 %exitcond.not, label %bb11, label %bb12

bb12:                                             ; preds = %start
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_7 = icmp slt i32 %a.sroa.0.0.extract.trunc, 1
  %times.sroa.0.1 = zext i1 %_7 to i32
  %best.sroa.0.2 = tail call i32 @llvm.smax.i32(i32 %a.sroa.0.0.extract.trunc, i32 0)
  %_13.not = icmp sle i32 %k, %times.sroa.0.1
  %exitcond.1.not = icmp eq i32 %n, 1
  %or.cond = or i1 %_13.not, %exitcond.1.not
  br i1 %or.cond, label %bb11, label %bb12.1

bb11:                                             ; preds = %bb12.1, %bb12, %start
  %best.sroa.0.1 = phi i32 [ 0, %start ], [ %best.sroa.0.2, %bb12 ], [ %best.sroa.0.2.1, %bb12.1 ]
  ret i32 %best.sroa.0.1

bb12.1:                                           ; preds = %bb12
  %_7.1 = icmp slt i32 %best.sroa.0.2, %a.sroa.2.0.extract.trunc
  %1 = select i1 %_7, i32 2, i32 1
  %times.sroa.0.1.1 = select i1 %_7.1, i32 1, i32 %1
  %best.sroa.0.2.1 = tail call i32 @llvm.smax.i32(i32 %a.sroa.2.0.extract.trunc, i32 %best.sroa.0.2)
  %_13.not.1 = icmp samesign uge i32 %times.sroa.0.1.1, %k
  %exitcond.2.not = icmp eq i32 %n, 2
  %or.cond7 = or i1 %_13.not.1, %exitcond.2.not
  br i1 %or.cond7, label %bb11, label %panic

panic:                                            ; preds = %bb12.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4a0ec31d67e4dcc4deccacfeb1011014) #18
  unreachable
}
