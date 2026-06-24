define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_6 = sext i32 %n to i64
  %_5 = add nsw i64 %_6, 1
  %_21.0.i.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i64 %_5, 0
  br i1 %_8.i.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h81e1cee3a201c277E.exit", label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1071
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 4) #18, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe94c701cf16e516E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1076
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe94c701cf16e516E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 0
  br i1 %_2415.i.not.i, label %bb4.i.i, label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe94c701cf16e516E.exit.i.i"
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %bb3.i3.i.preheader157, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %_6, -8
  %2 = shl nsw i64 %n.vec, 2
  %3 = getelementptr i8, ptr %0, i64 %2
  %4 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx
  %5 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !1077
  store <4 x i32> splat (i32 1), ptr %5, align 4, !noalias !1077
  %index.next = add nuw i64 %index, 8
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !1080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %_6
  br i1 %cmp.n, label %bb4.i.i, label %bb3.i3.i.preheader157

bb3.i3.i.preheader157:                            ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %0, %bb3.i3.i.preheader ], [ %3, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %4, %middle.block ]
  br label %bb3.i3.i

bb4.i.i:                                          ; preds = %bb3.i3.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe94c701cf16e516E.exit.i.i"
  %ptr.sroa.0.0.lcssa.i.ph.i = phi ptr [ %0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfe94c701cf16e516E.exit.i.i" ], [ %3, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.ph.i, align 4, !noalias !1077
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h81e1cee3a201c277E.exit"

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader157, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader157 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader157 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1077
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.017.i.i, %_6
  br i1 %exitcond.not.i.i, label %bb4.i.i, label %bb3.i3.i, !llvm.loop !1081

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h81e1cee3a201c277E.exit": ; preds = %bb17.i.i.i, %bb4.i.i
  %_4.sroa.10.0.i1320.i = phi ptr [ %0, %bb4.i.i ], [ inttoptr (i64 4 to ptr), %bb17.i.i.i ]
  %_8 = sext i32 %m to i64
  %_7 = add nsw i64 %_8, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1082
  %_21.0.i.i.i.i13 = mul nsw i64 %_7, 24
  %or.cond.i.i.i.i14 = icmp ugt i64 %_7, 384307168202282325
  br i1 %or.cond.i.i.i.i14, label %bb3.i.i22, label %bb17.i.i.i15, !prof !379

bb17.i.i.i15:                                     ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h81e1cee3a201c277E.exit"
  %_8.i.i.i16 = icmp eq i64 %_7, 0
  br i1 %_8.i.i.i16, label %bb6.i.i, label %bb3.i.i.i17

bb3.i.i.i17:                                      ; preds = %bb17.i.i.i15
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1086
; call __rustc::__rust_alloc
  %7 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i13, i64 noundef range(i64 4, 9) 8) #18, !noalias !1086
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i22, label %bb1.i.i

bb3.i.i22:                                        ; preds = %bb3.i.i.i17, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h81e1cee3a201c277E.exit"
  %_4.sroa.4.0.ph.i.i23 = phi i64 [ 8, %bb3.i.i.i17 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h81e1cee3a201c277E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i23, i64 %_21.0.i.i.i.i13) #20
          to label %.noexc.i unwind label %bb4.i, !noalias !1082

.noexc.i:                                         ; preds = %bb3.i.i22
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i17
  store i64 %_7, ptr %v.i, align 8, !noalias !1082
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %7, ptr %9, align 8, !noalias !1082
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %_2425.i.i.not = icmp eq i32 %m, 0
  br i1 %_2425.i.i.not, label %bb17.i.i, label %bb13.lr.ph.i.i

bb13.lr.ph.i.i:                                   ; preds = %bb1.i.i
  %11 = shl nuw nsw i64 %_5, 2
  %_8.i.i.i.i.i.i = icmp eq i64 %_5, 0
  br label %bb13.i.i

bb13.i.i:                                         ; preds = %bb3.i3.i18, %bb13.lr.ph.i.i
  %ptr.sroa.0.028.i.i = phi ptr [ %7, %bb13.lr.ph.i.i ], [ %_15.i.i20, %bb3.i3.i18 ]
  %iter.sroa.0.027.i.i = phi i64 [ 1, %bb13.lr.ph.i.i ], [ %_28.i.i19, %bb3.i3.i18 ]
  %storemerge26.i.i = phi i64 [ 0, %bb13.lr.ph.i.i ], [ %16, %bb3.i3.i18 ]
  br i1 %_8.i.i.i.i.i.i, label %bb3.i3.i18, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1092
; call __rustc::__rust_alloc
  %12 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %11, i64 noundef range(i64 4, 9) 4) #18, !noalias !1092
  %13 = icmp eq ptr %12, null
  br i1 %13, label %bb3.i.i.i.i.i, label %bb3.i3.i18

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %11) #20
          to label %.noexc9.i.i unwind label %bb11.i.i, !noalias !1102

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i15
  store i64 0, ptr %v.i, align 8, !noalias !1082
  %14 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %14, align 8, !noalias !1082
  %15 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %15, align 8, !alias.scope !1089, !noalias !1103
  br i1 %_8.i.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i1320.i, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1108
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit"

bb17.i.i:                                         ; preds = %bb3.i3.i18, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %7, %bb1.i.i ], [ %_15.i.i20, %bb3.i3.i18 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1117
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %_4.sroa.10.0.i1320.i, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1117
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1117
  store i64 %_7, ptr %10, align 8, !alias.scope !1089, !noalias !1118
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit"

bb3.i3.i18:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %12, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %_4.sroa.10.0.i1320.i, i64 %11, i1 false), !noalias !1123
  %_28.i.i19 = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1102
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1102
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1102
  %_15.i.i20 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %16 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i21 = icmp eq i64 %iter.sroa.0.027.i.i, %_8
  br i1 %exitcond.not.i.i21, label %bb17.i.i, label %bb13.i.i

bb11.i.i:                                         ; preds = %bb3.i.i.i.i.i
  %17 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %10, align 8, !alias.scope !1089, !noalias !1124
  br i1 %_8.i.i.i, label %cleanup1.body.i, label %bb2.i.i.i3.i16.i.i

bb2.i.i.i3.i16.i.i:                               ; preds = %bb11.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i1320.i, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1129
  br label %cleanup1.body.i

cleanup1.body.i:                                  ; preds = %bb2.i.i.i3.i16.i.i, %bb11.i.i
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd4f44059f4c2989dE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #22, !noalias !1082
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %26, %cleanup ], [ %17, %cleanup1.body.i ], [ %18, %bb4.i ], [ %18, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i22
  %18 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i1320.i, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1138
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1082
  %_0.i.not.i89 = icmp slt i32 %m, 1
  br i1 %_0.i.not.i89, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit.bb4_crit_edge", label %bb2.i.lr.ph

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit.bb4_crit_edge": ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_42.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb4

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit"
  %_0.i.not.i3187 = icmp slt i32 %n, 1
  %19 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_48 = load ptr, ptr %19, align 8, !nonnull !6
  %20 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_47 = load i64, ptr %20, align 8
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb23, %bb2.i
  %_0.i.not.i = icmp sgt i32 %spec.select, %m
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.090 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.090, %m
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %21 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.090, %21
  br i1 %_0.i.not.i3187, label %bb1.loopexit, label %bb2.i32.lr.ph

bb2.i32.lr.ph:                                    ; preds = %bb2.i
  %_26 = add nsw i32 %iter.sroa.0.090, -1
  %_25 = sext i32 %_26 to i64
  %_50 = icmp ugt i64 %_47, %_25
  %_24 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_48, i64 %_25
  %22 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %_24, i64 16
  %_36 = zext nneg i32 %iter.sroa.0.090 to i64
  %_70 = icmp ugt i64 %_47, %_36
  %_35 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_48, i64 %_36
  %24 = getelementptr inbounds nuw i8, ptr %_35, i64 8
  %25 = getelementptr inbounds nuw i8, ptr %_35, i64 16
  br i1 %_50, label %bb2.i32, label %panic10.invoke

cleanup:                                          ; preds = %panic10.invoke
  %26 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd4f44059f4c2989dE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #22
  br label %common.resume

bb4:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit.bb4_crit_edge"
  %_42 = phi i64 [ %_42.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h43d6d26190b1b595E.exit.bb4_crit_edge" ], [ %_47, %bb1.loopexit ]
  %_45 = icmp ugt i64 %_42, %_8
  br i1 %_45, label %bb14, label %panic10.invoke

bb14:                                             ; preds = %bb4
  %27 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_43 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_43, i64 %_8
  %28 = getelementptr inbounds nuw i8, ptr %_40, i64 16
  %_89 = load i64, ptr %28, align 8, !noundef !6
  %_92 = icmp ugt i64 %_89, %_6
  br i1 %_92, label %bb24, label %panic10.invoke

bb24:                                             ; preds = %bb14
  %29 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %_90 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %_39 = getelementptr inbounds nuw i32, ptr %_90, i64 %_6
  %_0 = load i32, ptr %_39, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb24, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h63fe1e6bbfe6588eE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %30, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h63fe1e6bbfe6588eE.exit.i.i.i" ], [ 0, %bb24 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_43, i64 %_3.sroa.0.012.i.i.i
  %30 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1166, !noalias !1169, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h63fe1e6bbfe6588eE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %31 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %32 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %32, align 8, !alias.scope !1166, !noalias !1169, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1173
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h63fe1e6bbfe6588eE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h63fe1e6bbfe6588eE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %30, %_42
  br i1 %_7.i.i.i, label %bb4.i25, label %bb5.i.i.i

bb4.i25:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h63fe1e6bbfe6588eE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1183, !noalias !1186, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd4f44059f4c2989dE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i25
  %33 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_43, i64 noundef %33, i64 noundef range(i64 1, -9223372036854775807) 8) #18, !noalias !1188
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd4f44059f4c2989dE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd4f44059f4c2989dE.exit": ; preds = %bb4.i25, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb2.i32:                                          ; preds = %bb2.i32.lr.ph, %bb23
  %iter1.sroa.0.088 = phi i32 [ %spec.select59, %bb23 ], [ 1, %bb2.i32.lr.ph ]
  %_0.i3.i33 = icmp sge i32 %iter1.sroa.0.088, %n
  %not._0.i3.i33 = xor i1 %_0.i3.i33, true
  %34 = zext i1 %not._0.i3.i33 to i32
  %spec.select59 = add nuw nsw i32 %iter1.sroa.0.088, %34
  %_27 = zext nneg i32 %iter1.sroa.0.088 to i64
  %_53 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_52 = load i64, ptr %23, align 8, !noundef !6
  %_55 = icmp ugt i64 %_52, %_27
  br i1 %_55, label %bb17, label %panic10.invoke

bb17:                                             ; preds = %bb2.i32
  %_32 = add nsw i32 %iter1.sroa.0.088, -1
  %_31 = sext i32 %_32 to i64
  %_65 = icmp ugt i64 %_52, %_31
  br i1 %_65, label %bb19, label %panic10.invoke

bb19:                                             ; preds = %bb17
  %_23 = getelementptr inbounds nuw i32, ptr %_53, i64 %_27
  %_22 = load i32, ptr %_23, align 4, !noundef !6
  %_29 = getelementptr inbounds nuw i32, ptr %_53, i64 %_31
  %_28 = load i32, ptr %_29, align 4, !noundef !6
  %_21 = add i32 %_28, %_22
  br i1 %_70, label %bb20, label %panic10.invoke

bb20:                                             ; preds = %bb19
  %_73 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_72 = load i64, ptr %25, align 8, !noundef !6
  %_75 = icmp ugt i64 %_72, %_31
  br i1 %_75, label %bb21, label %panic10.invoke

bb21:                                             ; preds = %bb20
  %_87 = icmp ugt i64 %_72, %_27
  br i1 %_87, label %bb23, label %panic10.invoke

bb23:                                             ; preds = %bb21
  %_34 = getelementptr inbounds nuw i32, ptr %_73, i64 %_31
  %_33 = load i32, ptr %_34, align 4, !noundef !6
  %_37 = getelementptr inbounds nuw i32, ptr %_73, i64 %_27
  %35 = add i32 %_21, %_33
  store i32 %35, ptr %_37, align 4
  %_0.i.not.i31 = icmp sgt i32 %spec.select59, %n
  %or.cond61 = select i1 %_0.i3.i33, i1 true, i1 %_0.i.not.i31
  br i1 %or.cond61, label %bb1.loopexit, label %bb2.i32

panic10.invoke:                                   ; preds = %bb2.i32.lr.ph, %bb21, %bb20, %bb19, %bb17, %bb2.i32, %bb14, %bb4
  %36 = phi i64 [ %_8, %bb4 ], [ %_6, %bb14 ], [ %_27, %bb2.i32 ], [ %_31, %bb17 ], [ %_36, %bb19 ], [ %_31, %bb20 ], [ %_27, %bb21 ], [ %_25, %bb2.i32.lr.ph ]
  %37 = phi i64 [ %_42, %bb4 ], [ %_89, %bb14 ], [ %_52, %bb2.i32 ], [ %_52, %bb17 ], [ %_47, %bb19 ], [ %_72, %bb20 ], [ %_72, %bb21 ], [ %_47, %bb2.i32.lr.ph ]
  %38 = phi ptr [ @alloc_3b3a2d4d238febdca0864ee92e15b50a, %bb4 ], [ @alloc_6953d1c9ebd1202663291e973da12335, %bb14 ], [ @alloc_0e2862e384e0c398417587de176c7684, %bb2.i32 ], [ @alloc_f277aa26183d3d7cef94f3575225af8b, %bb17 ], [ @alloc_784fb100adcfb24e8fded27ae2a3779b, %bb19 ], [ @alloc_99d9fc95742a32991a4bee3cffac5a68, %bb20 ], [ @alloc_78c013ee15602f2b0cc3361504c0c1d1, %bb21 ], [ @alloc_5b40e0c6b06aee87a0b0fd90477ac1ad, %bb2.i32.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %36, i64 noundef %37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %38) #20
          to label %panic10.cont unwind label %cleanup

panic10.cont:                                     ; preds = %panic10.invoke
  unreachable
}
