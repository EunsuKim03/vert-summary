define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_1515 = icmp sgt i32 %n, 0
  br i1 %_1515, label %bb8.preheader, label %bb9

bb8.preheader:                                    ; preds = %start
  %1 = zext nneg i32 %n to i64
  %wide.trip.count28 = zext nneg i32 %n to i64
  %2 = add nsw i64 %wide.trip.count28, -2
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
  %3 = sub i64 %2, %indvars.iv25
  %4 = sub nsw i64 1, %indvars.iv25
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %4)
  %5 = add nsw i64 %umin, 1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %_2212 = icmp samesign ult i64 %indvars.iv.next26, %1
  br i1 %_2212, label %bb13.lr.ph, label %bb1.loopexit

bb13.lr.ph:                                       ; preds = %bb8
  %_11 = icmp samesign ult i64 %indvars.iv25, 2
  %6 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv25
  br i1 %_11, label %bb13.preheader, label %panic

bb13.preheader:                                   ; preds = %bb13.lr.ph
  %min.iters.check = icmp samesign ult i64 %5, 9
  br i1 %min.iters.check, label %bb13, label %vector.ph

vector.ph:                                        ; preds = %bb13.preheader
  %7 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %count.sroa.0.017, i64 0
  %8 = load i32, ptr %6, align 4, !noundef !23
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %9 = getelementptr i32, ptr %a, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %7, %vector.ph ], [ %18, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %19, %vector.body ]
  %10 = getelementptr i32, ptr %9, i64 %index
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.load = load <4 x i32>, ptr %10, align 4
  %wide.load35 = load <4 x i32>, ptr %11, align 4
  %12 = and <4 x i32> %wide.load, %broadcast.splat
  %13 = and <4 x i32> %wide.load35, %broadcast.splat
  %14 = icmp eq <4 x i32> %12, zeroinitializer
  %15 = icmp eq <4 x i32> %13, zeroinitializer
  %16 = add <4 x i32> %vec.phi, splat (i32 2)
  %17 = add <4 x i32> %vec.phi34, splat (i32 2)
  %18 = select <4 x i1> %14, <4 x i32> %16, <4 x i32> %vec.phi
  %19 = select <4 x i1> %15, <4 x i32> %17, <4 x i32> %vec.phi34
  %index.next = add nuw i64 %index, 8
  br label %vector.body, !llvm.loop !1031

bb13:                                             ; preds = %bb13.preheader, %bb4
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %bb4 ], [ %indvars.iv, %bb13.preheader ]
  %count.sroa.0.113 = phi i32 [ %spec.select, %bb4 ], [ %count.sroa.0.017, %bb13.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv21, 2
  br i1 %exitcond.not, label %panic2, label %bb4

panic:                                            ; preds = %bb13.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv25, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2899b55be7bcd62d5cf5082eddedaf25) #18
  unreachable

bb4:                                              ; preds = %bb13
  %_9 = load i32, ptr %6, align 4, !noundef !23
  %20 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv21
  %_12 = load i32, ptr %20, align 4, !noundef !23
  %_8 = and i32 %_12, %_9
  %_7 = icmp eq i32 %_8, 0
  %21 = add i32 %count.sroa.0.113, 2
  %spec.select = select i1 %_7, i32 %21, i32 %count.sroa.0.113
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond24.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count28
  br i1 %exitcond24.not, label %bb1.loopexit, label %bb13, !llvm.loop !1032

panic2:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_39d418c850af4eb6143fbd36064073e9) #18
  unreachable
}
