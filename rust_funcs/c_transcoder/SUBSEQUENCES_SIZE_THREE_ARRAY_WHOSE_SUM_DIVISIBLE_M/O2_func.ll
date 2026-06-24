define noundef i32 @f_gold(i64 %0, i32 noundef %N, i32 noundef %M) unnamed_addr #1 {
start:
  %A = alloca [8 x i8], align 8
  store i64 %0, ptr %A, align 8
  %_2744 = icmp sgt i32 %N, 0
  br i1 %_2744, label %bb12.lr.ph, label %bb13

bb12.lr.ph:                                       ; preds = %start
  %_23 = icmp eq i32 %M, 0
  %_24 = icmp eq i32 %M, -1
  %1 = zext nneg i32 %N to i64
  %wide.trip.count = zext nneg i32 %N to i64
  br label %bb12

bb1.loopexit:                                     ; preds = %bb2.loopexit, %bb12
  %ans.sroa.0.1.lcssa = phi i32 [ %ans.sroa.0.046, %bb12 ], [ %ans.sroa.0.2.lcssa, %bb2.loopexit ]
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count
  br i1 %exitcond80.not, label %bb13, label %bb12

bb13:                                             ; preds = %bb1.loopexit, %start
  %ans.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %ans.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %ans.sroa.0.0.lcssa

bb12:                                             ; preds = %bb12.lr.ph, %bb1.loopexit
  %indvars.iv77 = phi i64 [ 0, %bb12.lr.ph ], [ %indvars.iv.next78, %bb1.loopexit ]
  %indvars.iv70 = phi i64 [ 1, %bb12.lr.ph ], [ %indvars.iv.next71, %bb1.loopexit ]
  %indvars.iv = phi i32 [ 2, %bb12.lr.ph ], [ %indvars.iv.next, %bb1.loopexit ]
  %ans.sroa.0.046 = phi i32 [ 0, %bb12.lr.ph ], [ %ans.sroa.0.1.lcssa, %bb1.loopexit ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %_3439 = icmp samesign ult i64 %indvars.iv.next78, %1
  br i1 %_3439, label %bb17.lr.ph, label %bb1.loopexit

bb17.lr.ph:                                       ; preds = %bb12
  %2 = sext i32 %indvars.iv to i64
  %_14 = icmp samesign ult i64 %indvars.iv77, 2
  %3 = getelementptr inbounds nuw i32, ptr %A, i64 %indvars.iv77
  br label %bb17

bb2.loopexit:                                     ; preds = %bb8, %bb8.peel, %bb17.bb2.loopexit_crit_edge
  %indvars.iv.next60.pre-phi = phi i64 [ %.pre, %bb17.bb2.loopexit_crit_edge ], [ %indvars.iv.next62.peel, %bb8.peel ], [ %indvars.iv.next62.peel, %bb8 ]
  %ans.sroa.0.2.lcssa = phi i32 [ %ans.sroa.0.141, %bb17.bb2.loopexit_crit_edge ], [ %spec.select.peel, %bb8.peel ], [ %spec.select, %bb8 ]
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %lftr.wideiv75 = trunc i64 %indvars.iv.next73 to i32
  %exitcond76.not = icmp eq i32 %N, %lftr.wideiv75
  br i1 %exitcond76.not, label %bb1.loopexit, label %bb17

bb17:                                             ; preds = %bb17.lr.ph, %bb2.loopexit
  %indvars.iv72 = phi i64 [ %indvars.iv70, %bb17.lr.ph ], [ %indvars.iv.next73, %bb2.loopexit ]
  %indvars.iv59 = phi i64 [ %2, %bb17.lr.ph ], [ %indvars.iv.next60.pre-phi, %bb2.loopexit ]
  %ans.sroa.0.141 = phi i32 [ %ans.sroa.0.046, %bb17.lr.ph ], [ %ans.sroa.0.2.lcssa, %bb2.loopexit ]
  %iter1.sroa.0.0.in40.in = phi i64 [ %indvars.iv77, %bb17.lr.ph ], [ %indvars.iv72, %bb2.loopexit ]
  %iter1.sroa.0.0.in40 = trunc i64 %iter1.sroa.0.0.in40.in to i32
  %4 = add nuw i32 %iter1.sroa.0.0.in40, 2
  %_4135 = icmp slt i32 %4, %N
  br i1 %_4135, label %bb21.lr.ph, label %bb17.bb2.loopexit_crit_edge

bb17.bb2.loopexit_crit_edge:                      ; preds = %bb17
  %.pre = add nsw i64 %indvars.iv59, 1
  br label %bb2.loopexit

bb21.lr.ph:                                       ; preds = %bb17
  %5 = getelementptr inbounds nuw i32, ptr %A, i64 %indvars.iv72
  br i1 %_14, label %bb21.lr.ph.split, label %panic

bb21.lr.ph.split:                                 ; preds = %bb21.lr.ph
  %_17 = icmp samesign ult i64 %indvars.iv72, 2
  br i1 %_17, label %bb21.preheader, label %panic3

bb21.preheader:                                   ; preds = %bb21.lr.ph.split
  %indvars.iv.next62.peel = add nsw i64 %indvars.iv59, 1
  %exitcond.peel.not = icmp eq i64 %indvars.iv59, 2
  br i1 %exitcond.peel.not, label %panic4, label %bb6.peel

bb6.peel:                                         ; preds = %bb21.preheader
  %_12.peel = load i32, ptr %3, align 4, !noundef !23
  %_15.peel = load i32, ptr %5, align 4, !noundef !23
  %_11.peel = add i32 %_15.peel, %_12.peel
  %6 = getelementptr inbounds nuw i32, ptr %A, i64 %indvars.iv59
  %_18.peel = load i32, ptr %6, align 4, !noundef !23
  %sum.peel = add i32 %_11.peel, %_18.peel
  br i1 %_23, label %panic5, label %bb7.peel

bb7.peel:                                         ; preds = %bb6.peel
  %_25.peel = icmp eq i32 %sum.peel, -2147483648
  %_26.peel = and i1 %_24, %_25.peel
  br i1 %_26.peel, label %panic6, label %bb8.peel

bb8.peel:                                         ; preds = %bb7.peel
  %_22.peel = srem i32 %sum.peel, %M
  %_21.peel = icmp eq i32 %_22.peel, 0
  %7 = zext i1 %_21.peel to i32
  %spec.select.peel = add i32 %ans.sroa.0.141, %7
  %lftr.wideiv.peel = trunc i64 %indvars.iv.next62.peel to i32
  %exitcond64.peel.not = icmp eq i32 %N, %lftr.wideiv.peel
  br i1 %exitcond64.peel.not, label %bb2.loopexit, label %bb21

bb21:                                             ; preds = %bb8.peel, %bb8
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %bb8 ], [ %indvars.iv.next62.peel, %bb8.peel ]
  %ans.sroa.0.236 = phi i32 [ %spec.select, %bb8 ], [ %spec.select.peel, %bb8.peel ]
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1
  %exitcond.not = icmp eq i64 %indvars.iv61, 2
  br i1 %exitcond.not, label %panic4, label %bb7

panic:                                            ; preds = %bb21.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv77, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d0be0c4662d1477b70bba504a4b9f968) #18
  unreachable

panic3:                                           ; preds = %bb21.lr.ph.split
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv72, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c5f81dcc0a2284b4fc589f7b1a873d3f) #18
  unreachable

panic4:                                           ; preds = %bb21.preheader, %bb21
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_40fd4592e1bb1c6ffd1e32d9cd8ad348) #18
  unreachable

bb7:                                              ; preds = %bb21
  %8 = getelementptr inbounds nuw i32, ptr %A, i64 %indvars.iv61
  %_18 = load i32, ptr %8, align 4, !noundef !23
  %sum = add i32 %_11.peel, %_18
  %_25 = icmp eq i32 %sum, -2147483648
  %_26 = and i1 %_24, %_25
  br i1 %_26, label %panic6, label %bb8

panic5:                                           ; preds = %bb6.peel
; call core::panicking::panic_const::panic_const_rem_by_zero
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1a03b276c99491c1b99c03711d5abb55) #18
  unreachable

bb8:                                              ; preds = %bb7
  %_22 = srem i32 %sum, %M
  %_21 = icmp eq i32 %_22, 0
  %9 = zext i1 %_21 to i32
  %spec.select = add i32 %ans.sroa.0.236, %9
  %lftr.wideiv = trunc i64 %indvars.iv.next62 to i32
  %exitcond64.not = icmp eq i32 %N, %lftr.wideiv
  br i1 %exitcond64.not, label %bb2.loopexit, label %bb21, !llvm.loop !1031

panic6:                                           ; preds = %bb7.peel, %bb7
; call core::panicking::panic_const::panic_const_rem_overflow
  tail call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1a03b276c99491c1b99c03711d5abb55) #18
  unreachable
}
