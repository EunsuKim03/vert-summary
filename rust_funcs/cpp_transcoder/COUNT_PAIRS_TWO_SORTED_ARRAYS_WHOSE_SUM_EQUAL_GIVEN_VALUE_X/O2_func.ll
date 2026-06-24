define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %m, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %arr1 = alloca [8 x i8], align 8
  store i64 %0, ptr %arr1, align 8
  %arr2.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %arr2.sroa.4.0.extract.shift = lshr i64 %1, 32
  %arr2.sroa.4.0.extract.trunc = trunc nuw i64 %arr2.sroa.4.0.extract.shift to i32
  %_1815 = icmp sgt i32 %m, 0
  br i1 %_1815, label %bb8.lr.ph, label %bb9

bb8.lr.ph:                                        ; preds = %start
  %_2512 = icmp sgt i32 %n, 0
  %wide.trip.count = zext nneg i32 %m to i64
  %2 = add i32 %n, -3
  %.not = icmp ult i32 %2, -2
  br i1 %_2512, label %bb13.lr.ph.split.peel, label %bb1.loopexit.peel

bb13.lr.ph.split.peel:                            ; preds = %bb8.lr.ph
  %_12.peel = load i32, ptr %arr1, align 8, !noundef !23
  br i1 %.not, label %panic2, label %bb13.peel

bb13.peel:                                        ; preds = %bb13.lr.ph.split.peel
  %_11.peel = add i32 %_12.peel, %arr2.sroa.0.0.extract.trunc
  %_10.peel = icmp eq i32 %_11.peel, %x
  %3 = zext i1 %_10.peel to i32
  %exitcond.not.peel = icmp eq i32 %n, 1
  %_11.1.peel = add i32 %_12.peel, %arr2.sroa.4.0.extract.trunc
  %_10.1.peel = icmp eq i32 %_11.1.peel, %x
  %4 = zext i1 %_10.1.peel to i32
  %spec.select.1.peel = add nuw nsw i32 %3, %4
  %spec.select.lcssa.peel = select i1 %exitcond.not.peel, i32 %3, i32 %spec.select.1.peel
  br label %bb1.loopexit.peel

bb1.loopexit.peel:                                ; preds = %bb13.peel, %bb8.lr.ph
  %count.sroa.0.1.lcssa.peel = phi i32 [ 0, %bb8.lr.ph ], [ %spec.select.lcssa.peel, %bb13.peel ]
  %exitcond26.not.peel = icmp eq i32 %m, 1
  br i1 %exitcond26.not.peel, label %bb9, label %bb8.peel34

bb8.peel34:                                       ; preds = %bb1.loopexit.peel
  br i1 %_2512, label %bb13.lr.ph.split.peel38, label %bb1.loopexit.peel54

bb13.lr.ph.split.peel38:                          ; preds = %bb8.peel34
  %5 = getelementptr inbounds nuw i8, ptr %arr1, i64 4
  %_12.peel39 = load i32, ptr %5, align 4, !noundef !23
  br i1 %.not, label %panic2, label %bb13.peel41

bb13.peel41:                                      ; preds = %bb13.lr.ph.split.peel38
  %_11.peel43 = add i32 %_12.peel39, %arr2.sroa.0.0.extract.trunc
  %_10.peel44 = icmp eq i32 %_11.peel43, %x
  %6 = zext i1 %_10.peel44 to i32
  %spec.select.peel45 = add nsw i32 %count.sroa.0.1.lcssa.peel, %6
  %exitcond.not.peel46 = icmp eq i32 %n, 1
  %_11.1.peel49 = add i32 %_12.peel39, %arr2.sroa.4.0.extract.trunc
  %_10.1.peel50 = icmp eq i32 %_11.1.peel49, %x
  %7 = zext i1 %_10.1.peel50 to i32
  %spec.select.1.peel51 = add nsw i32 %spec.select.peel45, %7
  %spec.select.lcssa.peel53 = select i1 %exitcond.not.peel46, i32 %spec.select.peel45, i32 %spec.select.1.peel51
  br label %bb1.loopexit.peel54

bb1.loopexit.peel54:                              ; preds = %bb13.peel41, %bb8.peel34
  %count.sroa.0.1.lcssa.peel55 = phi i32 [ %count.sroa.0.1.lcssa.peel, %bb8.peel34 ], [ %spec.select.lcssa.peel53, %bb13.peel41 ]
  %exitcond26.not.peel56 = icmp eq i32 %m, 2
  br i1 %exitcond26.not.peel56, label %bb9, label %bb8

bb1.loopexit:                                     ; preds = %bb8
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count
  br i1 %exitcond26.not, label %bb9, label %bb8, !llvm.loop !1031

bb9:                                              ; preds = %bb1.loopexit.peel, %bb1.loopexit.peel54, %bb1.loopexit, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1.lcssa.peel, %bb1.loopexit.peel ], [ %count.sroa.0.1.lcssa.peel55, %bb1.loopexit.peel54 ], [ %count.sroa.0.1.lcssa.peel55, %bb1.loopexit ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %bb1.loopexit.peel54, %bb1.loopexit
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %bb1.loopexit ], [ 2, %bb1.loopexit.peel54 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br i1 %_2512, label %panic, label %bb1.loopexit

panic:                                            ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv23, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_056eabce1a0918256455f9fa61bf9ba8) #18
  unreachable

panic2:                                           ; preds = %bb13.lr.ph.split.peel38, %bb13.lr.ph.split.peel
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9743d7c4b95b60ece2bab1ea6366e0d4) #18
  unreachable
}
