define noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %str_) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str_, i64 16
  %n = load i64, ptr %0, align 8, !noundef !6
  %_41 = icmp ult i64 %n, 2305843009213693952
  tail call void @llvm.assume(i1 %_41)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_5 = add nuw nsw i64 %n, 1
  %_26.i.i.i = icmp eq i64 %n, 2305843009213693951
  br i1 %_26.i.i.i, label %bb14.i, label %bb3.i3.i, !prof !379

bb3.i3.i:                                         ; preds = %start
  %1 = shl nuw nsw i64 %_5, 2
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6bfce5c0fde8b4eE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
  %_16.sroa.10.0.ph.i = phi i64 [ %1, %bb3.i3.i ], [ undef, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_16.sroa.10.0.ph.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6bfce5c0fde8b4eE.exit": ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul i64 %_5, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %n, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6bfce5c0fde8b4eE.exit"
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6bfce5c0fde8b4eE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf6bfce5c0fde8b4eE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_5, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %4, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ult i64 %n, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %6, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2417.i.i.not = icmp eq i64 %n, 0
  br i1 %_2417.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17head7a041ad9d8719E.exit.bb4_crit_edge", label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i25
  %ptr.sroa.0.020.i.i = phi ptr [ %_15.i.i, %bb3.i3.i25 ], [ %_4.sroa.10.0.i.i, %bb1.i.i ]
  %iter.sroa.0.019.i.i = phi i64 [ %_28.i.i, %bb3.i3.i25 ], [ 1, %bb1.i.i ]
  %storemerge18.i.i = phi i64 [ %10, %bb3.i3.i25 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i25

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %1) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i25:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %8, ptr noundef nonnull readonly align 4 dereferenceable(1) %2, i64 %1, i1 false), !noalias !1098
  %_28.i.i = add nuw nsw i64 %iter.sroa.0.019.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.020.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 8
  store ptr %8, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 24
  %10 = add nuw nsw i64 %storemerge18.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.019.i.i, %n
  br i1 %exitcond.not.i.i, label %bb2.i.lr.ph, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge18.i.i, ptr %7, align 8, !alias.scope !1084, !noalias !1099
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1104
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h2b0c3905f1b2d8bcE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %20, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1113
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17head7a041ad9d8719E.exit.bb4_crit_edge": ; preds = %bb1.i.i
  store i64 %_5, ptr %_4.sroa.10.0.i.i, align 8, !noalias !1122
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i172 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 8
  store ptr %2, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i172, align 8, !noalias !1122
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i173, align 8, !noalias !1122
  store i64 %_5, ptr %7, align 8, !alias.scope !1084, !noalias !1123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_43.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb4

bb2.i.lr.ph:                                      ; preds = %bb3.i3.i25
  store i64 %_5, ptr %_15.i.i, align 8, !noalias !1122
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 32
  store ptr %2, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1122
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 40
  store i64 %_5, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1122
  store i64 %_5, ptr %7, align 8, !alias.scope !1084, !noalias !1123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %13 = getelementptr inbounds nuw i8, ptr %str_, i64 8
  %_49 = load ptr, ptr %13, align 8, !nonnull !6
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_77 = load ptr, ptr %14, align 8, !nonnull !6
  %15 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_76 = load i64, ptr %15, align 8
  br label %bb2.i34.lr.ph

bb1.loopexit:                                     ; preds = %bb12
  %_0.i.not.i = icmp samesign ugt i64 %spec.select, %n
  %or.cond61 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond61, label %bb4, label %bb2.i34.lr.ph

bb2.i34.lr.ph:                                    ; preds = %bb1.loopexit, %bb2.i.lr.ph
  %iter.sroa.0.0121 = phi i64 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp samesign uge i64 %iter.sroa.0.0121, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select = add nuw nsw i64 %iter.sroa.0.0121, %_0.i4.i
  %_20 = add nsw i64 %iter.sroa.0.0121, -1
  %_51 = icmp ult i64 %_20, %n
  %_19 = getelementptr inbounds nuw i32, ptr %_49, i64 %_20
  %_79 = icmp ult i64 %iter.sroa.0.0121, %_76
  %_33 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_77, i64 %iter.sroa.0.0121
  %16 = getelementptr inbounds nuw i8, ptr %_33, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %_89 = icmp ult i64 %_20, %_76
  %_36 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_77, i64 %_20
  %18 = getelementptr inbounds nuw i8, ptr %_36, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_36, i64 8
  br i1 %_51, label %bb2.i34, label %panic14.invoke

cleanup:                                          ; preds = %panic14.invoke
  %20 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h2b0c3905f1b2d8bcE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb4:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17head7a041ad9d8719E.exit.bb4_crit_edge"
  %_43 = phi i64 [ %_43.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17head7a041ad9d8719E.exit.bb4_crit_edge" ], [ %_76, %bb1.loopexit ]
  %_46 = icmp ult i64 %n, %_43
  br i1 %_46, label %bb19, label %panic14.invoke

bb19:                                             ; preds = %bb4
  %21 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_44 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_44, i64 %n
  %22 = getelementptr inbounds nuw i8, ptr %_40, i64 16
  %_108 = load i64, ptr %22, align 8, !noundef !6
  %_111 = icmp ult i64 %n, %_108
  br i1 %_111, label %bb34, label %panic14.invoke

bb34:                                             ; preds = %bb19
  %23 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %_109 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_39 = getelementptr inbounds nuw i32, ptr %_109, i64 %n
  %_0 = load i32, ptr %_39, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb34, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h68161d93792d14b4E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %24, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h68161d93792d14b4E.exit.i.i.i" ], [ 0, %bb34 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_44, i64 %_3.sroa.0.012.i.i.i
  %24 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h68161d93792d14b4E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %25 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %26 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %26, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %25, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1154
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h68161d93792d14b4E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h68161d93792d14b4E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %24, %_43
  br i1 %_7.i.i.i, label %bb4.i27, label %bb5.i.i.i

bb4.i27:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h68161d93792d14b4E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1164, !noalias !1167, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h2b0c3905f1b2d8bcE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i27
  %27 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_44, i64 noundef %27, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1169
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h2b0c3905f1b2d8bcE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h2b0c3905f1b2d8bcE.exit": ; preds = %bb4.i27, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb2.i34:                                          ; preds = %bb2.i34.lr.ph, %bb12
  %iter1.sroa.0.0119 = phi i64 [ %spec.select59, %bb12 ], [ 1, %bb2.i34.lr.ph ]
  %_0.i3.i35 = icmp samesign uge i64 %iter1.sroa.0.0119, %n
  %not._0.i3.i35 = xor i1 %_0.i3.i35, true
  %_0.i4.i40 = zext i1 %not._0.i3.i35 to i64
  %spec.select59 = add nuw nsw i64 %iter1.sroa.0.0119, %_0.i4.i40
  %_23 = add nsw i64 %iter1.sroa.0.0119, -1
  %_52 = icmp ult i64 %_23, %n
  br i1 %_52, label %bb22, label %panic14.invoke

bb22:                                             ; preds = %bb2.i34
  %_18 = load i32, ptr %_19, align 4, !range !1170, !noundef !6
  %_22 = getelementptr inbounds nuw i32, ptr %_49, i64 %_23
  %_21 = load i32, ptr %_22, align 4, !range !1170, !noundef !6
  %_17 = icmp eq i32 %_18, %_21
  %_24 = icmp ne i64 %iter.sroa.0.0121, %iter1.sroa.0.0119
  %or.cond = and i1 %_24, %_17
  br i1 %or.cond, label %bb9, label %bb11

bb11:                                             ; preds = %bb22
  br i1 %_79, label %bb27, label %panic14.invoke

bb9:                                              ; preds = %bb22
  br i1 %_89, label %bb23, label %panic14.invoke

bb27:                                             ; preds = %bb11
  %_81 = load i64, ptr %16, align 8, !noundef !6
  %_84 = icmp ult i64 %_23, %_81
  br i1 %_84, label %bb28, label %panic14.invoke

bb28:                                             ; preds = %bb27
  %_82 = load ptr, ptr %17, align 8, !nonnull !6, !noundef !6
  %_32 = getelementptr inbounds nuw i32, ptr %_82, i64 %_23
  %_31 = load i32, ptr %_32, align 4, !noundef !6
  br i1 %_89, label %bb29, label %panic14.invoke

bb29:                                             ; preds = %bb28
  %_91 = load i64, ptr %18, align 8, !noundef !6
  %_94 = icmp ult i64 %iter1.sroa.0.0119, %_91
  br i1 %_94, label %bb32, label %panic14.invoke

bb32:                                             ; preds = %bb29
  %_106 = icmp ult i64 %iter1.sroa.0.0119, %_81
  br i1 %_106, label %bb33, label %panic14.invoke

bb33:                                             ; preds = %bb32
  %_92 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_35 = getelementptr inbounds nuw i32, ptr %_92, i64 %iter1.sroa.0.0119
  %_34 = load i32, ptr %_35, align 4, !noundef !6
  %_0.sroa.0.0.i42 = tail call noundef i32 @llvm.smax.i32(i32 %_34, i32 %_31)
  %_37 = getelementptr inbounds nuw i32, ptr %_82, i64 %iter1.sroa.0.0119
  store i32 %_0.sroa.0.0.i42, ptr %_37, align 4
  br label %bb12

bb12:                                             ; preds = %bb26, %bb33
  %_0.i.not.i33 = icmp samesign ugt i64 %spec.select59, %n
  %or.cond62 = select i1 %_0.i3.i35, i1 true, i1 %_0.i.not.i33
  br i1 %or.cond62, label %bb1.loopexit, label %bb2.i34

bb23:                                             ; preds = %bb9
  %_59 = load i64, ptr %18, align 8, !noundef !6
  %_62 = icmp ult i64 %_23, %_59
  br i1 %_62, label %bb24, label %panic14.invoke

bb24:                                             ; preds = %bb23
  %_60 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_26 = getelementptr inbounds nuw i32, ptr %_60, i64 %_23
  %_25 = load i32, ptr %_26, align 4, !noundef !6
  br i1 %_79, label %bb25, label %panic14.invoke

bb25:                                             ; preds = %bb24
  %_71 = load i64, ptr %16, align 8, !noundef !6
  %_74 = icmp ult i64 %iter1.sroa.0.0119, %_71
  br i1 %_74, label %bb26, label %panic14.invoke

bb26:                                             ; preds = %bb25
  %_72 = load ptr, ptr %17, align 8, !nonnull !6, !noundef !6
  %_28 = getelementptr inbounds nuw i32, ptr %_72, i64 %iter1.sroa.0.0119
  %28 = add i32 %_25, 1
  store i32 %28, ptr %_28, align 4
  br label %bb12

panic14.invoke:                                   ; preds = %bb2.i34.lr.ph, %bb25, %bb24, %bb23, %bb9, %bb32, %bb29, %bb28, %bb27, %bb11, %bb2.i34, %bb19, %bb4
  %29 = phi i64 [ %n, %bb4 ], [ %n, %bb19 ], [ %_23, %bb2.i34 ], [ %iter.sroa.0.0121, %bb11 ], [ %_23, %bb27 ], [ %_20, %bb28 ], [ %iter1.sroa.0.0119, %bb29 ], [ %iter1.sroa.0.0119, %bb32 ], [ %_20, %bb9 ], [ %_23, %bb23 ], [ %iter.sroa.0.0121, %bb24 ], [ %iter1.sroa.0.0119, %bb25 ], [ %_20, %bb2.i34.lr.ph ]
  %30 = phi i64 [ %_43, %bb4 ], [ %_108, %bb19 ], [ %n, %bb2.i34 ], [ %_76, %bb11 ], [ %_81, %bb27 ], [ %_76, %bb28 ], [ %_91, %bb29 ], [ %_81, %bb32 ], [ %_76, %bb9 ], [ %_59, %bb23 ], [ %_76, %bb24 ], [ %_71, %bb25 ], [ %n, %bb2.i34.lr.ph ]
  %31 = phi ptr [ @alloc_f426a59bb7f8f9c896477d472baff903, %bb4 ], [ @alloc_6410eee7a61c89a4fa45b76fb723e406, %bb19 ], [ @alloc_b24eb0e109121b25dba07de1a3843243, %bb2.i34 ], [ @alloc_f1bb4435a088bf22965930d8d8be2064, %bb11 ], [ @alloc_b2d8c27fc274c365358d91e50427072a, %bb27 ], [ @alloc_08e94209e5c1486fb73dc49530f20bb4, %bb28 ], [ @alloc_986d3f6f04e557837cb5d5f6bb6acaae, %bb29 ], [ @alloc_75fdf6047d62b91f80715c461428f7e9, %bb32 ], [ @alloc_e0eb47dc8532753bf29df75f75cdbdb9, %bb9 ], [ @alloc_3ddc9a7ebfb409884fef3dff631aef52, %bb23 ], [ @alloc_75aa23282e3ad9f967642267f12f8ead, %bb24 ], [ @alloc_b4ba81760fc4aa8ea26640062df2043e, %bb25 ], [ @alloc_5becf3499fb476d07427170f71d2b8ac, %bb2.i34.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %29, i64 noundef %30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %31) #21
          to label %panic14.cont unwind label %cleanup

panic14.cont:                                     ; preds = %panic14.invoke
  unreachable
}
