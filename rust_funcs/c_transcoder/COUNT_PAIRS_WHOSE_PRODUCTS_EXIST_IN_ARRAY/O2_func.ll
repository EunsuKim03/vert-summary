define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_2023 = icmp sgt i32 %n, 0
  %1 = trunc i64 %0 to i32
  %2 = lshr i64 %0, 32
  %3 = trunc nuw i64 %2 to i32
  br i1 %_2023, label %bb10.preheader, label %bb11

bb10.preheader:                                   ; preds = %start
  %4 = zext nneg i32 %n to i64
  %wide.trip.count44 = zext nneg i32 %n to i64
  %exitcond.1.not = icmp eq i32 %n, 1
  %exitcond.2.not = icmp eq i32 %n, 2
  br label %bb10

bb1.loopexit:                                     ; preds = %bb9, %bb10
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.025, %bb10 ], [ %result.sroa.0.2, %bb9 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next37 = add nsw i32 %indvars.iv36, -1
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %bb11, label %bb10

bb11:                                             ; preds = %bb1.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %result.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.preheader, %bb1.loopexit
  %indvars.iv41 = phi i64 [ 0, %bb10.preheader ], [ %indvars.iv.next42, %bb1.loopexit ]
  %indvars.iv36 = phi i32 [ 1, %bb10.preheader ], [ %indvars.iv.next37, %bb1.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb10.preheader ], [ %indvars.iv.next, %bb1.loopexit ]
  %result.sroa.0.025 = phi i32 [ 0, %bb10.preheader ], [ %result.sroa.0.1.lcssa, %bb1.loopexit ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %_2720 = icmp samesign ult i64 %indvars.iv.next42, %4
  br i1 %_2720, label %bb15.lr.ph, label %bb1.loopexit

bb15.lr.ph:                                       ; preds = %bb10
  %_10 = icmp samesign ult i64 %indvars.iv41, 2
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv41
  br i1 %_10, label %bb15, label %panic

bb15:                                             ; preds = %bb15.lr.ph, %bb9
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb9 ], [ %indvars.iv, %bb15.lr.ph ]
  %result.sroa.0.121 = phi i32 [ %result.sroa.0.2, %bb9 ], [ %result.sroa.0.025, %bb15.lr.ph ]
  %exitcond.not = icmp eq i64 %indvars.iv34, 2
  br i1 %exitcond.not, label %panic3, label %bb19

panic:                                            ; preds = %bb15.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv41, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_13c27fcf3d678ae4e6a0d1dfb26c3a10) #18
  unreachable

panic3:                                           ; preds = %bb15
  %6 = zext i32 %indvars.iv36 to i64
  %7 = add nuw i64 %indvars.iv, %6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %7, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_76472c4da2527081835d3f2886221130) #18
  unreachable

bb19:                                             ; preds = %bb15
  %_8 = load i32, ptr %5, align 4, !noundef !23
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv34
  %_11 = load i32, ptr %8, align 4, !noundef !23
  %product = mul i32 %_11, %_8
  %_16 = icmp eq i32 %product, %1
  br i1 %_16, label %bb7, label %bb5.1

bb9:                                              ; preds = %bb5.1, %bb5.2, %bb7
  %result.sroa.0.2 = phi i32 [ %9, %bb7 ], [ %result.sroa.0.121, %bb5.2 ], [ %result.sroa.0.121, %bb5.1 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count44
  br i1 %exitcond40.not, label %bb1.loopexit, label %bb15

bb5.1:                                            ; preds = %bb19
  br i1 %exitcond.1.not, label %bb9, label %bb19.1

bb19.1:                                           ; preds = %bb5.1
  %_16.1 = icmp eq i32 %product, %3
  br i1 %_16.1, label %bb7, label %bb5.2

bb5.2:                                            ; preds = %bb19.1
  br i1 %exitcond.2.not, label %bb9, label %panic4

panic4:                                           ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d4d4b375d8811b0a200bacba19c361e3) #18
  unreachable

bb7:                                              ; preds = %bb19.1, %bb19
  %9 = add i32 %result.sroa.0.121, 1
  br label %bb9
}
