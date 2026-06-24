define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %_35 = icmp sgt i32 %n, 0
  br i1 %_35, label %bb3, label %bb7

bb7:                                              ; preds = %bb3, %bb5, %bb3.1, %bb5.1, %start
  %i.sroa.0.1 = phi i32 [ -1, %start ], [ 0, %bb3 ], [ -1, %bb5 ], [ 1, %bb3.1 ], [ -1, %bb5.1 ]
  ret i32 %i.sroa.0.1

bb3:                                              ; preds = %start
  %1 = and i64 %0, 4294967295
  %_5 = icmp eq i64 %1, 0
  br i1 %_5, label %bb7, label %bb5

bb5:                                              ; preds = %bb3
  %exitcond10.not = icmp eq i32 %n, 1
  br i1 %exitcond10.not, label %bb7, label %bb3.1

bb3.1:                                            ; preds = %bb5
  %arr.sroa.2.0.extract.shift.mask = and i64 %0, -4294967296
  %_5.1 = icmp eq i64 %arr.sroa.2.0.extract.shift.mask, 4294967296
  br i1 %_5.1, label %bb7, label %bb5.1

bb5.1:                                            ; preds = %bb3.1
  %exitcond10.1.not = icmp eq i32 %n, 2
  br i1 %exitcond10.1.not, label %bb7, label %bb2.2

bb2.2:                                            ; preds = %bb5.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d86e36c443320cbcecb6c273d2945322) #24
  unreachable
}
