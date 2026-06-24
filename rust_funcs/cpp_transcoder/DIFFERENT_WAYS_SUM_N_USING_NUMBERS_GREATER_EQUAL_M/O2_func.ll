define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_6 = sext i32 %n to i64
  %_5 = add nsw i64 %_6, 2
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_5, 0
  br i1 %_8.i.i, label %bb6.i.i, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb3.i.i.i

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

bb3.i.i.i:                                        ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nuw nsw i64 %_5, 24
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %2 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_5, ptr %v.i, align 8, !noalias !1077
  %4 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %2, ptr %4, align 8, !noalias !1077
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i64 %_5, 1
  br i1 %_2425.i.i.not, label %bb17.i.i15, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i16
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i16 ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i16 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i16 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i16

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1098
  store i64 0, ptr %v.i, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %8, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %9, align 8, !alias.scope !1084, !noalias !1101
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7725e7d78b0503a5E.exit"

bb17.i.i15:                                       ; preds = %bb3.i3.i16, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i16 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1106
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1106
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1106
  store i64 %_5, ptr %5, align 8, !alias.scope !1084, !noalias !1107
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7725e7d78b0503a5E.exit"

bb3.i3.i16:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr nonnull readonly align 4 %0, i64 %_21.0.i.i.i, i1 false), !noalias !1112
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %6, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb17.i.i15, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1084, !noalias !1113
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1118
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73460d9c94b3644dE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %16, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1127
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7725e7d78b0503a5E.exit": ; preds = %bb6.i.i, %bb17.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_44 = load i64, ptr %13, align 8, !noundef !6
  %_47.not = icmp eq i64 %_44, 0
  br i1 %_47.not, label %panic12.invoke, label %bb15

bb15:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7725e7d78b0503a5E.exit"
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_45 = load ptr, ptr %14, align 8, !nonnull !6, !noundef !6
  %_9 = add nsw i64 %_6, 1
  %15 = getelementptr inbounds nuw i8, ptr %_45, i64 16
  %_50 = load i64, ptr %15, align 8, !noundef !6
  %_53 = icmp ult i64 %_9, %_50
  br i1 %_53, label %bb16, label %panic12.invoke

cleanup:                                          ; preds = %panic12.invoke
  %16 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73460d9c94b3644dE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb16:                                             ; preds = %bb15
  %17 = getelementptr inbounds nuw i8, ptr %_45, i64 8
  %_51 = load ptr, ptr %17, align 8, !nonnull !6, !noundef !6
  %_7 = getelementptr inbounds nuw i32, ptr %_51, i64 %_9
  store i32 1, ptr %_7, align 4
  %_0.i.not.i78 = icmp sgt i32 %n, %m
  br i1 %_0.i.not.i78, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb16
  %_0.i.not.i2476 = icmp slt i32 %n, 0
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb9, %bb2.i
  %_0.i.not.i = icmp sgt i32 %n, %spec.select
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.4.079 = phi i32 [ %m, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %n, %iter.sroa.4.079
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %18 = sext i1 %not._0.i3.i to i32
  %spec.select = add nsw i32 %iter.sroa.4.079, %18
  br i1 %_0.i.not.i2476, label %bb1.loopexit, label %bb2.i25.lr.ph

bb2.i25.lr.ph:                                    ; preds = %bb2.i
  %_27 = add i32 %iter.sroa.4.079, 1
  %_26 = sext i32 %_27 to i64
  %_30 = sext i32 %iter.sroa.4.079 to i64
  br label %bb2.i25

bb4:                                              ; preds = %bb1.loopexit, %bb16
  %_59 = icmp ugt i64 %_44, %_6
  br i1 %_59, label %bb18, label %panic12.invoke

bb18:                                             ; preds = %bb4
  %_40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_45, i64 %_6
  %_41 = sext i32 %m to i64
  %19 = getelementptr inbounds nuw i8, ptr %_40, i64 16
  %_105 = load i64, ptr %19, align 8, !noundef !6
  %_108 = icmp ugt i64 %_105, %_41
  br i1 %_108, label %bb28, label %panic12.invoke

bb28:                                             ; preds = %bb18
  %20 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %_106 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_39 = getelementptr inbounds nuw i32, ptr %_106, i64 %_41
  %_0 = load i32, ptr %_39, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c19673c900affa0E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %21, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c19673c900affa0E.exit.i.i.i" ], [ 0, %bb28 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_45, i64 %_3.sroa.0.012.i.i.i
  %21 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1155, !noalias !1158, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c19673c900affa0E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %22 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %23 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %23, align 8, !alias.scope !1155, !noalias !1158, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %22, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1162
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c19673c900affa0E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c19673c900affa0E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %21, %_44
  br i1 %_7.i.i.i, label %bb4.i18, label %bb5.i.i.i

bb4.i18:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c19673c900affa0E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1172, !noalias !1175, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73460d9c94b3644dE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i18
  %24 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_45, i64 noundef %24, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1177
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73460d9c94b3644dE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h73460d9c94b3644dE.exit": ; preds = %bb4.i18, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb2.i25:                                          ; preds = %bb2.i25.lr.ph, %bb9
  %iter1.sroa.0.077 = phi i32 [ 0, %bb2.i25.lr.ph ], [ %spec.select53, %bb9 ]
  %_0.i3.i26 = icmp sge i32 %iter1.sroa.0.077, %n
  %not._0.i3.i26 = xor i1 %_0.i3.i26, true
  %25 = zext i1 %not._0.i3.i26 to i32
  %spec.select53 = add nuw nsw i32 %iter1.sroa.0.077, %25
  %_25 = zext nneg i32 %iter1.sroa.0.077 to i64
  %_64 = icmp ugt i64 %_44, %_25
  br i1 %_64, label %bb20, label %panic12.invoke

bb20:                                             ; preds = %bb2.i25
  %_24 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_45, i64 %_25
  %26 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %_67 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %27 = getelementptr inbounds nuw i8, ptr %_24, i64 16
  %_66 = load i64, ptr %27, align 8, !noundef !6
  %_69 = icmp ugt i64 %_66, %_26
  br i1 %_69, label %bb21, label %panic12.invoke

bb21:                                             ; preds = %bb20
  %_81 = icmp ugt i64 %_66, %_30
  br i1 %_81, label %bb23, label %panic12.invoke

bb23:                                             ; preds = %bb21
  %_23 = getelementptr inbounds nuw i32, ptr %_67, i64 %_26
  %_22 = load i32, ptr %_23, align 4, !noundef !6
  %_28 = getelementptr inbounds nuw i32, ptr %_67, i64 %_30
  store i32 %_22, ptr %_28, align 4
  %_32 = sub i32 %iter1.sroa.0.077, %iter.sroa.4.079
  %_31 = icmp sgt i32 %_32, -1
  br i1 %_31, label %bb8, label %bb9

bb9:                                              ; preds = %bb27, %bb23
  %_0.i.not.i24 = icmp sgt i32 %spec.select53, %n
  %or.cond55 = select i1 %_0.i3.i26, i1 true, i1 %_0.i.not.i24
  br i1 %or.cond55, label %bb1.loopexit, label %bb2.i25

bb8:                                              ; preds = %bb23
  %_36 = zext nneg i32 %_32 to i64
  %_86 = icmp ugt i64 %_44, %_36
  br i1 %_86, label %bb24, label %panic12.invoke

bb24:                                             ; preds = %bb8
  %_35 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_45, i64 %_36
  %28 = getelementptr inbounds nuw i8, ptr %_35, i64 16
  %_88 = load i64, ptr %28, align 8, !noundef !6
  %_91 = icmp ugt i64 %_88, %_30
  br i1 %_91, label %bb26, label %panic12.invoke

bb26:                                             ; preds = %bb24
  %_100 = load i64, ptr %27, align 8, !noundef !6
  %_103 = icmp ugt i64 %_100, %_30
  br i1 %_103, label %bb27, label %panic12.invoke

bb27:                                             ; preds = %bb26
  %29 = getelementptr inbounds nuw i8, ptr %_35, i64 8
  %_89 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_34 = getelementptr inbounds nuw i32, ptr %_89, i64 %_30
  %_33 = load i32, ptr %_34, align 4, !noundef !6
  %_101 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_37 = getelementptr inbounds nuw i32, ptr %_101, i64 %_30
  %30 = load i32, ptr %_37, align 4, !noundef !6
  %31 = add i32 %30, %_33
  store i32 %31, ptr %_37, align 4
  br label %bb9

panic12.invoke:                                   ; preds = %bb26, %bb24, %bb8, %bb21, %bb20, %bb2.i25, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7725e7d78b0503a5E.exit", %bb18, %bb4, %bb15
  %32 = phi i64 [ %_9, %bb15 ], [ %_6, %bb4 ], [ %_41, %bb18 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7725e7d78b0503a5E.exit" ], [ %_25, %bb2.i25 ], [ %_26, %bb20 ], [ %_30, %bb21 ], [ %_36, %bb8 ], [ %_30, %bb24 ], [ %_30, %bb26 ]
  %33 = phi i64 [ %_50, %bb15 ], [ %_44, %bb4 ], [ %_105, %bb18 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7725e7d78b0503a5E.exit" ], [ %_44, %bb2.i25 ], [ %_66, %bb20 ], [ %_66, %bb21 ], [ %_44, %bb8 ], [ %_88, %bb24 ], [ %_100, %bb26 ]
  %34 = phi ptr [ @alloc_21d6d7bc48393d889ac7687d62301079, %bb15 ], [ @alloc_234baa2226a178592a321a2610212f2b, %bb4 ], [ @alloc_92ab0385a0693d929f1a14827f7be16f, %bb18 ], [ @alloc_81698c01d869173cb04ad6aa7ae16527, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7725e7d78b0503a5E.exit" ], [ @alloc_3b724e58deee6d70e6d2a132b3ae81a3, %bb2.i25 ], [ @alloc_98c5e91ae09872aeb3b84cc9cf3e635e, %bb20 ], [ @alloc_0128e0030ff2c14713d1ebac2d26335a, %bb21 ], [ @alloc_7ce0cab68ec278d5a9f7617afb6ffe6e, %bb8 ], [ @alloc_3e9ac0e59aaf8d58d98516826bad0590, %bb24 ], [ @alloc_de5e162da34b74e0dff68a32cc6697b8, %bb26 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %32, i64 noundef %33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %34) #21
          to label %panic12.cont unwind label %cleanup

panic12.cont:                                     ; preds = %panic12.invoke
  unreachable
}
