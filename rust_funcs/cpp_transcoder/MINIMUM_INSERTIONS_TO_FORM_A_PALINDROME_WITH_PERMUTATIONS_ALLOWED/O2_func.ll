define noundef range(i32 0, -1) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %count = alloca [104 x i8], align 16
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_23 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_23)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %count)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %count, i8 0, i64 104, i1 false)
  %_2429.not = icmp eq i64 %n, 0
  br i1 %_2429.not, label %vector.body40.preheader, label %bb15.lr.ph

bb15.lr.ph:                                       ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_31 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_38 = getelementptr i8, ptr %_31, i64 %n
  %2 = lshr i64 %n, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %_31, i64 %2
  %3 = ptrtoint ptr %_38 to i64
  br label %bb15

bb15:                                             ; preds = %bb15.lr.ph, %bb3
  %iter.sroa.0.030 = phi i64 [ 0, %bb15.lr.ph ], [ %4, %bb3 ]
  %4 = add nuw nsw i64 %iter.sroa.0.030, 1
  %_3.i = icmp samesign ugt i64 %iter.sroa.0.030, 31
  br i1 %_3.i, label %bb1.i, label %bb25.i

bb1.i:                                            ; preds = %bb15
  %_1042.not.i = icmp eq i64 %iter.sroa.0.030, 32
  br i1 %_1042.not.i, label %bb14.i, label %bb4.i

bb25.i:                                           ; preds = %bb19.i, %bb18.i, %bb14.i, %bb15
  %_12.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i ], [ %_31, %bb15 ], [ %_12.sroa.0.2, %bb18.i ], [ %_38, %bb19.i ]
  %remainder.sroa.0.0.i = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i ], [ %iter.sroa.0.030, %bb15 ], [ %remainder.sroa.0.1.lcssa.i, %bb18.i ], [ %remainder.sroa.0.1.lcssa.i, %bb19.i ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.0.i, 0
  br i1 %_39.not57.i, label %bb19, label %bb27.i

bb4.i:                                            ; preds = %bb1.i, %bb5.i
  %remainder.sroa.0.145.i = phi i64 [ %11, %bb5.i ], [ %iter.sroa.0.030, %bb1.i ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i ], [ %_31, %bb1.i ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %10, %bb5.i ], [ 0, %bb1.i ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i, label %bb5.i

bb14.i:                                           ; preds = %bb5.i, %bb4.i, %bb1.i
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ 0, %bb1.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i ], [ %10, %bb5.i ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ 32, %bb1.i ], [ %remainder.sroa.0.145.i, %bb4.i ], [ %11, %bb5.i ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %_31, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %n
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %n, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i

bb5.i:                                            ; preds = %bb4.i
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1031
  %wide.load37 = load <16 x i8>, ptr %5, align 1, !noalias !1031
  %6 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %7 = icmp sgt <16 x i8> %wide.load37, splat (i8 -65)
  %8 = zext <16 x i1> %6 to <16 x i8>
  %9 = zext <16 x i1> %7 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %8, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %8, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %8, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %8, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %8, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %8, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %8, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %8, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %8, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %8, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %8, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %8, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %8, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %8, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %8, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %8, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %9, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %9, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %9, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %9, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %9, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %9, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %9, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %9, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %9, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %9, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %9, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %9, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %9, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %9, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %9, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %9, i64 15
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
  %10 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %11 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %11, 32
  br i1 %_10.i, label %bb4.i, label %bb14.i

bb18.i:                                           ; preds = %bb14.i, %bb19.i
  %_12.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i, %bb14.i ]
  %b.i = load i8, ptr %_12.sroa.0.2, align 1, !noalias !1031, !noundef !23
  %_36.i = icmp slt i8 %b.i, -64
  br i1 %_36.i, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_38, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i

bb27.i:                                           ; preds = %bb25.i, %bb62.i
  %_12.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_12.sroa.0.0, %bb25.i ]
  %remainder.sroa.0.259.i = phi i64 [ %14, %bb62.i ], [ %remainder.sroa.0.0.i, %bb25.i ]
  %_41.not.i = icmp eq ptr %_38, %_12.sroa.0.1
  br i1 %_41.not.i, label %bb25, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %12 = ptrtoint ptr %_12.sroa.0.1 to i64
  %13 = sub nuw i64 %3, %12
  %14 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_12.sroa.0.1, align 1, !noalias !1031, !noundef !23
  %_130.i = zext i8 %b15.i to i64
  %15 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %15, align 1, !noalias !1031, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %13, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %14, 0
  br i1 %_39.not.i, label %bb19, label %bb27.i

bb2.i.i.i3.i.i:                                   ; preds = %vector.body40.preheader
  %16 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %16, align 8, !alias.scope !1034, !noalias !1047, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1049
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1d47141054ab0ac0E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1d47141054ab0ac0E.exit": ; preds = %vector.body40.preheader, %bb2.i.i.i3.i.i
  %17 = and <4 x i32> %wide.load43, splat (i32 -2147483647)
  %18 = icmp eq <4 x i32> %17, splat (i32 1)
  %19 = zext <4 x i1> %18 to <4 x i32>
  %20 = and <4 x i32> %wide.load43.1, splat (i32 -2147483647)
  %21 = icmp eq <4 x i32> %20, splat (i32 1)
  %22 = zext <4 x i1> %21 to <4 x i32>
  %23 = add nuw nsw <4 x i32> %19, %22
  %24 = and <4 x i32> %wide.load43.2, splat (i32 -2147483647)
  %25 = icmp eq <4 x i32> %24, splat (i32 1)
  %26 = zext <4 x i1> %25 to <4 x i32>
  %27 = add nuw nsw <4 x i32> %23, %26
  %28 = and <4 x i32> %wide.load42, splat (i32 -2147483647)
  %29 = icmp eq <4 x i32> %28, splat (i32 1)
  %30 = zext <4 x i1> %29 to <4 x i32>
  %31 = and <4 x i32> %wide.load42.1, splat (i32 -2147483647)
  %32 = icmp eq <4 x i32> %31, splat (i32 1)
  %33 = zext <4 x i1> %32 to <4 x i32>
  %34 = add nuw nsw <4 x i32> %30, %33
  %35 = and <4 x i32> %wide.load42.2, splat (i32 -2147483647)
  %36 = icmp eq <4 x i32> %35, splat (i32 1)
  %37 = zext <4 x i1> %36 to <4 x i32>
  %38 = add nuw nsw <4 x i32> %34, %37
  %bin.rdx = add nuw nsw <4 x i32> %27, %38
  %39 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %40 = and i32 %_19, -2147483647
  %_17 = icmp eq i32 %40, 1
  %41 = zext i1 %_17 to i32
  %res.sroa.0.1 = add i32 %39, %41
  %42 = and i32 %_19.1, -2147483647
  %_17.1 = icmp eq i32 %42, 1
  %43 = zext i1 %_17.1 to i32
  %res.sroa.0.1.1 = add i32 %res.sroa.0.1, %43
  %_0.sroa.0.0 = tail call i32 @llvm.usub.sat.i32(i32 %res.sroa.0.1.1, i32 1)
  ret i32 %_0.sroa.0.0

cleanup:                                          ; preds = %bb25, %panic3
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %self1.i.i.i.i1.i.i9 = load i64, ptr %str, align 8, !range !1065, !alias.scope !1066, !noalias !1069, !noundef !23
  %_6.i.i.i.i2.i.i10 = icmp eq i64 %self1.i.i.i.i1.i.i9, 0
  br i1 %_6.i.i.i.i2.i.i10, label %bb14, label %bb2.i.i.i3.i.i11

bb2.i.i.i3.i.i11:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_31, i64 noundef %self1.i.i.i.i1.i.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1071
  br label %bb14

unreachable:                                      ; preds = %bb25, %panic3
  unreachable

bb19:                                             ; preds = %bb62.i, %bb25.i
  %_12.sroa.0.3.ph = phi ptr [ %_12.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i = icmp eq ptr %_12.sroa.0.3.ph, %_38
  br i1 %_7.i.i, label %bb25, label %bb14.i14

bb14.i14:                                         ; preds = %bb19
  %x.i = load i8, ptr %_12.sroa.0.3.ph, align 1, !noalias !1072, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i15

bb4.i15:                                          ; preds = %bb14.i14
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_38
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1072, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i16 = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i16 to i32
  %45 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb22

bb3.i:                                            ; preds = %bb14.i14
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb22

bb6.i:                                            ; preds = %bb4.i15
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_38
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1072, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %46 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb22

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_12.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_38
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1072, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i17 = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %47 = or disjoint i32 %_27.i, %_25.i17
  br label %bb22

bb22:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i15
  %_0.sroa.4.0.i.ph = phi i32 [ %45, %bb4.i15 ], [ %46, %bb6.i ], [ %47, %bb8.i ], [ %_7.i, %bb3.i ]
  %48 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %48)
  %_8 = zext nneg i32 %_0.sroa.4.0.i.ph to i64
  %_7 = add nsw i64 %_8, -97
  %_14 = icmp ult i64 %_7, 26
  br i1 %_14, label %bb3, label %panic3

bb25:                                             ; preds = %bb19, %bb27.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_b2186d8e3a80cbd6341c9cd0f3c69488) #21
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %bb22
  %49 = getelementptr inbounds nuw i32, ptr %count, i64 %_7
  %50 = load i32, ptr %49, align 4, !noundef !23
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %exitcond.not = icmp eq i64 %4, %n
  br i1 %exitcond.not, label %vector.body40.preheader, label %bb15

vector.body40.preheader:                          ; preds = %bb3, %start
  %52 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %wide.load43 = load <4 x i32>, ptr %52, align 16
  %53 = getelementptr inbounds nuw i8, ptr %count, i64 48
  %wide.load43.1 = load <4 x i32>, ptr %53, align 16
  %54 = getelementptr inbounds nuw i8, ptr %count, i64 80
  %wide.load43.2 = load <4 x i32>, ptr %54, align 16
  %wide.load42 = load <4 x i32>, ptr %count, align 16
  %55 = getelementptr inbounds nuw i8, ptr %count, i64 32
  %wide.load42.1 = load <4 x i32>, ptr %55, align 16
  %56 = getelementptr inbounds nuw i8, ptr %count, i64 64
  %wide.load42.2 = load <4 x i32>, ptr %56, align 16
  %57 = getelementptr inbounds nuw i8, ptr %count, i64 96
  %_19 = load i32, ptr %57, align 16, !noundef !23
  %58 = getelementptr inbounds nuw i8, ptr %count, i64 100
  %_19.1 = load i32, ptr %58, align 4, !noundef !23
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %count)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1065, !alias.scope !1034, !noalias !1047, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1d47141054ab0ac0E.exit", label %bb2.i.i.i3.i.i

panic3:                                           ; preds = %bb22
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_db80c4a6ef2a83fda03ba72df6e18871) #21
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb2.i.i.i3.i.i11, %cleanup
  resume { ptr, i32 } %44
}
