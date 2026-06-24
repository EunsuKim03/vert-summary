define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1) unnamed_addr #4 {
start:
  %_46 = alloca [16 x i8], align 8
  %_40 = alloca [16 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %_19 = alloca [16 x i8], align 8
  %_14 = alloca [16 x i8], align 8
  %_0.i.i.i39.not = icmp eq i64 %s.1, 0
  br i1 %_0.i.i.i39.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %0 = getelementptr inbounds nuw i8, ptr %_14, i64 8
  %1 = getelementptr inbounds nuw i8, ptr %_19, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb24
  %spec.select43 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb24 ]
  %count.sroa.0.042 = phi i32 [ 0, %bb6.lr.ph ], [ %count.sroa.0.3, %bb24 ]
  %iter.sroa.0.041 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select43, %bb24 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_14)
  store ptr %s.0, ptr %_14, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_12 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr noalias noundef align 8 dereferenceable(16) %_14, i64 noundef %iter.sroa.0.041) #29
  switch i32 %_12, label %bb12 [
    i32 1114112, label %bb2.i11
    i32 52, label %bb11
  ], !prof !1661

bb2.i11:                                          ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_354a6c2494719f33c663a3461a55b8ff) #25
  unreachable

bb7:                                              ; preds = %bb24, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.3, %bb24 ]
  %_27 = add i64 %s.1, -1
  %_0.i.i.i2244.not = icmp eq i64 %_27, 0
  br i1 %_0.i.i.i2244.not, label %bb29, label %bb28.lr.ph

bb28.lr.ph:                                       ; preds = %bb7
  %_7.i27 = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %3 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_46, i64 8
  br label %bb28

bb28:                                             ; preds = %bb28.lr.ph, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit15"
  %spec.select3248 = phi i64 [ 1, %bb28.lr.ph ], [ %spec.select32, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit15" ]
  %count.sroa.0.147 = phi i32 [ %count.sroa.0.0.lcssa, %bb28.lr.ph ], [ %count.sroa.0.2, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit15" ]
  %iter1.sroa.0.046 = phi i64 [ 0, %bb28.lr.ph ], [ %spec.select3248, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit15" ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_40)
  store ptr %s.0, ptr %_40, align 8
  store ptr %_7.i27, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_38 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr noalias noundef align 8 dereferenceable(16) %_40, i64 noundef %iter1.sroa.0.046) #29
  %.not.i16 = icmp eq i32 %_38, 1114112
  br i1 %.not.i16, label %bb2.i17, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit18", !prof !1064

bb2.i17:                                          ; preds = %bb28
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_499e0e64e04fd9362109a357d525c88b) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit18": ; preds = %bb28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_46)
  store ptr %s.0, ptr %_46, align 8
  store ptr %_7.i27, ptr %4, align 8
  %_47 = add nuw i64 %iter1.sroa.0.046, 1
; call core::iter::traits::iterator::Iterator::nth
  %_44 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr noalias noundef align 8 dereferenceable(16) %_46, i64 noundef %_47) #29
  %.not.i13 = icmp eq i32 %_44, 1114112
  br i1 %.not.i13, label %bb2.i14, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit15", !prof !1064

bb2.i14:                                          ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit18"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8c7edf45d0803e0c47fc7ed8c8bdc37a) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit15": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit18"
  %5 = shl nuw nsw i32 %_38, 1
  %_41 = add nuw nsw i32 %_44, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_46)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_40)
  %6 = and i32 %_41, 3
  %_48 = icmp eq i32 %6, 0
  %_51 = trunc i64 %iter1.sroa.0.046 to i32
  %_50 = add i32 %_51, 1
  %7 = select i1 %_48, i32 %_50, i32 0
  %count.sroa.0.2 = add i32 %7, %count.sroa.0.147
  %_0.i.i.i22 = icmp ult i64 %spec.select3248, %_27
  %_0.i1.i.i25 = zext i1 %_0.i.i.i22 to i64
  %spec.select32 = add nuw i64 %spec.select3248, %_0.i1.i.i25
  br i1 %_0.i.i.i22, label %bb28, label %bb29

bb29:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit15", %bb7
  %count.sroa.0.1.lcssa = phi i32 [ %count.sroa.0.0.lcssa, %bb7 ], [ %count.sroa.0.2, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haafa5a4b629f8041E.exit15" ]
  ret i32 %count.sroa.0.1.lcssa

bb12:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_14)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_19)
  store ptr %s.0, ptr %_19, align 8
  store ptr %_7.i, ptr %1, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_17 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr noalias noundef align 8 dereferenceable(16) %_19, i64 noundef %iter.sroa.0.041) #29
  switch i32 %_17, label %bb17 [
    i32 1114112, label %bb2.i8
    i32 56, label %bb16
  ], !prof !1661

bb2.i8:                                           ; preds = %bb12
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_abd14b5b91c21ad71fb5c1eb6096cbcd) #25
  unreachable

bb11:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_14)
  br label %bb22

bb17:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24)
  store ptr %s.0, ptr %_24, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_22 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17heb14fff254b320b5E(ptr noalias noundef align 8 dereferenceable(16) %_24, i64 noundef %iter.sroa.0.041) #29
  switch i32 %_22, label %bb23 [
    i32 1114112, label %bb2.i
    i32 48, label %bb21
  ], !prof !1661

bb2.i:                                            ; preds = %bb17
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a66cad70a5f1b26a926bda80d0182092) #25
  unreachable

bb16:                                             ; preds = %bb12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19)
  br label %bb22

bb23:                                             ; preds = %bb17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  br label %bb24

bb21:                                             ; preds = %bb17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  br label %bb22

bb24:                                             ; preds = %bb22, %bb23
  %count.sroa.0.3 = phi i32 [ %8, %bb22 ], [ %count.sroa.0.042, %bb23 ]
  %_0.i.i.i = icmp ult i64 %spec.select43, %s.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select43, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

bb22:                                             ; preds = %bb11, %bb16, %bb21
  %8 = add i32 %count.sroa.0.042, 1
  br label %bb24
}
