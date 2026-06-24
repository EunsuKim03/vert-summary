define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_0.i.i.i26 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i26, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %0 = add nuw i32 %n, 1
  br label %bb5

bb2.loopexit:                                     ; preds = %bb13, %bb5
  %min_xor.sroa.0.1.lcssa = phi i32 [ %min_xor.sroa.0.028, %bb5 ], [ %_0.sroa.0.0.i, %bb13 ]
  %_0.i.i.i = icmp slt i32 %spec.select29, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select29, %1
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.preheader, %bb2.loopexit
  %spec.select29 = phi i32 [ %spec.select, %bb2.loopexit ], [ 1, %bb5.preheader ]
  %min_xor.sroa.0.028 = phi i32 [ %min_xor.sroa.0.1.lcssa, %bb2.loopexit ], [ 2147483647, %bb5.preheader ]
  %iter.sroa.0.027 = phi i32 [ %spec.select29, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %_12 = add nuw i32 %iter.sroa.0.027, 1
  %_0.i.i.i921 = icmp slt i32 %_12, %n
  br i1 %_0.i.i.i921, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_21 = zext nneg i32 %iter.sroa.0.027 to i64
  %_23 = icmp samesign ugt i64 %arr.1, %_21
  %2 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_21
  br i1 %_23, label %bb10.preheader, label %panic

bb10.preheader:                                   ; preds = %bb10.lr.ph
  %spec.select1422 = add nuw i32 %iter.sroa.0.027, 2
  %3 = zext i32 %spec.select1422 to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %min_xor.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %min_xor.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %min_xor.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.preheader, %bb13
  %indvars.iv = phi i64 [ %3, %bb10.preheader ], [ %indvars.iv.next, %bb13 ]
  %min_xor.sroa.0.124 = phi i32 [ %min_xor.sroa.0.028, %bb10.preheader ], [ %_0.sroa.0.0.i, %bb13 ]
  %iter1.sroa.0.023 = phi i32 [ %_12, %bb10.preheader ], [ %5, %bb13 ]
  %_25 = sext i32 %iter1.sroa.0.023 to i64
  %_26 = icmp ugt i64 %arr.1, %_25
  br i1 %_26, label %bb13, label %panic2

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_21, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ba36419ccd41c001693638b9715c19b0) #24
  unreachable

bb13:                                             ; preds = %bb10
  %_20 = load i32, ptr %2, align 4, !noundef !37
  %4 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %_25
  %_24 = load i32, ptr %4, align 4, !noundef !37
  %_19 = xor i32 %_24, %_20
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %_19, i32 %min_xor.sroa.0.124)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv to i32
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond.not, label %bb2.loopexit, label %bb10

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_25, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_be235631f768889b2b828e35d18ad72f) #24
  unreachable
}
