define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_1515 = icmp sgt i32 %n, 0
  br i1 %_1515, label %bb6.preheader, label %bb7

bb6.preheader:                                    ; preds = %start
  %1 = zext nneg i32 %n to i64
  %wide.trip.count28 = zext nneg i32 %n to i64
  %2 = add nsw i64 %wide.trip.count28, -2
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
  %3 = sub i64 %2, %indvars.iv25
  %4 = sub nsw i64 1, %indvars.iv25
  %umin = tail call i64 @llvm.umin.i64(i64 %3, i64 %4)
  %5 = add nsw i64 %umin, 1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %_2212 = icmp samesign ult i64 %indvars.iv.next26, %1
  br i1 %_2212, label %bb11.lr.ph, label %bb1.loopexit

bb11.lr.ph:                                       ; preds = %bb6
  %_11 = icmp samesign ult i64 %indvars.iv25, 2
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv25
  br i1 %_11, label %bb11.preheader, label %panic

bb11.preheader:                                   ; preds = %bb11.lr.ph
  %min.iters.check = icmp samesign ult i64 %5, 9
  br i1 %min.iters.check, label %bb11, label %vector.ph

vector.ph:                                        ; preds = %bb11.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %min_xor.sroa.0.017, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %7 = load i32, ptr %6, align 4, !noundef !23
  %broadcast.splatinsert36 = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat37 = shufflevector <4 x i32> %broadcast.splatinsert36, <4 x i32> poison, <4 x i32> zeroinitializer
  %8 = getelementptr i32, ptr %arr, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %13, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %14, %vector.body ]
  %9 = getelementptr i32, ptr %8, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load = load <4 x i32>, ptr %9, align 4
  %wide.load35 = load <4 x i32>, ptr %10, align 4
  %11 = xor <4 x i32> %wide.load, %broadcast.splat37
  %12 = xor <4 x i32> %wide.load35, %broadcast.splat37
  %13 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %11, <4 x i32> %vec.phi)
  %14 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %12, <4 x i32> %vec.phi34)
  %index.next = add nuw i64 %index, 8
  br label %vector.body, !llvm.loop !1031

bb11:                                             ; preds = %bb11.preheader, %bb4
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %bb4 ], [ %indvars.iv, %bb11.preheader ]
  %min_xor.sroa.0.113 = phi i32 [ %_0.sroa.0.0.i, %bb4 ], [ %min_xor.sroa.0.017, %bb11.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv21, 2
  br i1 %exitcond.not, label %panic2, label %bb4

panic:                                            ; preds = %bb11.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv25, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a1b1e6ce641f77844372b035c5964be5) #18
  unreachable

bb4:                                              ; preds = %bb11
  %_9 = load i32, ptr %6, align 4, !noundef !23
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv21
  %_12 = load i32, ptr %15, align 4, !noundef !23
  %_8 = xor i32 %_12, %_9
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %_8, i32 %min_xor.sroa.0.113)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond24.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count28
  br i1 %exitcond24.not, label %bb1.loopexit, label %bb11, !llvm.loop !1032

panic2:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6fbb71c5eb8575971b4c3602f202ede6) #18
  unreachable
}
