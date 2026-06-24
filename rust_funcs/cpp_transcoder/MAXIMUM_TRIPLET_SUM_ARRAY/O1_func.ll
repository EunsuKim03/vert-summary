define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i55 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i55, label %bb5.preheader, label %bb6

bb5.preheader:                                    ; preds = %start
  %1 = zext nneg i32 %n to i64
  %2 = add nuw i32 %n, 1
  br label %bb5

bb2.loopexit:                                     ; preds = %bb8.loopexit, %bb5
  %sum.sroa.0.1.lcssa = phi i32 [ %sum.sroa.0.057, %bb5 ], [ %sum.sroa.0.2.lcssa, %bb8.loopexit ]
  %_0.i.i.i = icmp slt i32 %spec.select2658, %n
  %3 = zext i1 %_0.i.i.i to i32
  %spec.select26 = add nuw nsw i32 %spec.select2658, %3
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %bb5.preheader, %bb2.loopexit
  %spec.select2658 = phi i32 [ %spec.select26, %bb2.loopexit ], [ 1, %bb5.preheader ]
  %sum.sroa.0.057 = phi i32 [ %sum.sroa.0.1.lcssa, %bb2.loopexit ], [ -2147483648, %bb5.preheader ]
  %iter.sroa.0.056 = phi i32 [ %spec.select2658, %bb2.loopexit ], [ 0, %bb5.preheader ]
  %_12 = add nuw i32 %iter.sroa.0.056, 1
  %_0.i.i.i1549 = icmp slt i32 %_12, %n
  br i1 %_0.i.i.i1549, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %spec.select2850 = add nuw i32 %iter.sroa.0.056, 2
  %_31 = zext nneg i32 %iter.sroa.0.056 to i64
  %_32 = icmp samesign ult i32 %iter.sroa.0.056, 2
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_31
  %5 = zext i32 %spec.select2850 to i64
  %6 = sext i32 %_12 to i64
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %sum.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %sum.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %sum.sroa.0.0.lcssa

bb8.loopexit:                                     ; preds = %bb19, %bb10
  %sum.sroa.0.2.lcssa = phi i32 [ %sum.sroa.0.152, %bb10 ], [ %spec.select, %bb19 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %bb2.loopexit, label %bb10

bb10:                                             ; preds = %bb10.lr.ph, %bb8.loopexit
  %indvars.iv65 = phi i64 [ %6, %bb10.lr.ph ], [ %indvars.iv.next66, %bb8.loopexit ]
  %indvars.iv = phi i64 [ %5, %bb10.lr.ph ], [ %indvars.iv.next, %bb8.loopexit ]
  %sum.sroa.0.152 = phi i32 [ %sum.sroa.0.057, %bb10.lr.ph ], [ %sum.sroa.0.2.lcssa, %bb8.loopexit ]
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, 1
  %_0.i.i.i2244 = icmp slt i64 %indvars.iv.next66, %1
  %7 = zext i1 %_0.i.i.i2244 to i32
  %8 = trunc nsw i64 %indvars.iv.next66 to i32
  %spec.select3045 = add nsw i32 %8, %7
  br i1 %_0.i.i.i2244, label %bb15.lr.ph, label %bb8.loopexit

bb15.lr.ph:                                       ; preds = %bb10
  %9 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv65
  br i1 %_32, label %bb15.lr.ph.split, label %panic

bb15.lr.ph.split:                                 ; preds = %bb15.lr.ph
  %_35 = icmp ult i64 %indvars.iv65, 2
  br i1 %_35, label %bb15.preheader, label %panic3

bb15.preheader:                                   ; preds = %bb15.lr.ph.split
  %10 = trunc nuw nsw i64 %indvars.iv.next66 to i32
  br label %bb15

bb15:                                             ; preds = %bb15.preheader, %bb19
  %spec.select3048 = phi i32 [ %spec.select30, %bb19 ], [ %spec.select3045, %bb15.preheader ]
  %sum.sroa.0.247 = phi i32 [ %spec.select, %bb19 ], [ %sum.sroa.0.152, %bb15.preheader ]
  %iter2.sroa.0.046 = phi i32 [ %spec.select3048, %bb19 ], [ %10, %bb15.preheader ]
  %_37 = sext i32 %iter2.sroa.0.046 to i64
  %_38 = icmp ult i32 %iter2.sroa.0.046, 2
  br i1 %_38, label %bb19, label %panic4

panic:                                            ; preds = %bb15.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_31, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_473a845f08801bca3a5982d8c9fef99d) #24
  unreachable

panic3:                                           ; preds = %bb15.lr.ph.split
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv65, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7a401a841630b1e11c01bf306c6fcf3a) #24
  unreachable

bb19:                                             ; preds = %bb15
  %_30 = load i32, ptr %4, align 4, !noundef !37
  %_33 = load i32, ptr %9, align 4, !noundef !37
  %_29 = add i32 %_33, %_30
  %11 = getelementptr inbounds nuw i32, ptr %arr, i64 %_37
  %_36 = load i32, ptr %11, align 4, !noundef !37
  %_28 = add i32 %_29, %_36
  %spec.select = tail call i32 @llvm.smax.i32(i32 %sum.sroa.0.247, i32 %_28)
  %_0.i.i.i22 = icmp slt i32 %spec.select3048, %n
  %12 = zext i1 %_0.i.i.i22 to i32
  %spec.select30 = add nuw nsw i32 %spec.select3048, %12
  br i1 %_0.i.i.i22, label %bb15, label %bb8.loopexit

panic4:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_37, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a243288e64a199c5dc29619eb3768809) #24
  unreachable
}
