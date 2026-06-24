define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %switch = icmp ult i32 %n, 2
  br i1 %switch, label %bb9, label %bb10

bb10:                                             ; preds = %start
  %arr.sroa.2.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.2.0.extract.trunc = trunc nuw i64 %arr.sroa.2.0.extract.shift to i32
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_8 = icmp sgt i32 %arr.sroa.0.0.extract.trunc, %arr.sroa.2.0.extract.trunc
  br i1 %_8, label %bb9, label %bb4.1

bb9:                                              ; preds = %bb10, %bb4.1, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb10 ], [ 1, %bb4.1 ]
  ret i32 %_0.sroa.0.0

bb4.1:                                            ; preds = %bb10
  %exitcond.1.not = icmp eq i32 %n, 2
  br i1 %exitcond.1.not, label %bb9, label %panic

panic:                                            ; preds = %bb4.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8d921cfed0b8f8443a578ad0733d632c) #18
  unreachable
}
