define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %bin) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %bin, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_27 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_27)
  %1 = getelementptr inbounds nuw i8, ptr %bin, i64 8
  %_31 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_38 = getelementptr i8, ptr %_31, i64 %n
  %2 = icmp samesign eq i64 %n, 0
  br i1 %2, label %bb36.invoke, label %bb17.i

bb17.i:                                           ; preds = %start
  %_24.i.i = getelementptr inbounds i8, ptr %_38, i64 -1
  %w.i = load i8, ptr %_24.i.i, align 1, !noalias !1031, !noundef !23
  %_6.i = icmp sgt i8 %w.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb17.i
  %3 = icmp ne i64 %n, 1
  tail call void @llvm.assume(i1 %3)
  %_24.i13.i = getelementptr inbounds i8, ptr %_38, i64 -2
  %z.i = load i8, ptr %_24.i13.i, align 1, !noalias !1031, !noundef !23
  %_26.i = and i8 %z.i, 31
  %4 = zext nneg i8 %_26.i to i32
  %_12.i = icmp slt i8 %z.i, -64
  br i1 %_12.i, label %bb6.i, label %bb13.i

bb3.i:                                            ; preds = %bb17.i
  %_8.i = zext nneg i8 %w.i to i32
  br label %bb27

bb6.i:                                            ; preds = %bb4.i
  %5 = icmp ne i64 %n, 2
  tail call void @llvm.assume(i1 %5)
  %_24.i19.i = getelementptr inbounds i8, ptr %_38, i64 -3
  %y.i = load i8, ptr %_24.i19.i, align 1, !noalias !1031, !noundef !23
  %_31.i = and i8 %y.i, 15
  %6 = zext nneg i8 %_31.i to i32
  %_16.i = icmp slt i8 %y.i, -64
  br i1 %_16.i, label %bb8.i, label %bb11.i

bb13.i:                                           ; preds = %bb11.i, %bb4.i
  %ch.sroa.0.0.i = phi i32 [ %11, %bb11.i ], [ %4, %bb4.i ]
  %_43.i = shl nuw nsw i32 %ch.sroa.0.0.i, 6
  %_45.i = and i8 %w.i, 63
  %_44.i = zext nneg i8 %_45.i to i32
  %7 = or disjoint i32 %_43.i, %_44.i
  br label %bb27

bb8.i:                                            ; preds = %bb6.i
  %8 = icmp ne i64 %n, 3
  tail call void @llvm.assume(i1 %8)
  %_24.i25.i = getelementptr inbounds i8, ptr %_38, i64 -4
  %x.i = load i8, ptr %_24.i25.i, align 1, !noalias !1031, !noundef !23
  %_36.i = and i8 %x.i, 7
  %9 = zext nneg i8 %_36.i to i32
  %_37.i = shl nuw nsw i32 %9, 6
  %_39.i = and i8 %y.i, 63
  %_38.i = zext nneg i8 %_39.i to i32
  %10 = or disjoint i32 %_37.i, %_38.i
  br label %bb11.i

bb11.i:                                           ; preds = %bb8.i, %bb6.i
  %ch.sroa.0.1.i = phi i32 [ %10, %bb8.i ], [ %6, %bb6.i ]
  %_40.i = shl nuw nsw i32 %ch.sroa.0.1.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %11 = or disjoint i32 %_40.i, %_41.i
  br label %bb13.i

cleanup:                                          ; preds = %bb36.invoke
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %self1.i.i.i.i1.i.i = load i64, ptr %bin, align 8, !range !1049, !alias.scope !1050, !noalias !1053, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb24, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_31, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1055
  br label %bb24

bb27:                                             ; preds = %bb13.i, %bb3.i
  %_0.sroa.4.1.i.ph = phi i32 [ %_8.i, %bb3.i ], [ %7, %bb13.i ]
  %13 = icmp samesign ult i32 %_0.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %13)
  %_3 = icmp eq i32 %_0.sroa.4.1.i.ph, 49
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %bb27
  %14 = add nsw i64 %n, -2
  %_48.not50 = icmp eq i64 %14, 0
  br i1 %_48.not50, label %bb29, label %bb28.lr.ph

bb28.lr.ph:                                       ; preds = %bb2
  %15 = lshr i64 %n, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %_31, i64 %15
  %16 = ptrtoint ptr %_38 to i64
  br label %bb28

bb1:                                              ; preds = %bb27
  %self1.i.i.i.i1.i.i9 = load i64, ptr %bin, align 8, !range !1049, !alias.scope !1056, !noalias !1069, !noundef !23
  %_6.i.i.i.i2.i.i10 = icmp eq i64 %self1.i.i.i.i1.i.i9, 0
  br i1 %_6.i.i.i.i2.i.i10, label %bb22, label %bb22.sink.split

bb29.loopexit:                                    ; preds = %bb18
  %17 = srem i32 %sum.sroa.0.1, 10
  %18 = icmp eq i32 %17, 0
  br label %bb29

bb29:                                             ; preds = %bb29.loopexit, %bb2
  %sum.sroa.0.0.lcssa = phi i1 [ true, %bb2 ], [ %18, %bb29.loopexit ]
  %self1.i.i.i.i1.i.i14 = load i64, ptr %bin, align 8, !range !1049, !alias.scope !1071, !noalias !1084, !noundef !23
  %_6.i.i.i.i2.i.i15 = icmp eq i64 %self1.i.i.i.i1.i.i14, 0
  br i1 %_6.i.i.i.i2.i.i15, label %bb22, label %bb22.sink.split

bb28:                                             ; preds = %bb28.lr.ph, %bb18
  %iter.sroa.0.052 = phi i64 [ %14, %bb28.lr.ph ], [ %_49, %bb18 ]
  %sum.sroa.0.051 = phi i32 [ 0, %bb28.lr.ph ], [ %sum.sroa.0.1, %bb18 ]
  %_49 = add i64 %iter.sroa.0.052, -1
  %_3.i = icmp ugt i64 %_49, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

bb1.i:                                            ; preds = %bb28
  %_1042.not.i = icmp eq i64 %_49, 32
  br i1 %_1042.not.i, label %bb14.i, label %bb4.i19

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i, %bb28
  %_16.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i ], [ %_31, %bb28 ], [ %_16.sroa.0.2, %bb18.i ], [ %_38, %bb19.i ]
  %remainder.sroa.0.0.i = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i ], [ %_49, %bb28 ], [ %remainder.sroa.0.1.lcssa.i, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb32, label %bb27.i

bb4.i19:                                          ; preds = %bb1.i, %bb5.i
  %remainder.sroa.0.145.i = phi i64 [ %25, %bb5.i ], [ %_49, %bb1.i ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i ], [ %_31, %bb1.i ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %24, %bb5.i ], [ 0, %bb1.i ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i, label %bb5.i

bb14.i:                                           ; preds = %bb5.i, %bb4.i19, %bb1.i
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i19 ], [ %24, %bb5.i ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ 32, %bb1.i ], [ %remainder.sroa.0.145.i, %bb4.i19 ], [ %25, %bb5.i ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %_31, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %n
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %n, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i19
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %19 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1086
  %wide.load54 = load <16 x i8>, ptr %19, align 1, !noalias !1086
  %20 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %21 = icmp sgt <16 x i8> %wide.load54, splat (i8 -65)
  %22 = zext <16 x i1> %20 to <16 x i8>
  %23 = zext <16 x i1> %21 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %22, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %22, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %22, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %22, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %22, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %22, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %22, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %22, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %22, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %22, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %22, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %22, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %22, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %22, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %22, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %22, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %23, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %23, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %23, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %23, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %23, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %23, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %23, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %23, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %23, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %23, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %23, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %23, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %23, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %23, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %23, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %23, i64 15
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
  %24 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %25 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %25, 32
  br i1 %_10.i, label %bb4.i19, label %bb14.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_16.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_16.sroa.0.2, align 1, !noalias !1086, !noundef !23
  %_36.i20 = icmp slt i8 %b.i, -64
  br i1 %_36.i20, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_16.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_38, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb25.i, %bb62.i
  %_16.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_16.sroa.0.0, %bb25.i ]
  %remainder.sroa.0.259.i = phi i64 [ %28, %bb62.i ], [ %remainder.sroa.0.0.i, %bb25.i ]
  %_41.not.i = icmp eq ptr %_38, %_16.sroa.0.1
  br i1 %_41.not.i, label %bb36.invoke, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %26 = ptrtoint ptr %_16.sroa.0.1 to i64
  %27 = sub nuw i64 %16, %26
  %28 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_16.sroa.0.1, align 1, !noalias !1086, !noundef !23
  %_130.i = zext i8 %b15.i to i64
  %29 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %29, align 1, !noalias !1086, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_16.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %27, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %28, 0
  br i1 %_39.not.i, label %bb32, label %bb27.i

bb22.sink.split:                                  ; preds = %bb29, %bb1
  %self1.i.i.i.i1.i.i14.sink = phi i64 [ %self1.i.i.i.i1.i.i9, %bb1 ], [ %self1.i.i.i.i1.i.i14, %bb29 ]
  %_0.sroa.0.1.shrunk.ph = phi i1 [ false, %bb1 ], [ %sum.sroa.0.0.lcssa, %bb29 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_31, i64 noundef %self1.i.i.i.i1.i.i14.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !23
  br label %bb22

bb22:                                             ; preds = %bb22.sink.split, %bb29, %bb1
  %_0.sroa.0.1.shrunk = phi i1 [ false, %bb1 ], [ %sum.sroa.0.0.lcssa, %bb29 ], [ %_0.sroa.0.1.shrunk.ph, %bb22.sink.split ]
  %_0.sroa.0.1 = zext i1 %_0.sroa.0.1.shrunk to i32
  ret i32 %_0.sroa.0.1

bb32:                                             ; preds = %bb62.i, %bb25.i
  %_16.sroa.0.3.ph = phi ptr [ %_16.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i = icmp eq ptr %_16.sroa.0.3.ph, %_38
  br i1 %_7.i.i, label %bb36.invoke, label %bb14.i21

bb14.i21:                                         ; preds = %bb32
  %x.i22 = load i8, ptr %_16.sroa.0.3.ph, align 1, !noalias !1089, !noundef !23
  %_6.i23 = icmp sgt i8 %x.i22, -1
  br i1 %_6.i23, label %bb3.i36, label %bb4.i24

bb4.i24:                                          ; preds = %bb14.i21
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_16.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i22, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_38
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i25 = load i8, ptr %_18.i.i, align 1, !noalias !1089, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i26 = and i8 %y.i25, 63
  %_35.i = zext nneg i8 %_36.i26 to i32
  %30 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i22, -33
  br i1 %_13.i, label %bb6.i27, label %bb35

bb3.i36:                                          ; preds = %bb14.i21
  %_7.i = zext nneg i8 %x.i22 to i32
  br label %bb35

bb6.i27:                                          ; preds = %bb4.i24
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_16.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_38
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i28 = load i8, ptr %_18.i12.i, align 1, !noalias !1089, !noundef !23
  %_40.i29 = shl nuw nsw i32 %_35.i, 6
  %_42.i30 = and i8 %z.i28, 63
  %_41.i31 = zext nneg i8 %_42.i30 to i32
  %y_z.i = or disjoint i32 %_40.i29, %_41.i31
  %_20.i = shl nuw nsw i32 %init.i, 12
  %31 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i22, -17
  br i1 %_21.i, label %bb8.i32, label %bb35

bb8.i32:                                          ; preds = %bb6.i27
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_16.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_38
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i33 = load i8, ptr %_18.i19.i, align 1, !noalias !1089, !noundef !23
  %_26.i34 = shl nuw nsw i32 %init.i, 18
  %_25.i35 = and i32 %_26.i34, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i33, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %32 = or disjoint i32 %_27.i, %_25.i35
  br label %bb35

bb35:                                             ; preds = %bb3.i36, %bb8.i32, %bb6.i27, %bb4.i24
  %_0.sroa.4.0.i.ph = phi i32 [ %30, %bb4.i24 ], [ %31, %bb6.i27 ], [ %32, %bb8.i32 ], [ %_7.i, %bb3.i36 ]
  %33 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %33)
  %_12 = icmp eq i32 %_0.sroa.4.0.i.ph, 49
  br i1 %_12, label %bb5, label %bb18

bb36.invoke:                                      ; preds = %bb32, %bb27.i, %start
  %34 = phi ptr [ @alloc_727145921074ec6c043ddee0f6bf3ae3, %start ], [ @alloc_3ff78cd81411cbc57f0cb57b37f5ad37, %bb27.i ], [ @alloc_3ff78cd81411cbc57f0cb57b37f5ad37, %bb32 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %34) #19
          to label %bb36.cont unwind label %cleanup

bb36.cont:                                        ; preds = %bb36.invoke
  unreachable

bb5:                                              ; preds = %bb35
  %pos_from_right = sub i64 %n, %iter.sroa.0.052
  %_21 = and i64 %pos_from_right, 3
  switch i64 %_21, label %default.unreachable53 [
    i64 1, label %bb6
    i64 2, label %bb8
    i64 3, label %bb10
    i64 0, label %bb12
  ]

default.unreachable53:                            ; preds = %bb5
  unreachable

bb18:                                             ; preds = %bb35, %bb6, %bb10, %bb12, %bb8
  %sum.sroa.0.1 = phi i32 [ %35, %bb6 ], [ %36, %bb8 ], [ %37, %bb10 ], [ %38, %bb12 ], [ %sum.sroa.0.051, %bb35 ]
  %_48.not = icmp eq i64 %_49, 0
  br i1 %_48.not, label %bb29.loopexit, label %bb28

bb6:                                              ; preds = %bb5
  %35 = add i32 %sum.sroa.0.051, 2
  br label %bb18

bb8:                                              ; preds = %bb5
  %36 = add i32 %sum.sroa.0.051, 4
  br label %bb18

bb10:                                             ; preds = %bb5
  %37 = add i32 %sum.sroa.0.051, 8
  br label %bb18

bb12:                                             ; preds = %bb5
  %38 = add i32 %sum.sroa.0.051, 6
  br label %bb18

bb24:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %12
}
