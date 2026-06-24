define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %num.sroa.0.0.copyload = load i64, ptr %n, align 8
  %num.sroa.5.0.n.sroa_idx = getelementptr inbounds nuw i8, ptr %n, i64 8
  %num.sroa.5.0.copyload = load ptr, ptr %num.sroa.5.0.n.sroa_idx, align 8
  %num.sroa.8.0.n.sroa_idx = getelementptr inbounds nuw i8, ptr %n, i64 16
  %num.sroa.8.0.copyload = load i64, ptr %num.sroa.8.0.n.sroa_idx, align 8
  %_14 = icmp sgt i64 %num.sroa.8.0.copyload, -1
  tail call void @llvm.assume(i1 %_14)
  %_15.not26 = icmp eq i64 %num.sroa.8.0.copyload, 0
  br i1 %_15.not26, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %start
  %0 = icmp ne ptr %num.sroa.5.0.copyload, null
  tail call void @llvm.assume(i1 %0)
  %_29 = getelementptr i8, ptr %num.sroa.5.0.copyload, i64 %num.sroa.8.0.copyload
  %1 = lshr i64 %num.sroa.8.0.copyload, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %num.sroa.5.0.copyload, i64 %1
  %2 = ptrtoint ptr %_29 to i64
  br label %bb9

bb10:                                             ; preds = %bb16, %start
  %dec_value.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %spec.select, %bb16 ]
  %_6.i.i.i.i2.i.i = icmp eq i64 %num.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc298484a04dcddf3E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb10
  %3 = icmp ne ptr %num.sroa.5.0.copyload, null
  tail call void @llvm.assume(i1 %3)
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %num.sroa.5.0.copyload, i64 noundef %num.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1031
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc298484a04dcddf3E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc298484a04dcddf3E.exit": ; preds = %bb10, %bb2.i.i.i3.i.i
  ret i32 %dec_value.sroa.0.0.lcssa

bb9:                                              ; preds = %bb9.lr.ph, %bb16
  %dec_value.sroa.0.029 = phi i32 [ 0, %bb9.lr.ph ], [ %spec.select, %bb16 ]
  %base.sroa.0.028 = phi i32 [ 1, %bb9.lr.ph ], [ %21, %bb16 ]
  %len.sroa.0.027 = phi i64 [ %num.sroa.8.0.copyload, %bb9.lr.ph ], [ %_16, %bb16 ]
  %_16 = add nsw i64 %len.sroa.0.027, -1
  %_3.i = icmp samesign ugt i64 %_16, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

bb1.i:                                            ; preds = %bb9
  %_1042.not.i = icmp eq i64 %_16, 32
  br i1 %_1042.not.i, label %bb14.i, label %bb4.i

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i, %bb9
  %_11.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i ], [ %num.sroa.5.0.copyload, %bb9 ], [ %_11.sroa.0.2, %bb18.i ], [ %_29, %bb19.i ]
  %remainder.sroa.0.0.i = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i ], [ %_16, %bb9 ], [ %remainder.sroa.0.1.lcssa.i, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb13, label %bb27.i

bb4.i:                                            ; preds = %bb1.i, %bb5.i
  %remainder.sroa.0.145.i = phi i64 [ %10, %bb5.i ], [ %_16, %bb1.i ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i ], [ %num.sroa.5.0.copyload, %bb1.i ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %9, %bb5.i ], [ 0, %bb1.i ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i, label %bb5.i

bb14.i:                                           ; preds = %bb5.i, %bb4.i, %bb1.i
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i ], [ %9, %bb5.i ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ 32, %bb1.i ], [ %remainder.sroa.0.145.i, %bb4.i ], [ %10, %bb5.i ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %num.sroa.5.0.copyload, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %num.sroa.8.0.copyload
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %num.sroa.8.0.copyload, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1042
  %wide.load30 = load <16 x i8>, ptr %4, align 1, !noalias !1042
  %5 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %6 = icmp sgt <16 x i8> %wide.load30, splat (i8 -65)
  %7 = zext <16 x i1> %5 to <16 x i8>
  %8 = zext <16 x i1> %6 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %7, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %7, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %7, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %7, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %7, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %7, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %7, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %7, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %7, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %7, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %7, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %7, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %7, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %7, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %7, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %7, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %8, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %8, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %8, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %8, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %8, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %8, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %8, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %8, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %8, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %8, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %8, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %8, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %8, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %8, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %8, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %8, i64 15
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
  %9 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %10 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %10, 32
  br i1 %_10.i, label %bb4.i, label %bb14.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_11.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_11.sroa.0.2, align 1, !noalias !1042, !noundef !23
  %_36.i = icmp slt i8 %b.i, -64
  br i1 %_36.i, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_11.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_29, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb25.i, %bb62.i
  %_11.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_11.sroa.0.0, %bb25.i ]
  %remainder.sroa.0.259.i = phi i64 [ %13, %bb62.i ], [ %remainder.sroa.0.0.i, %bb25.i ]
  %_41.not.i = icmp eq ptr %_29, %_11.sroa.0.1
  br i1 %_41.not.i, label %bb17, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %11 = ptrtoint ptr %_11.sroa.0.1 to i64
  %12 = sub nuw i64 %2, %11
  %13 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_11.sroa.0.1, align 1, !noalias !1042, !noundef !23
  %_130.i = zext i8 %b15.i to i64
  %14 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %14, align 1, !noalias !1042, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_11.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %12, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %13, 0
  br i1 %_39.not.i, label %bb13, label %bb27.i

cleanup:                                          ; preds = %bb17
  %15 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i.i8 = icmp eq i64 %num.sroa.0.0.copyload, 0
  br i1 %_6.i.i.i.i2.i.i8, label %bb8, label %bb2.i.i.i3.i.i9

bb2.i.i.i3.i.i9:                                  ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %num.sroa.5.0.copyload, i64 noundef %num.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1045
  br label %bb8

bb13:                                             ; preds = %bb62.i, %bb25.i
  %_11.sroa.0.3.ph = phi ptr [ %_11.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i = icmp eq ptr %_11.sroa.0.3.ph, %_29
  br i1 %_7.i.i, label %bb17, label %bb14.i12

bb14.i12:                                         ; preds = %bb13
  %x.i = load i8, ptr %_11.sroa.0.3.ph, align 1, !noalias !1056, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i13

bb4.i13:                                          ; preds = %bb14.i12
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_11.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_29
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1056, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i14 = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i14 to i32
  %16 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb16

bb3.i:                                            ; preds = %bb14.i12
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb16

bb6.i:                                            ; preds = %bb4.i13
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_11.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_29
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1056, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %17 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb16

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_11.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_29
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1056, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i15 = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %18 = or disjoint i32 %_27.i, %_25.i15
  br label %bb16

bb16:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i13
  %_0.sroa.4.0.i.ph = phi i32 [ %16, %bb4.i13 ], [ %17, %bb6.i ], [ %18, %bb8.i ], [ %_7.i, %bb3.i ]
  %19 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %19)
  %_7 = icmp eq i32 %_0.sroa.4.0.i.ph, 49
  %20 = select i1 %_7, i32 %base.sroa.0.028, i32 0
  %spec.select = add i32 %20, %dec_value.sroa.0.029
  %21 = shl i32 %base.sroa.0.028, 1
  %_15.not = icmp eq i64 %_16, 0
  br i1 %_15.not, label %bb10, label %bb9

bb17:                                             ; preds = %bb13, %bb27.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_5ab67f4d81421021ad69b3d4fe1cd221) #19
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb17
  unreachable

bb8:                                              ; preds = %bb2.i.i.i3.i.i9, %cleanup
  resume { ptr, i32 } %15
}
