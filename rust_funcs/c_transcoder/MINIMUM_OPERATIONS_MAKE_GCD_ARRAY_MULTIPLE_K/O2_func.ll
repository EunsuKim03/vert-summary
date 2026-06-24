define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %_1816 = icmp sgt i32 %n, 0
  br i1 %_1816, label %bb15.lr.ph, label %bb16

bb15.lr.ph:                                       ; preds = %start
  %_12 = icmp eq i32 %k, 0
  %_6.not = icmp ne i32 %a.sroa.0.0.extract.trunc, 1
  %_10 = icmp slt i32 %k, %a.sroa.0.0.extract.trunc
  %or.cond = and i1 %_6.not, %_10
  br i1 %or.cond, label %bb6, label %bb13

bb16:                                             ; preds = %bb14, %bb14.1, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %k.pn, %bb14 ], [ %result.sroa.0.1.1, %bb14.1 ]
  ret i32 %result.sroa.0.0.lcssa

panic:                                            ; preds = %bb14.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3bb2a828d9cc4f9b27928544ce908f0f) #18
  unreachable

bb13:                                             ; preds = %bb15.lr.ph
  %_17 = sub i32 %k, %a.sroa.0.0.extract.trunc
  br label %bb14

bb14:                                             ; preds = %bb6, %bb13
  %k.pn = phi i32 [ %_17, %bb13 ], [ %k, %bb6 ]
  %exitcond22.not = icmp eq i32 %n, 1
  br i1 %exitcond22.not, label %bb16, label %bb15.1

bb15.1:                                           ; preds = %bb14
  %_6.not.1 = icmp ne i64 %a.sroa.2.0.extract.shift, 1
  %_10.1 = icmp slt i32 %k, %a.sroa.2.0.extract.trunc
  %or.cond.1 = and i1 %_6.not.1, %_10.1
  br i1 %or.cond.1, label %bb6.1, label %bb13.1

bb13.1:                                           ; preds = %bb15.1
  %_17.1 = sub i32 %k, %a.sroa.2.0.extract.trunc
  br label %bb14.1

bb6.1:                                            ; preds = %bb15.1
  br i1 %_12, label %panic4, label %bb14.1

bb14.1:                                           ; preds = %bb6.1, %bb13.1
  %k.pn.1 = phi i32 [ %_17.1, %bb13.1 ], [ %k, %bb6.1 ]
  %result.sroa.0.1.1 = add i32 %k.pn.1, %k.pn
  %exitcond22.1.not = icmp eq i32 %n, 2
  br i1 %exitcond22.1.not, label %bb16, label %panic

bb6:                                              ; preds = %bb15.lr.ph
  br i1 %_12, label %panic4, label %bb14

panic4:                                           ; preds = %bb6.1, %bb6
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_06628e4f199ea15990286cd48cce0911) #18
  unreachable
}
