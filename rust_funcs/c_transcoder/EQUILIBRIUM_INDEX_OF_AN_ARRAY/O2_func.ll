define noundef range(i32 -1, 3) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %zext = zext i32 %n to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count39 = zext nneg i32 %smax to i64
  %1 = trunc i64 %0 to i32
  %2 = bitcast i32 %1 to float
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = bitcast i32 %4 to float
  %6 = fadd float %2, 0.000000e+00
  %7 = fadd float %6, %5
  %_331841 = icmp sgt i32 %n, 1
  br label %bb1

bb1:                                              ; preds = %bb19, %start
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %bb19 ], [ 0, %start ]
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %bb19 ], [ 1, %start ]
  %indvars.iv26 = phi i32 [ %indvars.iv.next27, %bb19 ], [ -1, %start ]
  %exitcond.not = icmp eq i64 %indvars.iv36, %wide.trip.count39
  br i1 %exitcond.not, label %bb8, label %bb9

bb9:                                              ; preds = %bb1
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  switch i64 %indvars.iv36, label %panic4 [
    i64 0, label %bb4.preheader.thread
    i64 1, label %bb4.preheader
    i64 2, label %bb4.preheader.fold.split
  ]

bb8.split.loop.exit:                              ; preds = %bb19
  %8 = trunc nuw nsw i64 %indvars.iv36 to i32
  br label %bb8

bb8:                                              ; preds = %bb1, %bb8.split.loop.exit
  %i.sroa.0.0 = phi i32 [ %8, %bb8.split.loop.exit ], [ -1, %bb1 ]
  ret i32 %i.sroa.0.0

bb4.preheader.fold.split:                         ; preds = %bb9
  br label %bb4.preheader

bb4.preheader:                                    ; preds = %bb9, %bb4.preheader.fold.split
  %leftsum.sroa.0.0.lcssa = phi float [ %7, %bb4.preheader.fold.split ], [ %6, %bb9 ]
  %9 = trunc nuw nsw i64 %indvars.iv.next37 to i32
  %_3318 = icmp sgt i32 %n, %9
  br i1 %_3318, label %panic, label %bb4.preheader.bb19_crit_edge

bb4.preheader.thread:                             ; preds = %bb9
  br i1 %_331841, label %bb5.peel, label %bb4.preheader.bb19_crit_edge

bb4.preheader.bb19_crit_edge:                     ; preds = %bb4.preheader.thread, %bb4.preheader
  %leftsum.sroa.0.0.lcssa43 = phi float [ 0.000000e+00, %bb4.preheader.thread ], [ %leftsum.sroa.0.0.lcssa, %bb4.preheader ]
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb19

bb5.peel:                                         ; preds = %bb4.preheader.thread
  %indvars.iv.next31.peel = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp eq i64 %indvars.iv.next31.peel, %zext
  br i1 %.not, label %bb19.loopexit, label %panic

bb19.loopexit:                                    ; preds = %bb5.peel
  %10 = getelementptr inbounds nuw float, ptr %arr, i64 %indvars.iv
  %_15.peel = load float, ptr %10, align 4, !noundef !23
  %11 = fadd float %_15.peel, 0.000000e+00
  br label %bb19

bb19:                                             ; preds = %bb4.preheader.bb19_crit_edge, %bb19.loopexit
  %leftsum.sroa.0.0.lcssa42 = phi float [ %leftsum.sroa.0.0.lcssa43, %bb4.preheader.bb19_crit_edge ], [ 0.000000e+00, %bb19.loopexit ]
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %bb4.preheader.bb19_crit_edge ], [ %indvars.iv.next31.peel, %bb19.loopexit ]
  %rightsum.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb4.preheader.bb19_crit_edge ], [ %11, %bb19.loopexit ]
  %_18 = fcmp oeq float %leftsum.sroa.0.0.lcssa42, %rightsum.sroa.0.0.lcssa
  %indvars.iv.next27 = add nsw i32 %indvars.iv26, 1
  br i1 %_18, label %bb8.split.loop.exit, label %bb1

panic:                                            ; preds = %bb5.peel, %bb4.preheader
  %_16.lcssa = phi i64 [ %indvars.iv, %bb4.preheader ], [ %indvars.iv.next31.peel, %bb5.peel ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_16.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7b055641b924341a839b39e21cb87bbd) #18
  unreachable

panic4:                                           ; preds = %bb9
  %12 = tail call i32 @llvm.umin.i32(i32 %indvars.iv26, i32 2)
  %umin = zext nneg i32 %12 to i64
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %umin, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1d5b31dabd66f215c5b8cb93063fd335) #18
  unreachable
}
