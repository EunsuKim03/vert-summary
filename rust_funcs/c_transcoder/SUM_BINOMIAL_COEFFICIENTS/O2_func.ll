define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %c = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  %_21.0.i.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i.i = icmp ugt i64 %_4, 4611686018427387903
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1071
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 4) #18, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hadcbc403de445615E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1076
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hadcbc403de445615E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 0
  br i1 %_2415.i.not.i, label %bb3.i.i.i22, label %bb3.i4.i.preheader

bb3.i4.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hadcbc403de445615E.exit.i.i"
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %bb3.i4.i.preheader203, label %vector.ph

vector.ph:                                        ; preds = %bb3.i4.i.preheader
  %n.vec = and i64 %_5, -8
  %2 = shl nsw i64 %n.vec, 2
  %3 = getelementptr i8, ptr %0, i64 %2
  %4 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx
  %5 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep, align 4, !noalias !1077
  store <4 x float> splat (float 1.000000e+00), ptr %5, align 4, !noalias !1077
  %index.next = add nuw i64 %index, 8
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !1080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %_5
  br i1 %cmp.n, label %bb3.i.i.i22, label %bb3.i4.i.preheader203

bb3.i4.i.preheader203:                            ; preds = %bb3.i4.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %0, %bb3.i4.i.preheader ], [ %3, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i4.i.preheader ], [ %4, %middle.block ]
  br label %bb3.i4.i

bb3.i4.i:                                         ; preds = %bb3.i4.i.preheader203, %bb3.i4.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i4.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i4.i.preheader203 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i4.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i4.i.preheader203 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store float 1.000000e+00, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1077
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.017.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb3.i.i.i22, label %bb3.i4.i, !llvm.loop !1081

bb3.i.i.i22:                                      ; preds = %bb3.i4.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hadcbc403de445615E.exit.i.i"
  %ptr.sroa.0.0.lcssa.i.ph.i = phi ptr [ %0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hadcbc403de445615E.exit.i.i" ], [ %3, %middle.block ], [ %_15.i.i, %bb3.i4.i ]
  store float 1.000000e+00, ptr %ptr.sroa.0.0.lcssa.i.ph.i, align 4, !noalias !1077
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1082
  %_21.0.i.i.i.i18 = mul nuw nsw i64 %_4, 24
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1086
; call __rustc::__rust_alloc
  %7 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i18, i64 noundef range(i64 4, 9) 8) #18, !noalias !1086
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i26, label %bb1.i.i

bb3.i.i26:                                        ; preds = %bb3.i.i.i22
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 %_21.0.i.i.i.i18) #20
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1082

.noexc.i:                                         ; preds = %bb3.i.i26
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i22
  store i64 %_4, ptr %v.i, align 8, !noalias !1082
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %7, ptr %9, align 8, !noalias !1082
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  br i1 %_2415.i.not.i, label %bb17.i.i, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i24, %bb3.i3.i ], [ %7, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i23, %bb3.i3.i ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %15, %bb3.i3.i ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1092
; call __rustc::__rust_alloc
  %11 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 4) #18, !noalias !1092
  %12 = icmp eq ptr %11, null
  br i1 %12, label %bb3.i.i.i.i.i, label %bb3.i3.i

bb3.i.i.i.i.i:                                    ; preds = %bb13.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i.i) #20
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1102

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1103
  store i64 0, ptr %v.i, align 8, !noalias !1082
  %13 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %13, align 8, !noalias !1082
  %14 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %14, align 8, !alias.scope !1089, !noalias !1106
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70b433861be4d16fE.exit"

bb17.i.i:                                         ; preds = %bb3.i3.i, %bb1.i.i
  %storemerge14.i.i6267 = phi i64 [ 1, %bb1.i.i ], [ %_4, %bb3.i3.i ]
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %7, %bb1.i.i ], [ %_15.i.i24, %bb3.i3.i ]
  store i64 %_4, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1111
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1111
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %storemerge14.i.i6267, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1111
  store i64 %_4, ptr %10, align 8, !alias.scope !1089, !noalias !1112
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70b433861be4d16fE.exit"

bb3.i3.i:                                         ; preds = %bb13.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %11, ptr nonnull readonly align 4 %0, i64 %_21.0.i.i.i.i, i1 false), !noalias !1117
  %_28.i.i23 = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_4, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1102
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %11, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1102
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_4, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1102
  %_15.i.i24 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %15 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i25 = icmp eq i64 %iter.sroa.0.027.i.i, %_5
  br i1 %exitcond.not.i.i25, label %bb17.i.i, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %16 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %10, align 8, !alias.scope !1089, !noalias !1118
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1123
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h91bef48a2a6b92e0E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #22, !noalias !1082
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %29, %cleanup ], [ %16, %cleanup1.body.i ], [ %17, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i26
  %17 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1132
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70b433861be4d16fE.exit": ; preds = %bb6.i.i, %bb17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %c, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1141
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1082
  %_0.i.not.i129 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i129, label %bb13.preheader, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70b433861be4d16fE.exit"
  %18 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_64 = load ptr, ptr %18, align 8, !nonnull !6
  %19 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %_63 = load i64, ptr %19, align 8
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb12
  %_0.i.not.i = icmp sgt i32 %spec.select97, %n
  %or.cond102 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond102, label %bb13.preheader, label %bb2.i

bb13.preheader:                                   ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70b433861be4d16fE.exit"
  %_0.i.not.i35131 = icmp slt i32 %n, 0
  br i1 %_0.i.not.i35131, label %bb13.preheader.bb15_crit_edge, label %bb2.i36.lr.ph

bb13.preheader.bb15_crit_edge:                    ; preds = %bb13.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_5.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1142
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %len.i.i.pre = load i64, ptr %.phi.trans.insert166, align 8, !alias.scope !1142
  br label %bb15

bb2.i36.lr.ph:                                    ; preds = %bb13.preheader
  %20 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %_95 = load i64, ptr %20, align 8, !noundef !6
  %_98 = icmp ugt i64 %_95, %_5
  %21 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_96 = load ptr, ptr %21, align 8, !nonnull !6
  %_48 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_96, i64 %_5
  %22 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  br i1 %_98, label %bb2.i36.lr.ph.split, label %panic12.invoke

bb2.i36.lr.ph.split:                              ; preds = %bb2.i36.lr.ph
  %23 = getelementptr inbounds nuw i8, ptr %_48, i64 16
  %_100 = load i64, ptr %23, align 8, !noundef !6
  br label %bb2.i36

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.0130 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select97, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0130, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %24 = zext i1 %not._0.i3.i to i32
  %spec.select97 = add nuw nsw i32 %iter.sroa.0.0130, %24
  %_29 = add nsw i32 %iter.sroa.0.0130, -1
  %_28 = sext i32 %_29 to i64
  %_66 = icmp ugt i64 %_63, %_28
  %_27 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_64, i64 %_28
  %25 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %_27, i64 16
  %_38 = zext nneg i32 %iter.sroa.0.0130 to i64
  %_87 = icmp ugt i64 %_63, %_38
  %_37 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_64, i64 %_38
  %27 = getelementptr inbounds nuw i8, ptr %_37, i64 16
  %28 = getelementptr inbounds nuw i8, ptr %_37, i64 8
  br label %bb2.i50

cleanup:                                          ; preds = %panic12.invoke
  %29 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h91bef48a2a6b92e0E"(ptr noalias noundef align 8 dereferenceable(24) %c) #22
  br label %common.resume

bb2.i36:                                          ; preds = %bb2.i36.lr.ph.split, %bb33
  %sum.sroa.0.0133 = phi i32 [ 0, %bb2.i36.lr.ph.split ], [ %35, %bb33 ]
  %iter2.sroa.0.0132 = phi i32 [ 0, %bb2.i36.lr.ph.split ], [ %spec.select98, %bb33 ]
  %_49 = zext nneg i32 %iter2.sroa.0.0132 to i64
  %_103 = icmp ugt i64 %_100, %_49
  br i1 %_103, label %bb33, label %panic12.invoke

bb15:                                             ; preds = %bb33, %bb13.preheader.bb15_crit_edge
  %len.i.i = phi i64 [ %len.i.i.pre, %bb13.preheader.bb15_crit_edge ], [ %_95, %bb33 ]
  %_5.i.i = phi ptr [ %_5.i.i.pre, %bb13.preheader.bb15_crit_edge ], [ %_96, %bb33 ]
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb13.preheader.bb15_crit_edge ], [ %35, %bb33 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i43, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb15, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17he885105a5e1a205eE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %30, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17he885105a5e1a205eE.exit.i.i.i" ], [ 0, %bb15 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %30 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1164, !noalias !1167, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17he885105a5e1a205eE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %31 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %32 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %32, align 8, !alias.scope !1164, !noalias !1167, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1169
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17he885105a5e1a205eE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17he885105a5e1a205eE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %30, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i43, label %bb5.i.i.i

bb4.i43:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17he885105a5e1a205eE.exit.i.i.i", %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %self1.i.i.i.i1.i = load i64, ptr %c, align 8, !range !22, !alias.scope !1179, !noalias !1182, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h91bef48a2a6b92e0E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i43
  %33 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %33, i64 noundef range(i64 1, -9223372036854775807) 8) #18, !noalias !1184
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h91bef48a2a6b92e0E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h91bef48a2a6b92e0E.exit": ; preds = %bb4.i43, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c)
  ret i32 %sum.sroa.0.0.lcssa

bb33:                                             ; preds = %bb2.i36
  %_0.i3.i37 = icmp sge i32 %iter2.sroa.0.0132, %n
  %not._0.i3.i37 = xor i1 %_0.i3.i37, true
  %34 = zext i1 %not._0.i3.i37 to i32
  %spec.select98 = add nuw nsw i32 %iter2.sroa.0.0132, %34
  %_101 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_47 = getelementptr inbounds nuw float, ptr %_101, i64 %_49
  %_46 = load float, ptr %_47, align 4, !noundef !6
  %_45 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_46)
  %35 = add i32 %_45, %sum.sroa.0.0133
  %_0.i.not.i35 = icmp sgt i32 %spec.select98, %n
  %or.cond103 = select i1 %_0.i3.i37, i1 true, i1 %_0.i.not.i35
  br i1 %or.cond103, label %bb15, label %bb2.i36

bb2.i50:                                          ; preds = %bb2.i, %bb12
  %iter1.sroa.0.0128 = phi i32 [ 0, %bb2.i ], [ %spec.select100, %bb12 ]
  %_0.i3.i51 = icmp samesign uge i32 %iter1.sroa.0.0128, %iter.sroa.0.0130
  %not._0.i3.i51 = xor i1 %_0.i3.i51, true
  %36 = zext i1 %not._0.i3.i51 to i32
  %spec.select100 = add nuw nsw i32 %iter1.sroa.0.0128, %36
  %_19 = icmp eq i32 %iter1.sroa.0.0128, 0
  %_20 = icmp eq i32 %iter1.sroa.0.0128, %iter.sroa.0.0130
  %or.cond = or i1 %_19, %_20
  br i1 %or.cond, label %bb10, label %bb11

bb10:                                             ; preds = %bb2.i50
  br i1 %_87, label %bb23, label %panic12.invoke

bb11:                                             ; preds = %bb2.i50
  br i1 %_66, label %bb25, label %panic12.invoke

bb25:                                             ; preds = %bb11
  %_31 = add nsw i32 %iter1.sroa.0.0128, -1
  %_30 = sext i32 %_31 to i64
  %_69 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_68 = load i64, ptr %26, align 8, !noundef !6
  %_71 = icmp ugt i64 %_68, %_30
  br i1 %_71, label %bb26, label %panic12.invoke

bb26:                                             ; preds = %bb25
  %_26 = getelementptr inbounds nuw float, ptr %_69, i64 %_30
  %_25 = load float, ptr %_26, align 4, !noundef !6
  %_35 = zext nneg i32 %iter1.sroa.0.0128 to i64
  %_81 = icmp ugt i64 %_68, %_35
  br i1 %_81, label %bb28, label %panic12.invoke

bb28:                                             ; preds = %bb26
  %_33 = getelementptr inbounds nuw float, ptr %_69, i64 %_35
  %_32 = load float, ptr %_33, align 4, !noundef !6
  br i1 %_87, label %bb29, label %panic12.invoke

bb29:                                             ; preds = %bb28
  %_90 = load i64, ptr %27, align 8, !noundef !6
  %_93 = icmp ugt i64 %_90, %_35
  br i1 %_93, label %bb30, label %panic12.invoke

bb30:                                             ; preds = %bb29
  %_91 = load ptr, ptr %28, align 8, !nonnull !6, !noundef !6
  %_36 = getelementptr inbounds nuw float, ptr %_91, i64 %_35
  %37 = fadd float %_25, %_32
  store float %37, ptr %_36, align 4
  br label %bb12

bb12:                                             ; preds = %bb24, %bb30
  %_0.i.not.i49 = icmp samesign ugt i32 %spec.select100, %iter.sroa.0.0130
  %or.cond104 = select i1 %_0.i3.i51, i1 true, i1 %_0.i.not.i49
  br i1 %or.cond104, label %bb1.loopexit, label %bb2.i50

bb23:                                             ; preds = %bb10
  %_24 = zext nneg i32 %iter1.sroa.0.0128 to i64
  %_58 = load i64, ptr %27, align 8, !noundef !6
  %_61 = icmp ugt i64 %_58, %_24
  br i1 %_61, label %bb24, label %panic12.invoke

bb24:                                             ; preds = %bb23
  %_59 = load ptr, ptr %28, align 8, !nonnull !6, !noundef !6
  %_21 = getelementptr inbounds nuw float, ptr %_59, i64 %_24
  store float 1.000000e+00, ptr %_21, align 4
  br label %bb12

panic12.invoke:                                   ; preds = %bb23, %bb10, %bb29, %bb28, %bb26, %bb25, %bb11, %bb2.i36, %bb2.i36.lr.ph
  %38 = phi i64 [ %_5, %bb2.i36.lr.ph ], [ %_49, %bb2.i36 ], [ %_28, %bb11 ], [ %_30, %bb25 ], [ %_35, %bb26 ], [ %_38, %bb28 ], [ %_35, %bb29 ], [ %_38, %bb10 ], [ %_24, %bb23 ]
  %39 = phi i64 [ %_95, %bb2.i36.lr.ph ], [ %_100, %bb2.i36 ], [ %_63, %bb11 ], [ %_68, %bb25 ], [ %_68, %bb26 ], [ %_63, %bb28 ], [ %_90, %bb29 ], [ %_63, %bb10 ], [ %_58, %bb23 ]
  %40 = phi ptr [ @alloc_da27dded71960ddc26d4765a23c70a81, %bb2.i36.lr.ph ], [ @alloc_f08b290234a188f05dd07309e3a322d5, %bb2.i36 ], [ @alloc_dd0b5b2c13e5784edb33320707816a8c, %bb11 ], [ @alloc_55a89c28d6cb93fd77894075acdbc197, %bb25 ], [ @alloc_38ba028bc456ed8aa671c62c298a0430, %bb26 ], [ @alloc_59b2f3a6572deebdf1619411ccd775a5, %bb28 ], [ @alloc_9b8e73f987c682cbf1663323381ec2ca, %bb29 ], [ @alloc_c462e595a85a0c4f2c1474dd47fa8faf, %bb10 ], [ @alloc_70d6a72566d1fbe42868c57bcc86a4a1, %bb23 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %38, i64 noundef %39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %40) #20
          to label %panic12.cont unwind label %cleanup

panic12.cont:                                     ; preds = %panic12.invoke
  unreachable
}
