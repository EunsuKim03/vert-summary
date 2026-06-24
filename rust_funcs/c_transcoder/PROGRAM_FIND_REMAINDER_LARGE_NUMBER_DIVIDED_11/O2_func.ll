define noundef range(i32 -10, 11) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_1417.not = icmp eq i64 %str.1, 0
  br i1 %_1417.not, label %bb4, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %start
  %_21 = getelementptr i8, ptr %str.0, i64 %str.1
  %0 = lshr i64 %str.1, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %str.0, i64 %0
  %1 = ptrtoint ptr %_21 to i64
  br label %bb3

bb4:                                              ; preds = %bb10, %start
  %rem.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %18, %bb10 ]
  ret i32 %rem.sroa.0.0.lcssa

bb3:                                              ; preds = %bb3.lr.ph, %bb10
  %rem.sroa.0.019 = phi i32 [ 0, %bb3.lr.ph ], [ %18, %bb10 ]
  %iter.sroa.0.018 = phi i64 [ 0, %bb3.lr.ph ], [ %2, %bb10 ]
  %2 = add nuw i64 %iter.sroa.0.018, 1
  %_6 = mul nsw i32 %rem.sroa.0.019, 10
  %_3.i = icmp ugt i64 %iter.sroa.0.018, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

bb1.i:                                            ; preds = %bb3
  %_1042.not.i = icmp eq i64 %iter.sroa.0.018, 32
  br i1 %_1042.not.i, label %bb14.i, label %bb4.i

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i, %bb3
  %_12.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i ], [ %str.0, %bb3 ], [ %_12.sroa.0.2, %bb18.i ], [ %_21, %bb19.i ]
  %remainder.sroa.0.0.i = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i ], [ %iter.sroa.0.018, %bb3 ], [ %remainder.sroa.0.1.lcssa.i, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb7, label %bb27.i

bb4.i:                                            ; preds = %bb1.i, %bb5.i
  %remainder.sroa.0.145.i = phi i64 [ %9, %bb5.i ], [ %iter.sroa.0.018, %bb1.i ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i ], [ %str.0, %bb1.i ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %8, %bb5.i ], [ 0, %bb1.i ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i, label %bb5.i

bb14.i:                                           ; preds = %bb5.i, %bb4.i, %bb1.i
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i ], [ %8, %bb5.i ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ 32, %bb1.i ], [ %remainder.sroa.0.145.i, %bb4.i ], [ %9, %bb5.i ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %str.1
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %str.1, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1031
  %wide.load20 = load <16 x i8>, ptr %3, align 1, !noalias !1031
  %4 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %5 = icmp sgt <16 x i8> %wide.load20, splat (i8 -65)
  %6 = zext <16 x i1> %4 to <16 x i8>
  %7 = zext <16 x i1> %5 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %6, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %6, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %6, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %6, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %6, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %6, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %6, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %6, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %6, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %6, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %6, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %6, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %6, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %6, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %6, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %6, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %7, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %7, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %7, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %7, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %7, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %7, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %7, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %7, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %7, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %7, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %7, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %7, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %7, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %7, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %7, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %7, i64 15
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
  %8 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %9 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %9, 32
  br i1 %_10.i, label %bb4.i, label %bb14.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_12.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_12.sroa.0.2, align 1, !noalias !1031, !noundef !23
  %_36.i = icmp slt i8 %b.i, -64
  br i1 %_36.i, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_21, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb25.i, %bb62.i
  %_12.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_12.sroa.0.0, %bb25.i ]
  %remainder.sroa.0.259.i = phi i64 [ %12, %bb62.i ], [ %remainder.sroa.0.0.i, %bb25.i ]
  %_41.not.i = icmp eq ptr %_21, %_12.sroa.0.1
  br i1 %_41.not.i, label %bb11, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %10 = ptrtoint ptr %_12.sroa.0.1 to i64
  %11 = sub nuw i64 %1, %10
  %12 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_12.sroa.0.1, align 1, !noalias !1031, !noundef !23
  %_130.i = zext i8 %b15.i to i64
  %13 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %13, align 1, !noalias !1031, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %11, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %12, 0
  br i1 %_39.not.i, label %bb7, label %bb27.i

bb7:                                              ; preds = %bb62.i, %bb25.i
  %_12.sroa.0.3.ph = phi ptr [ %_12.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i = icmp eq ptr %_12.sroa.0.3.ph, %_21
  br i1 %_7.i.i, label %bb11, label %bb14.i4

bb14.i4:                                          ; preds = %bb7
  %x.i = load i8, ptr %_12.sroa.0.3.ph, align 1, !noalias !1034, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i5

bb4.i5:                                           ; preds = %bb14.i4
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_21
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1034, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i6 = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i6 to i32
  %14 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb10

bb3.i:                                            ; preds = %bb14.i4
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb10

bb6.i:                                            ; preds = %bb4.i5
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_21
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1034, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %15 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb10

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_21
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1034, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i7 = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %16 = or disjoint i32 %_27.i, %_25.i7
  br label %bb10

bb10:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i5
  %_0.sroa.4.0.i.ph = phi i32 [ %14, %bb4.i5 ], [ %15, %bb6.i ], [ %16, %bb8.i ], [ %_7.i, %bb3.i ]
  %17 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %17)
  %_7 = add nsw i32 %_6, -48
  %num = add nsw i32 %_7, %_0.sroa.4.0.i.ph
  %18 = srem i32 %num, 11
  %exitcond.not = icmp eq i64 %2, %str.1
  br i1 %exitcond.not, label %bb4, label %bb3

bb11:                                             ; preds = %bb7, %bb27.i
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_967e0cd1cecd11fd921f55d3f3bb755f) #17
  unreachable
}
