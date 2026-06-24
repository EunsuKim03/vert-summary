define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 {
start:
  %_1910 = icmp sgt i32 %n, 0
  %1 = trunc i64 %0 to i32
  %2 = bitcast i32 %1 to float
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = bitcast i32 %4 to float
  br i1 %_1910, label %bb4.peel, label %bb10

bb4.peel:                                         ; preds = %start
  %_18 = shl i32 %k, 1
  %_9.peel = fcmp ord float %2, 0.000000e+00
  %6 = zext i1 %_9.peel to i32
  %_16.peel = icmp slt i32 %_18, %6
  br i1 %_16.peel, label %bb10, label %bb2.1.peel

bb2.1.peel:                                       ; preds = %bb4.peel
  %exitcond.1.peel.not = icmp eq i32 %n, 1
  br i1 %exitcond.1.peel.not, label %bb10.loopexit12, label %bb4.1.peel

bb4.1.peel:                                       ; preds = %bb2.1.peel
  %_9.1.peel = fcmp oeq float %5, %2
  %7 = zext i1 %_9.1.peel to i32
  %count.sroa.0.1.1.peel = add nuw nsw i32 %6, %7
  %_16.1.peel = icmp samesign ugt i32 %count.sroa.0.1.1.peel, %_18
  br i1 %_16.1.peel, label %bb10, label %bb2.2.peel

bb2.2.peel:                                       ; preds = %bb4.1.peel
  %exitcond.2.peel.not = icmp eq i32 %n, 2
  br i1 %exitcond.2.peel.not, label %bb4.peel36, label %panic

bb4.peel36:                                       ; preds = %bb2.2.peel
  %_9.peel39 = fcmp oeq float %2, %5
  %8 = zext i1 %_9.peel39 to i32
  %_16.peel40 = icmp samesign ult i32 %_18, %8
  br i1 %_16.peel40, label %bb10, label %bb4.1.peel45

bb4.1.peel45:                                     ; preds = %bb4.peel36
  %_9.1.peel48 = fcmp ord float %5, 0.000000e+00
  %9 = zext i1 %_9.1.peel48 to i32
  %count.sroa.0.1.1.peel49 = add nuw nsw i32 %8, %9
  %_16.1.peel50 = icmp samesign ugt i32 %count.sroa.0.1.1.peel49, %_18
  br i1 %_16.1.peel50, label %bb10, label %bb10.loopexit12

bb10.loopexit12:                                  ; preds = %bb2.1.peel, %bb4.1.peel45
  br label %bb10

bb10:                                             ; preds = %bb4.1.peel45, %bb4.peel36, %bb4.1.peel, %bb4.peel, %bb10.loopexit12, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 1, %bb10.loopexit12 ], [ 0, %bb4.peel ], [ 0, %bb4.1.peel ], [ 0, %bb4.peel36 ], [ 0, %bb4.1.peel45 ]
  ret i32 %_0.sroa.0.0

panic:                                            ; preds = %bb2.2.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_991e52ac0d41814b4243c3cee2324018) #18
  unreachable
}
