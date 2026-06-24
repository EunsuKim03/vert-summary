define noundef range(i32 0, 1114112) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %start_bytes.i.i57 = alloca [32 x i8], align 1
  %_7.i = getelementptr i8, ptr %str.0, i64 %str.1
  %_7.i.i.i.i = icmp samesign ne i64 %str.1, 0
  %spec.select104.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select104 = getelementptr inbounds nuw i8, ptr %str.0, i64 %spec.select104.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit

bb14.i.i.i:                                       ; preds = %start
  %x.i.i.i = load i8, ptr %str.0, align 1, !noalias !1630, !noundef !37
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %0 = icmp ne i64 %str.1, 1
  tail call void @llvm.assume(i1 %0)
  %y.i.i.i = load i8, ptr %spec.select104, align 1, !noalias !1630, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %1 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select104, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1630, !noundef !37
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %2 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select104, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1630, !noundef !37
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %3 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit

_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit: ; preds = %start, %bb4.i.i.i, %bb3.i.i.i, %bb6.i.i.i, %bb8.i.i.i
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %start ], [ %3, %bb8.i.i.i ], [ %2, %bb6.i.i.i ], [ %1, %bb4.i.i.i ]
  %.not.i6 = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i6, label %bb2.i7, label %bb7.preheader, !prof !1033

bb7.preheader:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit
  %_17 = add i64 %str.1, -1
  %4 = lshr i64 %str.1, 5
  %_65.i.i = getelementptr inbounds nuw [32 x i8], ptr %str.0, i64 %4
  %_92.sroa.34.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 31
  %_92.sroa.33.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 30
  %_92.sroa.32.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 29
  %_92.sroa.31.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 28
  %_92.sroa.30.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 27
  %_92.sroa.29.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 26
  %_92.sroa.28.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 25
  %_92.sroa.27.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 24
  %_92.sroa.26.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 23
  %_92.sroa.25.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 22
  %_92.sroa.24.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 21
  %_92.sroa.23.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 20
  %_92.sroa.22.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 19
  %_92.sroa.21.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 18
  %_92.sroa.20.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 17
  %_92.sroa.19.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 16
  %_92.sroa.18.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 15
  %_92.sroa.17.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 14
  %_92.sroa.16.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 13
  %_92.sroa.15.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 12
  %_92.sroa.14.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 11
  %_92.sroa.13.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 10
  %_92.sroa.12.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 9
  %_92.sroa.11.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 8
  %_92.sroa.10.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 7
  %_92.sroa.9.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 6
  %_92.sroa.8.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 5
  %_92.sroa.7.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 4
  %_92.sroa.6.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 3
  %_92.sroa.5.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 2
  %_92.sroa.4.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 1
  %5 = ptrtoint ptr %_7.i to i64
  br label %bb7.outer

bb2.i7:                                           ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ddf124d032e6dafab08501bf6173afd8) #24
  unreachable

bb7:                                              ; preds = %bb7.outer, %bb17
  %iter.sroa.0.0 = phi ptr [ %iter.sroa.0.2, %bb17 ], [ %iter.sroa.0.0.ph, %bb7.outer ]
  %iter.sroa.11.0 = phi i64 [ %iter.sroa.11.1, %bb17 ], [ %iter.sroa.11.0.ph, %bb7.outer ]
  %cur_count.sroa.0.0 = phi i32 [ %30, %bb17 ], [ 1, %bb7.outer ]
  %_7.i.i.i.i12 = icmp ne ptr %iter.sroa.0.0, %_7.i
  %spec.select106.idx = zext i1 %_7.i.i.i.i12 to i64
  %spec.select106 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0, i64 %spec.select106.idx
  br i1 %_7.i.i.i.i12, label %bb14.i.i.i18, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb14.i.i.i18:                                     ; preds = %bb7
  %x.i.i.i19 = load i8, ptr %iter.sroa.0.0, align 1, !noalias !1637, !noundef !37
  %_6.i.i.i20 = icmp sgt i8 %x.i.i.i19, -1
  br i1 %_6.i.i.i20, label %bb3.i.i.i54, label %bb4.i.i.i21

bb4.i.i.i21:                                      ; preds = %bb14.i.i.i18
  %_30.i.i.i22 = and i8 %x.i.i.i19, 31
  %init.i.i.i23 = zext nneg i8 %_30.i.i.i22 to i32
  %_7.i10.i.i.i25 = icmp ne ptr %spec.select106, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i25)
  %_18.i12.i.i.i26 = getelementptr inbounds nuw i8, ptr %spec.select106, i64 1
  %y.i.i.i27 = load i8, ptr %spec.select106, align 1, !noalias !1637, !noundef !37
  %_34.i.i.i28 = shl nuw nsw i32 %init.i.i.i23, 6
  %_36.i.i.i29 = and i8 %y.i.i.i27, 63
  %_35.i.i.i30 = zext nneg i8 %_36.i.i.i29 to i32
  %6 = or disjoint i32 %_34.i.i.i28, %_35.i.i.i30
  %_13.i.i.i31 = icmp ugt i8 %x.i.i.i19, -33
  br i1 %_13.i.i.i31, label %bb6.i.i.i34, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb3.i.i.i54:                                      ; preds = %bb14.i.i.i18
  %_7.i.i.i55 = zext nneg i8 %x.i.i.i19 to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb6.i.i.i34:                                      ; preds = %bb4.i.i.i21
  %_7.i17.i.i.i35 = icmp ne ptr %_18.i12.i.i.i26, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i35)
  %_18.i19.i.i.i36 = getelementptr inbounds nuw i8, ptr %spec.select106, i64 2
  %z.i.i.i37 = load i8, ptr %_18.i12.i.i.i26, align 1, !noalias !1637, !noundef !37
  %_40.i.i.i38 = shl nuw nsw i32 %_35.i.i.i30, 6
  %_42.i.i.i39 = and i8 %z.i.i.i37, 63
  %_41.i.i.i40 = zext nneg i8 %_42.i.i.i39 to i32
  %y_z.i.i.i41 = or disjoint i32 %_40.i.i.i38, %_41.i.i.i40
  %_20.i.i.i42 = shl nuw nsw i32 %init.i.i.i23, 12
  %7 = or disjoint i32 %y_z.i.i.i41, %_20.i.i.i42
  %_21.i.i.i43 = icmp ugt i8 %x.i.i.i19, -17
  br i1 %_21.i.i.i43, label %bb8.i.i.i44, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

bb8.i.i.i44:                                      ; preds = %bb6.i.i.i34
  %_7.i24.i.i.i45 = icmp ne ptr %_18.i19.i.i.i36, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i45)
  %_18.i26.i.i.i46 = getelementptr inbounds nuw i8, ptr %spec.select106, i64 3
  %w.i.i.i47 = load i8, ptr %_18.i19.i.i.i36, align 1, !noalias !1637, !noundef !37
  %_26.i.i.i48 = shl nuw nsw i32 %init.i.i.i23, 18
  %_25.i.i.i49 = and i32 %_26.i.i.i48, 1835008
  %_46.i.i.i50 = shl nuw nsw i32 %y_z.i.i.i41, 6
  %_48.i.i.i51 = and i8 %w.i.i.i47, 63
  %_47.i.i.i52 = zext nneg i8 %_48.i.i.i51 to i32
  %_27.i.i.i53 = or disjoint i32 %_46.i.i.i50, %_47.i.i.i52
  %8 = or disjoint i32 %_27.i.i.i53, %_25.i.i.i49
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i": ; preds = %bb8.i.i.i44, %bb6.i.i.i34, %bb3.i.i.i54, %bb4.i.i.i21, %bb7
  %iter.sroa.0.2 = phi ptr [ %spec.select106, %bb7 ], [ %spec.select106, %bb3.i.i.i54 ], [ %_18.i26.i.i.i46, %bb8.i.i.i44 ], [ %_18.i19.i.i.i36, %bb6.i.i.i34 ], [ %_18.i12.i.i.i26, %bb4.i.i.i21 ]
  %spec.select.i.i = phi i32 [ 1114112, %bb7 ], [ %_7.i.i.i55, %bb3.i.i.i54 ], [ %8, %bb8.i.i.i44 ], [ %7, %bb6.i.i.i34 ], [ %6, %bb4.i.i.i21 ]
  %.not.i32 = icmp ne i32 %spec.select.i.i, 1114112
  %_8.0.i = zext i1 %.not.i32 to i64
  %iter.sroa.11.1 = add i64 %iter.sroa.11.0, %_8.0.i
  %_0.sroa.0.0.i33 = select i1 %.not.i32, i64 %iter.sroa.11.0, i64 undef
  %.not = icmp eq i32 %spec.select.i.i, 1114112
  br i1 %.not, label %bb11, label %bb10

bb10:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"
  %_16 = icmp ult i64 %_0.sroa.0.0.i33, %_17
  br i1 %_16, label %bb13, label %bb20

bb11:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"
  ret i32 %res.sroa.0.0.ph

bb13:                                             ; preds = %bb10
  %_24 = add i64 %_0.sroa.0.0.i33, 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i.i57), !noalias !1644
  %_3.i.i = icmp ugt i64 %_24, 31
  br i1 %_3.i.i, label %bb1.i.i, label %bb25.i.i

bb1.i.i:                                          ; preds = %bb13
  %_1042.not.i.i = icmp eq i64 %_24, 32
  br i1 %_1042.not.i.i, label %bb14.i.i, label %bb4.i.i

bb25.i.i:                                         ; preds = %bb19.i.i, %bb18.i.i, %bb14.i.i, %bb13
  %_23.sroa.0.0 = phi ptr [ %_19.i.i.i, %bb14.i.i ], [ %str.0, %bb13 ], [ %_7.i, %bb19.i.i ], [ %_23.sroa.0.3, %bb18.i.i ]
  %remainder.sroa.0.0.i.i = phi i64 [ %remainder.sroa.0.1.lcssa.i.i, %bb14.i.i ], [ %_24, %bb13 ], [ %remainder.sroa.0.1.lcssa.i.i, %bb18.i.i ], [ %remainder.sroa.0.1.lcssa.i.i, %bb19.i.i ]
  %_39.not57.i.i = icmp eq i64 %remainder.sroa.0.0.i.i, 0
  br i1 %_39.not57.i.i, label %bb5.critedge.i, label %bb27.i.i

bb4.i.i:                                          ; preds = %bb1.i.i, %bb2.i.i.i.i
  %remainder.sroa.0.145.i.i = phi i64 [ %10, %bb2.i.i.i.i ], [ %_24, %bb1.i.i ]
  %chunks.sroa.0.044.i.i = phi ptr [ %chunks.sroa.0.1.i.i, %bb2.i.i.i.i ], [ %str.0, %bb1.i.i ]
  %bytes_skipped.sroa.0.043.i.i = phi i64 [ %9, %bb2.i.i.i.i ], [ 0, %bb1.i.i ]
  %_73.i.i = icmp eq ptr %chunks.sroa.0.044.i.i, %_65.i.i
  %chunks.sroa.0.1.idx.i.i = select i1 %_73.i.i, i64 0, i64 32
  %chunks.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %chunks.sroa.0.1.idx.i.i
  br i1 %_73.i.i, label %bb14.i.i, label %bb5.i.i

bb14.i.i:                                         ; preds = %bb2.i.i.i.i, %bb4.i.i, %bb1.i.i
  %bytes_skipped.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb1.i.i ], [ %bytes_skipped.sroa.0.043.i.i, %bb4.i.i ], [ %9, %bb2.i.i.i.i ]
  %remainder.sroa.0.1.lcssa.i.i = phi i64 [ %_24, %bb1.i.i ], [ %remainder.sroa.0.145.i.i, %bb4.i.i ], [ %10, %bb2.i.i.i.i ]
  %_19.i.i.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %bytes_skipped.sroa.0.0.lcssa.i.i
  %.not27.i.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i.i, %str.1
  tail call void @llvm.assume(i1 %.not27.i.i)
  %_30.not53.i.i = icmp samesign eq i64 %str.1, %bytes_skipped.sroa.0.0.lcssa.i.i
  br i1 %_30.not53.i.i, label %bb25.i.i, label %bb18.i.i

bb5.i.i:                                          ; preds = %bb4.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i.i57, i8 0, i64 32, i1 false), !noalias !1647
  br label %bb10.i.i

bb2.i.i.i.i:                                      ; preds = %bb10.i.i
  %_92.sroa.34.0.copyload.i.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.33.0.copyload.i.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.32.0.copyload.i.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.31.0.copyload.i.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.30.0.copyload.i.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.29.0.copyload.i.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.28.0.copyload.i.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.27.0.copyload.i.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.26.0.copyload.i.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.25.0.copyload.i.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.24.0.copyload.i.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.23.0.copyload.i.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.22.0.copyload.i.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.21.0.copyload.i.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.20.0.copyload.i.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.19.0.copyload.i.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.18.0.copyload.i.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.17.0.copyload.i.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.16.0.copyload.i.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.15.0.copyload.i.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.14.0.copyload.i.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.13.0.copyload.i.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.12.0.copyload.i.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.11.0.copyload.i.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.10.0.copyload.i.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.9.0.copyload.i.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.8.0.copyload.i.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.7.0.copyload.i.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.6.0.copyload.i.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.5.0.copyload.i.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.4.0.copyload.i.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1647
  %_92.sroa.0.0.copyload.i.i = load i8, ptr %start_bytes.i.i57, align 1, !noalias !1647
  %_4.0.i.i.i.i.i.i.1.i.i = add i8 %_92.sroa.33.0.copyload.i.i, %_92.sroa.34.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.2.i.i = add i8 %_4.0.i.i.i.i.i.i.1.i.i, %_92.sroa.32.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.3.i.i = add i8 %_4.0.i.i.i.i.i.i.2.i.i, %_92.sroa.31.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.4.i.i = add i8 %_4.0.i.i.i.i.i.i.3.i.i, %_92.sroa.30.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.5.i.i = add i8 %_4.0.i.i.i.i.i.i.4.i.i, %_92.sroa.29.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.6.i.i = add i8 %_4.0.i.i.i.i.i.i.5.i.i, %_92.sroa.28.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.7.i.i = add i8 %_4.0.i.i.i.i.i.i.6.i.i, %_92.sroa.27.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.8.i.i = add i8 %_4.0.i.i.i.i.i.i.7.i.i, %_92.sroa.26.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.9.i.i = add i8 %_4.0.i.i.i.i.i.i.8.i.i, %_92.sroa.25.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.10.i.i = add i8 %_4.0.i.i.i.i.i.i.9.i.i, %_92.sroa.24.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.11.i.i = add i8 %_4.0.i.i.i.i.i.i.10.i.i, %_92.sroa.23.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.12.i.i = add i8 %_4.0.i.i.i.i.i.i.11.i.i, %_92.sroa.22.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.13.i.i = add i8 %_4.0.i.i.i.i.i.i.12.i.i, %_92.sroa.21.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.14.i.i = add i8 %_4.0.i.i.i.i.i.i.13.i.i, %_92.sroa.20.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.15.i.i = add i8 %_4.0.i.i.i.i.i.i.14.i.i, %_92.sroa.19.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.16.i.i = add i8 %_4.0.i.i.i.i.i.i.15.i.i, %_92.sroa.18.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.17.i.i = add i8 %_4.0.i.i.i.i.i.i.16.i.i, %_92.sroa.17.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.18.i.i = add i8 %_4.0.i.i.i.i.i.i.17.i.i, %_92.sroa.16.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.19.i.i = add i8 %_4.0.i.i.i.i.i.i.18.i.i, %_92.sroa.15.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.20.i.i = add i8 %_4.0.i.i.i.i.i.i.19.i.i, %_92.sroa.14.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.21.i.i = add i8 %_4.0.i.i.i.i.i.i.20.i.i, %_92.sroa.13.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.22.i.i = add i8 %_4.0.i.i.i.i.i.i.21.i.i, %_92.sroa.12.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.23.i.i = add i8 %_4.0.i.i.i.i.i.i.22.i.i, %_92.sroa.11.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.24.i.i = add i8 %_4.0.i.i.i.i.i.i.23.i.i, %_92.sroa.10.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.25.i.i = add i8 %_4.0.i.i.i.i.i.i.24.i.i, %_92.sroa.9.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.26.i.i = add i8 %_4.0.i.i.i.i.i.i.25.i.i, %_92.sroa.8.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.27.i.i = add i8 %_4.0.i.i.i.i.i.i.26.i.i, %_92.sroa.7.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.28.i.i = add i8 %_4.0.i.i.i.i.i.i.27.i.i, %_92.sroa.6.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.29.i.i = add i8 %_4.0.i.i.i.i.i.i.28.i.i, %_92.sroa.5.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.30.i.i = add i8 %_4.0.i.i.i.i.i.i.29.i.i, %_92.sroa.4.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.31.i.i = add i8 %_4.0.i.i.i.i.i.i.30.i.i, %_92.sroa.0.0.copyload.i.i
  %9 = add i64 %bytes_skipped.sroa.0.043.i.i, 32
  %_25.i.i = zext i8 %_4.0.i.i.i.i.i.i.31.i.i to i64
  %10 = sub i64 %remainder.sroa.0.145.i.i, %_25.i.i
  %_10.i.i = icmp ugt i64 %10, 32
  br i1 %_10.i.i, label %bb4.i.i, label %bb14.i.i

bb10.i.i:                                         ; preds = %bb10.i.i, %bb5.i.i
  %iter.sroa.0.041.i.i = phi i64 [ 0, %bb5.i.i ], [ %_88.i.i.3, %bb10.i.i ]
  %_88.i.i = or disjoint i64 %iter.sroa.0.041.i.i, 1
  %11 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %iter.sroa.0.041.i.i
  %byte.i.i = load i8, ptr %11, align 1, !noalias !1647, !noundef !37
  %_22.i.i = icmp sgt i8 %byte.i.i, -65
  %12 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 %iter.sroa.0.041.i.i
  %13 = zext i1 %_22.i.i to i8
  store i8 %13, ptr %12, align 1, !noalias !1647
  %_88.i.i.1 = or disjoint i64 %iter.sroa.0.041.i.i, 2
  %14 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i
  %byte.i.i.1 = load i8, ptr %14, align 1, !noalias !1647, !noundef !37
  %_22.i.i.1 = icmp sgt i8 %byte.i.i.1, -65
  %15 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 %_88.i.i
  %16 = zext i1 %_22.i.i.1 to i8
  store i8 %16, ptr %15, align 1, !noalias !1647
  %_88.i.i.2 = or disjoint i64 %iter.sroa.0.041.i.i, 3
  %17 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.1
  %byte.i.i.2 = load i8, ptr %17, align 1, !noalias !1647, !noundef !37
  %_22.i.i.2 = icmp sgt i8 %byte.i.i.2, -65
  %18 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 %_88.i.i.1
  %19 = zext i1 %_22.i.i.2 to i8
  store i8 %19, ptr %18, align 1, !noalias !1647
  %_88.i.i.3 = add nuw nsw i64 %iter.sroa.0.041.i.i, 4
  %20 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.2
  %byte.i.i.3 = load i8, ptr %20, align 1, !noalias !1647, !noundef !37
  %_22.i.i.3 = icmp sgt i8 %byte.i.i.3, -65
  %21 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i57, i64 %_88.i.i.2
  %22 = zext i1 %_22.i.i.3 to i8
  store i8 %22, ptr %21, align 1, !noalias !1647
  %exitcond.not.i.i.3 = icmp eq i64 %_88.i.i.3, 32
  br i1 %exitcond.not.i.i.3, label %bb2.i.i.i.i, label %bb10.i.i

bb18.i.i:                                         ; preds = %bb14.i.i, %bb19.i.i
  %_23.sroa.0.3 = phi ptr [ %_19.i33.i.i, %bb19.i.i ], [ %_19.i.i.i, %bb14.i.i ]
  %b.i.i = load i8, ptr %_23.sroa.0.3, align 1, !noalias !1647, !noundef !37
  %_36.i.i = icmp slt i8 %b.i.i, -64
  br i1 %_36.i.i, label %bb19.i.i, label %bb25.i.i

bb19.i.i:                                         ; preds = %bb18.i.i
  %_19.i33.i.i = getelementptr inbounds nuw i8, ptr %_23.sroa.0.3, i64 1
  %_30.not.i.i = icmp eq ptr %_7.i, %_19.i33.i.i
  br i1 %_30.not.i.i, label %bb25.i.i, label %bb18.i.i

bb27.i.i:                                         ; preds = %bb25.i.i, %bb28.i.i
  %remainder.sroa.0.259.i.i = phi i64 [ %25, %bb28.i.i ], [ %remainder.sroa.0.0.i.i, %bb25.i.i ]
  %_19.i385658.i.i = phi ptr [ %_19.i38.i.i, %bb28.i.i ], [ %_23.sroa.0.0, %bb25.i.i ]
  %_41.not.i.i = icmp eq ptr %_7.i, %_19.i385658.i.i
  br i1 %_41.not.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i", label %bb28.i.i

bb28.i.i:                                         ; preds = %bb27.i.i
  %23 = ptrtoint ptr %_19.i385658.i.i to i64
  %24 = sub nuw i64 %5, %23
  %25 = add i64 %remainder.sroa.0.259.i.i, -1
  %b15.i.i = load i8, ptr %_19.i385658.i.i, align 1, !noalias !1647, !noundef !37
  %_130.i.i = zext i8 %b15.i.i to i64
  %26 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %26, align 1, !noalias !1647, !noundef !37
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i.i, i64 %slurp.i.i
  %.not28.i.i = icmp uge i64 %24, %slurp.i.i
  tail call void @llvm.assume(i1 %.not28.i.i)
  %_39.not.i.i = icmp eq i64 %25, 0
  br i1 %_39.not.i.i, label %bb5.critedge.i, label %bb27.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i": ; preds = %bb27.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i57), !noalias !1644
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit103

bb5.critedge.i:                                   ; preds = %bb28.i.i, %bb25.i.i
  %_23.sroa.0.1 = phi ptr [ %_23.sroa.0.0, %bb25.i.i ], [ %_19.i38.i.i, %bb28.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i57), !noalias !1644
  %_7.i.i.i.i60 = icmp ne ptr %_23.sroa.0.1, %_7.i
  %spec.select108.idx = zext i1 %_7.i.i.i.i60 to i64
  %spec.select108 = getelementptr inbounds nuw i8, ptr %_23.sroa.0.1, i64 %spec.select108.idx
  br i1 %_7.i.i.i.i60, label %bb14.i.i.i66, label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit103

bb14.i.i.i66:                                     ; preds = %bb5.critedge.i
  %x.i.i.i67 = load i8, ptr %_23.sroa.0.1, align 1, !noalias !1650, !noundef !37
  %_6.i.i.i68 = icmp sgt i8 %x.i.i.i67, -1
  br i1 %_6.i.i.i68, label %bb3.i.i.i101, label %bb4.i.i.i69

bb4.i.i.i69:                                      ; preds = %bb14.i.i.i66
  %_30.i.i.i70 = and i8 %x.i.i.i67, 31
  %init.i.i.i71 = zext nneg i8 %_30.i.i.i70 to i32
  %_7.i10.i.i.i73 = icmp ne ptr %spec.select108, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i73)
  %y.i.i.i75 = load i8, ptr %spec.select108, align 1, !noalias !1650, !noundef !37
  %_34.i.i.i76 = shl nuw nsw i32 %init.i.i.i71, 6
  %_36.i.i.i77 = and i8 %y.i.i.i75, 63
  %_35.i.i.i78 = zext nneg i8 %_36.i.i.i77 to i32
  %27 = or disjoint i32 %_34.i.i.i76, %_35.i.i.i78
  %_13.i.i.i79 = icmp ugt i8 %x.i.i.i67, -33
  br i1 %_13.i.i.i79, label %bb6.i.i.i81, label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit103

bb3.i.i.i101:                                     ; preds = %bb14.i.i.i66
  %_7.i.i.i102 = zext nneg i8 %x.i.i.i67 to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit103

bb6.i.i.i81:                                      ; preds = %bb4.i.i.i69
  %_18.i12.i.i.i74 = getelementptr inbounds nuw i8, ptr %spec.select108, i64 1
  %_7.i17.i.i.i82 = icmp ne ptr %_18.i12.i.i.i74, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i82)
  %z.i.i.i84 = load i8, ptr %_18.i12.i.i.i74, align 1, !noalias !1650, !noundef !37
  %_40.i.i.i85 = shl nuw nsw i32 %_35.i.i.i78, 6
  %_42.i.i.i86 = and i8 %z.i.i.i84, 63
  %_41.i.i.i87 = zext nneg i8 %_42.i.i.i86 to i32
  %y_z.i.i.i88 = or disjoint i32 %_40.i.i.i85, %_41.i.i.i87
  %_20.i.i.i89 = shl nuw nsw i32 %init.i.i.i71, 12
  %28 = or disjoint i32 %y_z.i.i.i88, %_20.i.i.i89
  %_21.i.i.i90 = icmp ugt i8 %x.i.i.i67, -17
  br i1 %_21.i.i.i90, label %bb8.i.i.i91, label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit103

bb8.i.i.i91:                                      ; preds = %bb6.i.i.i81
  %_18.i19.i.i.i83 = getelementptr inbounds nuw i8, ptr %spec.select108, i64 2
  %_7.i24.i.i.i92 = icmp ne ptr %_18.i19.i.i.i83, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i92)
  %w.i.i.i94 = load i8, ptr %_18.i19.i.i.i83, align 1, !noalias !1650, !noundef !37
  %_26.i.i.i95 = shl nuw nsw i32 %init.i.i.i71, 18
  %_25.i.i.i96 = and i32 %_26.i.i.i95, 1835008
  %_46.i.i.i97 = shl nuw nsw i32 %y_z.i.i.i88, 6
  %_48.i.i.i98 = and i8 %w.i.i.i94, 63
  %_47.i.i.i99 = zext nneg i8 %_48.i.i.i98 to i32
  %_27.i.i.i100 = or disjoint i32 %_46.i.i.i97, %_47.i.i.i99
  %29 = or disjoint i32 %_27.i.i.i100, %_25.i.i.i96
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit103

_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit103: ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i", %bb5.critedge.i, %bb4.i.i.i69, %bb3.i.i.i101, %bb6.i.i.i81, %bb8.i.i.i91
  %_0.sroa.0.0.i80 = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i" ], [ %_7.i.i.i102, %bb3.i.i.i101 ], [ 1114112, %bb5.critedge.i ], [ %29, %bb8.i.i.i91 ], [ %28, %bb6.i.i.i81 ], [ %27, %bb4.i.i.i69 ]
  %.not.i = icmp eq i32 %_0.sroa.0.0.i80, 1114112
  br i1 %.not.i, label %bb2.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit", !prof !1033

bb2.i:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit103
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_515334fc877a32c58f1f4872cbff2357) #24
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit": ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE.exit103
  %_19 = icmp eq i32 %spec.select.i.i, %_0.sroa.0.0.i80
  br i1 %_19, label %bb17, label %bb20

bb20:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit", %bb10
  %_25 = icmp sgt i32 %cur_count.sroa.0.0, %count.sroa.0.0.ph
  %spec.select = tail call i32 @llvm.smax.i32(i32 %cur_count.sroa.0.0, i32 %count.sroa.0.0.ph)
  %spec.select5 = select i1 %_25, i32 %spec.select.i.i, i32 %res.sroa.0.0.ph
  br label %bb7.outer

bb7.outer:                                        ; preds = %bb20, %bb7.preheader
  %iter.sroa.0.0.ph = phi ptr [ %iter.sroa.0.2, %bb20 ], [ %str.0, %bb7.preheader ]
  %iter.sroa.11.0.ph = phi i64 [ %iter.sroa.11.1, %bb20 ], [ 0, %bb7.preheader ]
  %count.sroa.0.0.ph = phi i32 [ %spec.select, %bb20 ], [ 0, %bb7.preheader ]
  %res.sroa.0.0.ph = phi i32 [ %spec.select5, %bb20 ], [ %_0.sroa.0.0.i, %bb7.preheader ]
  br label %bb7

bb17:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4019574f00bdb3E.exit"
  %30 = add i32 %cur_count.sroa.0.0, 1
  br label %bb7
}
