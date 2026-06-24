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
  br i1 %_2425.i.i.not, label %bb17.i.i19, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i20
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i20 ], [ %4, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i20 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %12, %bb3.i3.i20 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i20, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i20

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

bb17.i.i19:                                       ; preds = %bb3.i3.i20, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %4, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i20 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_7, ptr %7, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit"

bb3.i3.i20:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
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
  br i1 %exitcond.not.i.i, label %bb17.i.i19, label %bb13.i.i

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

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %T, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i97 = icmp slt i32 %m, 0
  br i1 %_0.i.not.i97, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit.bb4_crit_edge", label %bb2.i.lr.ph

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit.bb4_crit_edge": ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %T, i64 16
  %_55.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb4

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit"
  %_0.i.not.i2895 = icmp slt i32 %n, 0
  %15 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %_97 = load ptr, ptr %15, align 8, !nonnull !6
  %16 = getelementptr inbounds nuw i8, ptr %T, i64 16
  %_96 = load i64, ptr %16, align 8
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb17, %bb2.i
  %_0.i.not.i = icmp sgt i32 %spec.select, %m
  %or.cond58 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond58, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.098 = phi i32 [ 0, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.098, %m
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %17 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.098, %17
  br i1 %_0.i.not.i2895, label %bb1.loopexit, label %bb2.i29.lr.ph

bb2.i29.lr.ph:                                    ; preds = %bb2.i
  %_21 = icmp eq i32 %iter.sroa.0.098, 0
  %_41 = add nsw i32 %iter.sroa.0.098, -1
  %_40 = sext i32 %_41 to i64
  %_99 = icmp ugt i64 %_96, %_40
  %_39 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_97, i64 %_40
  %18 = getelementptr inbounds nuw i8, ptr %_39, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  %_47 = zext nneg i32 %iter.sroa.0.098 to i64
  %_4618 = lshr i64 %_47, 1
  %_109 = icmp ult i64 %_4618, %_96
  %_45 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_97, i64 %_4618
  %20 = getelementptr inbounds nuw i8, ptr %_45, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_45, i64 8
  %_120 = icmp ugt i64 %_96, %_47
  %_51 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_97, i64 %_47
  %22 = getelementptr inbounds nuw i8, ptr %_51, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %_51, i64 8
  br label %bb2.i29

cleanup:                                          ; preds = %panic14.invoke
  %24 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E"(ptr noalias noundef align 8 dereferenceable(24) %T) #23
  br label %common.resume

bb4:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit.bb4_crit_edge"
  %_55 = phi i64 [ %_55.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3940e7a2d3a40bbdE.exit.bb4_crit_edge" ], [ %_96, %bb1.loopexit ]
  %_58 = icmp ugt i64 %_55, %_8
  br i1 %_58, label %bb24, label %panic14.invoke

bb24:                                             ; preds = %bb4
  %25 = getelementptr inbounds nuw i8, ptr %T, i64 8
  %_56 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_53 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_56, i64 %_8
  %26 = getelementptr inbounds nuw i8, ptr %_53, i64 16
  %_128 = load i64, ptr %26, align 8, !noundef !6
  %_131 = icmp ugt i64 %_128, %_6
  br i1 %_131, label %bb38, label %panic14.invoke

bb38:                                             ; preds = %bb24
  %27 = getelementptr inbounds nuw i8, ptr %_53, i64 8
  %_129 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_52 = getelementptr inbounds nuw i32, ptr %_129, i64 %_6
  %_0 = load i32, ptr %_52, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb38, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E.exit.i.i.i" ], [ 0, %bb38 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_56, i64 %_3.sroa.0.012.i.i.i
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
  %_7.i.i.i = icmp eq i64 %28, %_55
  br i1 %_7.i.i.i, label %bb4.i22, label %bb5.i.i.i

bb4.i22:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h563ac68f6f021004E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %T, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i22
  %31 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_56, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h6d18219c4e5020f9E.exit": ; preds = %bb4.i22, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %T)
  ret i32 %_0

bb2.i29:                                          ; preds = %bb2.i29.lr.ph, %bb17
  %iter1.sroa.0.096 = phi i32 [ 0, %bb2.i29.lr.ph ], [ %spec.select56, %bb17 ]
  %_0.i3.i30 = icmp sge i32 %iter1.sroa.0.096, %n
  %not._0.i3.i30 = xor i1 %_0.i3.i30, true
  %32 = zext i1 %not._0.i3.i30 to i32
  %spec.select56 = add nuw nsw i32 %iter1.sroa.0.096, %32
  %_22 = icmp eq i32 %iter1.sroa.0.096, 0
  %or.cond = or i1 %_21, %_22
  br i1 %or.cond, label %bb9, label %bb10

bb9:                                              ; preds = %bb2.i29
  br i1 %_120, label %bb26, label %panic14.invoke

bb10:                                             ; preds = %bb2.i29
  %_27 = icmp samesign ult i32 %iter.sroa.0.098, %iter1.sroa.0.096
  br i1 %_27, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %_32 = icmp eq i32 %iter1.sroa.0.096, 1
  br i1 %_32, label %bb13, label %bb14

bb11:                                             ; preds = %bb10
  br i1 %_120, label %bb28, label %panic14.invoke

bb14:                                             ; preds = %bb12
  br i1 %_99, label %bb32, label %panic14.invoke

bb13:                                             ; preds = %bb12
  br i1 %_120, label %bb30, label %panic14.invoke

bb32:                                             ; preds = %bb14
  %_42 = zext nneg i32 %iter1.sroa.0.096 to i64
  %_101 = load i64, ptr %18, align 8, !noundef !6
  %_104 = icmp ugt i64 %_101, %_42
  br i1 %_104, label %bb33, label %panic14.invoke

bb33:                                             ; preds = %bb32
  %_102 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i32, ptr %_102, i64 %_42
  %_37 = load i32, ptr %_38, align 4, !noundef !6
  br i1 %_109, label %bb34, label %panic14.invoke

bb34:                                             ; preds = %bb33
  %_49 = add nsw i32 %iter1.sroa.0.096, -1
  %_48 = sext i32 %_49 to i64
  %_111 = load i64, ptr %20, align 8, !noundef !6
  %_114 = icmp ugt i64 %_111, %_48
  br i1 %_114, label %bb35, label %panic14.invoke

bb35:                                             ; preds = %bb34
  %_112 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_44 = getelementptr inbounds nuw i32, ptr %_112, i64 %_48
  %_43 = load i32, ptr %_44, align 4, !noundef !6
  br i1 %_120, label %bb36, label %panic14.invoke

bb36:                                             ; preds = %bb35
  %_123 = load i64, ptr %22, align 8, !noundef !6
  %_126 = icmp ugt i64 %_123, %_42
  br i1 %_126, label %bb37, label %panic14.invoke

bb37:                                             ; preds = %bb36
  %_124 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_50 = getelementptr inbounds nuw i32, ptr %_124, i64 %_42
  %33 = add i32 %_43, %_37
  store i32 %33, ptr %_50, align 4
  br label %bb17

bb30:                                             ; preds = %bb13
  %_91 = load i64, ptr %22, align 8, !noundef !6
  %_94 = icmp ugt i64 %_91, 1
  br i1 %_94, label %bb31, label %panic14.invoke

bb31:                                             ; preds = %bb30
  %_92 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_33 = getelementptr inbounds nuw i8, ptr %_92, i64 4
  store i32 %iter.sroa.0.098, ptr %_33, align 4
  br label %bb17

bb28:                                             ; preds = %bb11
  %_31 = zext nneg i32 %iter1.sroa.0.096 to i64
  %_79 = load i64, ptr %22, align 8, !noundef !6
  %_82 = icmp ugt i64 %_79, %_31
  br i1 %_82, label %bb29, label %panic14.invoke

bb29:                                             ; preds = %bb28
  %_80 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_28 = getelementptr inbounds nuw i32, ptr %_80, i64 %_31
  store i32 0, ptr %_28, align 4
  br label %bb17

bb17:                                             ; preds = %bb29, %bb31, %bb37, %bb27
  %_0.i.not.i28 = icmp sgt i32 %spec.select56, %n
  %or.cond59 = select i1 %_0.i3.i30, i1 true, i1 %_0.i.not.i28
  br i1 %or.cond59, label %bb1.loopexit, label %bb2.i29

bb26:                                             ; preds = %bb9
  %_26 = zext nneg i32 %iter1.sroa.0.096 to i64
  %_67 = load i64, ptr %22, align 8, !noundef !6
  %_70 = icmp ugt i64 %_67, %_26
  br i1 %_70, label %bb27, label %panic14.invoke

bb27:                                             ; preds = %bb26
  %_68 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_23 = getelementptr inbounds nuw i32, ptr %_68, i64 %_26
  store i32 0, ptr %_23, align 4
  br label %bb17

panic14.invoke:                                   ; preds = %bb26, %bb9, %bb28, %bb11, %bb30, %bb13, %bb36, %bb35, %bb34, %bb33, %bb32, %bb14, %bb24, %bb4
  %34 = phi i64 [ %_8, %bb4 ], [ %_6, %bb24 ], [ %_40, %bb14 ], [ %_42, %bb32 ], [ %_4618, %bb33 ], [ %_48, %bb34 ], [ %_47, %bb35 ], [ %_42, %bb36 ], [ %_47, %bb13 ], [ 1, %bb30 ], [ %_47, %bb11 ], [ %_31, %bb28 ], [ %_47, %bb9 ], [ %_26, %bb26 ]
  %35 = phi i64 [ %_55, %bb4 ], [ %_128, %bb24 ], [ %_96, %bb14 ], [ %_101, %bb32 ], [ %_96, %bb33 ], [ %_111, %bb34 ], [ %_96, %bb35 ], [ %_123, %bb36 ], [ %_96, %bb13 ], [ %_91, %bb30 ], [ %_96, %bb11 ], [ %_79, %bb28 ], [ %_96, %bb9 ], [ %_67, %bb26 ]
  %36 = phi ptr [ @alloc_7b3dc8c7cbed41539a53215b466f6f89, %bb4 ], [ @alloc_14bb23932abe00454aca023fa32eec71, %bb24 ], [ @alloc_d20fb4b1ec43765d1be7684a3fba005f, %bb14 ], [ @alloc_8318b8cd712e533b1009a655213d23fb, %bb32 ], [ @alloc_1d0b44fbc8c01b438d9d3ac609c046e3, %bb33 ], [ @alloc_2a35df45f4f234eef6d576261bcec3fa, %bb34 ], [ @alloc_652d7e4d7743d2dae70d9527f0185117, %bb35 ], [ @alloc_33acd2931b9c1f72fbd5f1529cc068dc, %bb36 ], [ @alloc_43c0e1a3495702abf684ddc167d18716, %bb13 ], [ @alloc_8813c1351c328e5ae912630fa17404a1, %bb30 ], [ @alloc_a03588279d6a7429cf539a1de7a9854d, %bb11 ], [ @alloc_82e650ec0002bcc2e6a846d5aeef5123, %bb28 ], [ @alloc_bb2ef5058e0819405655d47be8cb4783, %bb9 ], [ @alloc_4b4cbbe990b6b60e4f6e251c18603fa3, %bb26 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %34, i64 noundef %35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %36) #21
          to label %panic14.cont unwind label %cleanup

panic14.cont:                                     ; preds = %panic14.invoke
  unreachable
}
