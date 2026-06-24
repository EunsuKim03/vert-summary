define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1) unnamed_addr #4 {
start:
  %_17 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %_7.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %0 = getelementptr inbounds nuw i8, ptr %_12, i64 8
  %j.sroa.0.09 = add i64 %s.1, -1
  %1 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  br label %bb3

bb3:                                              ; preds = %start, %bb11
  %j.sroa.0.011 = phi i64 [ %j.sroa.0.09, %start ], [ %j.sroa.0.0, %bb11 ]
  %i.sroa.0.010 = phi i64 [ 0, %start ], [ %2, %bb11 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_12)
  store ptr %s.0, ptr %_12, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_10 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h736da4aa94a4b97aE(ptr noalias noundef align 8 dereferenceable(16) %_12, i64 noundef %i.sroa.0.010) #29
  %.not.i5 = icmp eq i32 %_10, 1114112
  br i1 %.not.i5, label %bb2.i6, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc8e24cc659350abcE.exit7", !prof !1064

bb2.i6:                                           ; preds = %bb3
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d25132b66dfc6bc7f83a9672ef61f6d8) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hc8e24cc659350abcE.exit7": ; preds = %bb3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %s.0, ptr %_17, align 8
  store ptr %_7.i, ptr %1, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h736da4aa94a4b97aE(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %j.sroa.0.011) #29
  %.not.i = icmp eq i32 %_15, 1114112
  br i1 %.not.i, label %bb2.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc8e24cc659350abcE.exit", !prof !1064

bb2.i:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc8e24cc659350abcE.exit7"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7cf0ec3967bc7cb0e7998bc2db323525) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hc8e24cc659350abcE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc8e24cc659350abcE.exit7"
  %_8.not = icmp eq i32 %_10, %_15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12)
  br i1 %_8.not, label %bb11, label %bb13

bb13:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc8e24cc659350abcE.exit", %bb11
  %_0.sroa.0.0 = phi i32 [ 1, %bb11 ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc8e24cc659350abcE.exit" ]
  ret i32 %_0.sroa.0.0

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hc8e24cc659350abcE.exit"
  %2 = add i64 %i.sroa.0.010, 1
  %j.sroa.0.0 = add i64 %j.sroa.0.011, -1
  %_5.not = icmp ugt i64 %2, %j.sroa.0.0
  br i1 %_5.not, label %bb13, label %bb3
}
