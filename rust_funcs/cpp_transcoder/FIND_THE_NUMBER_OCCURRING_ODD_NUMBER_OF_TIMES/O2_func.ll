define noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %arr, i32 noundef %arr_size) unnamed_addr #1 {
start:
  %_2614 = icmp sgt i32 %arr_size, 0
  %0 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_35 = load ptr, ptr %0, align 8, !nonnull !23
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %_34 = load i64, ptr %1, align 8
  %2 = sext i32 %arr_size to i64
  %3 = add i32 %arr_size, -1
  %4 = zext i32 %3 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %arr_size, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %.not.not = icmp ugt i64 %_34, %4
  %exitcond26.not33 = icmp slt i32 %arr_size, 1
  br i1 %exitcond26.not33, label %bb8, label %bb9.preheader

bb9.preheader:                                    ; preds = %start
  %min.iters.check = icmp ult i32 %arr_size, 8
  %n.vec = and i64 %2, 2147483640
  %cmp.n = icmp eq i64 %n.vec, %2
  br label %bb9

bb9:                                              ; preds = %bb9.preheader, %bb1.backedge
  %indvars.iv2334 = phi i64 [ %indvars.iv.next24, %bb1.backedge ], [ 0, %bb9.preheader ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv2334, 1
  br i1 %_2614, label %bb14.lr.ph, label %bb1.backedge

bb14.lr.ph:                                       ; preds = %bb9
  %_37 = icmp ugt i64 %_34, %indvars.iv2334
  %_10 = getelementptr inbounds nuw i32, ptr %_35, i64 %indvars.iv2334
  br i1 %_37, label %bb14.preheader, label %panic2

bb14.preheader:                                   ; preds = %bb14.lr.ph
  br i1 %.not.not, label %bb14.preheader.split, label %panic3

bb14.preheader.split:                             ; preds = %bb14.preheader
  %_9.pre = load i32, ptr %_10, align 4
  br i1 %min.iters.check, label %bb14.preheader37, label %vector.ph

vector.ph:                                        ; preds = %bb14.preheader.split
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %_9.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %11, %vector.body ]
  %vec.phi35 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %5 = getelementptr inbounds nuw i32, ptr %_35, i64 %index
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load = load <4 x i32>, ptr %5, align 4
  %wide.load36 = load <4 x i32>, ptr %6, align 4
  %7 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %8 = icmp eq <4 x i32> %broadcast.splat, %wide.load36
  %9 = zext <4 x i1> %7 to <4 x i32>
  %10 = zext <4 x i1> %8 to <4 x i32>
  %11 = add <4 x i32> %vec.phi, %9
  %12 = add <4 x i32> %vec.phi35, %10
  %index.next = add nuw i64 %index, 8
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %12, %11
  %14 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br i1 %cmp.n, label %bb15.loopexit, label %bb14.preheader37

bb14.preheader37:                                 ; preds = %bb14.preheader.split, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb14.preheader.split ], [ %n.vec, %middle.block ]
  %count.sroa.0.015.ph = phi i32 [ 0, %bb14.preheader.split ], [ %14, %middle.block ]
  br label %bb14

bb8:                                              ; preds = %bb1.backedge, %start, %bb20
  %_0.sroa.0.0 = phi i32 [ %18, %bb20 ], [ -1, %start ], [ -1, %bb1.backedge ]
  ret i32 %_0.sroa.0.0

bb15.loopexit:                                    ; preds = %bb14, %middle.block
  %spec.select.lcssa = phi i32 [ %14, %middle.block ], [ %spec.select, %bb14 ]
  %15 = and i32 %spec.select.lcssa, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %bb1.backedge, label %bb6

bb1.backedge:                                     ; preds = %bb9, %bb15.loopexit
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count
  br i1 %exitcond26.not, label %bb8, label %bb9

bb14:                                             ; preds = %bb14.preheader37, %bb14
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb14 ], [ %indvars.iv.ph, %bb14.preheader37 ]
  %count.sroa.0.015 = phi i32 [ %spec.select, %bb14 ], [ %count.sroa.0.015.ph, %bb14.preheader37 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_13 = getelementptr inbounds nuw i32, ptr %_35, i64 %indvars.iv
  %_12 = load i32, ptr %_13, align 4, !noundef !23
  %_8 = icmp eq i32 %_9.pre, %_12
  %17 = zext i1 %_8 to i32
  %spec.select = add i32 %count.sroa.0.015, %17
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %bb15.loopexit, label %bb14, !llvm.loop !1032

bb6:                                              ; preds = %bb15.loopexit
  %_18 = and i64 %indvars.iv2334, 4294967295
  %_47 = icmp ugt i64 %_34, %_18
  br i1 %_47, label %bb20, label %panic

bb20:                                             ; preds = %bb6
  %_17 = getelementptr inbounds nuw i32, ptr %_35, i64 %_18
  %18 = load i32, ptr %_17, align 4, !noundef !23
  br label %bb8

panic:                                            ; preds = %bb6
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_18, i64 noundef %_34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6c9868ef4c5b02a03fd29763e7621d24) #18
  unreachable

panic2:                                           ; preds = %bb14.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv2334, i64 noundef %_34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_518d6d969c4fd08a83059de5c672e33e) #18
  unreachable

panic3:                                           ; preds = %bb14.preheader
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_34, i64 noundef %_34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ef444f7e4ac00cef7fd2becfc020a6ef) #18
  unreachable
}
