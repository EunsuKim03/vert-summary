define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %count = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %count)
  %_5 = sext i32 %n to i64
  %_21.0.i.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit", label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1071
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 4) #18, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h313fb13bcbbbb304E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1076
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h313fb13bcbbbb304E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 1
  br i1 %_2415.i.not.i, label %bb4.i.i, label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h313fb13bcbbbb304E.exit.i.i"
  %2 = add nsw i64 %_5, -1
  %min.iters.check = icmp ult i32 %n, 9
  br i1 %min.iters.check, label %bb3.i3.i.preheader116, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %2, -8
  %3 = shl nsw i64 %n.vec, 2
  %4 = getelementptr i8, ptr %0, i64 %3
  %5 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx
  %6 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !1077
  store <4 x i32> splat (i32 1), ptr %6, align 4, !noalias !1077
  %index.next = add nuw i64 %index, 8
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !1080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %bb4.i.i, label %bb3.i3.i.preheader116

bb3.i3.i.preheader116:                            ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %0, %bb3.i3.i.preheader ], [ %4, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %5, %middle.block ]
  br label %bb3.i3.i

bb4.i.i:                                          ; preds = %bb3.i3.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h313fb13bcbbbb304E.exit.i.i"
  %ptr.sroa.0.0.lcssa.i.ph.i = phi ptr [ %0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h313fb13bcbbbb304E.exit.i.i" ], [ %4, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.ph.i, align 4, !noalias !1077
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit"

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader116, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader116 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader116 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1077
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb4.i.i, label %bb3.i3.i, !llvm.loop !1081

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit": ; preds = %bb17.i.i.i, %bb4.i.i
  %_4.sroa.10.0.i1320.i = phi ptr [ %0, %bb4.i.i ], [ inttoptr (i64 4 to ptr), %bb17.i.i.i ]
  %_6 = sext i32 %m to i64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1082
  %_21.0.i.i.i.i11 = mul nsw i64 %_6, 24
  %or.cond.i.i.i.i12 = icmp slt i32 %m, 0
  br i1 %or.cond.i.i.i.i12, label %bb3.i.i20, label %bb17.i.i.i13, !prof !379

bb17.i.i.i13:                                     ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit"
  %_8.i.i.i14 = icmp eq i32 %m, 0
  br i1 %_8.i.i.i14, label %bb6.i.i, label %bb3.i.i.i15

bb3.i.i.i15:                                      ; preds = %bb17.i.i.i13
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1086
; call __rustc::__rust_alloc
  %8 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i11, i64 noundef range(i64 4, 9) 8) #18, !noalias !1086
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i20, label %bb1.i.i

bb3.i.i20:                                        ; preds = %bb3.i.i.i15, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit"
  %_4.sroa.4.0.ph.i.i21 = phi i64 [ 8, %bb3.i.i.i15 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i21, i64 %_21.0.i.i.i.i11) #20
          to label %.noexc.i unwind label %bb4.i, !noalias !1082

.noexc.i:                                         ; preds = %bb3.i.i20
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i15
  store i64 %_6, ptr %v.i, align 8, !noalias !1082
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %8, ptr %10, align 8, !noalias !1082
  %11 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %_2425.i.i.not = icmp eq i32 %m, 1
  br i1 %_2425.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit", label %bb13.lr.ph.i.i

bb13.lr.ph.i.i:                                   ; preds = %bb1.i.i
  %12 = shl nuw nsw i64 %_5, 2
  %_8.i.i.i.i.i.i = icmp eq i32 %n, 0
  br label %bb13.i.i

bb13.i.i:                                         ; preds = %bb3.i3.i16, %bb13.lr.ph.i.i
  %ptr.sroa.0.028.i.i = phi ptr [ %8, %bb13.lr.ph.i.i ], [ %_15.i.i18, %bb3.i3.i16 ]
  %iter.sroa.0.027.i.i = phi i64 [ 1, %bb13.lr.ph.i.i ], [ %_28.i.i17, %bb3.i3.i16 ]
  %storemerge26.i.i = phi i64 [ 0, %bb13.lr.ph.i.i ], [ %17, %bb3.i3.i16 ]
  br i1 %_8.i.i.i.i.i.i, label %bb3.i3.i16, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1092
; call __rustc::__rust_alloc
  %13 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %12, i64 noundef range(i64 4, 9) 4) #18, !noalias !1092
  %14 = icmp eq ptr %13, null
  br i1 %14, label %bb3.i.i.i.i.i, label %bb3.i3.i16

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %12) #20
          to label %.noexc9.i.i unwind label %bb11.i.i, !noalias !1102

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i13
  store i64 %_6, ptr %v.i, align 8, !noalias !1082
  %15 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %15, align 8, !noalias !1082
  %16 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %16, align 8, !alias.scope !1089, !noalias !1103
  br i1 %_8.i.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i1320.i, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1108
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread"

bb3.i3.i16:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %13, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %_4.sroa.10.0.i1320.i, i64 %12, i1 false), !noalias !1117
  %_28.i.i17 = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1102
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1102
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1102
  %_15.i.i18 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %17 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i19 = icmp eq i64 %_28.i.i17, %_6
  br i1 %exitcond.not.i.i19, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit", label %bb13.i.i

bb11.i.i:                                         ; preds = %bb3.i.i.i.i.i
  %18 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %11, align 8, !alias.scope !1089, !noalias !1118
  br i1 %_8.i.i.i, label %cleanup1.body.i, label %bb2.i.i.i3.i16.i.i

bb2.i.i.i3.i16.i.i:                               ; preds = %bb11.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i1320.i, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1123
  br label %cleanup1.body.i

cleanup1.body.i:                                  ; preds = %bb2.i.i.i3.i16.i.i, %bb11.i.i
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #22, !noalias !1082
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %29, %cleanup ], [ %18, %cleanup1.body.i ], [ %19, %bb4.i ], [ %19, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i20
  %19 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i1320.i, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1132
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %count, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1141
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1082
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.bb9_crit_edge"

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit": ; preds = %bb3.i3.i16, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %8, %bb1.i.i ], [ %_15.i.i18, %bb3.i3.i16 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1142
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %_4.sroa.10.0.i1320.i, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1142
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1142
  store i64 %_6, ptr %11, align 8, !alias.scope !1089, !noalias !1143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %count, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1141
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1082
  %_3149 = icmp sgt i32 %m, 1
  br i1 %_3149, label %bb8.lr.ph, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.bb9_crit_edge"

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.bb9_crit_edge": ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %count, i64 16
  %_39.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb9

bb8.lr.ph:                                        ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit"
  %_4347 = icmp sgt i32 %n, 1
  %20 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %_52 = load ptr, ptr %20, align 8, !nonnull !6
  %21 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %_51 = load i64, ptr %21, align 8
  %wide.trip.count78 = zext nneg i32 %m to i64
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb8

bb1.loopexit:                                     ; preds = %bb23, %bb8
  %exitcond79.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count78
  br i1 %exitcond79.not, label %bb9, label %bb8

bb9:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.bb9_crit_edge"
  %_39 = phi i64 [ %_39.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.bb9_crit_edge" ], [ %_51, %bb1.loopexit ]
  %_28 = add nsw i32 %m, -1
  %_27 = sext i32 %_28 to i64
  %_42 = icmp ugt i64 %_39, %_27
  br i1 %_42, label %bb13, label %panic8.invoke

bb8:                                              ; preds = %bb8.lr.ph, %bb1.loopexit
  %indvars.iv74 = phi i64 [ 1, %bb8.lr.ph ], [ %indvars.iv.next75, %bb1.loopexit ]
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br i1 %_4347, label %bb14.lr.ph, label %bb1.loopexit

bb14.lr.ph:                                       ; preds = %bb8
  %22 = add nsw i64 %indvars.iv74, -1
  %_54 = icmp ugt i64 %_51, %22
  %_13 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_52, i64 %22
  %23 = getelementptr inbounds nuw i8, ptr %_13, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  %_64 = icmp ugt i64 %_51, %indvars.iv74
  %_19 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_52, i64 %indvars.iv74
  %25 = getelementptr inbounds nuw i8, ptr %_19, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %_19, i64 16
  br i1 %_54, label %bb14, label %panic8.invoke

bb13:                                             ; preds = %bb9
  %27 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %_40 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_26 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_40, i64 %_27
  %_30 = add nsw i32 %n, -1
  %_29 = sext i32 %_30 to i64
  %28 = getelementptr inbounds nuw i8, ptr %_26, i64 16
  %_83 = load i64, ptr %28, align 8, !noundef !6
  %_86 = icmp ugt i64 %_83, %_29
  br i1 %_86, label %bb24, label %panic8.invoke

cleanup:                                          ; preds = %panic8.invoke
  %29 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr noalias noundef align 8 dereferenceable(24) %count) #22
  br label %common.resume

bb24:                                             ; preds = %bb13
  %30 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %_84 = load ptr, ptr %30, align 8, !nonnull !6, !noundef !6
  %_25 = getelementptr inbounds nuw i32, ptr %_84, i64 %_29
  %_0 = load i32, ptr %_25, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb24, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %31, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i" ], [ 0, %bb24 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_40, i64 %_3.sroa.0.012.i.i.i
  %31 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1166, !noalias !1169, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %32 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %33 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %33, align 8, !alias.scope !1166, !noalias !1169, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %32, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1173
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %31, %_39
  br i1 %_7.i.i.i, label %bb4.i22, label %bb5.i.i.i

bb4.i22:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %self1.i.i.i.i1.i = load i64, ptr %count, align 8, !range !22, !alias.scope !1183, !noalias !1186, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i22
  %34 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_40, i64 noundef %34, i64 noundef range(i64 1, -9223372036854775807) 8) #18, !noalias !1188
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E.exit": ; preds = %bb4.i22, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %count)
  ret i32 %_0

bb14:                                             ; preds = %bb14.lr.ph, %bb23
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb23 ], [ 1, %bb14.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_56 = load i64, ptr %23, align 8, !noundef !6
  %_59 = icmp ugt i64 %_56, %indvars.iv
  br i1 %_59, label %bb19, label %panic8.invoke

bb19:                                             ; preds = %bb14
  %_57 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_12 = getelementptr inbounds nuw i32, ptr %_57, i64 %indvars.iv
  %_11 = load i32, ptr %_12, align 4, !noundef !6
  br i1 %_64, label %bb20, label %panic8.invoke

bb20:                                             ; preds = %bb19
  %35 = add nsw i64 %indvars.iv, -1
  %_67 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_66 = load i64, ptr %26, align 8, !noundef !6
  %_69 = icmp ugt i64 %_66, %35
  br i1 %_69, label %bb21, label %panic8.invoke

bb21:                                             ; preds = %bb20
  %_81 = icmp ugt i64 %_66, %indvars.iv
  br i1 %_81, label %bb23, label %panic8.invoke

bb23:                                             ; preds = %bb21
  %_18 = getelementptr inbounds nuw i32, ptr %_67, i64 %35
  %_17 = load i32, ptr %_18, align 4, !noundef !6
  %_23 = getelementptr inbounds nuw i32, ptr %_67, i64 %indvars.iv
  %36 = add i32 %_17, %_11
  store i32 %36, ptr %_23, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb1.loopexit, label %bb14

panic8.invoke:                                    ; preds = %bb14.lr.ph, %bb21, %bb20, %bb19, %bb14, %bb9, %bb13
  %37 = phi i64 [ %_29, %bb13 ], [ %_27, %bb9 ], [ %indvars.iv, %bb14 ], [ %indvars.iv74, %bb19 ], [ %35, %bb20 ], [ %indvars.iv, %bb21 ], [ %22, %bb14.lr.ph ]
  %38 = phi i64 [ %_83, %bb13 ], [ %_39, %bb9 ], [ %_56, %bb14 ], [ %_51, %bb19 ], [ %_66, %bb20 ], [ %_66, %bb21 ], [ %_51, %bb14.lr.ph ]
  %39 = phi ptr [ @alloc_aedb19f93eeb283b4fb08880906cd229, %bb13 ], [ @alloc_add54dea945342527bc80369af396a12, %bb9 ], [ @alloc_12d417564cad6aac1a021013ffd3a8da, %bb14 ], [ @alloc_54704b5798d23eb0eec56d9d623f3625, %bb19 ], [ @alloc_3e854e26426e5ea82ea80d0e237f8475, %bb20 ], [ @alloc_572c6fcd34bbdc3470df4441d363f0a1, %bb21 ], [ @alloc_b1c5fb87344d527737e7502755d2cdb6, %bb14.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %37, i64 noundef %38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %39) #20
          to label %panic8.cont unwind label %cleanup

panic8.cont:                                      ; preds = %panic8.invoke
  unreachable
}
