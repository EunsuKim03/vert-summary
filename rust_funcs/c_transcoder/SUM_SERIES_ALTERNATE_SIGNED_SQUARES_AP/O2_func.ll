define noundef i32 @f_gold(i32 noundef %n, i64 %0) unnamed_addr #1 {
start:
  %iter1 = shl i32 %n, 1
  %_1610 = icmp sgt i32 %iter1, 0
  br i1 %_1610, label %bb8.peel29, label %bb10

bb8.peel29:                                       ; preds = %start
  %1 = lshr i64 %0, 32
  %2 = trunc nuw i64 %1 to i32
  %3 = trunc i64 %0 to i32
  %add = add i32 %3, %2
  %sub = sub i32 %3, %2
  %4 = mul i32 %add, %sub
  %exitcond.peel31.not = icmp eq i32 %iter1, 2
  br i1 %exitcond.peel31.not, label %bb10, label %panic3

bb10:                                             ; preds = %bb8.peel29, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %4, %bb8.peel29 ]
  ret i32 %res.sroa.0.0.lcssa

panic3:                                           ; preds = %bb8.peel29
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_705db24cb77cee2129f1cd5423e2b42f) #18
  unreachable
}
