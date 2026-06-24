define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %s.0, i64 noundef %s.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_14 = alloca [16 x i8], align 8
  %_0.i.i.i9 = icmp ugt i64 %s.1, 1
  br i1 %_0.i.i.i9, label %bb6.lr.ph, label %bb16

bb6.lr.ph:                                        ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %s.0, i64 %s.1
  %0 = getelementptr inbounds nuw i8, ptr %_14, i64 8
  %_18.i.i.i.i = getelementptr inbounds nuw i8, ptr %s.0, i64 1
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %s.0, i64 2
  %_7.i17.i.i.i = icmp samesign ne i64 %s.1, 2
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %s.0, i64 3
  %_7.i24.i.i.i = icmp samesign ne i64 %s.1, 3
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb15
  %spec.select13 = phi i64 [ 2, %bb6.lr.ph ], [ %spec.select, %bb15 ]
  %iter.sroa.0.012 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select13, %bb15 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_14)
  store ptr %s.0, ptr %_14, align 8
  store ptr %_7.i, ptr %0, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_12 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E(ptr noalias noundef align 8 dereferenceable(16) %_14, i64 noundef %iter.sroa.0.012) #29
  %.not.i2 = icmp eq i32 %_12, 1114112
  br i1 %.not.i2, label %bb2.i3, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit4", !prof !1064

bb2.i3:                                           ; preds = %bb6
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_bb475a26277ca2c15ec0a50f1c2e3777) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit4": ; preds = %bb6
  %x.i.i.i = load i8, ptr %s.0, align 1, !noalias !1661, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit4"
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %y.i.i.i = load i8, ptr %_18.i.i.i.i, align 1, !noalias !1661, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %1 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E.exit

bb3.i.i.i:                                        ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit4"
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E.exit

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1661, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %2 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E.exit

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1661, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %3 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E.exit

_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E.exit: ; preds = %bb4.i.i.i, %bb3.i.i.i, %bb6.i.i.i, %bb8.i.i.i
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ %3, %bb8.i.i.i ], [ %2, %bb6.i.i.i ], [ %1, %bb4.i.i.i ]
  %.not.i = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i, label %bb2.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit", !prof !1064

bb2.i:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E.exit
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9c351655574247d91bc2884715ebc867) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E.exit
  %_10.not = icmp eq i32 %_12, %_0.sroa.0.0.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_14)
  br i1 %_10.not, label %bb15, label %bb16

bb16:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit", %bb15, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit" ], [ 1, %bb15 ]
  ret i32 %_0.sroa.0.0

bb15:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h5d5436fb3ce321d2E.exit"
  %_0.i.i.i = icmp ult i64 %spec.select13, %s.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select13, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb16
}
