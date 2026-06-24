define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_2233 = icmp sgt i32 %n, 0
  br i1 %_2233, label %bb13.preheader, label %bb14

bb13.preheader:                                   ; preds = %start
  %1 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %n to i64
  %2 = add nsw i32 %n, -3
  br label %bb13

bb1.loopexit:                                     ; preds = %bb2.loopexit, %bb13
  %sum.sroa.0.1.lcssa = phi i32 [ %sum.sroa.0.035, %bb13 ], [ %sum.sroa.0.2.lcssa, %bb2.loopexit ]
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count
  br i1 %exitcond58.not, label %bb14, label %bb13

bb14:                                             ; preds = %bb1.loopexit, %start
  %sum.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %sum.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %sum.sroa.0.0.lcssa

bb13:                                             ; preds = %bb13.preheader, %bb1.loopexit
  %indvars.iv55 = phi i64 [ 0, %bb13.preheader ], [ %indvars.iv.next56, %bb1.loopexit ]
  %indvars.iv48 = phi i64 [ 1, %bb13.preheader ], [ %indvars.iv.next49, %bb1.loopexit ]
  %indvars.iv = phi i32 [ 2, %bb13.preheader ], [ %indvars.iv.next, %bb1.loopexit ]
  %sum.sroa.0.035 = phi i32 [ -2147483648, %bb13.preheader ], [ %sum.sroa.0.1.lcssa, %bb1.loopexit ]
  %3 = sext i32 %indvars.iv to i64
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %_2928 = icmp samesign ult i64 %indvars.iv.next56, %1
  br i1 %_2928, label %bb18.lr.ph, label %bb1.loopexit

bb18.lr.ph:                                       ; preds = %bb13
  %4 = sext i32 %indvars.iv to i64
  %_15 = icmp samesign ult i64 %indvars.iv55, 2
  %5 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv55
  br label %bb18

bb2.loopexit:                                     ; preds = %bb6, %bb18
  %sum.sroa.0.2.lcssa = phi i32 [ %sum.sroa.0.130, %bb18 ], [ %spec.select, %bb6 ]
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  %lftr.wideiv53 = trunc i64 %indvars.iv.next51 to i32
  %exitcond54.not = icmp eq i32 %n, %lftr.wideiv53
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond54.not, label %bb1.loopexit, label %bb18

bb18:                                             ; preds = %bb18.lr.ph, %bb2.loopexit
  %indvar = phi i64 [ 0, %bb18.lr.ph ], [ %indvar.next, %bb2.loopexit ]
  %indvars.iv50 = phi i64 [ %indvars.iv48, %bb18.lr.ph ], [ %indvars.iv.next51, %bb2.loopexit ]
  %indvars.iv42 = phi i64 [ %4, %bb18.lr.ph ], [ %indvars.iv.next43, %bb2.loopexit ]
  %sum.sroa.0.130 = phi i32 [ %sum.sroa.0.035, %bb18.lr.ph ], [ %sum.sroa.0.2.lcssa, %bb2.loopexit ]
  %iter1.sroa.0.0.in29.in = phi i64 [ %indvars.iv55, %bb18.lr.ph ], [ %indvars.iv50, %bb2.loopexit ]
  %6 = add i64 %indvar, %3
  %7 = sub i64 2, %6
  %8 = add i64 %indvars.iv55, %indvar
  %9 = trunc i64 %8 to i32
  %10 = sub i32 %2, %9
  %11 = zext i32 %10 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %7, i64 %11)
  %12 = add nuw nsw i64 %umin, 1
  %iter1.sroa.0.0.in29 = trunc i64 %iter1.sroa.0.0.in29.in to i32
  %13 = add nuw i32 %iter1.sroa.0.0.in29, 2
  %_3624 = icmp slt i32 %13, %n
  br i1 %_3624, label %bb22.lr.ph, label %bb2.loopexit

bb22.lr.ph:                                       ; preds = %bb18
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv50
  br i1 %_15, label %bb22.lr.ph.split, label %panic

bb22.lr.ph.split:                                 ; preds = %bb22.lr.ph
  %_18 = icmp samesign ult i64 %indvars.iv50, 2
  br i1 %_18, label %bb22.preheader, label %panic3

bb22.preheader:                                   ; preds = %bb22.lr.ph.split
  %min.iters.check = icmp samesign ult i64 %umin, 8
  br i1 %min.iters.check, label %bb22.preheader77, label %vector.ph

vector.ph:                                        ; preds = %bb22.preheader
  %n.mod.vf = and i64 %12, 7
  %15 = icmp eq i64 %n.mod.vf, 0
  %16 = select i1 %15, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %12, %16
  %17 = add i64 %indvars.iv42, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %sum.sroa.0.130, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %18 = load i32, ptr %5, align 4, !noundef !23
  %broadcast.splatinsert74 = insertelement <4 x i32> poison, i32 %18, i64 0
  %broadcast.splat75 = shufflevector <4 x i32> %broadcast.splatinsert74, <4 x i32> poison, <4 x i32> zeroinitializer
  %19 = load i32, ptr %14, align 4, !noundef !23
  %broadcast.splatinsert72 = insertelement <4 x i32> poison, i32 %19, i64 0
  %broadcast.splat73 = shufflevector <4 x i32> %broadcast.splatinsert72, <4 x i32> poison, <4 x i32> zeroinitializer
  %20 = add <4 x i32> %broadcast.splat73, %broadcast.splat75
  %21 = add <4 x i32> %broadcast.splat73, %broadcast.splat75
  %22 = getelementptr i32, ptr %arr, i64 %indvars.iv42
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %27, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %28, %vector.body ]
  %23 = getelementptr i32, ptr %22, i64 %index
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %wide.load = load <4 x i32>, ptr %23, align 4
  %wide.load76 = load <4 x i32>, ptr %24, align 4
  %25 = add <4 x i32> %20, %wide.load
  %26 = add <4 x i32> %21, %wide.load76
  %27 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %25)
  %28 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi71, <4 x i32> %26)
  %index.next = add nuw i64 %index, 8
  %29 = icmp eq i64 %index.next, %n.vec
  br i1 %29, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %27, <4 x i32> %28)
  %30 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  br label %bb22.preheader77

bb22.preheader77:                                 ; preds = %bb22.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ %indvars.iv42, %bb22.preheader ], [ %17, %middle.block ]
  %sum.sroa.0.225.ph = phi i32 [ %sum.sroa.0.130, %bb22.preheader ], [ %30, %middle.block ]
  br label %bb22

bb22:                                             ; preds = %bb22.preheader77, %bb6
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb6 ], [ %indvars.iv44.ph, %bb22.preheader77 ]
  %sum.sroa.0.225 = phi i32 [ %spec.select, %bb6 ], [ %sum.sroa.0.225.ph, %bb22.preheader77 ]
  %exitcond.not = icmp eq i64 %indvars.iv44, 2
  br i1 %exitcond.not, label %panic4, label %bb6

panic:                                            ; preds = %bb22.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv55, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1b74d05f1690b25c3b2480e06cd04f7b) #18
  unreachable

panic3:                                           ; preds = %bb22.lr.ph.split
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv50, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_750516464a0ca8ca005b2723eed55a8a) #18
  unreachable

bb6:                                              ; preds = %bb22
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1
  %_13 = load i32, ptr %5, align 4, !noundef !23
  %_16 = load i32, ptr %14, align 4, !noundef !23
  %_12 = add i32 %_16, %_13
  %31 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv44
  %_19 = load i32, ptr %31, align 4, !noundef !23
  %_11 = add i32 %_12, %_19
  %spec.select = tail call i32 @llvm.smax.i32(i32 %sum.sroa.0.225, i32 %_11)
  %lftr.wideiv = trunc i64 %indvars.iv.next45 to i32
  %exitcond47.not = icmp eq i32 %n, %lftr.wideiv
  br i1 %exitcond47.not, label %bb2.loopexit, label %bb22, !llvm.loop !1032

panic4:                                           ; preds = %bb22
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b6e5cef0443a34c8c4947da36533c657) #18
  unreachable
}
