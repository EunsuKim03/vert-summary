define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_23 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_23)
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_27 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_34 = getelementptr i8, ptr %_27, i64 %n
  %2 = icmp samesign eq i64 %n, 0
  br i1 %2, label %bb22.invoke, label %bb17.i

bb17.i:                                           ; preds = %start
  %_24.i.i = getelementptr inbounds i8, ptr %_34, i64 -1
  %w.i = load i8, ptr %_24.i.i, align 1, !noalias !1031, !noundef !23
  %_6.i = icmp sgt i8 %w.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb17.i
  %3 = icmp ne i64 %n, 1
  tail call void @llvm.assume(i1 %3)
  %_24.i13.i = getelementptr inbounds i8, ptr %_34, i64 -2
  %z.i = load i8, ptr %_24.i13.i, align 1, !noalias !1031, !noundef !23
  %_26.i = and i8 %z.i, 31
  %4 = zext nneg i8 %_26.i to i32
  %_12.i = icmp slt i8 %z.i, -64
  br i1 %_12.i, label %bb6.i, label %bb13.i

bb3.i:                                            ; preds = %bb17.i
  %_8.i = zext nneg i8 %w.i to i32
  br label %bb13

bb6.i:                                            ; preds = %bb4.i
  %5 = icmp ne i64 %n, 2
  tail call void @llvm.assume(i1 %5)
  %_24.i19.i = getelementptr inbounds i8, ptr %_34, i64 -3
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
  br label %bb13

bb8.i:                                            ; preds = %bb6.i
  %8 = icmp ne i64 %n, 3
  tail call void @llvm.assume(i1 %8)
  %_24.i25.i = getelementptr inbounds i8, ptr %_34, i64 -4
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

cleanup:                                          ; preds = %bb22.invoke
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1049, !alias.scope !1050, !noalias !1053, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb10, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_27, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1055
  br label %bb10

bb13:                                             ; preds = %bb13.i, %bb3.i
  %_0.sroa.4.1.i.ph = phi i32 [ %_8.i, %bb3.i ], [ %7, %bb13.i ]
  %13 = icmp samesign ult i32 %_0.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %13)
  %14 = and i32 %_0.sroa.4.1.i.ph, 1
  %_3.not = icmp eq i32 %14, 0
  br i1 %_3.not, label %bb3.preheader, label %bb1

bb3.preheader:                                    ; preds = %bb13
  %15 = lshr i64 %n, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %_27, i64 %15
  %16 = ptrtoint ptr %_34 to i64
  br label %bb14

bb1:                                              ; preds = %bb13
  %self1.i.i.i.i1.i.i5 = load i64, ptr %str, align 8, !range !1049, !alias.scope !1056, !noalias !1069, !noundef !23
  %_6.i.i.i.i2.i.i6 = icmp eq i64 %self1.i.i.i.i1.i.i5, 0
  br i1 %_6.i.i.i.i2.i.i6, label %bb8, label %bb8.sink.split

bb15:                                             ; preds = %bb21
  %_22 = srem i32 %33, 3
  %_21 = icmp eq i32 %_22, 0
  %self1.i.i.i.i1.i.i10 = load i64, ptr %str, align 8, !range !1049, !alias.scope !1071, !noalias !1084, !noundef !23
  %_6.i.i.i.i2.i.i11 = icmp eq i64 %self1.i.i.i.i1.i.i10, 0
  br i1 %_6.i.i.i.i2.i.i11, label %bb8, label %bb8.sink.split

bb14:                                             ; preds = %bb3.preheader, %bb21
  %iter.sroa.0.046 = phi i64 [ 0, %bb3.preheader ], [ %17, %bb21 ]
  %digit_sum.sroa.0.045 = phi i32 [ 0, %bb3.preheader ], [ %33, %bb21 ]
  %17 = add nuw nsw i64 %iter.sroa.0.046, 1
  %_3.i = icmp samesign ugt i64 %iter.sroa.0.046, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

bb1.i:                                            ; preds = %bb14
  %_1042.not.i = icmp eq i64 %iter.sroa.0.046, 32
  br i1 %_1042.not.i, label %bb14.i, label %bb4.i15

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i, %bb14
  %_19.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i ], [ %_27, %bb14 ], [ %_19.sroa.0.2, %bb18.i ], [ %_34, %bb19.i ]
  %remainder.sroa.0.0.i = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i ], [ %iter.sroa.0.046, %bb14 ], [ %remainder.sroa.0.1.lcssa.i, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb18, label %bb27.i

bb4.i15:                                          ; preds = %bb1.i, %bb5.i
  %remainder.sroa.0.145.i = phi i64 [ %24, %bb5.i ], [ %iter.sroa.0.046, %bb1.i ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i ], [ %_27, %bb1.i ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %23, %bb5.i ], [ 0, %bb1.i ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i, label %bb5.i

bb14.i:                                           ; preds = %bb5.i, %bb4.i15, %bb1.i
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i15 ], [ %23, %bb5.i ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ 32, %bb1.i ], [ %remainder.sroa.0.145.i, %bb4.i15 ], [ %24, %bb5.i ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %_27, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %n
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %n, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i15
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1086
  %wide.load47 = load <16 x i8>, ptr %18, align 1, !noalias !1086
  %19 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %20 = icmp sgt <16 x i8> %wide.load47, splat (i8 -65)
  %21 = zext <16 x i1> %19 to <16 x i8>
  %22 = zext <16 x i1> %20 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %21, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %21, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %21, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %21, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %21, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %21, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %21, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %21, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %21, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %21, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %21, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %21, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %21, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %21, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %21, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %21, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %22, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %22, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %22, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %22, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %22, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %22, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %22, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %22, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %22, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %22, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %22, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %22, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %22, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %22, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %22, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %22, i64 15
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
  %23 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %24 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %24, 32
  br i1 %_10.i, label %bb4.i15, label %bb14.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_19.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_19.sroa.0.2, align 1, !noalias !1086, !noundef !23
  %_36.i16 = icmp slt i8 %b.i, -64
  br i1 %_36.i16, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_19.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_34, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb25.i, %bb62.i
  %_19.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_19.sroa.0.0, %bb25.i ]
  %remainder.sroa.0.259.i = phi i64 [ %27, %bb62.i ], [ %remainder.sroa.0.0.i, %bb25.i ]
  %_41.not.i = icmp eq ptr %_34, %_19.sroa.0.1
  br i1 %_41.not.i, label %bb22.invoke, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %25 = ptrtoint ptr %_19.sroa.0.1 to i64
  %26 = sub nuw i64 %16, %25
  %27 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_19.sroa.0.1, align 1, !noalias !1086, !noundef !23
  %_130.i = zext i8 %b15.i to i64
  %28 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %28, align 1, !noalias !1086, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_19.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %26, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %27, 0
  br i1 %_39.not.i, label %bb18, label %bb27.i

bb8.sink.split:                                   ; preds = %bb15, %bb1
  %self1.i.i.i.i1.i.i10.sink = phi i64 [ %self1.i.i.i.i1.i.i5, %bb1 ], [ %self1.i.i.i.i1.i.i10, %bb15 ]
  %_0.sroa.0.1.shrunk.ph = phi i1 [ false, %bb1 ], [ %_21, %bb15 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_27, i64 noundef %self1.i.i.i.i1.i.i10.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !23
  br label %bb8

bb8:                                              ; preds = %bb8.sink.split, %bb15, %bb1
  %_0.sroa.0.1.shrunk = phi i1 [ false, %bb1 ], [ %_21, %bb15 ], [ %_0.sroa.0.1.shrunk.ph, %bb8.sink.split ]
  %_0.sroa.0.1 = zext i1 %_0.sroa.0.1.shrunk to i32
  ret i32 %_0.sroa.0.1

bb18:                                             ; preds = %bb62.i, %bb25.i
  %_19.sroa.0.3.ph = phi ptr [ %_19.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i = icmp eq ptr %_19.sroa.0.3.ph, %_34
  br i1 %_7.i.i, label %bb22.invoke, label %bb14.i17

bb14.i17:                                         ; preds = %bb18
  %x.i18 = load i8, ptr %_19.sroa.0.3.ph, align 1, !noalias !1089, !noundef !23
  %_6.i19 = icmp sgt i8 %x.i18, -1
  br i1 %_6.i19, label %bb3.i32, label %bb4.i20

bb4.i20:                                          ; preds = %bb14.i17
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_19.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i18, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_34
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i21 = load i8, ptr %_18.i.i, align 1, !noalias !1089, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i22 = and i8 %y.i21, 63
  %_35.i = zext nneg i8 %_36.i22 to i32
  %29 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i18, -33
  br i1 %_13.i, label %bb6.i23, label %bb21

bb3.i32:                                          ; preds = %bb14.i17
  %_7.i = zext nneg i8 %x.i18 to i32
  br label %bb21

bb6.i23:                                          ; preds = %bb4.i20
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_19.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_34
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i24 = load i8, ptr %_18.i12.i, align 1, !noalias !1089, !noundef !23
  %_40.i25 = shl nuw nsw i32 %_35.i, 6
  %_42.i26 = and i8 %z.i24, 63
  %_41.i27 = zext nneg i8 %_42.i26 to i32
  %y_z.i = or disjoint i32 %_40.i25, %_41.i27
  %_20.i = shl nuw nsw i32 %init.i, 12
  %30 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i18, -17
  br i1 %_21.i, label %bb8.i28, label %bb21

bb8.i28:                                          ; preds = %bb6.i23
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_19.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_34
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i29 = load i8, ptr %_18.i19.i, align 1, !noalias !1089, !noundef !23
  %_26.i30 = shl nuw nsw i32 %init.i, 18
  %_25.i31 = and i32 %_26.i30, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i29, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %31 = or disjoint i32 %_27.i, %_25.i31
  br label %bb21

bb21:                                             ; preds = %bb3.i32, %bb8.i28, %bb6.i23, %bb4.i20
  %_0.sroa.4.0.i.ph = phi i32 [ %29, %bb4.i20 ], [ %30, %bb6.i23 ], [ %31, %bb8.i28 ], [ %_7.i, %bb3.i32 ]
  %32 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %32)
  %_14 = add i32 %digit_sum.sroa.0.045, -48
  %33 = add i32 %_14, %_0.sroa.4.0.i.ph
  %exitcond.not = icmp eq i64 %17, %n
  br i1 %exitcond.not, label %bb15, label %bb14

bb22.invoke:                                      ; preds = %bb18, %bb27.i, %start
  %34 = phi ptr [ @alloc_65c4c9b4729a289b3ed36eaedaeef5b1, %start ], [ @alloc_9101c28f7e0bbd1896c74c2937738b3d, %bb27.i ], [ @alloc_9101c28f7e0bbd1896c74c2937738b3d, %bb18 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %34) #19
          to label %bb22.cont unwind label %cleanup

bb22.cont:                                        ; preds = %bb22.invoke
  unreachable

bb10:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %12
}
