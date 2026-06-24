define noundef range(i32 -2147483648, 3) i32 @f_gold(i64 %0, i64 %1, i32 noundef %n) unnamed_addr #1 {
start:
  %exitcond.not = icmp slt i32 %n, 1
  br i1 %exitcond.not, label %bb6, label %bb7

bb7:                                              ; preds = %start
  %arr2.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %arr1.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_5.not = icmp eq i32 %arr1.sroa.0.0.extract.trunc, %arr2.sroa.0.0.extract.trunc
  br i1 %_5.not, label %bb1.1, label %bb6

bb6:                                              ; preds = %bb1.2, %bb1.1, %bb7, %start
  %i.sroa.0.0 = phi i32 [ %n, %start ], [ 0, %bb7 ], [ 1, %bb1.1 ], [ 2, %bb1.2 ]
  ret i32 %i.sroa.0.0

bb1.1:                                            ; preds = %bb7
  %exitcond.1.not = icmp ne i32 %n, 1
  %_5.not.1.unshifted = xor i64 %0, %1
  %_5.not.1 = icmp ult i64 %_5.not.1.unshifted, 4294967296
  %or.cond = select i1 %exitcond.1.not, i1 %_5.not.1, i1 false
  br i1 %or.cond, label %bb1.2, label %bb6

bb1.2:                                            ; preds = %bb1.1
  %exitcond.2.not = icmp eq i32 %n, 2
  br i1 %exitcond.2.not, label %bb6, label %panic

panic:                                            ; preds = %bb1.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2f6dadd007e6a8165e2b03f9cb497554) #18
  unreachable
}
