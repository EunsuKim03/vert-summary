define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %n) unnamed_addr #3 {
start:
  %_0.i.i.i27 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i27, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %0 = add nuw i32 %n, 1
  br label %bb5

bb2.loopexit:                                     ; preds = %bb13, %bb5
  %count.sroa.0.1.lcssa = phi i32 [ %count.sroa.0.029, %bb5 ], [ %spec.select, %bb13 ]
  %_0.i.i.i = icmp slt i32 %spec.select1330, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select13 = add nuw nsw i32 %spec.select1330, %1
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.preheader, %bb2.loopexit
  %spec.select1330 = phi i32 [ %spec.select13, %bb2.loopexit ], [ 1, %bb5.preheader ]
  %count.sroa.0.029 = phi i32 [ %count.sroa.0.1.lcssa, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %iter.sroa.0.028 = phi i32 [ %spec.select1330, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %_12 = add nuw i32 %iter.sroa.0.028, 1
  %_0.i.i.i922 = icmp slt i32 %_12, %n
  br i1 %_0.i.i.i922, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_21 = zext nneg i32 %iter.sroa.0.028 to i64
  %_23 = icmp samesign ugt i64 %a.1, %_21
  %2 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_21
  br i1 %_23, label %bb10.preheader, label %panic

bb10.preheader:                                   ; preds = %bb10.lr.ph
  %spec.select1523 = add nuw i32 %iter.sroa.0.028, 2
  %3 = zext i32 %spec.select1523 to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %count.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.preheader, %bb13
  %indvars.iv = phi i64 [ %3, %bb10.preheader ], [ %indvars.iv.next, %bb13 ]
  %count.sroa.0.125 = phi i32 [ %count.sroa.0.029, %bb10.preheader ], [ %spec.select, %bb13 ]
  %iter1.sroa.0.024 = phi i32 [ %_12, %bb10.preheader ], [ %6, %bb13 ]
  %_25 = sext i32 %iter1.sroa.0.024 to i64
  %_26 = icmp ugt i64 %a.1, %_25
  br i1 %_26, label %bb13, label %panic2

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_21, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b5785814471b0c59979c2b856a030584) #24
  unreachable

bb13:                                             ; preds = %bb10
  %_20 = load i32, ptr %2, align 4, !noundef !37
  %4 = getelementptr inbounds nuw i32, ptr %a.0, i64 %_25
  %_24 = load i32, ptr %4, align 4, !noundef !37
  %_19 = and i32 %_24, %_20
  %_18 = icmp eq i32 %_19, 0
  %5 = add i32 %count.sroa.0.125, 2
  %spec.select = select i1 %_18, i32 %5, i32 %count.sroa.0.125
  %indvars.iv.next = add i64 %indvars.iv, 1
  %6 = trunc i64 %indvars.iv to i32
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond.not, label %bb2.loopexit, label %bb10

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_25, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9df6b170974ba90a6e4810f52fe142c5) #24
  unreachable
}
