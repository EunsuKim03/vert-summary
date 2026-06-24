define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %m, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %arr1 = alloca [8 x i8], align 8
  store i64 %0, ptr %arr1, align 8
  %arr2.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %arr2.sroa.2.0.extract.shift = lshr i64 %1, 32
  %arr2.sroa.2.0.extract.trunc = trunc nuw i64 %arr2.sroa.2.0.extract.shift to i32
  %iter2 = sext i32 %m to i64
  %_1820.not = icmp eq i32 %m, 0
  br i1 %_1820.not, label %bb9, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %start
  %iter3 = sext i32 %n to i64
  %_2217.not = icmp eq i32 %n, 0
  %2 = add nsw i64 %iter3, -3
  %.not = icmp ult i64 %2, -2
  %min.iters.check = icmp ult i32 %n, 8
  %exitcond.not = icmp eq i32 %n, 1
  %exitcond.not.2 = icmp eq i32 %n, 3
  br label %bb8

bb1.loopexit:                                     ; preds = %bb10.1, %bb10, %bb8
  %count.sroa.0.1.lcssa = phi i32 [ %count.sroa.0.021, %bb8 ], [ %spec.select, %bb10 ], [ %spec.select.1, %bb10.1 ]
  %exitcond27.not = icmp eq i64 %3, %iter2
  br i1 %exitcond27.not, label %bb9, label %bb8

bb9:                                              ; preds = %bb1.loopexit, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %bb8.lr.ph, %bb1.loopexit
  %iter.sroa.0.022 = phi i64 [ 0, %bb8.lr.ph ], [ %3, %bb1.loopexit ]
  %count.sroa.0.021 = phi i32 [ 0, %bb8.lr.ph ], [ %count.sroa.0.1.lcssa, %bb1.loopexit ]
  %3 = add nuw i64 %iter.sroa.0.022, 1
  br i1 %_2217.not, label %bb1.loopexit, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %bb8
  %_15 = icmp ult i64 %iter.sroa.0.022, 2
  br i1 %_15, label %bb10.lr.ph.split, label %panic

bb10.lr.ph.split:                                 ; preds = %bb10.lr.ph
  %4 = getelementptr inbounds nuw i32, ptr %arr1, i64 %iter.sroa.0.022
  %_14 = load i32, ptr %4, align 4, !noundef !23
  br i1 %.not, label %panic4, label %bb10.preheader

bb10.preheader:                                   ; preds = %bb10.lr.ph.split
  br i1 %min.iters.check, label %bb10, label %vector.body

vector.body:                                      ; preds = %bb10.preheader, %vector.body
  br label %vector.body, !llvm.loop !1031

bb10:                                             ; preds = %bb10.preheader
  %_13 = add i32 %_14, %arr2.sroa.0.0.extract.trunc
  %_12 = icmp eq i32 %_13, %x
  %5 = zext i1 %_12 to i32
  %spec.select = add i32 %count.sroa.0.021, %5
  br i1 %exitcond.not, label %bb1.loopexit, label %bb10.1, !llvm.loop !1032

bb10.1:                                           ; preds = %bb10
  %_13.1 = add i32 %_14, %arr2.sroa.2.0.extract.trunc
  %_12.1 = icmp eq i32 %_13.1, %x
  %6 = zext i1 %_12.1 to i32
  %spec.select.1 = add i32 %spec.select, %6
  br label %bb1.loopexit

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.022, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_cbb7c1d5329b8da382fead80df7aa940) #18
  unreachable

panic4:                                           ; preds = %bb10.lr.ph.split
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b86bf6ac912e92f0477b86200d887d49) #18
  unreachable
}
