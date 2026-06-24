define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_3334 = icmp sgt i32 %n, 0
  br i1 %_3334, label %bb20.lr.ph, label %bb18

bb20.lr.ph:                                       ; preds = %start
  %1 = zext nneg i32 %n to i64
  %2 = zext nneg i32 %n to i64
  br label %bb25.lr.ph

bb1.loopexit:                                     ; preds = %bb2.backedge
  %_33 = icmp sgt i64 %indvars.iv69, 1
  br i1 %_33, label %bb25.lr.ph, label %bb18

bb25.lr.ph:                                       ; preds = %bb1.loopexit, %bb20.lr.ph
  %indvars.iv69 = phi i64 [ %2, %bb20.lr.ph ], [ %indvars.iv.next70, %bb1.loopexit ]
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, -1
  br label %bb25

bb18:                                             ; preds = %bb1.loopexit, %start
  ret i32 -2147483648

bb25:                                             ; preds = %bb25.lr.ph, %bb2.backedge
  %indvars.iv64 = phi i64 [ 0, %bb25.lr.ph ], [ %indvars.iv.next65, %bb2.backedge ]
  %indvars.iv58 = phi i64 [ 1, %bb25.lr.ph ], [ %indvars.iv.next59, %bb2.backedge ]
  %indvars.iv = phi i64 [ 2, %bb25.lr.ph ], [ %indvars.iv.next, %bb2.backedge ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %_10 = icmp ne i64 %indvars.iv.next70, %indvars.iv64
  %_4730 = icmp samesign ult i64 %indvars.iv.next65, %1
  %or.cond = select i1 %_10, i1 %_4730, i1 false
  br i1 %or.cond, label %bb29, label %bb2.backedge

bb2.backedge:                                     ; preds = %bb5.backedge, %bb25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %2
  br i1 %exitcond68.not, label %bb1.loopexit, label %bb25

bb29:                                             ; preds = %bb25, %bb5.backedge
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb5.backedge ], [ %indvars.iv58, %bb25 ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb5.backedge ], [ %indvars.iv, %bb25 ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %_13 = icmp ne i64 %indvars.iv.next70, %indvars.iv60
  %3 = trunc nuw i64 %indvars.iv.next61 to i32
  %_5428 = icmp sgt i32 %n, %3
  %or.cond36 = select i1 %_13, i1 %_5428, i1 false
  br i1 %or.cond36, label %bb33, label %bb5.backedge

bb5.backedge:                                     ; preds = %bb8.backedge, %bb29
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond63.not = icmp eq i64 %indvars.iv.next61, %2
  br i1 %exitcond63.not, label %bb2.backedge, label %bb29

bb33:                                             ; preds = %bb29, %bb8.backedge
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb8.backedge ], [ %indvars.iv53, %bb29 ]
  %_16 = icmp eq i64 %indvars.iv.next70, %indvars.iv55
  br i1 %_16, label %bb8.backedge, label %bb10

bb8.backedge:                                     ; preds = %bb33
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next56 to i32
  %exitcond.not = icmp eq i32 %n, %lftr.wideiv
  br i1 %exitcond.not, label %bb5.backedge, label %bb33

bb10:                                             ; preds = %bb33
  %_20.le = icmp samesign ult i64 %indvars.iv69, 3
  %_28.le = icmp samesign ult i64 %indvars.iv60, 2
  br i1 %_20.le, label %bb11, label %panic

bb11:                                             ; preds = %bb10
  %_25.le = icmp samesign ult i64 %indvars.iv64, 2
  br i1 %_25.le, label %bb12, label %panic5

panic:                                            ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv.next70, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a02a272b8a27a087c3a3d3533574a9cf) #18
  unreachable

bb12:                                             ; preds = %bb11
  br i1 %_28.le, label %panic7, label %panic6

panic5:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv64, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7d8b694cddc44c4250e80b543804b956) #18
  unreachable

panic6:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv60, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b7d9a226e74b9a016d96b4d90906e390) #18
  unreachable

panic7:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv55, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d9e4ce73cc2751f21e5d69a8617f7500) #18
  unreachable
}
