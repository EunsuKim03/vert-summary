define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %L = alloca [24 x i8], align 8
  %set = alloca [8 x i8], align 8
  store i64 %0, ptr %set, align 8
  %_3 = icmp slt i32 %n, 3
  br i1 %_3, label %bb33, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %L)
  %iter2 = zext nneg i32 %n to i64
  %1 = shl nuw nsw i64 %iter2, 2
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1071
; call __rustc::__rust_alloc
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 4, 9) 4) #18, !noalias !1071
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %bb2
  %4 = add nsw i64 %iter2, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i3.i.preheader252, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %4, -8
  %5 = shl nsw i64 %n.vec, 2
  %6 = getelementptr i8, ptr %2, i64 %5
  %7 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx
  %8 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2), ptr %next.gep, align 4, !noalias !1076
  store <4 x i32> splat (i32 2), ptr %8, align 4, !noalias !1076
  %index.next = add nuw i64 %index, 8
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !1079

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h026b313efe9bb2d1E.exit", label %bb3.i3.i.preheader252

bb3.i3.i.preheader252:                            ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.013.i.i.ph = phi ptr [ %2, %bb3.i3.i.preheader ], [ %6, %middle.block ]
  %iter.sroa.0.012.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %7, %middle.block ]
  br label %bb3.i3.i

bb3.i.i:                                          ; preds = %bb2
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %1) #20, !noalias !1080
  unreachable

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader252, %bb3.i3.i
  %ptr.sroa.0.013.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.013.i.i.ph, %bb3.i3.i.preheader252 ]
  %iter.sroa.0.012.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.012.i.i.ph, %bb3.i3.i.preheader252 ]
  %_28.i.i = add nuw nsw i64 %iter.sroa.0.012.i.i, 1
  store i32 2, ptr %ptr.sroa.0.013.i.i, align 4, !noalias !1076
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.013.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %iter2
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h026b313efe9bb2d1E.exit", label %bb3.i3.i, !llvm.loop !1081

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h026b313efe9bb2d1E.exit": ; preds = %bb3.i3.i, %middle.block
  %_15.i.i.lcssa = phi ptr [ %6, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 2, ptr %_15.i.i.lcssa, align 4, !noalias !1076
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1082
  %10 = mul nuw nsw i64 %iter2, 24
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1086
; call __rustc::__rust_alloc
  %11 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %10, i64 noundef range(i64 4, 9) 8) #18, !noalias !1086
  %12 = icmp eq ptr %11, null
  br i1 %12, label %bb3.i.i47, label %bb1.i.i

bb3.i.i47:                                        ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h026b313efe9bb2d1E.exit"
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 %10) #20
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1082

.noexc.i:                                         ; preds = %bb3.i.i47
  unreachable

bb1.i.i:                                          ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h026b313efe9bb2d1E.exit"
  store i64 %iter2, ptr %v.i, align 8, !noalias !1082
  %13 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %11, ptr %13, align 8, !noalias !1082
  %14 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  br label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i43
  %ptr.sroa.0.019.i.i = phi ptr [ %11, %bb1.i.i ], [ %_15.i.i45, %bb3.i3.i43 ]
  %iter.sroa.0.018.i.i = phi i64 [ 1, %bb1.i.i ], [ %_28.i.i44, %bb3.i3.i43 ]
  %storemerge17.i.i = phi i64 [ 0, %bb1.i.i ], [ %17, %bb3.i3.i43 ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1092
; call __rustc::__rust_alloc
  %15 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 4, 9) 4) #18, !noalias !1092
  %16 = icmp eq ptr %15, null
  br i1 %16, label %bb3.i.i.i.i.i, label %bb3.i3.i43

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %1) #20
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1102

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i43:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %15, ptr nonnull readonly align 4 %2, i64 %1, i1 false), !noalias !1103
  %_28.i.i44 = add nuw nsw i64 %iter.sroa.0.018.i.i, 1
  store i64 %iter2, ptr %ptr.sroa.0.019.i.i, align 8, !noalias !1102
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 8
  store ptr %15, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1102
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 16
  store i64 %iter2, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1102
  %_15.i.i45 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 24
  %17 = add nuw nsw i64 %storemerge17.i.i, 1
  %exitcond.not.i.i46 = icmp eq i64 %_28.i.i44, %iter2
  br i1 %exitcond.not.i.i46, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hd7ddbbaff35c728aE.exit", label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %18 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge17.i.i, ptr %14, align 8, !alias.scope !1089, !noalias !1104
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1109
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #22, !noalias !1082
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %34, %cleanup ], [ %18, %cleanup1.body.i ], [ %19, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i47
  %19 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1118
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hd7ddbbaff35c728aE.exit": ; preds = %bb3.i3.i43
  store i64 %iter2, ptr %_15.i.i45, align 8, !noalias !1127
  %_7.sroa.5.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 32
  store ptr %2, ptr %_7.sroa.5.0._15.i.sroa_idx.i, align 8, !noalias !1127
  %_7.sroa.7.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.019.i.i, i64 40
  store i64 %iter2, ptr %_7.sroa.7.0._15.i.sroa_idx.i, align 8, !noalias !1127
  store i64 %iter2, ptr %14, align 8, !alias.scope !1089, !noalias !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %L, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1082
  %20 = getelementptr inbounds nuw i8, ptr %L, i64 16
  %_80 = load i64, ptr %20, align 8, !noundef !6
  %21 = getelementptr inbounds nuw i8, ptr %L, i64 8
  %_81 = load ptr, ptr %21, align 8, !nonnull !6
  %_13 = add nsw i32 %n, -1
  %_12 = zext nneg i32 %_13 to i64
  %22 = add i64 %_80, 1
  br label %bb5

bb5:                                              ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hd7ddbbaff35c728aE.exit", %bb42
  %23 = phi i64 [ 1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hd7ddbbaff35c728aE.exit" ], [ %50, %bb42 ]
  %iter.sroa.0.0122 = phi i64 [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hd7ddbbaff35c728aE.exit" ], [ %23, %bb42 ]
  %exitcond.not = icmp eq i64 %23, %22
  br i1 %exitcond.not, label %panic20.invoke, label %bb41

bb7.loopexit:                                     ; preds = %bb57, %bb29.preheader
  %_90 = icmp sgt i32 %iter1.sroa.0.1138, 2
  %24 = add nsw i32 %iter1.sroa.0.1138, -1
  br i1 %_90, label %bb8, label %bb9

bb8:                                              ; preds = %bb42, %bb7.loopexit
  %iter1.sroa.0.1138 = phi i32 [ %24, %bb7.loopexit ], [ %_13, %bb42 ]
  %iter1.sroa.0.0136 = phi i32 [ %iter1.sroa.0.1138, %bb7.loopexit ], [ %n, %bb42 ]
  %llap.sroa.0.0135 = phi i32 [ %llap.sroa.0.2.lcssa, %bb7.loopexit ], [ 2, %bb42 ]
  %25 = add nsw i32 %iter1.sroa.0.0136, -2
  %_19123 = icmp sgt i32 %iter1.sroa.0.0136, 1
  %_21.not.not124 = icmp slt i32 %iter1.sroa.0.0136, %n
  %or.cond125 = and i1 %_19123, %_21.not.not124
  br i1 %or.cond125, label %bb12.lr.ph, label %bb29.preheader

bb12.lr.ph:                                       ; preds = %bb8
  %_36 = sext i32 %iter1.sroa.0.1138 to i64
  %_37 = icmp ult i32 %iter1.sroa.0.1138, 2
  %26 = getelementptr inbounds nuw i32, ptr %set, i64 %_36
  %_113 = icmp ugt i64 %_80, %_36
  %_54 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_81, i64 %_36
  %27 = getelementptr inbounds nuw i8, ptr %_54, i64 16
  %28 = getelementptr inbounds nuw i8, ptr %_54, i64 8
  br label %bb12

bb9:                                              ; preds = %bb7.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %_711.i.i.i = icmp eq i64 %_80, 0
  br i1 %_711.i.i.i, label %bb4.i48, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb9, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17heae2f59a6ecd21e0E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %29, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17heae2f59a6ecd21e0E.exit.i.i.i" ], [ 0, %bb9 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_81, i64 %_3.sroa.0.012.i.i.i
  %29 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1152, !noalias !1155, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17heae2f59a6ecd21e0E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %30 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %31 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %31, align 8, !alias.scope !1152, !noalias !1155, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %30, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1159
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17heae2f59a6ecd21e0E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17heae2f59a6ecd21e0E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %29, %_80
  br i1 %_7.i.i.i, label %bb4.i48, label %bb5.i.i.i

bb4.i48:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17heae2f59a6ecd21e0E.exit.i.i.i", %bb9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %self1.i.i.i.i1.i = load i64, ptr %L, align 8, !range !22, !alias.scope !1169, !noalias !1172, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i48
  %32 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_81, i64 noundef %32, i64 noundef range(i64 1, -9223372036854775807) 8) #18, !noalias !1174
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E.exit": ; preds = %bb4.i48, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %L)
  br label %bb33

bb33:                                             ; preds = %start, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E.exit"
  %llap.sroa.0.1 = phi i32 [ %llap.sroa.0.2.lcssa, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E.exit" ], [ %n, %start ]
  ret i32 %llap.sroa.0.1

bb29.preheader:                                   ; preds = %bb25, %bb8
  %i.sroa.0.0.lcssa = phi i32 [ %25, %bb8 ], [ %i.sroa.0.2, %bb25 ]
  %llap.sroa.0.2.lcssa = phi i32 [ %llap.sroa.0.0135, %bb8 ], [ %llap.sroa.0.3, %bb25 ]
  %_67130 = icmp sgt i32 %i.sroa.0.0.lcssa, -1
  br i1 %_67130, label %bb30.lr.ph, label %bb7.loopexit

bb30.lr.ph:                                       ; preds = %bb29.preheader
  %_73 = sext i32 %iter1.sroa.0.1138 to i64
  br label %bb30

bb12:                                             ; preds = %bb12.lr.ph, %bb25
  %llap.sroa.0.2128 = phi i32 [ %llap.sroa.0.0135, %bb12.lr.ph ], [ %llap.sroa.0.3, %bb25 ]
  %i.sroa.0.0127 = phi i32 [ %25, %bb12.lr.ph ], [ %i.sroa.0.2, %bb25 ]
  %k.sroa.0.0126 = phi i32 [ %iter1.sroa.0.0136, %bb12.lr.ph ], [ %k.sroa.0.1, %bb25 ]
  %_27 = zext nneg i32 %i.sroa.0.0127 to i64
  %_29 = icmp samesign ult i32 %i.sroa.0.0127, 2
  br i1 %_29, label %bb13, label %panic20.invoke

bb30:                                             ; preds = %bb30.lr.ph, %bb57
  %i.sroa.0.1131 = phi i32 [ %i.sroa.0.0.lcssa, %bb30.lr.ph ], [ %36, %bb57 ]
  %_71 = zext nneg i32 %i.sroa.0.1131 to i64
  %_146 = icmp ugt i64 %_80, %_71
  br i1 %_146, label %bb56, label %panic20.invoke

bb56:                                             ; preds = %bb30
  %_70 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_81, i64 %_71
  %33 = getelementptr inbounds nuw i8, ptr %_70, i64 16
  %_149 = load i64, ptr %33, align 8, !noundef !6
  %_152 = icmp ugt i64 %_149, %_73
  br i1 %_152, label %bb57, label %panic20.invoke

cleanup:                                          ; preds = %panic20.invoke
  %34 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17heb648cd060b6dfc0E"(ptr noalias noundef align 8 dereferenceable(24) %L) #22
  br label %common.resume

bb57:                                             ; preds = %bb56
  %35 = getelementptr inbounds nuw i8, ptr %_70, i64 8
  %_150 = load ptr, ptr %35, align 8, !nonnull !6, !noundef !6
  %_69 = getelementptr inbounds nuw i32, ptr %_150, i64 %_73
  store i32 2, ptr %_69, align 4
  %36 = add nsw i32 %i.sroa.0.1131, -1
  %_67 = icmp sgt i32 %i.sroa.0.1131, 0
  br i1 %_67, label %bb30, label %bb7.loopexit

bb13:                                             ; preds = %bb12
  %_31 = sext i32 %k.sroa.0.0126 to i64
  %_33 = icmp ult i32 %k.sroa.0.0126, 2
  br i1 %_33, label %bb14, label %panic20.invoke

bb14:                                             ; preds = %bb13
  %37 = getelementptr inbounds nuw i32, ptr %set, i64 %_27
  %_26 = load i32, ptr %37, align 4, !noundef !6
  %38 = getelementptr inbounds nuw i32, ptr %set, i64 %_31
  %_30 = load i32, ptr %38, align 4, !noundef !6
  %_25 = add i32 %_30, %_26
  br i1 %_37, label %bb15, label %panic20.invoke

bb15:                                             ; preds = %bb14
  %_35 = load i32, ptr %26, align 4, !noundef !6
  %_34 = shl i32 %_35, 1
  %_24 = icmp slt i32 %_25, %_34
  br i1 %_24, label %bb16, label %bb20

bb16:                                             ; preds = %bb15
  %39 = add nuw nsw i32 %k.sroa.0.0126, 1
  br label %bb25

bb20:                                             ; preds = %bb15
  %_38 = icmp sgt i32 %_25, %_34
  br i1 %_38, label %bb21, label %bb22

bb22:                                             ; preds = %bb20
  br i1 %_113, label %bb50, label %panic20.invoke

bb21:                                             ; preds = %bb20
  %_102 = icmp ugt i64 %_80, %_27
  br i1 %_102, label %bb48, label %panic20.invoke

bb50:                                             ; preds = %bb22
  %_115 = load i64, ptr %27, align 8, !noundef !6
  %_118 = icmp ugt i64 %_115, %_31
  br i1 %_118, label %bb51, label %panic20.invoke

bb51:                                             ; preds = %bb50
  %_116 = load ptr, ptr %28, align 8, !nonnull !6, !noundef !6
  %_53 = getelementptr inbounds nuw i32, ptr %_116, i64 %_31
  %_52 = load i32, ptr %_53, align 4, !noundef !6
  %_124 = icmp ugt i64 %_80, %_27
  br i1 %_124, label %bb52, label %panic20.invoke

bb52:                                             ; preds = %bb51
  %_58 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_81, i64 %_27
  %40 = getelementptr inbounds nuw i8, ptr %_58, i64 16
  %_127 = load i64, ptr %40, align 8, !noundef !6
  %_130 = icmp ugt i64 %_127, %_36
  br i1 %_130, label %bb54, label %panic20.invoke

bb54:                                             ; preds = %bb52
  %41 = getelementptr inbounds nuw i8, ptr %_58, i64 8
  %_128 = load ptr, ptr %41, align 8, !nonnull !6, !noundef !6
  %_57 = getelementptr inbounds nuw i32, ptr %_128, i64 %_36
  %42 = add i32 %_52, 1
  store i32 %42, ptr %_57, align 4
  %_137 = load i64, ptr %40, align 8, !noundef !6
  %_140 = icmp ugt i64 %_137, %_36
  br i1 %_140, label %bb23, label %panic20.invoke

bb23:                                             ; preds = %bb54
  %_138 = load ptr, ptr %41, align 8, !nonnull !6, !noundef !6
  %_63 = getelementptr inbounds nuw i32, ptr %_138, i64 %_36
  %_62 = load i32, ptr %_63, align 4, !noundef !6
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %llap.sroa.0.2128, i32 %_62)
  %43 = add nsw i32 %i.sroa.0.0127, -1
  %44 = add nuw nsw i32 %k.sroa.0.0126, 1
  br label %bb25

bb48:                                             ; preds = %bb21
  %_49 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_81, i64 %_27
  %45 = getelementptr inbounds nuw i8, ptr %_49, i64 16
  %_105 = load i64, ptr %45, align 8, !noundef !6
  %_108 = icmp ugt i64 %_105, %_36
  br i1 %_108, label %bb49, label %panic20.invoke

bb49:                                             ; preds = %bb48
  %46 = getelementptr inbounds nuw i8, ptr %_49, i64 8
  %_106 = load ptr, ptr %46, align 8, !nonnull !6, !noundef !6
  %_48 = getelementptr inbounds nuw i32, ptr %_106, i64 %_36
  store i32 2, ptr %_48, align 4
  %47 = add nsw i32 %i.sroa.0.0127, -1
  br label %bb25

bb25:                                             ; preds = %bb23, %bb49, %bb16
  %k.sroa.0.1 = phi i32 [ %39, %bb16 ], [ %k.sroa.0.0126, %bb49 ], [ %44, %bb23 ]
  %i.sroa.0.2 = phi i32 [ %i.sroa.0.0127, %bb16 ], [ %47, %bb49 ], [ %43, %bb23 ]
  %llap.sroa.0.3 = phi i32 [ %llap.sroa.0.2128, %bb16 ], [ %llap.sroa.0.2128, %bb49 ], [ %x.y.i, %bb23 ]
  %_19 = icmp sgt i32 %i.sroa.0.2, -1
  %_21.not.not = icmp slt i32 %k.sroa.0.1, %n
  %or.cond = select i1 %_19, i1 %_21.not.not, i1 false
  br i1 %or.cond, label %bb12, label %bb29.preheader

bb41:                                             ; preds = %bb5
  %_11 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_81, i64 %iter.sroa.0.0122
  %48 = getelementptr inbounds nuw i8, ptr %_11, i64 16
  %_86 = load i64, ptr %48, align 8, !noundef !6
  %_89 = icmp ugt i64 %_86, %_12
  br i1 %_89, label %bb42, label %panic20.invoke

bb42:                                             ; preds = %bb41
  %49 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %_87 = load ptr, ptr %49, align 8, !nonnull !6, !noundef !6
  %_10 = getelementptr inbounds nuw i32, ptr %_87, i64 %_12
  store i32 2, ptr %_10, align 4
  %50 = add nuw nsw i64 %23, 1
  %exitcond183.not = icmp eq i64 %23, %iter2
  br i1 %exitcond183.not, label %bb8, label %bb5

panic20.invoke:                                   ; preds = %bb41, %bb5, %bb48, %bb21, %bb54, %bb52, %bb51, %bb50, %bb22, %bb14, %bb13, %bb12, %bb30, %bb56
  %51 = phi i64 [ %_73, %bb56 ], [ %_71, %bb30 ], [ %_27, %bb12 ], [ %_31, %bb13 ], [ %_36, %bb14 ], [ %_36, %bb22 ], [ %_31, %bb50 ], [ 1, %bb51 ], [ %_36, %bb52 ], [ %_36, %bb54 ], [ %_27, %bb21 ], [ %_36, %bb48 ], [ %_80, %bb5 ], [ %_12, %bb41 ]
  %52 = phi i64 [ %_149, %bb56 ], [ %_80, %bb30 ], [ 2, %bb12 ], [ 2, %bb13 ], [ 2, %bb14 ], [ %_80, %bb22 ], [ %_115, %bb50 ], [ 1, %bb51 ], [ %_127, %bb52 ], [ %_137, %bb54 ], [ %_80, %bb21 ], [ %_105, %bb48 ], [ %_80, %bb5 ], [ %_86, %bb41 ]
  %53 = phi ptr [ @alloc_445e0d2130c8479e1ffcac3db29a4f65, %bb56 ], [ @alloc_4f6de02c9f4a796469218c905d326f44, %bb30 ], [ @alloc_dfeefaf8b2ab45fb9de75fe5c610fb3f, %bb12 ], [ @alloc_6f51ea75f6465892bb31df86ea9ef009, %bb13 ], [ @alloc_f0e795fa0dda43f96cfd00acdf099f9f, %bb14 ], [ @alloc_c45e8ff3f32919e3472dd8835d22df64, %bb22 ], [ @alloc_b2295a6757e166c9cabb68ed0c8b197a, %bb50 ], [ @alloc_065f65d4f73f0494ec0d885e8858f9ce, %bb51 ], [ @alloc_a4c1e5a2475b1d45d020028d996d5972, %bb52 ], [ @alloc_a9a381c48fe7cf3ab2005754fe7bcda7, %bb54 ], [ @alloc_0720980fb5807a00cb4b18c4db7885e3, %bb21 ], [ @alloc_bb283316aef1fba55ea1daaeeeadf92f, %bb48 ], [ @alloc_7e65c5552f175f9e5b53701ea20751e2, %bb5 ], [ @alloc_fcadf39929066068fe1c92547fe100e4, %bb41 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %51, i64 noundef %52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %53) #20
          to label %panic20.cont unwind label %cleanup

panic20.cont:                                     ; preds = %panic20.invoke
  unreachable
}
