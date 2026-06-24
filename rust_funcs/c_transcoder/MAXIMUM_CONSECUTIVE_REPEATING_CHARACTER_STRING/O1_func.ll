define noundef range(i32 0, 1114112) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str_input.0, i64 noundef %str_input.1) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_37 = alloca [16 x i8], align 8
  %_31 = alloca [16 x i8], align 8
  %_27 = alloca [16 x i8], align 8
  %_7.i = getelementptr inbounds nuw i8, ptr %str_input.0, i64 %str_input.1
  %_7.i.i.i.i = icmp samesign ne i64 %str_input.1, 0
  %spec.select.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %str_input.0, i64 %spec.select.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE.exit

bb14.i.i.i:                                       ; preds = %start
  %x.i.i.i = load i8, ptr %str_input.0, align 1, !noalias !1661, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %0 = icmp ne i64 %str_input.1, 1
  tail call void @llvm.assume(i1 %0)
  %y.i.i.i = load i8, ptr %spec.select, align 1, !noalias !1661, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %1 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE.exit

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE.exit

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1661, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %2 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE.exit

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1661, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %3 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE.exit

_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE.exit: ; preds = %start, %bb4.i.i.i, %bb3.i.i.i, %bb6.i.i.i, %bb8.i.i.i
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %start ], [ %3, %bb8.i.i.i ], [ %2, %bb6.i.i.i ], [ %1, %bb4.i.i.i ]
  %.not.i12 = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i12, label %bb2.i13, label %bb6.preheader, !prof !1064

bb6.preheader:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE.exit
  %_0.i.i.i44.not = icmp eq i64 %str_input.1, 0
  br i1 %_0.i.i.i44.not, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %bb6.preheader
  %4 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_31, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_37, i64 8
  br label %bb9

bb2.i13:                                          ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE.exit
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_15dbdf47819e645f096bf257c652c71f) #25
  unreachable

bb9:                                              ; preds = %bb9.lr.ph, %bb29
  %spec.select2750 = phi i64 [ 1, %bb9.lr.ph ], [ %spec.select27, %bb29 ]
  %res.sroa.0.049 = phi i32 [ %_0.sroa.0.0.i, %bb9.lr.ph ], [ %res.sroa.0.1, %bb29 ]
  %count.sroa.0.048 = phi i32 [ 0, %bb9.lr.ph ], [ %count.sroa.0.1, %bb29 ]
  %iter.sroa.0.046 = phi i64 [ 0, %bb9.lr.ph ], [ %spec.select2750, %bb29 ]
  %_17 = add nuw i64 %iter.sroa.0.046, 1
  %_0.i.i.i1838 = icmp ult i64 %_17, %str_input.1
  br i1 %_0.i.i.i1838, label %bb14.preheader, label %bb23

bb14.preheader:                                   ; preds = %bb9
  %spec.select2940 = add nuw i64 %iter.sroa.0.046, 2
  br label %bb14

bb10:                                             ; preds = %bb29, %bb6.preheader
  %res.sroa.0.0.lcssa = phi i32 [ %_0.sroa.0.0.i, %bb6.preheader ], [ %res.sroa.0.1, %bb29 ]
  ret i32 %res.sroa.0.0.lcssa

bb14:                                             ; preds = %bb14.preheader, %bb22
  %spec.select2943 = phi i64 [ %spec.select29, %bb22 ], [ %spec.select2940, %bb14.preheader ]
  %cur_count.sroa.0.042 = phi i32 [ %7, %bb22 ], [ 1, %bb14.preheader ]
  %iter1.sroa.0.041 = phi i64 [ %spec.select2943, %bb22 ], [ %_17, %bb14.preheader ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_27)
  store ptr %str_input.0, ptr %_27, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_25 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr noalias noundef align 8 dereferenceable(16) %_27, i64 noundef %iter.sroa.0.046) #29
  %.not.i9 = icmp eq i32 %_25, 1114112
  br i1 %.not.i9, label %bb2.i10, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit11", !prof !1064

bb2.i10:                                          ; preds = %bb14
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_68b893a97c2eb5d24b95db6f5597bc80) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit11": ; preds = %bb14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_31)
  store ptr %str_input.0, ptr %_31, align 8
  store ptr %_7.i, ptr %5, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_29 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr noalias noundef align 8 dereferenceable(16) %_31, i64 noundef %iter1.sroa.0.041) #29
  %.not.i6 = icmp eq i32 %_29, 1114112
  br i1 %.not.i6, label %bb2.i7, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit8", !prof !1064

bb2.i7:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit11"
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7c0047f26287dad8b10a505934cfcfc0) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit8": ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit11"
  %_23.not = icmp eq i32 %_25, %_29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_31)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_27)
  br i1 %_23.not, label %bb22, label %bb23

bb23:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit8", %bb22, %bb9
  %cur_count.sroa.0.034 = phi i32 [ 1, %bb9 ], [ %cur_count.sroa.0.042, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit8" ], [ %7, %bb22 ]
  %_32 = icmp sgt i32 %cur_count.sroa.0.034, %count.sroa.0.048
  br i1 %_32, label %bb24, label %bb29

bb22:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit8"
  %7 = add i32 %cur_count.sroa.0.042, 1
  %_0.i.i.i18 = icmp ult i64 %spec.select2943, %str_input.1
  %_0.i1.i.i21 = zext i1 %_0.i.i.i18 to i64
  %spec.select29 = add nuw i64 %spec.select2943, %_0.i1.i.i21
  br i1 %_0.i.i.i18, label %bb14, label %bb23

bb24:                                             ; preds = %bb23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_37)
  store ptr %str_input.0, ptr %_37, align 8
  store ptr %_7.i, ptr %6, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_35 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr noalias noundef align 8 dereferenceable(16) %_37, i64 noundef %iter.sroa.0.046) #29
  %.not.i = icmp eq i32 %_35, 1114112
  br i1 %.not.i, label %bb2.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit", !prof !1064

bb2.i:                                            ; preds = %bb24
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_86a7d6fcc8569e18291c6e0ff70ebd5f) #25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit": ; preds = %bb24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_37)
  br label %bb29

bb29:                                             ; preds = %bb23, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit"
  %count.sroa.0.1 = phi i32 [ %cur_count.sroa.0.034, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit" ], [ %count.sroa.0.048, %bb23 ]
  %res.sroa.0.1 = phi i32 [ %_35, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h715de7ad3505d097E.exit" ], [ %res.sroa.0.049, %bb23 ]
  %_0.i.i.i = icmp ult i64 %spec.select2750, %str_input.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select27 = add nuw i64 %spec.select2750, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb9, label %bb10
}
