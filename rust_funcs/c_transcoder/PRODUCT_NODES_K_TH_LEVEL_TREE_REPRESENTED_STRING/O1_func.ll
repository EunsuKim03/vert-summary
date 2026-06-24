define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %tree.0, i64 noundef %tree.1, i32 noundef %k) unnamed_addr #4 {
start:
  %_29 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %_0.i.i.i17.not = icmp eq i64 %tree.1, 0
  br i1 %_0.i.i.i17.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %tree.0, i64 %tree.1
  %0 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_29, i64 8
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb25
  %spec.select22 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb25 ]
  %product.sroa.0.021 = phi i32 [ 1, %bb6.lr.ph ], [ %product.sroa.0.1, %bb25 ]
  %level.sroa.0.020 = phi i32 [ -1, %bb6.lr.ph ], [ %level.sroa.0.1, %bb25 ]
  %iter.sroa.0.019 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select22, %bb25 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %tree.0, ptr %_16, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_14 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3306aedea86c400cE(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.019) #29
  switch i32 %_14, label %bb12 [
    i32 1114112, label %bb2.i9
    i32 40, label %bb11
  ], !prof !1661

bb2.i9:                                           ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_04dea761298b7208f01f61f6ac782a09) #25
  unreachable

bb7:                                              ; preds = %bb25, %start
  %product.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %product.sroa.0.1, %bb25 ]
  ret i32 %product.sroa.0.0.lcssa

bb12:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_21)
  store ptr %tree.0, ptr %_21, align 8
  store ptr %_7.i, ptr %1, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_19 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3306aedea86c400cE(ptr noalias noundef align 8 dereferenceable(16) %_21, i64 noundef %iter.sroa.0.019) #29
  switch i32 %_19, label %bb17 [
    i32 1114112, label %bb2.i6
    i32 41, label %bb16
  ], !prof !1661

bb2.i6:                                           ; preds = %bb12
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0537203286252e0fb265ff93b696b85b) #25
  unreachable

bb11:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  %3 = add i32 %level.sroa.0.020, 1
  br label %bb25

bb17:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  %_22 = icmp eq i32 %level.sroa.0.020, %k
  br i1 %_22, label %bb18, label %bb25

bb16:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  %4 = add i32 %level.sroa.0.020, -1
  br label %bb25

bb18:                                             ; preds = %bb17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_29)
  store ptr %tree.0, ptr %_29, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_27 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3306aedea86c400cE(ptr noalias noundef align 8 dereferenceable(16) %_29, i64 noundef %iter.sroa.0.019) #29
  %.not.i = icmp eq i32 %_27, 1114112
  br i1 %.not.i, label %bb2.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit", !prof !1064

bb2.i:                                            ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eb4d40ab198c68d937a87a7d810f386d) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit": ; preds = %bb18
  %_24 = add nsw i32 %_27, -48
  %5 = mul i32 %_24, %product.sroa.0.021
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_29)
  br label %bb25

bb25:                                             ; preds = %bb16, %bb17, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit", %bb11
  %level.sroa.0.1 = phi i32 [ %3, %bb11 ], [ %4, %bb16 ], [ %level.sroa.0.020, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit" ], [ %level.sroa.0.020, %bb17 ]
  %product.sroa.0.1 = phi i32 [ %product.sroa.0.021, %bb11 ], [ %product.sroa.0.021, %bb16 ], [ %5, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hd18fd6d8a0be1a6eE.exit" ], [ %product.sroa.0.021, %bb17 ]
  %_0.i.i.i = icmp ult i64 %spec.select22, %tree.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select22, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7
}
