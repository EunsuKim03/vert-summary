define noundef i32 @f_gold(i32 noundef %n, i32 noundef %m) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_6 = sext i32 %m to i64
  %_5 = add nsw i64 %_6, 1
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_5, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h4504c7e285669d8aE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h4504c7e285669d8aE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h4504c7e285669d8aE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_7, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_7, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h4504c7e285669d8aE.exit"
  %_8.i.i.i = icmp eq i64 %_7, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h4504c7e285669d8aE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h4504c7e285669d8aE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_7, ptr %v.i, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %4, ptr %6, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 0
  br i1 %_2425.i.i.not, label %bb17.i.i14, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i15
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i15 ], [ %4, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i15 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %12, %bb3.i3.i15 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i15, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i15

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  store i64 0, ptr %v.i, align 8, !noalias !1077
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %10, align 8, !noalias !1077
  %11 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %11, align 8, !alias.scope !1084, !noalias !1098
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit"

bb17.i.i14:                                       ; preds = %bb3.i3.i15, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %4, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i15 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_7, ptr %7, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit"

bb3.i3.i15:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %8, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %3, i64 %_21.0.i.i.i, i1 false), !noalias !1118
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %12 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_8
  br i1 %exitcond.not.i.i, label %bb17.i.i14, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1084, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf003bc041d4d0d5fE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %22, %cleanup ], [ %13, %cleanup1.body.i ], [ %14, %bb4.i ], [ %14, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i80 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i80, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit.bb4_crit_edge", label %bb2.i.lr.ph

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit.bb4_crit_edge": ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_46.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb4

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit"
  %_0.i.not.i2378 = icmp slt i32 %m, 0
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_64 = load ptr, ptr %15, align 8, !nonnull !6
  %16 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_63 = load i64, ptr %16, align 8
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb12, %bb2.i
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.081 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.081, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %17 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.081, %17
  br i1 %_0.i.not.i2378, label %bb1.loopexit, label %bb2.i24.lr.ph

bb2.i24.lr.ph:                                    ; preds = %bb2.i
  %_33 = zext nneg i32 %iter.sroa.0.081 to i64
  %_32 = add nsw i64 %_33, -1
  %_66 = icmp ult i64 %_32, %_63
  %_31 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_64, i64 %_32
  %18 = getelementptr inbounds nuw i8, ptr %_31, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %_31, i64 16
  %_87 = icmp ugt i64 %_63, %_33
  %_42 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_64, i64 %_33
  %20 = getelementptr inbounds nuw i8, ptr %_42, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_42, i64 8
  br label %bb2.i24

cleanup:                                          ; preds = %panic10.invoke
  %22 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf003bc041d4d0d5fE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb4:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit.bb4_crit_edge"
  %_46 = phi i64 [ %_46.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h293ba255ce269083E.exit.bb4_crit_edge" ], [ %_63, %bb1.loopexit ]
  %_49 = icmp ugt i64 %_46, %_8
  br i1 %_49, label %bb19, label %panic10.invoke

bb19:                                             ; preds = %bb4
  %23 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_47 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_44 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_47, i64 %_8
  %24 = getelementptr inbounds nuw i8, ptr %_44, i64 16
  %_95 = load i64, ptr %24, align 8, !noundef !6
  %_98 = icmp ugt i64 %_95, %_6
  br i1 %_98, label %bb29, label %panic10.invoke

bb29:                                             ; preds = %bb19
  %25 = getelementptr inbounds nuw i8, ptr %_44, i64 8
  %_96 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_43 = getelementptr inbounds nuw i32, ptr %_96, i64 %_6
  %_0 = load i32, ptr %_43, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb29, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fcaf1efa8794f9fE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %26, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fcaf1efa8794f9fE.exit.i.i.i" ], [ 0, %bb29 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_47, i64 %_3.sroa.0.012.i.i.i
  %26 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fcaf1efa8794f9fE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %27 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %28 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %28, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %27, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fcaf1efa8794f9fE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fcaf1efa8794f9fE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %26, %_46
  br i1 %_7.i.i.i, label %bb4.i17, label %bb5.i.i.i

bb4.i17:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9fcaf1efa8794f9fE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf003bc041d4d0d5fE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i17
  %29 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_47, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf003bc041d4d0d5fE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf003bc041d4d0d5fE.exit": ; preds = %bb4.i17, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb2.i24:                                          ; preds = %bb2.i24.lr.ph, %bb12
  %iter1.sroa.0.079 = phi i32 [ 0, %bb2.i24.lr.ph ], [ %spec.select51, %bb12 ]
  %_0.i3.i25 = icmp sge i32 %iter1.sroa.0.079, %m
  %not._0.i3.i25 = xor i1 %_0.i3.i25, true
  %30 = zext i1 %not._0.i3.i25 to i32
  %spec.select51 = add nuw nsw i32 %iter1.sroa.0.079, %30
  %_21 = icmp samesign ugt i32 %iter.sroa.0.081, %iter1.sroa.0.079
  br i1 %_21, label %bb8, label %bb12

bb12:                                             ; preds = %bb28, %bb22, %bb2.i24
  %_0.i.not.i23 = icmp sgt i32 %spec.select51, %m
  %or.cond53 = select i1 %_0.i3.i25, i1 true, i1 %_0.i.not.i23
  br i1 %or.cond53, label %bb1.loopexit, label %bb2.i24

bb8:                                              ; preds = %bb2.i24
  %_22 = icmp eq i32 %iter1.sroa.0.079, 0
  br i1 %_22, label %bb9, label %bb10

bb10:                                             ; preds = %bb8
  %_28 = sub nsw i32 %iter.sroa.0.081, %iter1.sroa.0.079
  br i1 %_66, label %bb23, label %panic10.invoke

bb9:                                              ; preds = %bb8
  br i1 %_87, label %bb21, label %panic10.invoke

bb23:                                             ; preds = %bb10
  %_35 = zext nneg i32 %iter1.sroa.0.079 to i64
  %_34 = add nsw i64 %_35, -1
  %_69 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_68 = load i64, ptr %19, align 8, !noundef !6
  %_71 = icmp ult i64 %_34, %_68
  br i1 %_71, label %bb24, label %panic10.invoke

bb24:                                             ; preds = %bb23
  %_30 = getelementptr inbounds nuw i32, ptr %_69, i64 %_34
  %_29 = load i32, ptr %_30, align 4, !noundef !6
  %_27 = mul i32 %_29, %_28
  %_81 = icmp ugt i64 %_68, %_35
  br i1 %_81, label %bb26, label %panic10.invoke

bb26:                                             ; preds = %bb24
  %_37 = add nuw nsw i32 %iter1.sroa.0.079, 1
  %_39 = getelementptr inbounds nuw i32, ptr %_69, i64 %_35
  %_38 = load i32, ptr %_39, align 4, !noundef !6
  %_36 = mul i32 %_38, %_37
  br i1 %_87, label %bb27, label %panic10.invoke

bb27:                                             ; preds = %bb26
  %_90 = load i64, ptr %20, align 8, !noundef !6
  %_93 = icmp ugt i64 %_90, %_35
  br i1 %_93, label %bb28, label %panic10.invoke

bb28:                                             ; preds = %bb27
  %_91 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_41 = getelementptr inbounds nuw i32, ptr %_91, i64 %_35
  %31 = add i32 %_36, %_27
  store i32 %31, ptr %_41, align 4
  br label %bb12

bb21:                                             ; preds = %bb9
  %_58 = load i64, ptr %20, align 8, !noundef !6
  %_61.not = icmp eq i64 %_58, 0
  br i1 %_61.not, label %panic10.invoke, label %bb22

bb22:                                             ; preds = %bb21
  %_59 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  store i32 1, ptr %_59, align 4
  br label %bb12

panic10.invoke:                                   ; preds = %bb21, %bb9, %bb27, %bb26, %bb24, %bb23, %bb10, %bb19, %bb4
  %32 = phi i64 [ %_8, %bb4 ], [ %_6, %bb19 ], [ %_32, %bb10 ], [ %_34, %bb23 ], [ %_35, %bb24 ], [ %_33, %bb26 ], [ %_35, %bb27 ], [ %_33, %bb9 ], [ 0, %bb21 ]
  %33 = phi i64 [ %_46, %bb4 ], [ %_95, %bb19 ], [ %_63, %bb10 ], [ %_68, %bb23 ], [ %_68, %bb24 ], [ %_63, %bb26 ], [ %_90, %bb27 ], [ %_63, %bb9 ], [ 0, %bb21 ]
  %34 = phi ptr [ @alloc_9e341bcae2b2a0d4e1afa3f21af38f37, %bb4 ], [ @alloc_a48f102b49ad1d25a003f92e7b5b135f, %bb19 ], [ @alloc_88d3bc3f0a82419924910c23fa33f932, %bb10 ], [ @alloc_f510f783cbcdda5c241e9d0fa135be42, %bb23 ], [ @alloc_7056cd7d47966ad5545690f4c4a6ceb7, %bb24 ], [ @alloc_8b64e3512a65bc36e6ad6aee706edfb8, %bb26 ], [ @alloc_7f2795566c1d6e4936a1c23d5ef65273, %bb27 ], [ @alloc_2babab26161237876a1efc376758ac82, %bb9 ], [ @alloc_19b250928f884c599dd331868a9ddbfa, %bb21 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %32, i64 noundef %33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %34) #21
          to label %panic10.cont unwind label %cleanup

panic10.cont:                                     ; preds = %panic10.invoke
  unreachable
}
