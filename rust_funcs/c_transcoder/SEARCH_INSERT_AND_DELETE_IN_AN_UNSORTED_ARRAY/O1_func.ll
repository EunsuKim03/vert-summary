define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %key) unnamed_addr #3 {
start:
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %_56.not = icmp eq i32 %n, 0
  br i1 %_56.not, label %bb7, label %bb3

bb7:                                              ; preds = %bb3, %bb3.1, %bb5, %bb5.1, %start
  %_0.sroa.0.0 = phi i32 [ -1, %start ], [ -1, %bb5.1 ], [ -1, %bb5 ], [ 0, %bb3 ], [ 1, %bb3.1 ]
  ret i32 %_0.sroa.0.0

bb3:                                              ; preds = %start
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_8 = icmp eq i32 %key, %arr.sroa.0.0.extract.trunc
  br i1 %_8, label %bb7, label %bb5

bb5:                                              ; preds = %bb3
  %exitcond10.not = icmp eq i32 %n, 1
  br i1 %exitcond10.not, label %bb7, label %bb3.1

bb3.1:                                            ; preds = %bb5
  %_8.1 = icmp eq i32 %key, %arr.sroa.2.0.extract.trunc
  br i1 %_8.1, label %bb7, label %bb5.1

bb5.1:                                            ; preds = %bb3.1
  %exitcond10.1.not = icmp eq i32 %n, 2
  br i1 %exitcond10.1.not, label %bb7, label %bb2.2

bb2.2:                                            ; preds = %bb5.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d5342990c0b8f88882149ab8cc82c095) #24
  unreachable
}
