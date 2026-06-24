define noundef i32 @f_gold(i64 %0, i32 noundef %N, i32 noundef %M) unnamed_addr #3 {
start:
  %_0.i.i.i66 = icmp sgt i32 %N, 0
  br i1 %_0.i.i.i66, label %bb5.lr.ph, label %bb6

bb5.lr.ph:                                        ; preds = %start
  %1 = zext nneg i32 %N to i64
  %2 = zext nneg i32 %N to i64
  %wide.trip.count = zext nneg i32 %N to i64
  br label %bb5

bb2.loopexit:                                     ; preds = %bb8.loopexit, %bb5
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count
  br i1 %exitcond99.not, label %bb6, label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %bb2.loopexit
  %indvars.iv95 = phi i64 [ 0, %bb5.lr.ph ], [ %indvars.iv.next96, %bb2.loopexit ]
  %indvars.iv89 = phi i64 [ 1, %bb5.lr.ph ], [ %indvars.iv.next90, %bb2.loopexit ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %_0.i.i.i1460 = icmp samesign ult i64 %indvars.iv.next96, %2
  br i1 %_0.i.i.i1460, label %bb10, label %bb2.loopexit

bb6:                                              ; preds = %bb2.loopexit, %start
  ret i32 0

bb8.loopexit:                                     ; preds = %bb10
  %lftr.wideiv = trunc i64 %indvars.iv.next92 to i32
  %exitcond.not = icmp eq i32 %N, %lftr.wideiv
  br i1 %exitcond.not, label %bb2.loopexit, label %bb10

bb10:                                             ; preds = %bb5, %bb8.loopexit
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb8.loopexit ], [ %indvars.iv89, %bb5 ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %_0.i.i.i2155 = icmp samesign ult i64 %indvars.iv.next92, %1
  br i1 %_0.i.i.i2155, label %bb15.lr.ph, label %bb8.loopexit

bb15.lr.ph:                                       ; preds = %bb10
  %_31.le = icmp samesign ult i64 %indvars.iv95, 2
  br i1 %_31.le, label %bb15.lr.ph.split, label %panic

bb15.lr.ph.split:                                 ; preds = %bb15.lr.ph
  %_34 = icmp samesign ult i64 %indvars.iv91, 2
  br i1 %_34, label %panic4, label %panic3

panic:                                            ; preds = %bb15.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv95, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d0be0c4662d1477b70bba504a4b9f968) #24
  unreachable

panic3:                                           ; preds = %bb15.lr.ph.split
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv91, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c5f81dcc0a2284b4fc589f7b1a873d3f) #24
  unreachable

panic4:                                           ; preds = %bb15.lr.ph.split
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv.next92, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_40fd4592e1bb1c6ffd1e32d9cd8ad348) #24
  unreachable
}
