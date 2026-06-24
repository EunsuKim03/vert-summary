define noundef range(i32 0, -2147483647) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_4 = add i32 %n, -1
  %iter2 = sext i32 %_4 to i64
  %_1719.not = icmp eq i32 %_4, 0
  br i1 %_1719.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %iter3 = sext i32 %n to i64
  %1 = add nsw i64 %iter3, -2
  br label %bb6

bb1.loopexit:                                     ; preds = %bb4, %bb6
  %diff.sroa.0.1.lcssa = phi i32 [ %diff.sroa.0.021, %bb6 ], [ %_0.sroa.0.0.i, %bb4 ]
  %exitcond27.not = icmp eq i64 %5, %iter2
  br i1 %exitcond27.not, label %bb7, label %bb6

bb7:                                              ; preds = %bb1.loopexit, %start
  %diff.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %diff.sroa.0.1.lcssa, %bb1.loopexit ]
  ret i32 %diff.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.lr.ph, %bb1.loopexit
  %diff.sroa.0.021 = phi i32 [ 2147483647, %bb6.lr.ph ], [ %diff.sroa.0.1.lcssa, %bb1.loopexit ]
  %iter.sroa.0.020 = phi i64 [ 0, %bb6.lr.ph ], [ %5, %bb1.loopexit ]
  %2 = sub i64 %1, %iter.sroa.0.020
  %3 = sub i64 1, %iter.sroa.0.020
  %umin = tail call i64 @llvm.umin.i64(i64 %2, i64 %3)
  %4 = add i64 %umin, 1
  %5 = add nuw i64 %iter.sroa.0.020, 1
  %_2116 = icmp ult i64 %5, %iter3
  br i1 %_2116, label %bb8.lr.ph, label %bb1.loopexit

bb8.lr.ph:                                        ; preds = %bb6
  %_14 = icmp ult i64 %iter.sroa.0.020, 2
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.020
  br i1 %_14, label %bb8.preheader, label %panic

bb8.preheader:                                    ; preds = %bb8.lr.ph
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %bb8, label %vector.ph

vector.ph:                                        ; preds = %bb8.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %diff.sroa.0.021, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %7 = load i32, ptr %6, align 4, !noundef !23
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer
  %8 = getelementptr inbounds nuw i32, ptr %arr, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %15, %vector.body ]
  %vec.phi32 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %16, %vector.body ]
  %9 = getelementptr inbounds nuw i32, ptr %8, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load = load <4 x i32>, ptr %9, align 4
  %wide.load33 = load <4 x i32>, ptr %10, align 4
  %11 = sub <4 x i32> %broadcast.splat35, %wide.load
  %12 = sub <4 x i32> %broadcast.splat35, %wide.load33
  %13 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %11, i1 false)
  %14 = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %12, i1 false)
  %15 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %13, <4 x i32> %vec.phi)
  %16 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %14, <4 x i32> %vec.phi32)
  %index.next = add nuw i64 %index, 8
  br label %vector.body, !llvm.loop !1031

bb8:                                              ; preds = %bb8.preheader, %bb4
  %iter1.sroa.0.018 = phi i64 [ %17, %bb4 ], [ %5, %bb8.preheader ]
  %diff.sroa.0.117 = phi i32 [ %_0.sroa.0.0.i, %bb4 ], [ %diff.sroa.0.021, %bb8.preheader ]
  %exitcond.not = icmp eq i64 %iter1.sroa.0.018, 2
  br i1 %exitcond.not, label %panic4, label %bb4

panic:                                            ; preds = %bb8.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.020, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eb80c4f76e330d7d9a37078f76c4858c) #18
  unreachable

bb4:                                              ; preds = %bb8
  %17 = add nuw nsw i64 %iter1.sroa.0.018, 1
  %_13 = load i32, ptr %6, align 4, !noundef !23
  %18 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter1.sroa.0.018
  %_15 = load i32, ptr %18, align 4, !noundef !23
  %_12 = sub i32 %_13, %_15
  %_11.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %_12, i1 false)
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.smin.i32(i32 range(i32 0, -2147483647) %_11.sroa.0.0, i32 range(i32 0, -2147483647) %diff.sroa.0.117)
  %exitcond26.not = icmp eq i64 %17, %iter3
  br i1 %exitcond26.not, label %bb1.loopexit, label %bb8, !llvm.loop !1032

panic4:                                           ; preds = %bb8
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9bacd6fca5735c30055c8dbd0f953e7b) #18
  unreachable
}
