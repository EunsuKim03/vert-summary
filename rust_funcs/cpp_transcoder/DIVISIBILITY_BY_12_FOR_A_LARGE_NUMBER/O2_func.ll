define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %num) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i = alloca [1 x i8], align 1
  %0 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %_3 = load i64, ptr %0, align 8, !noundef !3
  %_37 = icmp sgt i64 %_3, -1
  tail call void @llvm.assume(i1 %_37)
  %_2 = icmp samesign ugt i64 %_3, 2
  %1 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_41 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  br i1 %_2, label %bb1, label %bb11

bb11:                                             ; preds = %start
  switch i64 %_3, label %bb9thread-pre-split.i [
    i64 0, label %bb2.i
    i64 1, label %bb7.i
  ]

bb7.i:                                            ; preds = %bb11
  %2 = load i8, ptr %_41, align 1, !alias.scope !1038, !noundef !3
  switch i8 %2, label %bb9.i [
    i8 43, label %bb2.i
    i8 45, label %bb2.i
  ]

bb9thread-pre-split.i:                            ; preds = %bb11
  %.pr.i = load i8, ptr %_41, align 1, !alias.scope !1038
  br label %bb9.i

bb9.i:                                            ; preds = %bb9thread-pre-split.i, %bb7.i
  %3 = phi i8 [ %.pr.i, %bb9thread-pre-split.i ], [ %2, %bb7.i ]
  switch i8 %3, label %bb14.i.preheader [
    i8 43, label %bb66.i
    i8 45, label %bb70.i
  ]

bb70.i:                                           ; preds = %bb9.i
  %4 = icmp eq i64 %_3, 1
  br i1 %4, label %bb12, label %bb20.i

bb20.i:                                           ; preds = %bb70.i
  %src.sroa.0.282.i = getelementptr inbounds nuw i8, ptr %_41, i64 1
  %_36.i = load i8, ptr %src.sroa.0.282.i, align 1, !alias.scope !1038, !noundef !3
  %5 = add i8 %_36.i, -48
  %_14.i.i = icmp ult i8 %5, 10
  br i1 %_14.i.i, label %bb23.i, label %bb2.i

bb23.i:                                           ; preds = %bb20.i
  %_35.i = zext nneg i8 %_36.i to i32
  %6 = sub nsw i32 48, %_35.i
  br label %bb12

bb66.i:                                           ; preds = %bb9.i
  %rest.0.i = getelementptr inbounds nuw i8, ptr %_41, i64 1
  %_16.not85.i = icmp eq i64 %_3, 1
  br i1 %_16.not85.i, label %bb12, label %bb14.i.preheader

bb14.i.preheader:                                 ; preds = %bb66.i, %bb9.i
  %src.sroa.0.488.i.ph = phi ptr [ %_41, %bb9.i ], [ %rest.0.i, %bb66.i ]
  %src.sroa.26.487.i.ph = phi i64 [ %_3, %bb9.i ], [ 1, %bb66.i ]
  br label %bb14.i

bb14.i:                                           ; preds = %bb14.i.preheader, %bb18.i
  %src.sroa.0.488.i = phi ptr [ %rest.015.i, %bb18.i ], [ %src.sroa.0.488.i.ph, %bb14.i.preheader ]
  %src.sroa.26.487.i = phi i64 [ %rest.116.i, %bb18.i ], [ %src.sroa.26.487.i.ph, %bb14.i.preheader ]
  %result.sroa.0.486.i = phi i32 [ %9, %bb18.i ], [ 0, %bb14.i.preheader ]
  %_23.i = load i8, ptr %src.sroa.0.488.i, align 1, !alias.scope !1038, !noundef !3
  %_22.i = zext i8 %_23.i to i32
  %7 = add nsw i32 %_22.i, -48
  %_14.i76.i = icmp ult i32 %7, 10
  br i1 %_14.i76.i, label %bb18.i, label %bb2.i

bb18.i:                                           ; preds = %bb14.i
  %8 = mul i32 %result.sroa.0.486.i, 10
  %rest.116.i = add nsw i64 %src.sroa.26.487.i, -1
  %rest.015.i = getelementptr inbounds nuw i8, ptr %src.sroa.0.488.i, i64 1
  %9 = add i32 %7, %8
  %_16.not.i = icmp eq i64 %rest.116.i, 0
  br i1 %_16.not.i, label %bb12, label %bb14.i

bb1:                                              ; preds = %start
  %_48 = getelementptr inbounds nuw i8, ptr %_41, i64 %_3
  %_24.i.i = getelementptr inbounds i8, ptr %_48, i64 -1
  %w.i = load i8, ptr %_24.i.i, align 1, !noalias !1041, !noundef !3
  %_6.i = icmp sgt i8 %w.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb1
  %_24.i13.i = getelementptr inbounds i8, ptr %_48, i64 -2
  %z.i = load i8, ptr %_24.i13.i, align 1, !noalias !1041, !noundef !3
  %_26.i = and i8 %z.i, 31
  %10 = zext nneg i8 %_26.i to i32
  %_12.i = icmp slt i8 %z.i, -64
  br i1 %_12.i, label %bb6.i, label %bb13.i

bb3.i:                                            ; preds = %bb1
  %_8.i = zext nneg i8 %w.i to i32
  br label %bb23

bb6.i:                                            ; preds = %bb4.i
  %_24.i19.i = getelementptr inbounds i8, ptr %_48, i64 -3
  %y.i = load i8, ptr %_24.i19.i, align 1, !noalias !1041, !noundef !3
  %_31.i = and i8 %y.i, 15
  %11 = zext nneg i8 %_31.i to i32
  %_16.i = icmp slt i8 %y.i, -64
  br i1 %_16.i, label %bb8.i, label %bb11.i

bb13.i:                                           ; preds = %bb11.i, %bb4.i
  %ch.sroa.0.0.i = phi i32 [ %16, %bb11.i ], [ %10, %bb4.i ]
  %_43.i = shl nuw nsw i32 %ch.sroa.0.0.i, 6
  %_45.i = and i8 %w.i, 63
  %_44.i = zext nneg i8 %_45.i to i32
  %12 = or disjoint i32 %_43.i, %_44.i
  br label %bb23

bb8.i:                                            ; preds = %bb6.i
  %13 = icmp ne i64 %_3, 3
  tail call void @llvm.assume(i1 %13)
  %_24.i25.i = getelementptr inbounds i8, ptr %_48, i64 -4
  %x.i = load i8, ptr %_24.i25.i, align 1, !noalias !1041, !noundef !3
  %_36.i11 = and i8 %x.i, 7
  %14 = zext nneg i8 %_36.i11 to i32
  %_37.i = shl nuw nsw i32 %14, 6
  %_39.i = and i8 %y.i, 63
  %_38.i = zext nneg i8 %_39.i to i32
  %15 = or disjoint i32 %_37.i, %_38.i
  br label %bb11.i

bb11.i:                                           ; preds = %bb8.i, %bb6.i
  %ch.sroa.0.1.i = phi i32 [ %15, %bb8.i ], [ %11, %bb6.i ]
  %_40.i = shl nuw nsw i32 %ch.sroa.0.1.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %16 = or disjoint i32 %_40.i, %_41.i
  br label %bb13.i

cleanup:                                          ; preds = %bb2.i, %bb32
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %self1.i.i.i.i1.i.i = load i64, ptr %num, align 8, !range !1059, !alias.scope !1060, !noalias !1063, !noundef !3
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb20, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_41, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1065
  br label %bb20

bb2.i:                                            ; preds = %bb14.i, %bb11, %bb7.i, %bb7.i, %bb20.i
  %_0.sroa.12.0.insert.insert.i.ph = phi i8 [ 1, %bb20.i ], [ 1, %bb7.i ], [ 1, %bb7.i ], [ 0, %bb11 ], [ 1, %bb14.i ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e.i)
  store i8 %_0.sroa.12.0.insert.insert.i.ph, ptr %e.i, align 1
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f0e93f2a3efeda78432e1787b2a7bea1) #21
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

bb12:                                             ; preds = %bb18.i, %bb66.i, %bb23.i, %bb70.i
  %result.sroa.0.1.i = phi i32 [ 0, %bb66.i ], [ %6, %bb23.i ], [ 0, %bb70.i ], [ %9, %bb18.i ]
  %_36 = srem i32 %result.sroa.0.1.i, 12
  %_35 = icmp eq i32 %_36, 0
  %. = zext i1 %_35 to i32
  br label %bb17

bb17:                                             ; preds = %bb6, %bb35, %bb23, %bb12
  %_0.sroa.0.0 = phi i32 [ %., %bb12 ], [ 0, %bb23 ], [ 0, %bb35 ], [ %spec.select10, %bb6 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %self1.i.i.i.i1.i.i12 = load i64, ptr %num, align 8, !range !1059, !alias.scope !1081, !noalias !1084, !noundef !3
  %_6.i.i.i.i2.i.i13 = icmp eq i64 %self1.i.i.i.i1.i.i12, 0
  br i1 %_6.i.i.i.i2.i.i13, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371b7869e3768009E.exit16", label %bb2.i.i.i3.i.i14

bb2.i.i.i3.i.i14:                                 ; preds = %bb17
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_41, i64 noundef %self1.i.i.i.i1.i.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !1086
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371b7869e3768009E.exit16"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371b7869e3768009E.exit16": ; preds = %bb17, %bb2.i.i.i3.i.i14
  ret i32 %_0.sroa.0.0

bb23:                                             ; preds = %bb13.i, %bb3.i
  %_0.sroa.4.1.i.ph = phi i32 [ %_8.i, %bb3.i ], [ %12, %bb13.i ]
  %18 = icmp samesign ult i32 %_0.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %18)
  %_10 = and i32 %_0.sroa.4.1.i.ph, 1
  %_9.not = icmp eq i32 %_10, 0
  br i1 %_9.not, label %bb3, label %bb17

unreachable:                                      ; preds = %bb32
  unreachable

bb3:                                              ; preds = %bb23
  %_17 = add nsw i64 %_3, -2
  %_3.i = icmp samesign ugt i64 %_17, 31
  br i1 %_3.i, label %bb1.i, label %bb27.lr.ph.i

bb1.i:                                            ; preds = %bb3
  %19 = lshr i64 %_3, 5
  %_65.i = getelementptr inbounds nuw [32 x i8], ptr %_41, i64 %19
  %_1042.not.i = icmp eq i64 %_17, 32
  br i1 %_1042.not.i, label %bb18.i21.preheader, label %bb4.i17

bb25.i:                                           ; preds = %bb19.i, %bb18.i21, %bb14.i20
  %remainder.sroa.0.1.lcssa.i125 = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i20 ], [ %remainder.sroa.0.1.lcssa.i124, %bb18.i21 ], [ %remainder.sroa.0.1.lcssa.i124, %bb19.i ]
  %_15.sroa.0.0 = phi ptr [ %_19.i.i, %bb14.i20 ], [ %_48, %bb19.i ], [ %_15.sroa.0.2, %bb18.i21 ]
  %_39.not57.i = icmp eq i64 %remainder.sroa.0.1.lcssa.i125, 0
  br i1 %_39.not57.i, label %bb27, label %bb27.lr.ph.i

bb27.lr.ph.i:                                     ; preds = %bb3, %bb25.i
  %remainder.sroa.0.0.i90 = phi i64 [ %remainder.sroa.0.1.lcssa.i125, %bb25.i ], [ %_17, %bb3 ]
  %_15.sroa.0.089 = phi ptr [ %_15.sroa.0.0, %bb25.i ], [ %_41, %bb3 ]
  %20 = ptrtoint ptr %_48 to i64
  br label %bb27.i

bb4.i17:                                          ; preds = %bb1.i, %bb5.i
  %remainder.sroa.0.145.i = phi i64 [ %27, %bb5.i ], [ %_17, %bb1.i ]
  %chunks.sroa.0.044.i = phi ptr [ %chunks.sroa.0.1.i, %bb5.i ], [ %_41, %bb1.i ]
  %bytes_skipped.sroa.0.043.i = phi i64 [ %26, %bb5.i ], [ 0, %bb1.i ]
  %_73.i = icmp eq ptr %chunks.sroa.0.044.i, %_65.i
  br i1 %_73.i, label %bb14.i20, label %bb5.i

bb14.i20:                                         ; preds = %bb5.i, %bb4.i17
  %bytes_skipped.sroa.0.0.lcssa.i = phi i64 [ %26, %bb5.i ], [ %bytes_skipped.sroa.0.043.i, %bb4.i17 ]
  %remainder.sroa.0.1.lcssa.i = phi i64 [ %27, %bb5.i ], [ %remainder.sroa.0.145.i, %bb4.i17 ]
  %_19.i.i = getelementptr inbounds nuw i8, ptr %_41, i64 %bytes_skipped.sroa.0.0.lcssa.i
  %.not27.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i, %_3
  tail call void @llvm.assume(i1 %.not27.i)
  %_30.not53.i = icmp samesign eq i64 %_3, %bytes_skipped.sroa.0.0.lcssa.i
  br i1 %_30.not53.i, label %bb25.i, label %bb18.i21.preheader

bb18.i21.preheader:                               ; preds = %bb1.i, %bb14.i20
  %_19.i.i126 = phi ptr [ %_19.i.i, %bb14.i20 ], [ %_41, %bb1.i ]
  %remainder.sroa.0.1.lcssa.i124 = phi i64 [ %remainder.sroa.0.1.lcssa.i, %bb14.i20 ], [ 32, %bb1.i ]
  br label %bb18.i21

bb5.i:                                            ; preds = %bb4.i17
  %chunks.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i, i64 16
  %wide.load = load <16 x i8>, ptr %chunks.sroa.0.044.i, align 1, !noalias !1087
  %wide.load129 = load <16 x i8>, ptr %21, align 1, !noalias !1087
  %22 = icmp sgt <16 x i8> %wide.load, splat (i8 -65)
  %23 = icmp sgt <16 x i8> %wide.load129, splat (i8 -65)
  %24 = zext <16 x i1> %22 to <16 x i8>
  %25 = zext <16 x i1> %23 to <16 x i8>
  %start_bytes.i.sroa.0.0.vec.extract = extractelement <16 x i8> %24, i64 0
  %start_bytes.i.sroa.0.1.vec.extract = extractelement <16 x i8> %24, i64 1
  %start_bytes.i.sroa.0.2.vec.extract = extractelement <16 x i8> %24, i64 2
  %start_bytes.i.sroa.0.3.vec.extract = extractelement <16 x i8> %24, i64 3
  %start_bytes.i.sroa.0.4.vec.extract = extractelement <16 x i8> %24, i64 4
  %start_bytes.i.sroa.0.5.vec.extract = extractelement <16 x i8> %24, i64 5
  %start_bytes.i.sroa.0.6.vec.extract = extractelement <16 x i8> %24, i64 6
  %start_bytes.i.sroa.0.7.vec.extract = extractelement <16 x i8> %24, i64 7
  %start_bytes.i.sroa.0.8.vec.extract = extractelement <16 x i8> %24, i64 8
  %start_bytes.i.sroa.0.9.vec.extract = extractelement <16 x i8> %24, i64 9
  %start_bytes.i.sroa.0.10.vec.extract = extractelement <16 x i8> %24, i64 10
  %start_bytes.i.sroa.0.11.vec.extract = extractelement <16 x i8> %24, i64 11
  %start_bytes.i.sroa.0.12.vec.extract = extractelement <16 x i8> %24, i64 12
  %start_bytes.i.sroa.0.13.vec.extract = extractelement <16 x i8> %24, i64 13
  %start_bytes.i.sroa.0.14.vec.extract = extractelement <16 x i8> %24, i64 14
  %start_bytes.i.sroa.0.15.vec.extract = extractelement <16 x i8> %24, i64 15
  %start_bytes.i.sroa.21.16.vec.extract = extractelement <16 x i8> %25, i64 0
  %start_bytes.i.sroa.21.17.vec.extract = extractelement <16 x i8> %25, i64 1
  %start_bytes.i.sroa.21.18.vec.extract = extractelement <16 x i8> %25, i64 2
  %start_bytes.i.sroa.21.19.vec.extract = extractelement <16 x i8> %25, i64 3
  %start_bytes.i.sroa.21.20.vec.extract = extractelement <16 x i8> %25, i64 4
  %start_bytes.i.sroa.21.21.vec.extract = extractelement <16 x i8> %25, i64 5
  %start_bytes.i.sroa.21.22.vec.extract = extractelement <16 x i8> %25, i64 6
  %start_bytes.i.sroa.21.23.vec.extract = extractelement <16 x i8> %25, i64 7
  %start_bytes.i.sroa.21.24.vec.extract = extractelement <16 x i8> %25, i64 8
  %start_bytes.i.sroa.21.25.vec.extract = extractelement <16 x i8> %25, i64 9
  %start_bytes.i.sroa.21.26.vec.extract = extractelement <16 x i8> %25, i64 10
  %start_bytes.i.sroa.21.27.vec.extract = extractelement <16 x i8> %25, i64 11
  %start_bytes.i.sroa.21.28.vec.extract = extractelement <16 x i8> %25, i64 12
  %start_bytes.i.sroa.21.29.vec.extract = extractelement <16 x i8> %25, i64 13
  %start_bytes.i.sroa.21.30.vec.extract = extractelement <16 x i8> %25, i64 14
  %start_bytes.i.sroa.21.31.vec.extract = extractelement <16 x i8> %25, i64 15
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
  %26 = add i64 %bytes_skipped.sroa.0.043.i, 32
  %_25.i = zext i8 %_4.0.i.i.i.i.i.i.31.i to i64
  %27 = sub i64 %remainder.sroa.0.145.i, %_25.i
  %_10.i = icmp ugt i64 %27, 32
  br i1 %_10.i, label %bb4.i17, label %bb14.i20

bb18.i21:                                         ; preds = %bb18.i21.preheader, %bb19.i
  %_15.sroa.0.2 = phi ptr [ %_19.i33.i, %bb19.i ], [ %_19.i.i126, %bb18.i21.preheader ]
  %b.i = load i8, ptr %_15.sroa.0.2, align 1, !noalias !1087, !noundef !3
  %_36.i22 = icmp slt i8 %b.i, -64
  br i1 %_36.i22, label %bb19.i, label %bb25.i

bb19.i:                                           ; preds = %bb18.i21
  %_19.i33.i = getelementptr inbounds nuw i8, ptr %_15.sroa.0.2, i64 1
  %_30.not.i = icmp eq ptr %_48, %_19.i33.i
  br i1 %_30.not.i, label %bb25.i, label %bb18.i21

bb27.i:                                           ; preds = %bb62.i, %bb27.lr.ph.i
  %_15.sroa.0.1 = phi ptr [ %_15.sroa.0.089, %bb27.lr.ph.i ], [ %_19.i38.i, %bb62.i ]
  %remainder.sroa.0.259.i = phi i64 [ %remainder.sroa.0.0.i90, %bb27.lr.ph.i ], [ %30, %bb62.i ]
  %_41.not.i = icmp eq ptr %_48, %_15.sroa.0.1
  br i1 %_41.not.i, label %bb32, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %28 = ptrtoint ptr %_15.sroa.0.1 to i64
  %29 = sub nuw i64 %20, %28
  %30 = add i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_15.sroa.0.1, align 1, !noalias !1087, !noundef !3
  %_130.i = zext i8 %b15.i to i64
  %31 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %31, align 1, !noalias !1087, !noundef !3
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_15.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %29, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %30, 0
  br i1 %_39.not.i, label %bb27, label %bb27.i

bb27:                                             ; preds = %bb62.i, %bb25.i
  %_15.sroa.0.3.ph = phi ptr [ %_15.sroa.0.0, %bb25.i ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i = icmp eq ptr %_15.sroa.0.3.ph, %_48
  br i1 %_7.i.i, label %bb32, label %bb14.i23

bb14.i23:                                         ; preds = %bb27
  %x.i24 = load i8, ptr %_15.sroa.0.3.ph, align 1, !noalias !1090, !noundef !3
  %_6.i25 = icmp sgt i8 %x.i24, -1
  br i1 %_6.i25, label %bb3.i40, label %bb4.i26

bb4.i26:                                          ; preds = %bb14.i23
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_15.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i24, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_48
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i27 = load i8, ptr %_18.i.i, align 1, !noalias !1090, !noundef !3
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i28 = and i8 %y.i27, 63
  %_35.i29 = zext nneg i8 %_36.i28 to i32
  %32 = or disjoint i32 %_34.i, %_35.i29
  %_13.i = icmp samesign ugt i8 %x.i24, -33
  br i1 %_13.i, label %bb6.i31, label %bb14.i44.preheader

bb3.i40:                                          ; preds = %bb14.i23
  %_7.i = zext nneg i8 %x.i24 to i32
  br label %bb14.i44.preheader

bb6.i31:                                          ; preds = %bb4.i26
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_15.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_48
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i32 = load i8, ptr %_18.i12.i, align 1, !noalias !1090, !noundef !3
  %_40.i33 = shl nuw nsw i32 %_35.i29, 6
  %_42.i34 = and i8 %z.i32, 63
  %_41.i35 = zext nneg i8 %_42.i34 to i32
  %y_z.i = or disjoint i32 %_40.i33, %_41.i35
  %_20.i = shl nuw nsw i32 %init.i, 12
  %33 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i24, -17
  br i1 %_21.i, label %bb25, label %bb14.i44.preheader

bb25:                                             ; preds = %bb6.i31
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_15.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_48
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i37 = load i8, ptr %_18.i19.i, align 1, !noalias !1090, !noundef !3
  %_26.i38 = shl nuw nsw i32 %init.i, 18
  %_25.i39 = and i32 %_26.i38, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i37, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %34 = or disjoint i32 %_27.i, %_25.i39
  %.not9 = icmp eq i32 %34, 1114112
  br i1 %.not9, label %bb32, label %bb14.i44.preheader, !prof !1093

bb14.i44.preheader:                               ; preds = %bb25, %bb4.i26, %bb6.i31, %bb3.i40
  %_0.sroa.4.0.i.ph109 = phi i32 [ %34, %bb25 ], [ %_7.i, %bb3.i40 ], [ %33, %bb6.i31 ], [ %32, %bb4.i26 ]
  %35 = icmp samesign ult i32 %_0.sroa.4.0.i.ph109, 1114112
  tail call void @llvm.assume(i1 %35)
  br label %bb14.i44

bb32:                                             ; preds = %bb27.i, %bb27, %bb25
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_ef2c363c226c81b7ccebc7bb7b6efab8) #21
          to label %unreachable unwind label %cleanup

bb14.i44:                                         ; preds = %bb14.i44.preheader, %bb36
  %sum.sroa.0.0112 = phi i32 [ %40, %bb36 ], [ 0, %bb14.i44.preheader ]
  %iter.sroa.0.0111 = phi ptr [ %iter.sroa.0.1.ph, %bb36 ], [ %_41, %bb14.i44.preheader ]
  %_18.i.i45 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0111, i64 1
  %x.i46 = load i8, ptr %iter.sroa.0.0111, align 1, !noalias !1094, !noundef !3
  %_6.i47 = icmp sgt i8 %x.i46, -1
  br i1 %_6.i47, label %bb3.i80, label %bb4.i48

bb4.i48:                                          ; preds = %bb14.i44
  %_30.i49 = and i8 %x.i46, 31
  %init.i50 = zext nneg i8 %_30.i49 to i32
  %_7.i10.i51 = icmp ne ptr %_18.i.i45, %_48
  tail call void @llvm.assume(i1 %_7.i10.i51)
  %_18.i12.i52 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0111, i64 2
  %y.i53 = load i8, ptr %_18.i.i45, align 1, !noalias !1094, !noundef !3
  %_34.i54 = shl nuw nsw i32 %init.i50, 6
  %_36.i55 = and i8 %y.i53, 63
  %_35.i56 = zext nneg i8 %_36.i55 to i32
  %36 = or disjoint i32 %_34.i54, %_35.i56
  %_13.i57 = icmp samesign ugt i8 %x.i46, -33
  br i1 %_13.i57, label %bb6.i60, label %bb36

bb3.i80:                                          ; preds = %bb14.i44
  %_7.i81 = zext nneg i8 %x.i46 to i32
  br label %bb36

bb6.i60:                                          ; preds = %bb4.i48
  %_7.i17.i61 = icmp ne ptr %_18.i12.i52, %_48
  tail call void @llvm.assume(i1 %_7.i17.i61)
  %_18.i19.i62 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0111, i64 3
  %z.i63 = load i8, ptr %_18.i12.i52, align 1, !noalias !1094, !noundef !3
  %_40.i64 = shl nuw nsw i32 %_35.i56, 6
  %_42.i65 = and i8 %z.i63, 63
  %_41.i66 = zext nneg i8 %_42.i65 to i32
  %y_z.i67 = or disjoint i32 %_40.i64, %_41.i66
  %_20.i68 = shl nuw nsw i32 %init.i50, 12
  %37 = or disjoint i32 %y_z.i67, %_20.i68
  %_21.i69 = icmp samesign ugt i8 %x.i46, -17
  br i1 %_21.i69, label %bb8.i70, label %bb36

bb8.i70:                                          ; preds = %bb6.i60
  %_7.i24.i71 = icmp ne ptr %_18.i19.i62, %_48
  tail call void @llvm.assume(i1 %_7.i24.i71)
  %_18.i26.i72 = getelementptr inbounds nuw i8, ptr %iter.sroa.0.0111, i64 4
  %w.i73 = load i8, ptr %_18.i19.i62, align 1, !noalias !1094, !noundef !3
  %_26.i74 = shl nuw nsw i32 %init.i50, 18
  %_25.i75 = and i32 %_26.i74, 1835008
  %_46.i76 = shl nuw nsw i32 %y_z.i67, 6
  %_48.i77 = and i8 %w.i73, 63
  %_47.i78 = zext nneg i8 %_48.i77 to i32
  %_27.i79 = or disjoint i32 %_46.i76, %_47.i78
  %38 = or disjoint i32 %_27.i79, %_25.i75
  br label %bb36

bb36:                                             ; preds = %bb3.i80, %bb8.i70, %bb6.i60, %bb4.i48
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i52, %bb4.i48 ], [ %_18.i19.i62, %bb6.i60 ], [ %_18.i26.i72, %bb8.i70 ], [ %_18.i.i45, %bb3.i80 ]
  %_0.sroa.4.0.i58.ph = phi i32 [ %36, %bb4.i48 ], [ %37, %bb6.i60 ], [ %38, %bb8.i70 ], [ %_7.i81, %bb3.i80 ]
  %39 = icmp samesign ult i32 %_0.sroa.4.0.i58.ph, 1114112
  tail call void @llvm.assume(i1 %39)
  %40 = add i32 %_0.sroa.4.0.i58.ph, %sum.sroa.0.0112
  %_7.i.i43 = icmp eq ptr %iter.sroa.0.1.ph, %_48
  br i1 %_7.i.i43, label %bb35, label %bb14.i44

bb35:                                             ; preds = %bb36
  %_27 = srem i32 %40, 3
  %_26 = icmp eq i32 %_27, 0
  br i1 %_26, label %bb6, label %bb17

bb6:                                              ; preds = %bb35
  %41 = lshr exact i32 %_0.sroa.4.1.i.ph, 1
  %_29 = add nuw nsw i32 %_0.sroa.4.0.i.ph109, %41
  %_29.lobit = and i32 %_29, 1
  %spec.select10 = xor i32 %_29.lobit, 1
  br label %bb17

bb20:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %17
}
