define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i26 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i26, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %1 = add nuw i32 %n, 1
  br label %bb5

bb2.loopexit:                                     ; preds = %bb13, %bb5
  %min_xor.sroa.0.1.lcssa = phi i32 [ %min_xor.sroa.0.028, %bb5 ], [ %_0.sroa.0.0.i, %bb13 ]
  %_0.i.i.i = icmp slt i32 %spec.select29, %n
  %2 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select29, %2
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
  %_22 = icmp samesign ult i32 %iter.sroa.0.027, 2
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_21
  br i1 %_22, label %bb10.preheader, label %panic

bb10.preheader:                                   ; preds = %bb10.lr.ph
  %spec.select1422 = or disjoint i32 %iter.sroa.0.027, 2
  %4 = zext nneg i32 %spec.select1422 to i64
  %narrow = add nuw nsw i32 %iter.sroa.0.027, 1
  %5 = zext nneg i32 %narrow to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %min_xor.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %min_xor.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %min_xor.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.preheader, %bb13
  %indvars.iv33 = phi i64 [ %5, %bb10.preheader ], [ %indvars.iv.next34, %bb13 ]
  %indvars.iv = phi i64 [ %4, %bb10.preheader ], [ %indvars.iv.next, %bb13 ]
  %min_xor.sroa.0.124 = phi i32 [ %min_xor.sroa.0.028, %bb10.preheader ], [ %_0.sroa.0.0.i, %bb13 ]
  %exitcond.not = icmp eq i64 %indvars.iv33, 2
  br i1 %exitcond.not, label %panic2, label %bb13

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_21, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_07b52be50ee533523b2e26c12483f634) #24
  unreachable

bb13:                                             ; preds = %bb10
  %_20 = load i32, ptr %3, align 4, !noundef !37
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv33
  %_23 = load i32, ptr %6, align 4, !noundef !37
  %_19 = xor i32 %_23, %_20
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %_19, i32 %min_xor.sroa.0.124)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond37.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond37.not, label %bb2.loopexit, label %bb10

panic2:                                           ; preds = %bb10
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv33, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c47bf8b87a14f3be7c1c332ba3b38501) #24
  unreachable
}
