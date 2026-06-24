define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %bell = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bell)
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
  br i1 %_2425.i.i.not, label %bb17.i.i17, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i18
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i18 ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i18 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i18 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i18

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
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha876dfaee6cf8889E.exit"

bb17.i.i17:                                       ; preds = %bb3.i3.i18, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i18 ]
  store i64 %_4, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1106
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1106
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_4, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1106
  store i64 %_4, ptr %5, align 8, !alias.scope !1084, !noalias !1107
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha876dfaee6cf8889E.exit"

bb3.i3.i18:                                       ; preds = %bb3.i.i.i.i.i.i
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
  br i1 %exitcond.not.i.i, label %bb17.i.i17, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1084, !noalias !1113
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1118
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4fdc3782cff1728bE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
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

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha876dfaee6cf8889E.exit": ; preds = %bb6.i.i, %bb17.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %bell, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %13 = getelementptr inbounds nuw i8, ptr %bell, i64 16
  %_43 = load i64, ptr %13, align 8, !noundef !6
  %_46.not = icmp eq i64 %_43, 0
  br i1 %_46.not, label %panic14.invoke, label %bb13

bb13:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha876dfaee6cf8889E.exit"
  %14 = getelementptr inbounds nuw i8, ptr %bell, i64 8
  %_44 = load ptr, ptr %14, align 8, !nonnull !6, !noundef !6
  %15 = getelementptr inbounds nuw i8, ptr %_44, i64 16
  %_49 = load i64, ptr %15, align 8, !noundef !6
  %_52.not = icmp eq i64 %_49, 0
  br i1 %_52.not, label %panic14.invoke, label %bb14

cleanup:                                          ; preds = %panic14.invoke
  %16 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4fdc3782cff1728bE"(ptr noalias noundef align 8 dereferenceable(24) %bell) #23
  br label %common.resume

bb14:                                             ; preds = %bb13
  %17 = getelementptr inbounds nuw i8, ptr %_44, i64 8
  %_50 = load ptr, ptr %17, align 8, !nonnull !6, !noundef !6
  store i32 1, ptr %_50, align 4
  %_0.i.not.i82 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i82, label %bb4, label %bb2.i

bb1.loopexit:                                     ; preds = %bb27
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb14, %bb1.loopexit
  %iter.sroa.0.083 = phi i32 [ %spec.select, %bb1.loopexit ], [ 1, %bb14 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.083, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %18 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.083, %18
  %_18 = add nsw i32 %iter.sroa.0.083, -1
  %_17 = sext i32 %_18 to i64
  %_57 = icmp ugt i64 %_43, %_17
  br i1 %_57, label %bb16, label %panic14.invoke

bb4:                                              ; preds = %bb1.loopexit, %bb14
  %_62 = icmp ugt i64 %_43, %_5
  br i1 %_62, label %bb17, label %panic14.invoke

bb17:                                             ; preds = %bb4
  %_40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_44, i64 %_5
  %19 = getelementptr inbounds nuw i8, ptr %_40, i64 16
  %_113 = load i64, ptr %19, align 8, !noundef !6
  %_116.not = icmp eq i64 %_113, 0
  br i1 %_116.not, label %panic14.invoke, label %bb28

bb28:                                             ; preds = %bb17
  %20 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %_114 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_0 = load i32, ptr %_114, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7635b7d6bbd3936cE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %21, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7635b7d6bbd3936cE.exit.i.i.i" ], [ 0, %bb28 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_44, i64 %_3.sroa.0.012.i.i.i
  %21 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1155, !noalias !1158, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7635b7d6bbd3936cE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %22 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %23 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %23, align 8, !alias.scope !1155, !noalias !1158, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %22, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1162
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7635b7d6bbd3936cE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7635b7d6bbd3936cE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %21, %_43
  br i1 %_7.i.i.i, label %bb4.i20, label %bb5.i.i.i

bb4.i20:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h7635b7d6bbd3936cE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %self1.i.i.i.i1.i = load i64, ptr %bell, align 8, !range !22, !alias.scope !1172, !noalias !1175, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4fdc3782cff1728bE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i20
  %24 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_44, i64 noundef %24, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1177
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4fdc3782cff1728bE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h4fdc3782cff1728bE.exit": ; preds = %bb4.i20, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bell)
  ret i32 %_0

bb16:                                             ; preds = %bb2.i
  %_16 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_44, i64 %_17
  %25 = getelementptr inbounds nuw i8, ptr %_16, i64 16
  %_64 = load i64, ptr %25, align 8, !noundef !6
  %_67 = icmp ugt i64 %_64, %_17
  br i1 %_67, label %bb18, label %panic14.invoke

bb18:                                             ; preds = %bb16
  %26 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %_65 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_15 = getelementptr inbounds nuw i32, ptr %_65, i64 %_17
  %_14 = load i32, ptr %_15, align 4, !noundef !6
  %_21 = zext nneg i32 %iter.sroa.0.083 to i64
  %_73 = icmp ugt i64 %_43, %_21
  br i1 %_73, label %bb19, label %panic14.invoke

bb19:                                             ; preds = %bb18
  %_20 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_44, i64 %_21
  %27 = getelementptr inbounds nuw i8, ptr %_20, i64 16
  %_76 = load i64, ptr %27, align 8, !noundef !6
  %_79.not = icmp eq i64 %_76, 0
  br i1 %_79.not, label %panic14.invoke, label %bb2.i27.preheader

bb2.i27.preheader:                                ; preds = %bb19
  %28 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  %_77 = load ptr, ptr %28, align 8, !nonnull !6, !noundef !6
  store i32 %_14, ptr %_77, align 4
  br label %bb2.i27

bb2.i27:                                          ; preds = %bb2.i27.preheader, %bb27
  %iter1.sroa.0.081 = phi i32 [ %spec.select56, %bb27 ], [ 1, %bb2.i27.preheader ]
  %_0.i3.i28 = icmp samesign uge i32 %iter1.sroa.0.081, %iter.sroa.0.083
  %not._0.i3.i28 = xor i1 %_0.i3.i28, true
  %29 = zext i1 %not._0.i3.i28 to i32
  %spec.select56 = add nuw nsw i32 %iter1.sroa.0.081, %29
  %_32 = add nsw i32 %iter1.sroa.0.081, -1
  %_31 = sext i32 %_32 to i64
  %_86 = load i64, ptr %25, align 8, !noundef !6
  %_89 = icmp ugt i64 %_86, %_31
  br i1 %_89, label %bb24, label %panic14.invoke

bb24:                                             ; preds = %bb2.i27
  %_87 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_29 = getelementptr inbounds nuw i32, ptr %_87, i64 %_31
  %_28 = load i32, ptr %_29, align 4, !noundef !6
  %_97 = load ptr, ptr %28, align 8, !nonnull !6, !noundef !6
  %_96 = load i64, ptr %27, align 8, !noundef !6
  %_99 = icmp ugt i64 %_96, %_31
  br i1 %_99, label %bb25, label %panic14.invoke

bb25:                                             ; preds = %bb24
  %_38 = zext nneg i32 %iter1.sroa.0.081 to i64
  %_111 = icmp ugt i64 %_96, %_38
  br i1 %_111, label %bb27, label %panic14.invoke

bb27:                                             ; preds = %bb25
  %_34 = getelementptr inbounds nuw i32, ptr %_97, i64 %_31
  %_33 = load i32, ptr %_34, align 4, !noundef !6
  %_36 = getelementptr inbounds nuw i32, ptr %_97, i64 %_38
  %30 = add i32 %_33, %_28
  store i32 %30, ptr %_36, align 4
  %_0.i.not.i26 = icmp samesign ugt i32 %spec.select56, %iter.sroa.0.083
  %or.cond58 = select i1 %_0.i3.i28, i1 true, i1 %_0.i.not.i26
  br i1 %or.cond58, label %bb1.loopexit, label %bb2.i27

panic14.invoke:                                   ; preds = %bb19, %bb18, %bb16, %bb2.i, %bb25, %bb24, %bb2.i27, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha876dfaee6cf8889E.exit", %bb17, %bb4, %bb13
  %31 = phi i64 [ 0, %bb13 ], [ %_5, %bb4 ], [ 0, %bb17 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha876dfaee6cf8889E.exit" ], [ %_31, %bb2.i27 ], [ %_31, %bb24 ], [ %_38, %bb25 ], [ %_17, %bb2.i ], [ %_17, %bb16 ], [ %_21, %bb18 ], [ 0, %bb19 ]
  %32 = phi i64 [ 0, %bb13 ], [ %_43, %bb4 ], [ 0, %bb17 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha876dfaee6cf8889E.exit" ], [ %_86, %bb2.i27 ], [ %_96, %bb24 ], [ %_96, %bb25 ], [ %_43, %bb2.i ], [ %_64, %bb16 ], [ %_43, %bb18 ], [ 0, %bb19 ]
  %33 = phi ptr [ @alloc_090c5d77c30e5d7530385996b56198df, %bb13 ], [ @alloc_99e2076ca35ede0fbab7b69a0b879398, %bb4 ], [ @alloc_22667ba4b7c27f5de72e5fdda86abaf1, %bb17 ], [ @alloc_5d4ada7e8c7f9de9fb39b0119ca2f7b3, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17ha876dfaee6cf8889E.exit" ], [ @alloc_2403799b24f2f8d7457fc145085fbbf3, %bb2.i27 ], [ @alloc_ae63bed9eea94c6dfc9b84ab8079c1e6, %bb24 ], [ @alloc_c1bdbd00257e9a82b4e4c5532503329f, %bb25 ], [ @alloc_917914cac55b10112659c9dcdae0d91f, %bb2.i ], [ @alloc_7594c38f85a9837ffb44290c9cbeb054, %bb16 ], [ @alloc_de3364628362b361d6a48780f3ce5b62, %bb18 ], [ @alloc_a982bde884205ec6b78acb64c4d1c1ce, %bb19 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %31, i64 noundef %32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %33) #21
          to label %panic14.cont unwind label %cleanup

panic14.cont:                                     ; preds = %panic14.invoke
  unreachable
}
