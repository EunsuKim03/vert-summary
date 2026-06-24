define noundef range(i32 0, 7) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %num) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %series = alloca [24 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %series)
  store i32 1, ptr %series, align 4
  %0 = getelementptr inbounds nuw i8, ptr %series, i64 4
  store i32 3, ptr %0, align 4
  %1 = getelementptr inbounds nuw i8, ptr %series, i64 8
  store i32 2, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %series, i64 12
  store i32 -1, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %series, i64 16
  store i32 -3, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %series, i64 20
  store i32 -2, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %6 = load i64, ptr %5, align 8, !noundef !23
  %_25 = icmp sgt i64 %6, -1
  tail call void @llvm.assume(i1 %_25)
  %_26.not35 = icmp eq i64 %6, 0
  br i1 %_26.not35, label %bb12, label %bb11.lr.ph

bb11.lr.ph:                                       ; preds = %start
  %7 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_33 = load ptr, ptr %7, align 8, !nonnull !23, !noundef !23
  %_40 = getelementptr i8, ptr %_33, i64 %6
  %8 = lshr i64 %6, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %_33, i64 %8
  %9 = ptrtoint ptr %_40 to i64
  br label %bb11

bb12:                                             ; preds = %bb20, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %33, %bb20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %series)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %self1.i.i.i.i1.i.i = load i64, ptr %num, align 8, !range !1046, !alias.scope !1047, !noalias !1050, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf56058957c767eeE.exit", label %bb2.i.i.i3.i.i

bb11:                                             ; preds = %bb11.lr.ph, %bb20
  %result.sroa.0.038 = phi i32 [ 0, %bb11.lr.ph ], [ %33, %bb20 ]
  %series_index.sroa.0.037 = phi i64 [ 0, %bb11.lr.ph ], [ %32, %bb20 ]
  %iter.sroa.0.036 = phi i64 [ %6, %bb11.lr.ph ], [ %_27, %bb20 ]
  %_27 = add nsw i64 %iter.sroa.0.036, -1
  %_3.i = icmp samesign ugt i64 %_27, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

bb1.i:                                            ; preds = %bb11
  %_1042.not.i = icmp eq i64 %_27, 32
  br i1 %_1042.not.i, label %bb14.i, label %bb4.i

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i, %bb11
  %_13.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i ], [ %_33, %bb11 ], [ %_13.sroa.0.2, %bb18.i ], [ %_40, %bb19.i ]
  %remainder.sroa.0.0.i = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i ], [ %_27, %bb11 ], [ %remainder.sroa.0.1.lcssa.i, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb15, label %bb27.i

bb4.i:                                            ; preds = %bb1.i, %bb5.i
  %remainder.sroa.0.145.i = phi i64 [ %16, %bb5.i ], [ %_27, %bb1.i ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i ], [ %_33, %bb1.i ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %15, %bb5.i ], [ 0, %bb1.i ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i, label %bb5.i

bb14.i:                                           ; preds = %bb5.i, %bb4.i, %bb1.i
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i ], [ %15, %bb5.i ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ 32, %bb1.i ], [ %remainder.sroa.0.145.i, %bb4.i ], [ %16, %bb5.i ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %_33, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %6
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %6, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1052
  %wide.load39 = load <16 x i8>, ptr %10, align 1, !noalias !1052
  %11 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %12 = icmp sgt <16 x i8> %wide.load39, splat (i8 -65)
  %13 = zext <16 x i1> %11 to <16 x i8>
  %14 = zext <16 x i1> %12 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %13, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %13, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %13, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %13, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %13, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %13, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %13, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %13, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %13, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %13, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %13, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %13, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %13, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %13, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %13, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %13, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %14, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %14, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %14, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %14, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %14, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %14, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %14, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %14, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %14, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %14, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %14, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %14, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %14, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %14, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %14, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %14, i64 15
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
  %15 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %16 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %16, 32
  br i1 %_10.i, label %bb4.i, label %bb14.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_13.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_13.sroa.0.2, align 1, !noalias !1052, !noundef !23
  %_36.i = icmp slt i8 %b.i, -64
  br i1 %_36.i, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_13.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_40, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb25.i, %bb62.i
  %_13.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_13.sroa.0.0, %bb25.i ]
  %remainder.sroa.0.259.i = phi i64 [ %19, %bb62.i ], [ %remainder.sroa.0.0.i, %bb25.i ]
  %_41.not.i = icmp eq ptr %_40, %_13.sroa.0.1
  br i1 %_41.not.i, label %bb21.invoke, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %17 = ptrtoint ptr %_13.sroa.0.1 to i64
  %18 = sub nuw i64 %9, %17
  %19 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_13.sroa.0.1, align 1, !noalias !1052, !noundef !23
  %_130.i = zext i8 %b15.i to i64
  %20 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %20, align 1, !noalias !1052, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_13.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %18, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %19, 0
  br i1 %_39.not.i, label %bb15, label %bb27.i

bb2.i.i.i3.i.i:                                   ; preds = %bb12
  %21 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %21, align 8, !alias.scope !1047, !noalias !1050, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1055
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf56058957c767eeE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf56058957c767eeE.exit": ; preds = %bb12, %bb2.i.i.i3.i.i
  %_22 = icmp slt i32 %result.sroa.0.0.lcssa, 0
  %_24 = add nsw i32 %result.sroa.0.0.lcssa, 7
  %spec.select = select i1 %_22, i32 %_24, i32 %result.sroa.0.0.lcssa
  ret i32 %spec.select

cleanup:                                          ; preds = %bb21.invoke
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %self1.i.i.i.i1.i.i11 = load i64, ptr %num, align 8, !range !1046, !alias.scope !1071, !noalias !1074, !noundef !23
  %_6.i.i.i.i2.i.i12 = icmp eq i64 %self1.i.i.i.i1.i.i11, 0
  br i1 %_6.i.i.i.i2.i.i12, label %bb10, label %bb2.i.i.i3.i.i13

bb2.i.i.i3.i.i13:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_33, i64 noundef %self1.i.i.i.i1.i.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1076
  br label %bb10

bb15:                                             ; preds = %bb62.i, %bb25.i
  %_13.sroa.0.3.ph = phi ptr [ %_13.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i = icmp eq ptr %_13.sroa.0.3.ph, %_40
  br i1 %_7.i.i, label %bb21.invoke, label %bb14.i16

bb14.i16:                                         ; preds = %bb15
  %x.i = load i8, ptr %_13.sroa.0.3.ph, align 1, !noalias !1077, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i17

bb4.i17:                                          ; preds = %bb14.i16
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_13.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_40
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1077, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i18 = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i18 to i32
  %23 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb3

bb3.i:                                            ; preds = %bb14.i16
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb3

bb6.i:                                            ; preds = %bb4.i17
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_13.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_40
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1077, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %24 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb3

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_13.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_40
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1077, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i19 = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %25 = or disjoint i32 %_27.i, %_25.i19
  br label %bb3

bb21.invoke:                                      ; preds = %bb3, %bb15, %bb27.i
  %26 = phi ptr [ @alloc_f41fb7fe42c7a46eaacfd9dc7e0a8778, %bb27.i ], [ @alloc_f41fb7fe42c7a46eaacfd9dc7e0a8778, %bb15 ], [ @alloc_8b6f5e327781aec9c240e85192be9df2, %bb3 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %26) #19
          to label %bb21.cont unwind label %cleanup

bb21.cont:                                        ; preds = %bb21.invoke
  unreachable

bb3:                                              ; preds = %bb4.i17, %bb6.i, %bb8.i, %bb3.i
  %_0.sroa.4.0.i.ph = phi i32 [ %23, %bb4.i17 ], [ %24, %bb6.i ], [ %25, %bb8.i ], [ %_7.i, %bb3.i ]
  %27 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %27)
  %28 = add nsw i32 %_0.sroa.4.0.i.ph, -48
  %_14.i = icmp ult i32 %28, 10
  br i1 %_14.i, label %bb20, label %bb21.invoke, !prof !1080

bb20:                                             ; preds = %bb3
  %29 = getelementptr inbounds nuw i32, ptr %series, i64 %series_index.sroa.0.037
  %_17 = load i32, ptr %29, align 4, !noundef !23
  %_16 = mul i32 %_17, %28
  %30 = add i32 %_16, %result.sroa.0.038
  %_20 = add i64 %series_index.sroa.0.037, 1
  %31 = icmp eq i64 %_20, 6
  %32 = select i1 %31, i64 0, i64 %_20
  %33 = srem i32 %30, 7
  %_26.not = icmp eq i64 %_27, 0
  br i1 %_26.not, label %bb12, label %bb11

bb10:                                             ; preds = %bb2.i.i.i3.i.i13, %cleanup
  resume { ptr, i32 } %22
}
