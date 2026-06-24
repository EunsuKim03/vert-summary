define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #3 {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %a.sroa.2.0.extract.shift = lshr i64 %0, 32
  %a.sroa.2.0.extract.trunc = trunc nuw i64 %a.sroa.2.0.extract.shift to i32
  %_0.i.i.i17 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i17, label %bb5.lr.ph, label %bb6

bb5.lr.ph:                                        ; preds = %start
  %_17 = icmp eq i32 %k, 0
  %_11.not = icmp ne i32 %a.sroa.0.0.extract.trunc, 1
  %_15 = icmp slt i32 %k, %a.sroa.0.0.extract.trunc
  %or.cond = and i1 %_11.not, %_15
  br i1 %or.cond, label %bb11, label %bb18

bb6:                                              ; preds = %bb19, %bb19.1, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %k.pn, %bb19 ], [ %result.sroa.0.1.1, %bb19.1 ]
  ret i32 %result.sroa.0.0.lcssa

bb18:                                             ; preds = %bb5.lr.ph
  %_22 = sub i32 %k, %a.sroa.0.0.extract.trunc
  br label %bb19

bb19:                                             ; preds = %bb11, %bb18
  %k.pn = phi i32 [ %_22, %bb18 ], [ %k, %bb11 ]
  %exitcond27.not = icmp eq i32 %n, 1
  br i1 %exitcond27.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb19
  %_11.not.1 = icmp ne i64 %a.sroa.2.0.extract.shift, 1
  %_15.1 = icmp slt i32 %k, %a.sroa.2.0.extract.trunc
  %or.cond.1 = and i1 %_11.not.1, %_15.1
  br i1 %or.cond.1, label %bb11.1, label %bb18.1

bb18.1:                                           ; preds = %bb7.1
  %_22.1 = sub i32 %k, %a.sroa.2.0.extract.trunc
  br label %bb19.1

bb11.1:                                           ; preds = %bb7.1
  br i1 %_17, label %panic4, label %bb19.1

bb19.1:                                           ; preds = %bb11.1, %bb18.1
  %k.pn.1 = phi i32 [ %_22.1, %bb18.1 ], [ %k, %bb11.1 ]
  %result.sroa.0.1.1 = add i32 %k.pn.1, %k.pn
  %exitcond27.1.not = icmp eq i32 %n, 2
  br i1 %exitcond27.1.not, label %bb6, label %bb5.2

bb5.2:                                            ; preds = %bb19.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7c57fad45a0fbeab06bfcb0c070d811f) #24
  unreachable

bb11:                                             ; preds = %bb5.lr.ph
  br i1 %_17, label %panic4, label %bb19

panic4:                                           ; preds = %bb11.1, %bb11
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_61a5b2f216f58a7ff3ef160782835f81) #24
  unreachable
}
