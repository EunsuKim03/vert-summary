define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %C = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %C)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp ugt i64 %_4, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_4, 0
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
  %_21.0.i.i.i.i = mul nuw nsw i64 %_4, 24
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
  store i64 %_4, ptr %v.i, align 8, !noalias !1077
  %4 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %2, ptr %4, align 8, !noalias !1077
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 0
  br i1 %_2425.i.i.not, label %bb17.i.i23, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i24
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i24 ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i24 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i24 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i24

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
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E.exit"

bb17.i.i23:                                       ; preds = %bb3.i3.i24, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i24 ]
  store i64 %_4, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1106
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1106
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_4, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1106
  store i64 %_4, ptr %5, align 8, !alias.scope !1084, !noalias !1107
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E.exit"

bb3.i3.i24:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr nonnull readonly align 4 %0, i64 %_21.0.i.i.i, i1 false), !noalias !1112
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_4, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %6, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_4, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb17.i.i23, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1084, !noalias !1113
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1118
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hcd1cdc22f3194758E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %22, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1127
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E.exit": ; preds = %bb6.i.i, %bb17.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %C, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i113 = icmp slt i32 %n, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %C, i64 8
  %_5.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %len.i.i.pre = load i64, ptr %.phi.trans.insert150, align 8
  br i1 %_0.i.not.i113, label %bb15, label %bb2.i

bb1.loopexit:                                     ; preds = %bb12
  %_0.i.not.i = icmp sgt i32 %spec.select81, %n
  %or.cond86 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond86, label %bb2.i32.lr.ph, label %bb2.i

bb2.i32.lr.ph:                                    ; preds = %bb1.loopexit
  %13 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %_97 = load i64, ptr %13, align 8, !noundef !6
  %_100 = icmp ugt i64 %_97, %_5
  %14 = getelementptr inbounds nuw i8, ptr %C, i64 8
  %_98 = load ptr, ptr %14, align 8, !nonnull !6
  %_47 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_98, i64 %_5
  %15 = getelementptr inbounds nuw i8, ptr %_47, i64 8
  br i1 %_100, label %bb2.i32.lr.ph.split, label %panic14.invoke

bb2.i32.lr.ph.split:                              ; preds = %bb2.i32.lr.ph
  %16 = getelementptr inbounds nuw i8, ptr %_47, i64 16
  %_102 = load i64, ptr %16, align 8, !noundef !6
  br label %bb2.i32

bb2.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E.exit", %bb1.loopexit
  %iter.sroa.0.0114 = phi i32 [ %spec.select81, %bb1.loopexit ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E.exit" ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0114, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %17 = zext i1 %not._0.i3.i to i32
  %spec.select81 = add nuw nsw i32 %iter.sroa.0.0114, %17
  %_29 = add nsw i32 %iter.sroa.0.0114, -1
  %_28 = sext i32 %_29 to i64
  %_68 = icmp ugt i64 %len.i.i.pre, %_28
  %_27 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i.pre, i64 %_28
  %18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %_27, i64 16
  %_38 = zext nneg i32 %iter.sroa.0.0114 to i64
  %_89 = icmp ugt i64 %len.i.i.pre, %_38
  %_37 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i.pre, i64 %_38
  %20 = getelementptr inbounds nuw i8, ptr %_37, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_37, i64 8
  br label %bb2.i46

cleanup:                                          ; preds = %panic14.invoke
  %22 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hcd1cdc22f3194758E"(ptr noalias noundef align 8 dereferenceable(24) %C) #23
  br label %common.resume

bb2.i32:                                          ; preds = %bb2.i32.lr.ph.split, %bb33
  %sum.sroa.0.0117 = phi i32 [ 0, %bb2.i32.lr.ph.split ], [ %28, %bb33 ]
  %iter2.sroa.0.0116 = phi i32 [ 0, %bb2.i32.lr.ph.split ], [ %spec.select82, %bb33 ]
  %_48 = zext nneg i32 %iter2.sroa.0.0116 to i64
  %_105 = icmp ugt i64 %_102, %_48
  br i1 %_105, label %bb33, label %panic14.invoke

bb15:                                             ; preds = %bb33, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E.exit"
  %len.i.i = phi i64 [ %len.i.i.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E.exit" ], [ %_97, %bb33 ]
  %_5.i.i = phi ptr [ %_5.i.i.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E.exit" ], [ %_98, %bb33 ]
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc0e84ef328fb6222E.exit" ], [ %28, %bb33 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i39, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb15, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7d42ef6c8e8cd5eE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %23, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7d42ef6c8e8cd5eE.exit.i.i.i" ], [ 0, %bb15 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %23 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1155, !noalias !1158, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7d42ef6c8e8cd5eE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %24 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %25 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %25, align 8, !alias.scope !1155, !noalias !1158, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %24, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1162
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7d42ef6c8e8cd5eE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7d42ef6c8e8cd5eE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %23, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i39, label %bb5.i.i.i

bb4.i39:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb7d42ef6c8e8cd5eE.exit.i.i.i", %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %self1.i.i.i.i1.i = load i64, ptr %C, align 8, !range !22, !alias.scope !1172, !noalias !1175, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hcd1cdc22f3194758E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i39
  %26 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %26, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1177
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hcd1cdc22f3194758E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hcd1cdc22f3194758E.exit": ; preds = %bb4.i39, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %C)
  ret i32 %sum.sroa.0.0.lcssa

bb33:                                             ; preds = %bb2.i32
  %_0.i3.i33 = icmp sge i32 %iter2.sroa.0.0116, %n
  %not._0.i3.i33 = xor i1 %_0.i3.i33, true
  %27 = zext i1 %not._0.i3.i33 to i32
  %spec.select82 = add nuw nsw i32 %iter2.sroa.0.0116, %27
  %_103 = load ptr, ptr %15, align 8, !nonnull !6, !noundef !6
  %_46 = getelementptr inbounds nuw i32, ptr %_103, i64 %_48
  %_45 = load i32, ptr %_46, align 4, !noundef !6
  %_44 = mul i32 %_45, %_45
  %28 = add i32 %_44, %sum.sroa.0.0117
  %_0.i.not.i31 = icmp sgt i32 %spec.select82, %n
  %or.cond87 = select i1 %_0.i3.i33, i1 true, i1 %_0.i.not.i31
  br i1 %or.cond87, label %bb15, label %bb2.i32

bb2.i46:                                          ; preds = %bb2.i, %bb12
  %iter1.sroa.0.0112 = phi i32 [ 0, %bb2.i ], [ %spec.select84, %bb12 ]
  %_0.i3.i47 = icmp samesign uge i32 %iter1.sroa.0.0112, %iter.sroa.0.0114
  %not._0.i3.i47 = xor i1 %_0.i3.i47, true
  %29 = zext i1 %not._0.i3.i47 to i32
  %spec.select84 = add nuw nsw i32 %iter1.sroa.0.0112, %29
  %_19 = icmp eq i32 %iter1.sroa.0.0112, 0
  %_20 = icmp eq i32 %iter1.sroa.0.0112, %iter.sroa.0.0114
  %or.cond = or i1 %_19, %_20
  br i1 %or.cond, label %bb10, label %bb11

bb10:                                             ; preds = %bb2.i46
  br i1 %_89, label %bb23, label %panic14.invoke

bb11:                                             ; preds = %bb2.i46
  br i1 %_68, label %bb25, label %panic14.invoke

bb25:                                             ; preds = %bb11
  %_31 = add nsw i32 %iter1.sroa.0.0112, -1
  %_30 = sext i32 %_31 to i64
  %_71 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_70 = load i64, ptr %19, align 8, !noundef !6
  %_73 = icmp ugt i64 %_70, %_30
  br i1 %_73, label %bb26, label %panic14.invoke

bb26:                                             ; preds = %bb25
  %_26 = getelementptr inbounds nuw i32, ptr %_71, i64 %_30
  %_25 = load i32, ptr %_26, align 4, !noundef !6
  %_35 = zext nneg i32 %iter1.sroa.0.0112 to i64
  %_83 = icmp ugt i64 %_70, %_35
  br i1 %_83, label %bb28, label %panic14.invoke

bb28:                                             ; preds = %bb26
  %_33 = getelementptr inbounds nuw i32, ptr %_71, i64 %_35
  %_32 = load i32, ptr %_33, align 4, !noundef !6
  br i1 %_89, label %bb29, label %panic14.invoke

bb29:                                             ; preds = %bb28
  %_92 = load i64, ptr %20, align 8, !noundef !6
  %_95 = icmp ugt i64 %_92, %_35
  br i1 %_95, label %bb30, label %panic14.invoke

bb30:                                             ; preds = %bb29
  %_93 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_36 = getelementptr inbounds nuw i32, ptr %_93, i64 %_35
  %30 = add i32 %_32, %_25
  store i32 %30, ptr %_36, align 4
  br label %bb12

bb12:                                             ; preds = %bb24, %bb30
  %_0.i.not.i45 = icmp samesign ugt i32 %spec.select84, %iter.sroa.0.0114
  %or.cond88 = select i1 %_0.i3.i47, i1 true, i1 %_0.i.not.i45
  br i1 %or.cond88, label %bb1.loopexit, label %bb2.i46

bb23:                                             ; preds = %bb10
  %_24 = zext nneg i32 %iter1.sroa.0.0112 to i64
  %_60 = load i64, ptr %20, align 8, !noundef !6
  %_63 = icmp ugt i64 %_60, %_24
  br i1 %_63, label %bb24, label %panic14.invoke

bb24:                                             ; preds = %bb23
  %_61 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_21 = getelementptr inbounds nuw i32, ptr %_61, i64 %_24
  store i32 1, ptr %_21, align 4
  br label %bb12

panic14.invoke:                                   ; preds = %bb23, %bb10, %bb29, %bb28, %bb26, %bb25, %bb11, %bb2.i32, %bb2.i32.lr.ph
  %31 = phi i64 [ %_5, %bb2.i32.lr.ph ], [ %_48, %bb2.i32 ], [ %_28, %bb11 ], [ %_30, %bb25 ], [ %_35, %bb26 ], [ %_38, %bb28 ], [ %_35, %bb29 ], [ %_38, %bb10 ], [ %_24, %bb23 ]
  %32 = phi i64 [ %_97, %bb2.i32.lr.ph ], [ %_102, %bb2.i32 ], [ %len.i.i.pre, %bb11 ], [ %_70, %bb25 ], [ %_70, %bb26 ], [ %len.i.i.pre, %bb28 ], [ %_92, %bb29 ], [ %len.i.i.pre, %bb10 ], [ %_60, %bb23 ]
  %33 = phi ptr [ @alloc_2324aca3385d4e6087aeb1708921e4ea, %bb2.i32.lr.ph ], [ @alloc_f663cc5345675fd91416ba7f64ce7662, %bb2.i32 ], [ @alloc_a62532a7183da3e35bb72aff9bcc15d3, %bb11 ], [ @alloc_0f2d7c7e9aac56eef12f6e34cb5b7301, %bb25 ], [ @alloc_09eb12c5d65a5ae46884ed32adc77d6f, %bb26 ], [ @alloc_03ddb4cbe688077e89751d4824349e6e, %bb28 ], [ @alloc_205d29945ba9b9649785641aa7743810, %bb29 ], [ @alloc_b5661f1d83db4e6e483c9878a56a6de1, %bb10 ], [ @alloc_ea63d6990c1b8df77cbaf83b442a1189, %bb23 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %31, i64 noundef %32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %33) #21
          to label %panic14.cont unwind label %cleanup

panic14.cont:                                     ; preds = %panic14.invoke
  unreachable
}
