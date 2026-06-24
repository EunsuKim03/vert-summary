define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n, i32 noundef %k) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %b = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  store i64 %1, ptr %b, align 8
  %_0.i.i.i38 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i38, label %bb5.lr.ph, label %bb6

bb5.lr.ph:                                        ; preds = %start
  %_48 = shl i32 %k, 1
  %_40 = shl i32 %k, 1
  %_31 = shl i32 %k, 1
  %_23 = shl i32 %k, 1
  %2 = zext nneg i32 %n to i64
  %3 = add nsw i32 %n, -3
  %.not = icmp ult i32 %3, -2
  br label %bb5

bb5:                                              ; preds = %bb5.lr.ph, %bb45
  %indvars.iv45 = phi i64 [ 0, %bb5.lr.ph ], [ %indvars.iv.next46, %bb45 ]
  %res.sroa.0.041 = phi i32 [ 0, %bb5.lr.ph ], [ %7, %bb45 ]
  %diff.sroa.0.040 = phi i32 [ 0, %bb5.lr.ph ], [ %diff.sroa.0.1, %bb45 ]
  br i1 %.not, label %panic, label %bb7

bb6.loopexit:                                     ; preds = %bb45
  %4 = sub i32 %7, %diff.sroa.0.1
  br label %bb6

bb6:                                              ; preds = %bb6.loopexit, %start
  %_0 = phi i32 [ 0, %start ], [ %4, %bb6.loopexit ]
  ret i32 %_0

bb7:                                              ; preds = %bb5
  %5 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv45
  %_15 = load i32, ptr %5, align 4, !noundef !37
  %6 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv45
  %_18 = load i32, ptr %6, align 4, !noundef !37
  %pro = mul i32 %_18, %_15
  %7 = add i32 %pro, %res.sroa.0.041
  %_19 = icmp slt i32 %pro, 0
  br i1 %_19, label %bb10, label %bb25

panic:                                            ; preds = %bb5
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_16a1cd14310a00fd1a4eb2389195b5f5) #24
  unreachable

bb25:                                             ; preds = %bb18, %bb7
  %_36 = icmp sgt i32 %pro, 0
  br i1 %_36, label %bb27, label %bb45

bb10:                                             ; preds = %bb7
  %_20 = icmp slt i32 %_18, 0
  br i1 %_20, label %bb12, label %bb18

bb18:                                             ; preds = %bb10
  %_28 = icmp slt i32 %_15, 0
  br i1 %_28, label %bb20, label %bb25

bb27:                                             ; preds = %bb25
  %_37 = icmp slt i32 %_15, 0
  br i1 %_37, label %bb29, label %bb35

bb35:                                             ; preds = %bb27
  %_45.not = icmp eq i32 %_15, 0
  br i1 %_45.not, label %bb45, label %bb37

bb37:                                             ; preds = %bb35
  %_47 = sub i32 %_15, %_48
  %temp = mul i32 %_47, %_18
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %temp, i1 false)
  %_50 = sub i32 %_0.sroa.0.0.i, %pro
  %_0.sroa.0.0.i25 = tail call noundef i32 @llvm.smax.i32(i32 %_50, i32 %diff.sroa.0.040)
  br label %bb45

bb29:                                             ; preds = %bb27
  %_39 = add i32 %_15, %_40
  %temp10 = mul i32 %_39, %_18
  %_0.sroa.0.0.i26 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %temp10, i1 false)
  %_42 = sub i32 %_0.sroa.0.0.i26, %pro
  %_0.sroa.0.0.i28 = tail call noundef i32 @llvm.smax.i32(i32 %_42, i32 %diff.sroa.0.040)
  br label %bb45

bb20:                                             ; preds = %bb18
  %_30 = sub i32 %_15, %_31
  %temp13 = mul i32 %_30, %_18
  %_0.sroa.0.0.i29 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %temp13, i1 false)
  %_33 = add i32 %_0.sroa.0.0.i29, %pro
  %_0.sroa.0.0.i31 = tail call noundef i32 @llvm.smax.i32(i32 %_33, i32 %diff.sroa.0.040)
  br label %bb45

bb45:                                             ; preds = %bb20, %bb25, %bb35, %bb37, %bb29, %bb12
  %diff.sroa.0.1 = phi i32 [ %_0.sroa.0.0.i34, %bb12 ], [ %_0.sroa.0.0.i31, %bb20 ], [ %_0.sroa.0.0.i28, %bb29 ], [ %_0.sroa.0.0.i25, %bb37 ], [ %diff.sroa.0.040, %bb35 ], [ %diff.sroa.0.040, %bb25 ]
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next46, %2
  br i1 %exitcond.not, label %bb6.loopexit, label %bb5

bb12:                                             ; preds = %bb10
  %_22 = add i32 %_15, %_23
  %temp16 = mul i32 %_22, %_18
  %_0.sroa.0.0.i32 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %temp16, i1 false)
  %_25 = add i32 %_0.sroa.0.0.i32, %pro
  %_0.sroa.0.0.i34 = tail call noundef i32 @llvm.smax.i32(i32 %_25, i32 %diff.sroa.0.040)
  br label %bb45
}
