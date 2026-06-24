define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %T = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %T)
  %_6 = sext i32 %n to i64
  %_5 = add nsw i64 %_6, 1
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_5, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h02de83dbb53a96d2E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h02de83dbb53a96d2E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h02de83dbb53a96d2E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_8 = sext i32 %m to i64
  %_7 = add nsw i64 %_8, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_7, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_7, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h02de83dbb53a96d2E.exit"
  %_8.i.i.i = icmp eq i64 %_7, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h02de83dbb53a96d2E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h02de83dbb53a96d2E.exit" ]
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
  %_2425.i.i.not = icmp eq i32 %m, 0
  br i1 %_2425.i.i.not, label %bb17.i.i17, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i18
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i18 ], [ %4, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i18 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %12, %bb3.i3.i18 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i18, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i18

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
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit"

bb17.i.i17:                                       ; preds = %bb3.i3.i18, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %4, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i18 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_7, ptr %7, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit"

bb3.i3.i18:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
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
  br i1 %exitcond.not.i.i, label %bb17.i.i17, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1084, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %24, %cleanup ], [ %13, %cleanup1.body.i ], [ %14, %bb4.i ], [ %14, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %T, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i91 = icmp slt i32 %m, 1
  br i1 %_0.i.not.i91, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit.bb4_crit_edge", label %bb2.i.lr.ph

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit.bb4_crit_edge": ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %T, i64 16
  %_50.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb4

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit"
  %_0.i.not.i2689 = icmp slt i32 %n, 1
  %15 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %_80 = load ptr, ptr %15, align 8, !nonnull !6
  %16 = getelementptr inbounds nuw i8, ptr %T, i64 16
  %_79 = load i64, ptr %16, align 8
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb13, %bb2.i
  %_0.i.not.i = icmp sgt i32 %spec.select, %m
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.092 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.092, %m
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %17 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.092, %17
  br i1 %_0.i.not.i2689, label %bb1.loopexit, label %bb2.i27.lr.ph

bb2.i27.lr.ph:                                    ; preds = %bb2.i
  %_35 = add nsw i32 %iter.sroa.0.092, -1
  %_34 = sext i32 %_35 to i64
  %_82 = icmp ugt i64 %_79, %_34
  %_33 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_80, i64 %_34
  %18 = getelementptr inbounds nuw i8, ptr %_33, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %_4156 = lshr i32 %iter.sroa.0.092, 1
  %_40 = zext nneg i32 %_4156 to i64
  %_92 = icmp ugt i64 %_79, %_40
  %_39 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_80, i64 %_40
  %20 = getelementptr inbounds nuw i8, ptr %_39, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  %_46 = zext nneg i32 %iter.sroa.0.092 to i64
  %_103 = icmp ugt i64 %_79, %_46
  %_45 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_80, i64 %_46
  %22 = getelementptr inbounds nuw i8, ptr %_45, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %_45, i64 8
  br label %bb2.i27

cleanup:                                          ; preds = %panic12.invoke
  %24 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E"(ptr noalias noundef align 8 dereferenceable(24) %T) #23
  br label %common.resume

bb4:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit.bb4_crit_edge"
  %_50 = phi i64 [ %_50.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit.bb4_crit_edge" ], [ %_79, %bb1.loopexit ]
  %_53 = icmp ugt i64 %_50, %_8
  br i1 %_53, label %bb20, label %panic12.invoke

bb20:                                             ; preds = %bb4
  %25 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %_51 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_48 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_51, i64 %_8
  %26 = getelementptr inbounds nuw i8, ptr %_48, i64 16
  %_111 = load i64, ptr %26, align 8, !noundef !6
  %_114 = icmp ugt i64 %_111, %_6
  br i1 %_114, label %bb32, label %panic12.invoke

bb32:                                             ; preds = %bb20
  %27 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  %_112 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_47 = getelementptr inbounds nuw i32, ptr %_112, i64 %_6
  %_0 = load i32, ptr %_47, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb32, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E.exit.i.i.i" ], [ 0, %bb32 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_51, i64 %_3.sroa.0.012.i.i.i
  %28 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %29 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %30 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %30, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %28, %_50
  br i1 %_7.i.i.i, label %bb4.i20, label %bb5.i.i.i

bb4.i20:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %T, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i20
  %31 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_51, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E.exit": ; preds = %bb4.i20, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %T)
  ret i32 %_0

bb2.i27:                                          ; preds = %bb2.i27.lr.ph, %bb13
  %iter1.sroa.0.090 = phi i32 [ 1, %bb2.i27.lr.ph ], [ %spec.select54, %bb13 ]
  %_0.i3.i28 = icmp sge i32 %iter1.sroa.0.090, %n
  %not._0.i3.i28 = xor i1 %_0.i3.i28, true
  %32 = zext i1 %not._0.i3.i28 to i32
  %spec.select54 = add nuw nsw i32 %iter1.sroa.0.090, %32
  %_21 = icmp samesign ult i32 %iter.sroa.0.092, %iter1.sroa.0.090
  br i1 %_21, label %bb8, label %bb9

bb9:                                              ; preds = %bb2.i27
  %_26 = icmp eq i32 %iter1.sroa.0.090, 1
  br i1 %_26, label %bb10, label %bb11

bb8:                                              ; preds = %bb2.i27
  br i1 %_103, label %bb22, label %panic12.invoke

bb11:                                             ; preds = %bb9
  br i1 %_82, label %bb26, label %panic12.invoke

bb10:                                             ; preds = %bb9
  br i1 %_103, label %bb24, label %panic12.invoke

bb26:                                             ; preds = %bb11
  %_36 = zext nneg i32 %iter1.sroa.0.090 to i64
  %_84 = load i64, ptr %18, align 8, !noundef !6
  %_87 = icmp ugt i64 %_84, %_36
  br i1 %_87, label %bb27, label %panic12.invoke

bb27:                                             ; preds = %bb26
  %_85 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_32 = getelementptr inbounds nuw i32, ptr %_85, i64 %_36
  %_31 = load i32, ptr %_32, align 4, !noundef !6
  br i1 %_92, label %bb28, label %panic12.invoke

bb28:                                             ; preds = %bb27
  %_43 = add nsw i32 %iter1.sroa.0.090, -1
  %_42 = sext i32 %_43 to i64
  %_94 = load i64, ptr %20, align 8, !noundef !6
  %_97 = icmp ugt i64 %_94, %_42
  br i1 %_97, label %bb29, label %panic12.invoke

bb29:                                             ; preds = %bb28
  %_95 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i32, ptr %_95, i64 %_42
  %_37 = load i32, ptr %_38, align 4, !noundef !6
  br i1 %_103, label %bb30, label %panic12.invoke

bb30:                                             ; preds = %bb29
  %_106 = load i64, ptr %22, align 8, !noundef !6
  %_109 = icmp ugt i64 %_106, %_36
  br i1 %_109, label %bb31, label %panic12.invoke

bb31:                                             ; preds = %bb30
  %_107 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_44 = getelementptr inbounds nuw i32, ptr %_107, i64 %_36
  %33 = add i32 %_37, %_31
  store i32 %33, ptr %_44, align 4
  br label %bb13

bb24:                                             ; preds = %bb10
  %_74 = load i64, ptr %22, align 8, !noundef !6
  %_77 = icmp ugt i64 %_74, 1
  br i1 %_77, label %bb25, label %panic12.invoke

bb25:                                             ; preds = %bb24
  %_75 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_27 = getelementptr inbounds nuw i8, ptr %_75, i64 4
  store i32 %iter.sroa.0.092, ptr %_27, align 4
  br label %bb13

bb13:                                             ; preds = %bb31, %bb25, %bb23
  %_0.i.not.i26 = icmp sgt i32 %spec.select54, %n
  %or.cond57 = select i1 %_0.i3.i28, i1 true, i1 %_0.i.not.i26
  br i1 %or.cond57, label %bb1.loopexit, label %bb2.i27

bb22:                                             ; preds = %bb8
  %_25 = zext nneg i32 %iter1.sroa.0.090 to i64
  %_62 = load i64, ptr %22, align 8, !noundef !6
  %_65 = icmp ugt i64 %_62, %_25
  br i1 %_65, label %bb23, label %panic12.invoke

bb23:                                             ; preds = %bb22
  %_63 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_22 = getelementptr inbounds nuw i32, ptr %_63, i64 %_25
  store i32 0, ptr %_22, align 4
  br label %bb13

panic12.invoke:                                   ; preds = %bb22, %bb8, %bb24, %bb10, %bb30, %bb29, %bb28, %bb27, %bb26, %bb11, %bb20, %bb4
  %34 = phi i64 [ %_8, %bb4 ], [ %_6, %bb20 ], [ %_34, %bb11 ], [ %_36, %bb26 ], [ %_40, %bb27 ], [ %_42, %bb28 ], [ %_46, %bb29 ], [ %_36, %bb30 ], [ %_46, %bb10 ], [ 1, %bb24 ], [ %_46, %bb8 ], [ %_25, %bb22 ]
  %35 = phi i64 [ %_50, %bb4 ], [ %_111, %bb20 ], [ %_79, %bb11 ], [ %_84, %bb26 ], [ %_79, %bb27 ], [ %_94, %bb28 ], [ %_79, %bb29 ], [ %_106, %bb30 ], [ %_79, %bb10 ], [ %_74, %bb24 ], [ %_79, %bb8 ], [ %_62, %bb22 ]
  %36 = phi ptr [ @alloc_7c505dd7778f7f54b2f075d7a586a2ff, %bb4 ], [ @alloc_d36c1766dc5774f0f4f66bb69479e895, %bb20 ], [ @alloc_3176ea66d28ae85950d07e450e40d143, %bb11 ], [ @alloc_c2e0156163e436945459be5869f5791d, %bb26 ], [ @alloc_3b8f9903a2bc3656de019ceba635f97a, %bb27 ], [ @alloc_d354df91300d30d5fabf4edd0f2a2081, %bb28 ], [ @alloc_91841cebad64ee16a9ec882d4e99be1d, %bb29 ], [ @alloc_7e1bbf5bbd240e8f7ce3ad63cf09205a, %bb30 ], [ @alloc_ffaddeb92256bb0e67ef9b27f0c40008, %bb10 ], [ @alloc_af4e2ec7ec6e2fe96889c845c7f5eaf1, %bb24 ], [ @alloc_6f9c8bd6d81dbee1b2eeacc3680df8e3, %bb8 ], [ @alloc_2ccaf0e95f4fdb35ecb2f6b5bf0639fb, %bb22 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %34, i64 noundef %35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %36) #21
          to label %panic12.cont unwind label %cleanup

panic12.cont:                                     ; preds = %panic12.invoke
  unreachable
}
