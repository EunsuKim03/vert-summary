define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %n) unnamed_addr #1 {
start:
  %_1615 = icmp sgt i32 %n, 0
  br i1 %_1615, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %start
  %0 = zext nneg i32 %n to i64
  %wide.trip.count28 = zext nneg i32 %n to i64
  %1 = add nsw i64 %0, -2
  br label %bb8

bb1.loopexit:                                     ; preds = %bb4, %bb8
  %count.sroa.0.1.lcssa = phi i32 [ %count.sroa.0.017, %bb8 ], [ %spec.select, %bb4 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %bb9, label %bb8

bb9:                                              ; preds = %bb1.loopexit, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %count.sroa.0.0.lcssa

bb8:                                              ; preds = %bb8.preheader, %bb1.loopexit
  %indvars.iv25 = phi i64 [ 0, %bb8.preheader ], [ %indvars.iv.next26, %bb1.loopexit ]
  %indvars.iv = phi i64 [ 1, %bb8.preheader ], [ %indvars.iv.next, %bb1.loopexit ]
  %count.sroa.0.017 = phi i32 [ 0, %bb8.preheader ], [ %count.sroa.0.1.lcssa, %bb1.loopexit ]
  %2 = xor i64 %indvars.iv25, -1
  %3 = add nsw i64 %a.1, %2
  %4 = sub i64 %1, %indvars.iv25
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %4)
  %5 = add nsw i64 %umin, 1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %_2312 = icmp samesign ult i64 %indvars.iv.next26, %0
  br i1 %_2312, label %bb13.lr.ph, label %bb1.loopexit

bb13.lr.ph:                                       ; preds = %bb8
  %_12 = icmp samesign ugt i64 %a.1, %indvars.iv25
  %6 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv25
  br i1 %_12, label %bb13.preheader, label %panic

bb13.preheader:                                   ; preds = %bb13.lr.ph
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %bb13.preheader36, label %vector.ph

vector.ph:                                        ; preds = %bb13.preheader
  %n.mod.vf = and i64 %5, 7
  %7 = icmp eq i64 %n.mod.vf, 0
  %8 = select i1 %7, i64 8, i64 %n.mod.vf
  %n.vec = sub i64 %5, %8
  %9 = add i64 %indvars.iv, %n.vec
  %10 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %count.sroa.0.017, i64 0
  %11 = load i32, ptr %6, align 4, !noundef !23
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %11, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %12 = getelementptr i32, ptr %a.0, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %10, %vector.ph ], [ %21, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %22, %vector.body ]
  %13 = getelementptr i32, ptr %12, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load = load <4 x i32>, ptr %13, align 4
  %wide.load35 = load <4 x i32>, ptr %14, align 4
  %15 = and <4 x i32> %wide.load, %broadcast.splat
  %16 = and <4 x i32> %wide.load35, %broadcast.splat
  %17 = icmp eq <4 x i32> %15, zeroinitializer
  %18 = icmp eq <4 x i32> %16, zeroinitializer
  %19 = add <4 x i32> %vec.phi, splat (i32 2)
  %20 = add <4 x i32> %vec.phi34, splat (i32 2)
  %21 = select <4 x i1> %17, <4 x i32> %19, <4 x i32> %vec.phi
  %22 = select <4 x i1> %18, <4 x i32> %20, <4 x i32> %vec.phi34
  %index.next = add nuw i64 %index, 8
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !1031

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %22, %21
  %24 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %bb13.preheader36

bb13.preheader36:                                 ; preds = %bb13.preheader, %middle.block
  %indvars.iv21.ph = phi i64 [ %indvars.iv, %bb13.preheader ], [ %9, %middle.block ]
  %count.sroa.0.113.ph = phi i32 [ %count.sroa.0.017, %bb13.preheader ], [ %24, %middle.block ]
  br label %bb13

bb13:                                             ; preds = %bb13.preheader36, %bb4
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %bb4 ], [ %indvars.iv21.ph, %bb13.preheader36 ]
  %count.sroa.0.113 = phi i32 [ %spec.select, %bb4 ], [ %count.sroa.0.113.ph, %bb13.preheader36 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %a.1
  br i1 %exitcond.not, label %panic2, label %bb4

panic:                                            ; preds = %bb13.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv25, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b5785814471b0c59979c2b856a030584) #18
  unreachable

bb4:                                              ; preds = %bb13
  %_9 = load i32, ptr %6, align 4, !noundef !23
  %25 = getelementptr inbounds nuw i32, ptr %a.0, i64 %indvars.iv21
  %_13 = load i32, ptr %25, align 4, !noundef !23
  %_8 = and i32 %_13, %_9
  %_7 = icmp eq i32 %_8, 0
  %26 = add i32 %count.sroa.0.113, 2
  %spec.select = select i1 %_7, i32 %26, i32 %count.sroa.0.113
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond24.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count28
  br i1 %exitcond24.not, label %bb1.loopexit, label %bb13, !llvm.loop !1032

panic2:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %a.1, i64 noundef %a.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9df6b170974ba90a6e4810f52fe142c5) #18
  unreachable
}
