define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit"

bb14.i:                                           ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit": ; preds = %start
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_4, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_4, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit"
  %_8.i.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i.i, label %bb2.i.i.i3.i.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %2 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h14a1ef239d91c979E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
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
  br i1 %_2425.i.i.not, label %bb17.i.i, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb2.i.i.i3.i.i.i:                                 ; preds = %bb17.i.i.i
  store i64 0, ptr %v.i, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %8, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %9, align 8, !alias.scope !1084, !noalias !1098
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit"

bb17.i.i:                                         ; preds = %bb3.i3.i, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i ]
  store i64 10, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 10, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_4, ptr %5, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit"

bb3.i3.i:                                         ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %6, ptr noundef nonnull readonly align 4 dereferenceable(40) %0, i64 40, i1 false), !noalias !1118
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 10, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %6, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 10, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb17.i.i, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1084, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %17, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit": ; preds = %bb2.i.i.i3.i.i.i, %bb17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_6 = icmp eq i32 %n, 1
  br i1 %_6, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit.bb22_crit_edge", label %bb3.preheader

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit.bb22_crit_edge": ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_5.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1143
  %.phi.trans.insert290 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %len.i.i.pre = load i64, ptr %.phi.trans.insert290, align 8, !alias.scope !1143
  br label %bb22

bb3.preheader:                                    ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit"
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_71 = load i64, ptr %13, align 8, !noundef !6
  %_74 = icmp ugt i64 %_71, 1
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_72 = load ptr, ptr %14, align 8, !nonnull !6
  %15 = getelementptr inbounds nuw i8, ptr %_72, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %_72, i64 32
  br i1 %_74, label %bb2.i, label %panic22.invoke

bb7.preheader:                                    ; preds = %bb30
  %_0.i.not.i39178 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i39178, label %bb19.preheader, label %bb2.i40

bb2.i:                                            ; preds = %bb3.preheader, %bb30
  %iter.sroa.0.0176 = phi i64 [ %spec.select113, %bb30 ], [ 0, %bb3.preheader ]
  %_77 = load i64, ptr %15, align 8, !noundef !6
  %_80 = icmp ult i64 %iter.sroa.0.0176, %_77
  br i1 %_80, label %bb30, label %panic22.invoke

cleanup:                                          ; preds = %panic22.invoke
  %17 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb19.preheader:                                   ; preds = %bb18.thread, %bb7.preheader
  %_161 = icmp ugt i64 %_71, %_5
  %_67 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_72, i64 %_5
  %18 = getelementptr inbounds nuw i8, ptr %_67, i64 8
  br i1 %_161, label %bb19.preheader.split, label %panic22.invoke

bb19.preheader.split:                             ; preds = %bb19.preheader
  %19 = getelementptr inbounds nuw i8, ptr %_67, i64 16
  %_163 = load i64, ptr %19, align 8, !noundef !6
  br label %bb2.i52

bb2.i40:                                          ; preds = %bb7.preheader, %bb18.thread
  %iter1.sroa.0.0179 = phi i32 [ %spec.select114, %bb18.thread ], [ 2, %bb7.preheader ]
  %_0.i3.i41 = icmp sge i32 %iter1.sroa.0.0179, %n
  %not._0.i3.i41 = xor i1 %_0.i3.i41, true
  %20 = zext i1 %not._0.i3.i41 to i32
  %spec.select114 = add nuw nsw i32 %iter1.sroa.0.0179, %20
  %_50 = add nsw i32 %iter1.sroa.0.0179, -1
  %_49 = sext i32 %_50 to i64
  %_129 = icmp ugt i64 %_71, %_49
  %_48 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_72, i64 %_49
  %21 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %_48, i64 16
  %_58 = zext nneg i32 %iter1.sroa.0.0179 to i64
  %_150 = icmp ugt i64 %_71, %_58
  %_57 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_72, i64 %_58
  %23 = getelementptr inbounds nuw i8, ptr %_57, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %_57, i64 8
  br i1 %_129, label %bb33, label %panic22.invoke

bb2.i52:                                          ; preds = %bb19.preheader.split, %bb49
  %sum.sroa.0.0181 = phi i32 [ 0, %bb19.preheader.split ], [ %30, %bb49 ]
  %iter3.sroa.0.0180 = phi i32 [ 1, %bb19.preheader.split ], [ %spec.select116, %bb49 ]
  %_68 = sext i32 %iter3.sroa.0.0180 to i64
  %_166 = icmp ugt i64 %_163, %_68
  br i1 %_166, label %bb49, label %panic22.invoke

bb22:                                             ; preds = %bb49, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit.bb22_crit_edge"
  %len.i.i = phi i64 [ %len.i.i.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit.bb22_crit_edge" ], [ %_71, %bb49 ]
  %_5.i.i = phi ptr [ %_5.i.i.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit.bb22_crit_edge" ], [ %_72, %bb49 ]
  %sum.sroa.0.1 = phi i32 [ 10, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h5179f1eb8dac3ea2E.exit.bb22_crit_edge" ], [ %30, %bb49 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i59, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb22, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %25, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i" ], [ 0, %bb22 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %25 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1165, !noalias !1168, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %26 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %27 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %27, align 8, !alias.scope !1165, !noalias !1168, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %26, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1170
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %25, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i59, label %bb5.i.i.i

bb4.i59:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h5780db3058cb1fe2E.exit.i.i.i", %bb22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1180, !noalias !1183, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i59
  %28 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %28, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1185
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4cbd73c1c37ce775E.exit": ; preds = %bb4.i59, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %sum.sroa.0.1

bb49:                                             ; preds = %bb2.i52
  %_0.i3.i53 = icmp eq i32 %iter3.sroa.0.0180, 9
  %29 = add nsw i32 %iter3.sroa.0.0180, 1
  %spec.select116 = select i1 %_0.i3.i53, i32 9, i32 %29
  %_164 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_66 = getelementptr inbounds nuw i32, ptr %_164, i64 %_68
  %_65 = load i32, ptr %_66, align 4, !noundef !6
  %30 = add i32 %_65, %sum.sroa.0.0181
  %_0.i.not.i51 = icmp sgt i32 %spec.select116, 9
  %or.cond119 = select i1 %_0.i3.i53, i1 true, i1 %_0.i.not.i51
  br i1 %or.cond119, label %bb22, label %bb2.i52

bb37:                                             ; preds = %bb46.8
  %_109 = load i64, ptr %22, align 8, !noundef !6
  %_112 = icmp ugt i64 %_109, 8
  br i1 %_112, label %bb38, label %panic22.invoke

bb38:                                             ; preds = %bb37
  %_110 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i8, ptr %_110, i64 32
  %_37 = load i32, ptr %_38, align 4, !noundef !6
  br i1 %_150, label %bb39, label %panic22.invoke

bb39:                                             ; preds = %bb38
  %_121 = load i64, ptr %23, align 8, !noundef !6
  %_124 = icmp ugt i64 %_121, 9
  br i1 %_124, label %bb18.thread, label %panic22.invoke

bb18.thread:                                      ; preds = %bb39
  %_122 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_43 = getelementptr inbounds nuw i8, ptr %_122, i64 36
  store i32 %_37, ptr %_43, align 4
  %_0.i.not.i39 = icmp sgt i32 %spec.select114, %n
  %or.cond118 = select i1 %_0.i3.i41, i1 true, i1 %_0.i.not.i39
  br i1 %or.cond118, label %bb19.preheader, label %bb2.i40

bb41.1:                                           ; preds = %bb36
  %_132.1 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_131.1 = load i64, ptr %22, align 8, !noundef !6
  %_134.1.not = icmp eq i64 %_131.1, 0
  br i1 %_134.1.not, label %panic22.invoke, label %bb42.1

bb42.1:                                           ; preds = %bb41.1
  %_46.1 = load i32, ptr %_132.1, align 4, !noundef !6
  %_144.1 = icmp ugt i64 %_131.1, 2
  br i1 %_144.1, label %bb44.1, label %panic22.invoke

bb44.1:                                           ; preds = %bb42.1
  %_53.1 = getelementptr inbounds nuw i8, ptr %_132.1, i64 8
  %_52.1 = load i32, ptr %_53.1, align 4, !noundef !6
  br i1 %_150, label %bb45.1, label %panic22.invoke

bb45.1:                                           ; preds = %bb44.1
  %_153.1 = load i64, ptr %23, align 8, !noundef !6
  %_156.1 = icmp ugt i64 %_153.1, 1
  br i1 %_156.1, label %bb46.1, label %panic22.invoke

bb46.1:                                           ; preds = %bb45.1
  %_154.1 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_56.1 = getelementptr inbounds nuw i8, ptr %_154.1, i64 4
  %31 = add i32 %_52.1, %_46.1
  store i32 %31, ptr %_56.1, align 4
  br i1 %_129, label %bb41.2, label %panic22.invoke

bb41.2:                                           ; preds = %bb46.1
  %_132.2 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_131.2 = load i64, ptr %22, align 8, !noundef !6
  %_134.2 = icmp ugt i64 %_131.2, 1
  br i1 %_134.2, label %bb42.2, label %panic22.invoke

bb42.2:                                           ; preds = %bb41.2
  %_47.2 = getelementptr inbounds nuw i8, ptr %_132.2, i64 4
  %_46.2 = load i32, ptr %_47.2, align 4, !noundef !6
  %_144.2 = icmp ugt i64 %_131.2, 3
  br i1 %_144.2, label %bb44.2, label %panic22.invoke

bb44.2:                                           ; preds = %bb42.2
  %_53.2 = getelementptr inbounds nuw i8, ptr %_132.2, i64 12
  %_52.2 = load i32, ptr %_53.2, align 4, !noundef !6
  br i1 %_150, label %bb45.2, label %panic22.invoke

bb45.2:                                           ; preds = %bb44.2
  %_153.2 = load i64, ptr %23, align 8, !noundef !6
  %_156.2 = icmp ugt i64 %_153.2, 2
  br i1 %_156.2, label %bb46.2, label %panic22.invoke

bb46.2:                                           ; preds = %bb45.2
  %_154.2 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_56.2 = getelementptr inbounds nuw i8, ptr %_154.2, i64 8
  %32 = add i32 %_52.2, %_46.2
  store i32 %32, ptr %_56.2, align 4
  br i1 %_129, label %bb41.3, label %panic22.invoke

bb41.3:                                           ; preds = %bb46.2
  %_132.3 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_131.3 = load i64, ptr %22, align 8, !noundef !6
  %_134.3 = icmp ugt i64 %_131.3, 2
  br i1 %_134.3, label %bb42.3, label %panic22.invoke

bb42.3:                                           ; preds = %bb41.3
  %_47.3 = getelementptr inbounds nuw i8, ptr %_132.3, i64 8
  %_46.3 = load i32, ptr %_47.3, align 4, !noundef !6
  %_144.3 = icmp ugt i64 %_131.3, 4
  br i1 %_144.3, label %bb44.3, label %panic22.invoke

bb44.3:                                           ; preds = %bb42.3
  %_53.3 = getelementptr inbounds nuw i8, ptr %_132.3, i64 16
  %_52.3 = load i32, ptr %_53.3, align 4, !noundef !6
  br i1 %_150, label %bb45.3, label %panic22.invoke

bb45.3:                                           ; preds = %bb44.3
  %_153.3 = load i64, ptr %23, align 8, !noundef !6
  %_156.3 = icmp ugt i64 %_153.3, 3
  br i1 %_156.3, label %bb46.3, label %panic22.invoke

bb46.3:                                           ; preds = %bb45.3
  %_154.3 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_56.3 = getelementptr inbounds nuw i8, ptr %_154.3, i64 12
  %33 = add i32 %_52.3, %_46.3
  store i32 %33, ptr %_56.3, align 4
  br i1 %_129, label %bb41.4, label %panic22.invoke

bb41.4:                                           ; preds = %bb46.3
  %_132.4 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_131.4 = load i64, ptr %22, align 8, !noundef !6
  %_134.4 = icmp ugt i64 %_131.4, 3
  br i1 %_134.4, label %bb42.4, label %panic22.invoke

bb42.4:                                           ; preds = %bb41.4
  %_47.4 = getelementptr inbounds nuw i8, ptr %_132.4, i64 12
  %_46.4 = load i32, ptr %_47.4, align 4, !noundef !6
  %_144.4 = icmp ugt i64 %_131.4, 5
  br i1 %_144.4, label %bb44.4, label %panic22.invoke

bb44.4:                                           ; preds = %bb42.4
  %_53.4 = getelementptr inbounds nuw i8, ptr %_132.4, i64 20
  %_52.4 = load i32, ptr %_53.4, align 4, !noundef !6
  br i1 %_150, label %bb45.4, label %panic22.invoke

bb45.4:                                           ; preds = %bb44.4
  %_153.4 = load i64, ptr %23, align 8, !noundef !6
  %_156.4 = icmp ugt i64 %_153.4, 4
  br i1 %_156.4, label %bb46.4, label %panic22.invoke

bb46.4:                                           ; preds = %bb45.4
  %_154.4 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_56.4 = getelementptr inbounds nuw i8, ptr %_154.4, i64 16
  %34 = add i32 %_52.4, %_46.4
  store i32 %34, ptr %_56.4, align 4
  br i1 %_129, label %bb41.5, label %panic22.invoke

bb41.5:                                           ; preds = %bb46.4
  %_132.5 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_131.5 = load i64, ptr %22, align 8, !noundef !6
  %_134.5 = icmp ugt i64 %_131.5, 4
  br i1 %_134.5, label %bb42.5, label %panic22.invoke

bb42.5:                                           ; preds = %bb41.5
  %_47.5 = getelementptr inbounds nuw i8, ptr %_132.5, i64 16
  %_46.5 = load i32, ptr %_47.5, align 4, !noundef !6
  %_144.5 = icmp ugt i64 %_131.5, 6
  br i1 %_144.5, label %bb44.5, label %panic22.invoke

bb44.5:                                           ; preds = %bb42.5
  %_53.5 = getelementptr inbounds nuw i8, ptr %_132.5, i64 24
  %_52.5 = load i32, ptr %_53.5, align 4, !noundef !6
  br i1 %_150, label %bb45.5, label %panic22.invoke

bb45.5:                                           ; preds = %bb44.5
  %_153.5 = load i64, ptr %23, align 8, !noundef !6
  %_156.5 = icmp ugt i64 %_153.5, 5
  br i1 %_156.5, label %bb46.5, label %panic22.invoke

bb46.5:                                           ; preds = %bb45.5
  %_154.5 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_56.5 = getelementptr inbounds nuw i8, ptr %_154.5, i64 20
  %35 = add i32 %_52.5, %_46.5
  store i32 %35, ptr %_56.5, align 4
  br i1 %_129, label %bb41.6, label %panic22.invoke

bb41.6:                                           ; preds = %bb46.5
  %_132.6 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_131.6 = load i64, ptr %22, align 8, !noundef !6
  %_134.6 = icmp ugt i64 %_131.6, 5
  br i1 %_134.6, label %bb42.6, label %panic22.invoke

bb42.6:                                           ; preds = %bb41.6
  %_47.6 = getelementptr inbounds nuw i8, ptr %_132.6, i64 20
  %_46.6 = load i32, ptr %_47.6, align 4, !noundef !6
  %_144.6 = icmp ugt i64 %_131.6, 7
  br i1 %_144.6, label %bb44.6, label %panic22.invoke

bb44.6:                                           ; preds = %bb42.6
  %_53.6 = getelementptr inbounds nuw i8, ptr %_132.6, i64 28
  %_52.6 = load i32, ptr %_53.6, align 4, !noundef !6
  br i1 %_150, label %bb45.6, label %panic22.invoke

bb45.6:                                           ; preds = %bb44.6
  %_153.6 = load i64, ptr %23, align 8, !noundef !6
  %_156.6 = icmp ugt i64 %_153.6, 6
  br i1 %_156.6, label %bb46.6, label %panic22.invoke

bb46.6:                                           ; preds = %bb45.6
  %_154.6 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_56.6 = getelementptr inbounds nuw i8, ptr %_154.6, i64 24
  %36 = add i32 %_52.6, %_46.6
  store i32 %36, ptr %_56.6, align 4
  br i1 %_129, label %bb41.7, label %panic22.invoke

bb41.7:                                           ; preds = %bb46.6
  %_132.7 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_131.7 = load i64, ptr %22, align 8, !noundef !6
  %_134.7 = icmp ugt i64 %_131.7, 6
  br i1 %_134.7, label %bb42.7, label %panic22.invoke

bb42.7:                                           ; preds = %bb41.7
  %_47.7 = getelementptr inbounds nuw i8, ptr %_132.7, i64 24
  %_46.7 = load i32, ptr %_47.7, align 4, !noundef !6
  %_144.7 = icmp ugt i64 %_131.7, 8
  br i1 %_144.7, label %bb44.7, label %panic22.invoke

bb44.7:                                           ; preds = %bb42.7
  %_53.7 = getelementptr inbounds nuw i8, ptr %_132.7, i64 32
  %_52.7 = load i32, ptr %_53.7, align 4, !noundef !6
  br i1 %_150, label %bb45.7, label %panic22.invoke

bb45.7:                                           ; preds = %bb44.7
  %_153.7 = load i64, ptr %23, align 8, !noundef !6
  %_156.7 = icmp ugt i64 %_153.7, 7
  br i1 %_156.7, label %bb46.7, label %panic22.invoke

bb46.7:                                           ; preds = %bb45.7
  %_154.7 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_56.7 = getelementptr inbounds nuw i8, ptr %_154.7, i64 28
  %37 = add i32 %_52.7, %_46.7
  store i32 %37, ptr %_56.7, align 4
  br i1 %_129, label %bb41.8, label %panic22.invoke

bb41.8:                                           ; preds = %bb46.7
  %_132.8 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_131.8 = load i64, ptr %22, align 8, !noundef !6
  %_134.8 = icmp ugt i64 %_131.8, 7
  br i1 %_134.8, label %bb42.8, label %panic22.invoke

bb42.8:                                           ; preds = %bb41.8
  %_47.8 = getelementptr inbounds nuw i8, ptr %_132.8, i64 28
  %_46.8 = load i32, ptr %_47.8, align 4, !noundef !6
  %_144.8 = icmp ugt i64 %_131.8, 9
  br i1 %_144.8, label %bb44.8, label %panic22.invoke

bb44.8:                                           ; preds = %bb42.8
  %_53.8 = getelementptr inbounds nuw i8, ptr %_132.8, i64 36
  %_52.8 = load i32, ptr %_53.8, align 4, !noundef !6
  br i1 %_150, label %bb45.8, label %panic22.invoke

bb45.8:                                           ; preds = %bb44.8
  %_153.8 = load i64, ptr %23, align 8, !noundef !6
  %_156.8 = icmp ugt i64 %_153.8, 8
  br i1 %_156.8, label %bb46.8, label %panic22.invoke

bb46.8:                                           ; preds = %bb45.8
  %_154.8 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_56.8 = getelementptr inbounds nuw i8, ptr %_154.8, i64 32
  %38 = add i32 %_52.8, %_46.8
  store i32 %38, ptr %_56.8, align 4
  br i1 %_129, label %bb37, label %panic22.invoke

bb33:                                             ; preds = %bb2.i40
  %_87 = load i64, ptr %22, align 8, !noundef !6
  %_90 = icmp ugt i64 %_87, 1
  br i1 %_90, label %bb34, label %panic22.invoke

bb34:                                             ; preds = %bb33
  %_88 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_28 = getelementptr inbounds nuw i8, ptr %_88, i64 4
  %_27 = load i32, ptr %_28, align 4, !noundef !6
  br i1 %_150, label %bb35, label %panic22.invoke

bb35:                                             ; preds = %bb34
  %_99 = load i64, ptr %23, align 8, !noundef !6
  %_102.not = icmp eq i64 %_99, 0
  br i1 %_102.not, label %panic22.invoke, label %bb36

bb36:                                             ; preds = %bb35
  %_100 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  store i32 %_27, ptr %_100, align 4
  br i1 %_129, label %bb41.1, label %panic22.invoke

bb30:                                             ; preds = %bb2.i
  %_0.i3.i = icmp eq i64 %iter.sroa.0.0176, 9
  %_0.i4.i = add nuw nsw i64 %iter.sroa.0.0176, 1
  %spec.select113 = select i1 %_0.i3.i, i64 9, i64 %_0.i4.i
  %_78 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_13 = getelementptr inbounds nuw i32, ptr %_78, i64 %iter.sroa.0.0176
  store i32 1, ptr %_13, align 4
  %_0.i.not.i = icmp ugt i64 %spec.select113, 9
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb7.preheader, label %bb2.i

panic22.invoke:                                   ; preds = %bb2.i, %bb39, %bb38, %bb37, %bb46.8, %bb35, %bb34, %bb33, %bb2.i40, %bb36, %bb41.1, %bb42.1, %bb44.1, %bb45.1, %bb46.1, %bb41.2, %bb42.2, %bb44.2, %bb45.2, %bb46.2, %bb41.3, %bb42.3, %bb44.3, %bb45.3, %bb46.3, %bb41.4, %bb42.4, %bb44.4, %bb45.4, %bb46.4, %bb41.5, %bb42.5, %bb44.5, %bb45.5, %bb46.5, %bb41.6, %bb42.6, %bb44.6, %bb45.6, %bb46.6, %bb41.7, %bb42.7, %bb44.7, %bb45.7, %bb46.7, %bb41.8, %bb42.8, %bb44.8, %bb45.8, %bb2.i52, %bb3.preheader, %bb19.preheader
  %39 = phi i64 [ %_5, %bb19.preheader ], [ 1, %bb3.preheader ], [ %_68, %bb2.i52 ], [ %_49, %bb2.i40 ], [ 1, %bb33 ], [ %_58, %bb34 ], [ 0, %bb35 ], [ %_49, %bb36 ], [ 0, %bb41.1 ], [ 2, %bb42.1 ], [ %_58, %bb44.1 ], [ 1, %bb45.1 ], [ %_49, %bb46.1 ], [ 1, %bb41.2 ], [ 3, %bb42.2 ], [ %_58, %bb44.2 ], [ 2, %bb45.2 ], [ %_49, %bb46.2 ], [ 2, %bb41.3 ], [ 4, %bb42.3 ], [ %_58, %bb44.3 ], [ 3, %bb45.3 ], [ %_49, %bb46.3 ], [ 3, %bb41.4 ], [ 5, %bb42.4 ], [ %_58, %bb44.4 ], [ 4, %bb45.4 ], [ %_49, %bb46.4 ], [ 4, %bb41.5 ], [ 6, %bb42.5 ], [ %_58, %bb44.5 ], [ 5, %bb45.5 ], [ %_49, %bb46.5 ], [ 5, %bb41.6 ], [ 7, %bb42.6 ], [ %_58, %bb44.6 ], [ 6, %bb45.6 ], [ %_49, %bb46.6 ], [ 6, %bb41.7 ], [ 8, %bb42.7 ], [ %_58, %bb44.7 ], [ 7, %bb45.7 ], [ %_49, %bb46.7 ], [ 7, %bb41.8 ], [ 9, %bb42.8 ], [ %_58, %bb44.8 ], [ 8, %bb45.8 ], [ %_49, %bb46.8 ], [ 8, %bb37 ], [ %_58, %bb38 ], [ 9, %bb39 ], [ %iter.sroa.0.0176, %bb2.i ]
  %40 = phi i64 [ %_71, %bb19.preheader ], [ %_71, %bb3.preheader ], [ %_163, %bb2.i52 ], [ %_71, %bb2.i40 ], [ %_87, %bb33 ], [ %_71, %bb34 ], [ 0, %bb35 ], [ %_71, %bb36 ], [ %_131.1, %bb41.1 ], [ %_131.1, %bb42.1 ], [ %_71, %bb44.1 ], [ %_153.1, %bb45.1 ], [ %_71, %bb46.1 ], [ %_131.2, %bb41.2 ], [ %_131.2, %bb42.2 ], [ %_71, %bb44.2 ], [ %_153.2, %bb45.2 ], [ %_71, %bb46.2 ], [ %_131.3, %bb41.3 ], [ %_131.3, %bb42.3 ], [ %_71, %bb44.3 ], [ %_153.3, %bb45.3 ], [ %_71, %bb46.3 ], [ %_131.4, %bb41.4 ], [ %_131.4, %bb42.4 ], [ %_71, %bb44.4 ], [ %_153.4, %bb45.4 ], [ %_71, %bb46.4 ], [ %_131.5, %bb41.5 ], [ %_131.5, %bb42.5 ], [ %_71, %bb44.5 ], [ %_153.5, %bb45.5 ], [ %_71, %bb46.5 ], [ %_131.6, %bb41.6 ], [ %_131.6, %bb42.6 ], [ %_71, %bb44.6 ], [ %_153.6, %bb45.6 ], [ %_71, %bb46.6 ], [ %_131.7, %bb41.7 ], [ %_131.7, %bb42.7 ], [ %_71, %bb44.7 ], [ %_153.7, %bb45.7 ], [ %_71, %bb46.7 ], [ %_131.8, %bb41.8 ], [ %_131.8, %bb42.8 ], [ %_71, %bb44.8 ], [ %_153.8, %bb45.8 ], [ %_71, %bb46.8 ], [ %_109, %bb37 ], [ %_71, %bb38 ], [ %_121, %bb39 ], [ %_77, %bb2.i ]
  %41 = phi ptr [ @alloc_f03cd92664b51039c91525c5e8959c65, %bb19.preheader ], [ @alloc_5c433a824e669530951056dd03df0465, %bb3.preheader ], [ @alloc_530490e34fb011f13f1f5621b51b3418, %bb2.i52 ], [ @alloc_18df04020dbb408023baa4fb892d4c53, %bb2.i40 ], [ @alloc_94f09ad24bf1baf03b88bc4564ae5f8e, %bb33 ], [ @alloc_2a4ef6b7d0558cc6888f2353d0a84baa, %bb34 ], [ @alloc_6df30d5534b44e6b3854ca9c3571d54c, %bb35 ], [ @alloc_978362d8fdb792f8a12099dfaffc5535, %bb36 ], [ @alloc_28505c3e8d77fe1aadbe796a11f8ad15, %bb41.1 ], [ @alloc_944b70bce7d04b6b57067b1abf700b9b, %bb42.1 ], [ @alloc_fa8da6a593dbb980a949b51185dda8b7, %bb44.1 ], [ @alloc_63d4895e64764a7f83e88ff06b77ab8b, %bb45.1 ], [ @alloc_978362d8fdb792f8a12099dfaffc5535, %bb46.1 ], [ @alloc_28505c3e8d77fe1aadbe796a11f8ad15, %bb41.2 ], [ @alloc_944b70bce7d04b6b57067b1abf700b9b, %bb42.2 ], [ @alloc_fa8da6a593dbb980a949b51185dda8b7, %bb44.2 ], [ @alloc_63d4895e64764a7f83e88ff06b77ab8b, %bb45.2 ], [ @alloc_978362d8fdb792f8a12099dfaffc5535, %bb46.2 ], [ @alloc_28505c3e8d77fe1aadbe796a11f8ad15, %bb41.3 ], [ @alloc_944b70bce7d04b6b57067b1abf700b9b, %bb42.3 ], [ @alloc_fa8da6a593dbb980a949b51185dda8b7, %bb44.3 ], [ @alloc_63d4895e64764a7f83e88ff06b77ab8b, %bb45.3 ], [ @alloc_978362d8fdb792f8a12099dfaffc5535, %bb46.3 ], [ @alloc_28505c3e8d77fe1aadbe796a11f8ad15, %bb41.4 ], [ @alloc_944b70bce7d04b6b57067b1abf700b9b, %bb42.4 ], [ @alloc_fa8da6a593dbb980a949b51185dda8b7, %bb44.4 ], [ @alloc_63d4895e64764a7f83e88ff06b77ab8b, %bb45.4 ], [ @alloc_978362d8fdb792f8a12099dfaffc5535, %bb46.4 ], [ @alloc_28505c3e8d77fe1aadbe796a11f8ad15, %bb41.5 ], [ @alloc_944b70bce7d04b6b57067b1abf700b9b, %bb42.5 ], [ @alloc_fa8da6a593dbb980a949b51185dda8b7, %bb44.5 ], [ @alloc_63d4895e64764a7f83e88ff06b77ab8b, %bb45.5 ], [ @alloc_978362d8fdb792f8a12099dfaffc5535, %bb46.5 ], [ @alloc_28505c3e8d77fe1aadbe796a11f8ad15, %bb41.6 ], [ @alloc_944b70bce7d04b6b57067b1abf700b9b, %bb42.6 ], [ @alloc_fa8da6a593dbb980a949b51185dda8b7, %bb44.6 ], [ @alloc_63d4895e64764a7f83e88ff06b77ab8b, %bb45.6 ], [ @alloc_978362d8fdb792f8a12099dfaffc5535, %bb46.6 ], [ @alloc_28505c3e8d77fe1aadbe796a11f8ad15, %bb41.7 ], [ @alloc_944b70bce7d04b6b57067b1abf700b9b, %bb42.7 ], [ @alloc_fa8da6a593dbb980a949b51185dda8b7, %bb44.7 ], [ @alloc_63d4895e64764a7f83e88ff06b77ab8b, %bb45.7 ], [ @alloc_978362d8fdb792f8a12099dfaffc5535, %bb46.7 ], [ @alloc_28505c3e8d77fe1aadbe796a11f8ad15, %bb41.8 ], [ @alloc_944b70bce7d04b6b57067b1abf700b9b, %bb42.8 ], [ @alloc_fa8da6a593dbb980a949b51185dda8b7, %bb44.8 ], [ @alloc_63d4895e64764a7f83e88ff06b77ab8b, %bb45.8 ], [ @alloc_195bc6716cbaa7f5cf11ba50192f2255, %bb46.8 ], [ @alloc_6888d7607a9c5a68b1f07ad43b416d5f, %bb37 ], [ @alloc_50dad301657deaf751678c1435222d49, %bb38 ], [ @alloc_538882bfaf147ec94619242a84db67bc, %bb39 ], [ @alloc_32d3d7b2ec74aa472095090785c9cb93, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %39, i64 noundef %40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %41) #21
          to label %panic22.cont unwind label %cleanup

panic22.cont:                                     ; preds = %panic22.invoke
  unreachable
}
