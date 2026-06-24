define noundef range(i32 0, 2) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_7 = add i32 %n, -1
  %_513 = icmp sgt i32 %_7, 0
  br i1 %_513, label %bb2.lr.ph, label %bb11

bb2.lr.ph:                                        ; preds = %start
  %_24 = sitofp i32 %x to float
  %1 = sext i32 %n to i64
  %wide.trip.count29 = zext nneg i32 %_7 to i64
  %wide.trip.count = zext i32 %n to i64
  br label %bb2

bb1.loopexit:                                     ; preds = %bb3, %bb2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next23 = add nsw i32 %indvars.iv22, -1
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count29
  br i1 %exitcond30.not, label %bb11, label %bb2

bb2:                                              ; preds = %bb2.lr.ph, %bb1.loopexit
  %indvars.iv26 = phi i64 [ 0, %bb2.lr.ph ], [ %indvars.iv.next27, %bb1.loopexit ]
  %indvars.iv22 = phi i32 [ 1, %bb2.lr.ph ], [ %indvars.iv.next23, %bb1.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb2.lr.ph ], [ %indvars.iv.next, %bb1.loopexit ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %_1011 = icmp slt i64 %indvars.iv.next27, %1
  br i1 %_1011, label %bb4.lr.ph, label %bb1.loopexit

bb4.lr.ph:                                        ; preds = %bb2
  %_18 = icmp samesign ult i64 %indvars.iv26, 2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv26
  br i1 %_18, label %bb4, label %panic

bb11:                                             ; preds = %bb1.loopexit, %bb6, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ 1, %bb6 ], [ 0, %bb1.loopexit ]
  ret i32 %_0.sroa.0.0

bb3:                                              ; preds = %bb6
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count
  br i1 %exitcond25.not, label %bb1.loopexit, label %bb4

bb4:                                              ; preds = %bb4.lr.ph, %bb3
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %bb3 ], [ %indvars.iv, %bb4.lr.ph ]
  %exitcond.not = icmp eq i64 %indvars.iv20, 2
  br i1 %exitcond.not, label %panic1, label %bb6

panic:                                            ; preds = %bb4.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv26, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4f228adf5b347fe689c3250b01d7cdd1) #18
  unreachable

bb6:                                              ; preds = %bb4
  %_15 = load i32, ptr %2, align 4, !noundef !23
  %_14 = sitofp i32 %_15 to float
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv20
  %_20 = load i32, ptr %3, align 4, !noundef !23
  %_19 = sitofp i32 %_20 to float
  %_13 = fmul float %_14, %_19
  %_12 = fcmp oeq float %_13, %_24
  br i1 %_12, label %bb11, label %bb3

panic1:                                           ; preds = %bb4
  %4 = zext i32 %indvars.iv22 to i64
  %5 = add nuw i64 %indvars.iv, %4
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %5, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ced1ff0f5287a6e3e0c5b9fdd56fd332) #18
  unreachable
}
