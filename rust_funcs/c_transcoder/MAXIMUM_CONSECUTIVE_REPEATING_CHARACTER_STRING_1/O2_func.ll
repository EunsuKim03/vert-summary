define noundef range(i32 0, 1114112) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb17:
  %_31 = getelementptr i8, ptr %str.0, i64 %str.1
  %_7.i.i = icmp samesign eq i64 %str.1, 0
  br i1 %_7.i.i, label %bb27, label %bb14.i

bb14.i:                                           ; preds = %bb17
  %x.i = load i8, ptr %str.0, align 1, !noalias !1031, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_18.i.i = getelementptr inbounds nuw i8, ptr %str.0, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %str.1, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1031, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %0 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb14.i.i.i.lr.ph

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb14.i.i.i.lr.ph

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %str.0, i64 2
  %_7.i17.i = icmp samesign ne i64 %str.1, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1031, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %1 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb14.i.i.i.lr.ph

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %str.0, i64 3
  %_7.i24.i = icmp samesign ne i64 %str.1, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1031, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %2 = or disjoint i32 %_27.i, %_25.i
  br label %bb14.i.i.i.lr.ph

bb14.i.i.i.lr.ph:                                 ; preds = %bb4.i, %bb6.i, %bb8.i, %bb3.i
  %_0.sroa.4.0.i.ph = phi i32 [ %0, %bb4.i ], [ %1, %bb6.i ], [ %2, %bb8.i ], [ %_7.i, %bb3.i ]
  %3 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %3)
  %_16 = add i64 %str.1, -1
  %4 = lshr i64 %str.1, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %str.0, i64 %4
  %5 = ptrtoint ptr %_31 to i64
  br label %bb14.i.i.i

bb27:                                             ; preds = %bb17
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ddf124d032e6dafab08501bf6173afd8) #17
  unreachable

bb14.i.i.i:                                       ; preds = %bb14.i.i.i.lr.ph, %bb14
  %res.sroa.0.095 = phi i32 [ %_0.sroa.4.0.i.ph, %bb14.i.i.i.lr.ph ], [ %res.sroa.0.2, %bb14 ]
  %count.sroa.0.094 = phi i32 [ 0, %bb14.i.i.i.lr.ph ], [ %count.sroa.0.2, %bb14 ]
  %cur_count.sroa.0.093 = phi i32 [ 1, %bb14.i.i.i.lr.ph ], [ %cur_count.sroa.0.1, %bb14 ]
  %iter.sroa.0.092 = phi ptr [ %str.0, %bb14.i.i.i.lr.ph ], [ %iter.sroa.0.173, %bb14 ]
  %iter.sroa.10.091 = phi i64 [ 0, %bb14.i.i.i.lr.ph ], [ %_8.0.i75, %bb14 ]
  %_18.i.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.092, i64 1
  %x.i.i.i = load i8, ptr %iter.sroa.0.092, align 1, !noalias !1034, !noundef !23
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %_18.i.i.i.i, %_31
  tail call void @llvm.assume(i1 %_7.i10.i.i.i)
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.092, i64 2
  %y.i.i.i = load i8, ptr %_18.i.i.i.i, align 1, !noalias !1034, !noundef !23
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %6 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp samesign ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb4

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb4

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_31
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.092, i64 3
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1034, !noundef !23
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %7 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp samesign ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i", label %bb4

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i": ; preds = %bb6.i.i.i
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_31
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1034, !noundef !23
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %8 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  %.not.i = icmp eq i32 %8, 1114112
  br i1 %.not.i, label %bb5, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3ba24747a758495E.exit"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3ba24747a758495E.exit": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i"
  %_18.i26.i.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.092, i64 4
  br label %bb4

bb4:                                              ; preds = %bb3.i.i.i, %bb6.i.i.i, %bb4.i.i.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3ba24747a758495E.exit"
  %spec.select.i5.i74 = phi i32 [ %8, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3ba24747a758495E.exit" ], [ %6, %bb4.i.i.i ], [ %7, %bb6.i.i.i ], [ %_7.i.i.i, %bb3.i.i.i ]
  %iter.sroa.0.173 = phi ptr [ %_18.i26.i.i.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd3ba24747a758495E.exit" ], [ %_18.i12.i.i.i, %bb4.i.i.i ], [ %_18.i19.i.i.i, %bb6.i.i.i ], [ %_18.i.i.i.i, %bb3.i.i.i ]
  %_8.0.i75 = add i64 %iter.sroa.10.091, 1
  %_15 = icmp ult i64 %iter.sroa.10.091, %_16
  br i1 %_15, label %bb6, label %bb10

bb5:                                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i", %bb14
  %res.sroa.0.0.lcssa.ph = phi i32 [ %res.sroa.0.095, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i" ], [ %res.sroa.0.2, %bb14 ]
  ret i32 %res.sroa.0.0.lcssa.ph

bb6:                                              ; preds = %bb4
  %_3.i = icmp ugt i64 %iter.sroa.10.091, 30
  br i1 %_3.i, label %bb1.i, label %bb27.i.preheader

bb1.i:                                            ; preds = %bb6
  %_1042.not.i = icmp eq i64 %_8.0.i75, 32
  br i1 %_1042.not.i, label %bb14.i15, label %bb4.i13

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i15
  %_21.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i15 ], [ %_21.sroa.0.2, %bb18.i ], [ %_31, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.1.lcssa.i, 0
  br i1 %_39.not57.i, label %bb23, label %bb27.i.preheader

bb27.i.preheader:                                 ; preds = %bb6, %bb25.i
  %_21.sroa.0.1.ph = phi ptr [ %str.0, %bb6 ], [ %_21.sroa.0.0, %bb25.i ]
  %remainder.sroa.0.259.i.ph = phi i64 [ %_8.0.i75, %bb6 ], [ %remainder.sroa.0.1.lcssa.i, %bb25.i ]
  br label %bb27.i

bb4.i13:                                          ; preds = %bb1.i, %bb5.i
  %remainder.sroa.0.145.i = phi i64 [ %15, %bb5.i ], [ %_8.0.i75, %bb1.i ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i ], [ %str.0, %bb1.i ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %14, %bb5.i ], [ 0, %bb1.i ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i15, label %bb5.i

bb14.i15:                                         ; preds = %bb5.i, %bb4.i13, %bb1.i
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i13 ], [ %14, %bb5.i ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ 32, %bb1.i ], [ %remainder.sroa.0.145.i, %bb4.i13 ], [ %15, %bb5.i ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %str.1
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %str.1, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i13
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1041
  %wide.load97 = load <16 x i8>, ptr %9, align 1, !noalias !1041
  %10 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %11 = icmp sgt <16 x i8> %wide.load97, splat (i8 -65)
  %12 = zext <16 x i1> %10 to <16 x i8>
  %13 = zext <16 x i1> %11 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %12, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %12, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %12, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %12, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %12, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %12, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %12, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %12, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %12, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %12, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %12, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %12, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %12, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %12, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %12, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %12, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %13, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %13, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %13, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %13, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %13, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %13, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %13, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %13, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %13, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %13, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %13, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %13, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %13, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %13, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %13, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %13, i64 15
  %_4.0.i.i.i.i.i.i.1.i = add nuw nsw i8 %start_bytes.i.sroa.0.1.vec.extract, %start_bytes.i.sroa.0.0.vec.extract
  %_4.0.i.i.i.i.i.i.2.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.1.i, %start_bytes.i.sroa.0.2.vec.extract
  %_4.0.i.i.i.i.i.i.3.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.2.i, %start_bytes.i.sroa.0.3.vec.extract
  %_4.0.i.i.i.i.i.i.4.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.3.i, %start_bytes.i.sroa.0.4.vec.extract
  %_4.0.i.i.i.i.i.i.5.i = add nuw nsw i8 %_4.0.i.i.i.i.i.i.4.i, %start_bytes.i.sroa.0.5.vec.extract
  %_4.0.i.i.i.i.i.i.6.i = add i8 %_4.0.i.i.i.i.i.i.5.i, %start_bytes.i.sroa.0.6.vec.extract
  %_4.0.i.i.i.i.i.i.7.i = add i8 %_4.0.i.i.i.i.i.i.6.i, %start_bytes.i.sroa.0.7.vec.extract
  %_4.0.i.i.i.i.i.i.8.i = add i8 %_4.0.i.i.i.i.i.i.7.i, %start_bytes.i.sroa.0.8.vec.extract
  %_4.0.i.i.i.i.i.i.9.i = add i8 %_4.0.i.i.i.i.i.i.8.i, %start_bytes.i.sroa.0.9.vec.extract
  %_4.0.i.i.i.i.i.i.10.i = add i8 %_4.0.i.i.i.i.i.i.9.i, %start_bytes.i.sroa.0.10.vec.extract
  %_4.0.i.i.i.i.i.i.11.i = add i8 %_4.0.i.i.i.i.i.i.10.i, %start_bytes.i.sroa.0.11.vec.extract
  %_4.0.i.i.i.i.i.i.12.i = add i8 %_4.0.i.i.i.i.i.i.11.i, %start_bytes.i.sroa.0.12.vec.extract
  %_4.0.i.i.i.i.i.i.13.i = add i8 %_4.0.i.i.i.i.i.i.12.i, %start_bytes.i.sroa.0.13.vec.extract
  %_4.0.i.i.i.i.i.i.14.i = add i8 %_4.0.i.i.i.i.i.i.13.i, %start_bytes.i.sroa.0.14.vec.extract
  %_4.0.i.i.i.i.i.i.15.i = add i8 %_4.0.i.i.i.i.i.i.14.i, %start_bytes.i.sroa.0.15.vec.extract
  %_4.0.i.i.i.i.i.i.16.i = add i8 %_4.0.i.i.i.i.i.i.15.i, %start_bytes.i.sroa.21.16.vec.extract
  %_4.0.i.i.i.i.i.i.17.i = add i8 %_4.0.i.i.i.i.i.i.16.i, %start_bytes.i.sroa.21.17.vec.extract
  %_4.0.i.i.i.i.i.i.18.i = add i8 %_4.0.i.i.i.i.i.i.17.i, %start_bytes.i.sroa.21.18.vec.extract
  %_4.0.i.i.i.i.i.i.19.i = add i8 %_4.0.i.i.i.i.i.i.18.i, %start_bytes.i.sroa.21.19.vec.extract
  %_4.0.i.i.i.i.i.i.20.i = add i8 %_4.0.i.i.i.i.i.i.19.i, %start_bytes.i.sroa.21.20.vec.extract
  %_4.0.i.i.i.i.i.i.21.i = add i8 %_4.0.i.i.i.i.i.i.20.i, %start_bytes.i.sroa.21.21.vec.extract
  %_4.0.i.i.i.i.i.i.22.i = add i8 %_4.0.i.i.i.i.i.i.21.i, %start_bytes.i.sroa.21.22.vec.extract
  %_4.0.i.i.i.i.i.i.23.i = add i8 %_4.0.i.i.i.i.i.i.22.i, %start_bytes.i.sroa.21.23.vec.extract
  %_4.0.i.i.i.i.i.i.24.i = add i8 %_4.0.i.i.i.i.i.i.23.i, %start_bytes.i.sroa.21.24.vec.extract
  %_4.0.i.i.i.i.i.i.25.i = add i8 %_4.0.i.i.i.i.i.i.24.i, %start_bytes.i.sroa.21.25.vec.extract
  %_4.0.i.i.i.i.i.i.26.i = add i8 %_4.0.i.i.i.i.i.i.25.i, %start_bytes.i.sroa.21.26.vec.extract
  %_4.0.i.i.i.i.i.i.27.i = add i8 %_4.0.i.i.i.i.i.i.26.i, %start_bytes.i.sroa.21.27.vec.extract
  %_4.0.i.i.i.i.i.i.28.i = add i8 %_4.0.i.i.i.i.i.i.27.i, %start_bytes.i.sroa.21.28.vec.extract
  %_4.0.i.i.i.i.i.i.29.i = add i8 %_4.0.i.i.i.i.i.i.28.i, %start_bytes.i.sroa.21.29.vec.extract
  %_4.0.i.i.i.i.i.i.30.i = add i8 %_4.0.i.i.i.i.i.i.29.i, %start_bytes.i.sroa.21.30.vec.extract
  %_4.0.i.i.i.i.i.i.31.i = add i8 %_4.0.i.i.i.i.i.i.30.i, %start_bytes.i.sroa.21.31.vec.extract
  %14 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i14 = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %15 = sub i64 %remainder.sroa.0.145.i, %_25.i14
  %_10.i = icmp ugt i64 %15, 32
  br i1 %_10.i, label %bb4.i13, label %bb14.i15

bb18.i:                                           ; preds = %bb14.i15, %bb19.i
  %_21.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i15 ]
  %b.i = load i8, ptr %_21.sroa.0.2, align 1, !noalias !1041, !noundef !23
  %_36.i16 = icmp slt i8 %b.i, -64
  br i1 %_36.i16, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_21.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_31, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb27.i.preheader, %bb62.i
  %_21.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_21.sroa.0.1.ph, %bb27.i.preheader ]
  %remainder.sroa.0.259.i = phi i64 [ %18, %bb62.i ], [ %remainder.sroa.0.259.i.ph, %bb27.i.preheader ]
  %_41.not.i = icmp eq ptr %_31, %_21.sroa.0.1
  br i1 %_41.not.i, label %bb28, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %16 = ptrtoint ptr %_21.sroa.0.1 to i64
  %17 = sub nuw i64 %5, %16
  %18 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_21.sroa.0.1, align 1, !noalias !1041, !noundef !23
  %_130.i = zext i8 %b15.i to i64
  %19 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %19, align 1, !noalias !1041, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_21.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %17, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %18, 0
  br i1 %_39.not.i, label %bb23, label %bb27.i

bb10:                                             ; preds = %bb26, %bb4
  %_23 = icmp sgt i32 %cur_count.sroa.0.093, %count.sroa.0.094
  %spec.select = tail call i32 @llvm.smax.i32(i32 %cur_count.sroa.0.093, i32 %count.sroa.0.094)
  %spec.select9 = select i1 %_23, i32 %spec.select.i5.i74, i32 %res.sroa.0.095
  br label %bb14

bb23:                                             ; preds = %bb62.i, %bb25.i
  %_21.sroa.0.3.ph = phi ptr [ %_21.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i19 = icmp eq ptr %_21.sroa.0.3.ph, %_31
  br i1 %_7.i.i19, label %bb28, label %bb14.i20

bb14.i20:                                         ; preds = %bb23
  %x.i22 = load i8, ptr %_21.sroa.0.3.ph, align 1, !noalias !1044, !noundef !23
  %_6.i23 = icmp sgt i8 %x.i22, -1
  br i1 %_6.i23, label %bb3.i56, label %bb4.i24

bb4.i24:                                          ; preds = %bb14.i20
  %_18.i.i21 = getelementptr inbounds nuw i8, ptr %_21.sroa.0.3.ph, i64 1
  %_30.i25 = and i8 %x.i22, 31
  %init.i26 = zext nneg i8 %_30.i25 to i32
  %_7.i10.i27 = icmp ne ptr %_18.i.i21, %_31
  tail call void @llvm.assume(i1 %_7.i10.i27)
  %y.i29 = load i8, ptr %_18.i.i21, align 1, !noalias !1044, !noundef !23
  %_34.i30 = shl nuw nsw i32 %init.i26, 6
  %_36.i31 = and i8 %y.i29, 63
  %_35.i32 = zext nneg i8 %_36.i31 to i32
  %20 = or disjoint i32 %_34.i30, %_35.i32
  %_13.i33 = icmp samesign ugt i8 %x.i22, -33
  br i1 %_13.i33, label %bb6.i36, label %bb26

bb3.i56:                                          ; preds = %bb14.i20
  %_7.i57 = zext nneg i8 %x.i22 to i32
  br label %bb26

bb6.i36:                                          ; preds = %bb4.i24
  %_18.i12.i28 = getelementptr inbounds nuw i8, ptr %_21.sroa.0.3.ph, i64 2
  %_7.i17.i37 = icmp ne ptr %_18.i12.i28, %_31
  tail call void @llvm.assume(i1 %_7.i17.i37)
  %z.i39 = load i8, ptr %_18.i12.i28, align 1, !noalias !1044, !noundef !23
  %_40.i40 = shl nuw nsw i32 %_35.i32, 6
  %_42.i41 = and i8 %z.i39, 63
  %_41.i42 = zext nneg i8 %_42.i41 to i32
  %y_z.i43 = or disjoint i32 %_40.i40, %_41.i42
  %_20.i44 = shl nuw nsw i32 %init.i26, 12
  %21 = or disjoint i32 %y_z.i43, %_20.i44
  %_21.i45 = icmp samesign ugt i8 %x.i22, -17
  br i1 %_21.i45, label %bb8.i46, label %bb26

bb8.i46:                                          ; preds = %bb6.i36
  %_18.i19.i38 = getelementptr inbounds nuw i8, ptr %_21.sroa.0.3.ph, i64 3
  %_7.i24.i47 = icmp ne ptr %_18.i19.i38, %_31
  tail call void @llvm.assume(i1 %_7.i24.i47)
  %w.i49 = load i8, ptr %_18.i19.i38, align 1, !noalias !1044, !noundef !23
  %_26.i50 = shl nuw nsw i32 %init.i26, 18
  %_25.i51 = and i32 %_26.i50, 1835008
  %_46.i52 = shl nuw nsw i32 %y_z.i43, 6
  %_48.i53 = and i8 %w.i49, 63
  %_47.i54 = zext nneg i8 %_48.i53 to i32
  %_27.i55 = or disjoint i32 %_46.i52, %_47.i54
  %22 = or disjoint i32 %_27.i55, %_25.i51
  br label %bb26

bb26:                                             ; preds = %bb3.i56, %bb8.i46, %bb6.i36, %bb4.i24
  %_0.sroa.4.0.i34.ph = phi i32 [ %20, %bb4.i24 ], [ %21, %bb6.i36 ], [ %22, %bb8.i46 ], [ %_7.i57, %bb3.i56 ]
  %23 = icmp samesign ult i32 %_0.sroa.4.0.i34.ph, 1114112
  tail call void @llvm.assume(i1 %23)
  %_17 = icmp eq i32 %spec.select.i5.i74, %_0.sroa.4.0.i34.ph
  br i1 %_17, label %bb7, label %bb10

bb28:                                             ; preds = %bb23, %bb27.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_515334fc877a32c58f1f4872cbff2357) #17
  unreachable

bb7:                                              ; preds = %bb26
  %24 = add i32 %cur_count.sroa.0.093, 1
  br label %bb14

bb14:                                             ; preds = %bb7, %bb10
  %cur_count.sroa.0.1 = phi i32 [ %24, %bb7 ], [ 1, %bb10 ]
  %count.sroa.0.2 = phi i32 [ %count.sroa.0.094, %bb7 ], [ %spec.select, %bb10 ]
  %res.sroa.0.2 = phi i32 [ %res.sroa.0.095, %bb7 ], [ %spec.select9, %bb10 ]
  %_7.i.i.not.i.i = icmp eq ptr %iter.sroa.0.173, %_31
  br i1 %_7.i.i.not.i.i, label %bb5, label %bb14.i.i.i
}
