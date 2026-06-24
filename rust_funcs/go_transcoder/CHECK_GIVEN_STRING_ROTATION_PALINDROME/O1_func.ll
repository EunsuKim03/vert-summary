define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #4 {
start:
  %_17 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %h.sroa.0.09 = add i64 %str.1, -1
  %_510.not = icmp eq i64 %h.sroa.0.09, 0
  br i1 %_510.not, label %bb13, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %0 = getelementptr inbounds nuw i8, ptr %_12, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  br label %bb3

bb3:                                              ; preds = %bb3.lr.ph, %bb11
  %h.sroa.0.012 = phi i64 [ %h.sroa.0.09, %bb3.lr.ph ], [ %h.sroa.0.0, %bb11 ]
  %l.sroa.0.011 = phi i64 [ 0, %bb3.lr.ph ], [ %2, %bb11 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_12)
  store ptr %str.0, ptr %_12, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_10 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1c9a7cdfdb291b97E(ptr noalias noundef align 8 dereferenceable(16) %_12, i64 noundef %l.sroa.0.011) #29
  %.not.i5 = icmp eq i32 %_10, 1114112
  br i1 %.not.i5, label %bb2.i6, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit7", !prof !1064

bb2.i6:                                           ; preds = %bb3
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7fb7449b19327991cc53bffbc08754ce) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit7": ; preds = %bb3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %str.0, ptr %_17, align 8
  store ptr %_7.i, ptr %1, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1c9a7cdfdb291b97E(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %h.sroa.0.012) #29
  %.not.i = icmp eq i32 %_15, 1114112
  br i1 %.not.i, label %bb2.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit", !prof !1064

bb2.i:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit7"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a5033256c4d826a53a6e43080027b164) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit7"
  %_8.not = icmp eq i32 %_10, %_15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12)
  br i1 %_8.not, label %bb11, label %bb13

bb13:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit", %bb11, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit" ], [ 1, %bb11 ]
  ret i32 %_0.sroa.0.0

bb11:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h2808282dcf292cafE.exit"
  %2 = add nuw i64 %l.sroa.0.011, 1
  %h.sroa.0.0 = add i64 %h.sroa.0.012, -1
  %_5 = icmp ugt i64 %h.sroa.0.0, %2
  br i1 %_5, label %bb3, label %bb13
}
