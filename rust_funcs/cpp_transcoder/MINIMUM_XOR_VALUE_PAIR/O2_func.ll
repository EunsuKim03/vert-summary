define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_1615 = icmp sgt i32 %n, 0
  br i1 %_1615, label %bb6.preheader, label %bb7

bb6.preheader:                                    ; preds = %start
  %0 = zext nneg i32 %n to i64
  %wide.trip.count28 = zext nneg i32 %n to i64
  %1 = add nsw i64 %0, -2
  br label %bb6

bb1.loopexit:                                     ; preds = %bb4, %bb6
  %min_xor.sroa.0.1.lcssa = phi i32 [ %min_xor.sroa.0.017, %bb6 ], [ %_0.sroa.0.0.i, %bb4 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %bb7, label %bb6

bb7:                                              ; preds = %bb1.loopexit, %start
  %min_xor.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %min_xor.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %min_xor.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.preheader, %bb1.loopexit
  %indvars.iv25 = phi i64 [ 0, %bb6.preheader ], [ %indvars.iv.next26, %bb1.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb6.preheader ], [ %indvars.iv.next, %bb1.loopexit ]
  %min_xor.sroa.0.017 = phi i32 [ 2147483647, %bb6.preheader ], [ %min_xor.sroa.0.1.lcssa, %bb1.loopexit ]
  %2 = xor i64 %indvars.iv25, -1
  %3 = add nsw i64 %arr.1, %2
  %4 = sub i64 %1, %indvars.iv25
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %4)
  %5 = add nsw i64 %umin, 1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %_2312 = icmp samesign ult i64 %indvars.iv.next26, %0
  br i1 %_2312, label %bb11.lr.ph, label %bb1.loopexit

bb11.lr.ph:                                       ; preds = %bb6
  %_12 = icmp samesign ugt i64 %arr.1, %indvars.iv25
  %6 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv25
  br i1 %_12, label %bb11.preheader, label %panic

bb11.preheader:                                   ; preds = %bb11.lr.ph
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %bb11.preheader38, label %vector.ph

vector.ph:                                        ; preds = %bb11.preheader
  %n.mod.vf = and i64 %5, 7
  %7 = icmp eq i64 %n.mod.vf, 0
  %8 = select i1 %7, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %5, %8
  %9 = add i64 %indvars.iv, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %min_xor.sroa.0.017, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = load i32, ptr %6, align 4, !noundef !23
  %broadcast.splatinsert36 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat37 = shufflevector <4 x i32> %broadcast.splatinsert36, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = getelementptr i32, ptr %arr.0, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %16, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %17, %vector.body ]
  %12 = getelementptr i32, ptr %11, i64 %index
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %wide.load = load <4 x i32>, ptr %12, align 4
  %wide.load35 = load <4 x i32>, ptr %13, align 4
  %14 = xor <4 x i32> %wide.load, %broadcast.splat37
  %15 = xor <4 x i32> %wide.load35, %broadcast.splat37
  %16 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %14, <4 x i32> %vec.phi)
  %17 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %15, <4 x i32> %vec.phi34)
  %index.next = add nuw i64 %index, 8
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %16, <4 x i32> %17)
  %19 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax)
  br label %bb11.preheader38

bb11.preheader38:                                 ; preds = %bb11.preheader, %middle.block
  %indvars.iv21.ph = phi i64 [ %indvars.iv, %bb11.preheader ], [ %9, %middle.block ]
  %min_xor.sroa.0.113.ph = phi i32 [ %min_xor.sroa.0.017, %bb11.preheader ], [ %19, %middle.block ]
  br label %bb11

bb11:                                             ; preds = %bb11.preheader38, %bb4
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %bb4 ], [ %indvars.iv21.ph, %bb11.preheader38 ]
  %min_xor.sroa.0.113 = phi i32 [ %_0.sroa.0.0.i, %bb4 ], [ %min_xor.sroa.0.113.ph, %bb11.preheader38 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %arr.1
  br i1 %exitcond.not, label %panic2, label %bb4

panic:                                            ; preds = %bb11.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv25, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ba36419ccd41c001693638b9715c19b0) #18
  unreachable

bb4:                                              ; preds = %bb11
  %_9 = load i32, ptr %6, align 4, !noundef !23
  %20 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %indvars.iv21
  %_13 = load i32, ptr %20, align 4, !noundef !23
  %_8 = xor i32 %_13, %_9
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %_8, i32 %min_xor.sroa.0.113)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond24.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count28
  br i1 %exitcond24.not, label %bb1.loopexit, label %bb11, !llvm.loop !1032

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %arr.1, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_be235631f768889b2b828e35d18ad72f) #18
  unreachable
}
