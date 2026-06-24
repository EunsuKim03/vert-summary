define noundef range(i32 -2147483648, 2147483647) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %a.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %_209 = icmp sgt i32 %n, 0
  br i1 %_209, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %start
  %1 = add nsw i32 %n, -3
  %.not = icmp ult i32 %1, -2
  br i1 %.not, label %panic, label %bb8

bb9:                                              ; preds = %bb8, %bb8.1, %start
  %two.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %3, %bb8 ], [ %two.sroa.0.1.1, %bb8.1 ]
  %zero.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb8 ], [ %spec.select.1, %bb8.1 ]
  %_15 = add nsw i32 %zero.sroa.0.0.lcssa, -1
  %_13 = mul nsw i32 %_15, %zero.sroa.0.0.lcssa
  %_12 = sdiv i32 %_13, 2
  %_19 = add nsw i32 %two.sroa.0.0.lcssa, -1
  %_17 = mul nsw i32 %_19, %two.sroa.0.0.lcssa
  %_16 = sdiv i32 %_17, 2
  %cnt = add nsw i32 %_12, %_16
  ret i32 %cnt

bb8:                                              ; preds = %bb8.preheader
  %_7 = icmp eq i32 %a.sroa.0.0.extract.trunc, 0
  %2 = zext i1 %_7 to i32
  %_11 = icmp eq i32 %a.sroa.0.0.extract.trunc, 2
  %3 = zext i1 %_11 to i32
  %exitcond.not = icmp eq i32 %n, 1
  br i1 %exitcond.not, label %bb9, label %bb8.1

bb8.1:                                            ; preds = %bb8
  %_7.1 = icmp ult i64 %0, 4294967296
  %4 = zext i1 %_7.1 to i32
  %spec.select.1 = add nuw nsw i32 %2, %4
  %a.sroa.2.0.extract.shift.mask = and i64 %0, -4294967296
  %_11.1 = icmp eq i64 %a.sroa.2.0.extract.shift.mask, 8589934592
  %5 = zext i1 %_11.1 to i32
  %two.sroa.0.1.1 = add nuw nsw i32 %3, %5
  br label %bb9

panic:                                            ; preds = %bb8.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6879d46556c4f058aff0cb6f75389186) #18
  unreachable
}
