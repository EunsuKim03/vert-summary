define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %tree.0, i64 noundef %tree.1, i32 noundef %k) unnamed_addr #4 {
start:
  %_30 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %_0.i.i.i19.not = icmp eq i64 %tree.1, 0
  br i1 %_0.i.i.i19.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %tree.0, i64 %tree.1
  %0 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_30, i64 8
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb27
  %spec.select24 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb27 ]
  %sum.sroa.0.023 = phi i32 [ 0, %bb6.lr.ph ], [ %sum.sroa.0.1, %bb27 ]
  %level.sroa.0.022 = phi i32 [ -1, %bb6.lr.ph ], [ %level.sroa.0.1, %bb27 ]
  %iter.sroa.0.021 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select24, %bb27 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %tree.0, ptr %_16, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_14 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h6c854cd8bc254a73E(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.021) #29
  switch i32 %_14, label %bb12 [
    i32 1114112, label %bb2.i9
    i32 40, label %bb11
  ], !prof !1661

bb2.i9:                                           ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d48a2381b32b82af0b549ddb85151b66) #25
  unreachable

bb7:                                              ; preds = %bb27, %start
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %sum.sroa.0.1, %bb27 ]
  ret i32 %sum.sroa.0.0.lcssa

bb12:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_21)
  store ptr %tree.0, ptr %_21, align 8
  store ptr %_7.i, ptr %1, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_19 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h6c854cd8bc254a73E(ptr noalias noundef align 8 dereferenceable(16) %_21, i64 noundef %iter.sroa.0.021) #29
  switch i32 %_19, label %bb17 [
    i32 1114112, label %bb2.i6
    i32 41, label %bb16
  ], !prof !1661

bb2.i6:                                           ; preds = %bb12
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_fbb2e5150e4a30502876cccda5ea05e6) #25
  unreachable

bb11:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  %3 = add i32 %level.sroa.0.022, 1
  br label %bb27

bb17:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  %_22 = icmp eq i32 %level.sroa.0.022, %k
  br i1 %_22, label %bb18, label %bb27

bb16:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  %4 = add i32 %level.sroa.0.022, -1
  br label %bb27

bb18:                                             ; preds = %bb17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_30)
  store ptr %tree.0, ptr %_30, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_28 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h6c854cd8bc254a73E(ptr noalias noundef align 8 dereferenceable(16) %_30, i64 noundef %iter.sroa.0.021) #29
  %.not.i = icmp eq i32 %_28, 1114112
  br i1 %.not.i, label %bb2.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit", !prof !1064

bb2.i:                                            ; preds = %bb18
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0c37c74758868b6df0cc5a51b83244b3) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit": ; preds = %bb18
  %5 = add nsw i32 %_28, -48
  %_14.i = icmp ult i32 %5, 10
  br i1 %_14.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbbb69e058f2b4d0dE.exit", label %bb2.i11, !prof !1662

bb2.i11:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ad4ee931a9ef20795294d597d8942628) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hbbb69e058f2b4d0dE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h6be613387ee9459eE.exit"
  %6 = add i32 %5, %sum.sroa.0.023
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_30)
  br label %bb27

bb27:                                             ; preds = %bb16, %bb17, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbbb69e058f2b4d0dE.exit", %bb11
  %level.sroa.0.1 = phi i32 [ %3, %bb11 ], [ %4, %bb16 ], [ %level.sroa.0.022, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbbb69e058f2b4d0dE.exit" ], [ %level.sroa.0.022, %bb17 ]
  %sum.sroa.0.1 = phi i32 [ %sum.sroa.0.023, %bb11 ], [ %sum.sroa.0.023, %bb16 ], [ %6, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hbbb69e058f2b4d0dE.exit" ], [ %sum.sroa.0.023, %bb17 ]
  %_0.i.i.i = icmp ult i64 %spec.select24, %tree.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select24, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7
}
