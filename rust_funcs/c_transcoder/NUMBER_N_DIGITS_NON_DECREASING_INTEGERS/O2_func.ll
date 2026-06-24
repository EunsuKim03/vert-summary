define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1071
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 4, 9) 4) #18, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit"

bb3.i.i:                                          ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #20, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit": ; preds = %start
  store i32 1, ptr %0, align 4, !noalias !1077
  %_15.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_15.i.i, align 4, !noalias !1077
  %_15.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %_15.1.i.i, align 4, !noalias !1077
  %_15.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %_15.2.i.i, align 4, !noalias !1077
  %_15.3.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %_15.3.i.i, align 4, !noalias !1077
  %_15.4.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %_15.4.i.i, align 4, !noalias !1077
  %_15.5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %_15.5.i.i, align 4, !noalias !1077
  %_15.6.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %_15.6.i.i, align 4, !noalias !1077
  %_15.7.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %_15.7.i.i, align 4, !noalias !1077
  %_15.8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %_15.8.i.i, align 4, !noalias !1077
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1080
  %_21.0.i.i.i.i = mul nsw i64 %_4, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_4, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i21, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit"
  %_8.i.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i.i, label %bb2.i.i.i3.i.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1084
; call __rustc::__rust_alloc
  %2 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #18, !noalias !1084
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i21, label %bb1.i.i

bb3.i.i21:                                        ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1080

.noexc.i:                                         ; preds = %bb3.i.i21
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_4, ptr %v.i, align 8, !noalias !1080
  %4 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %2, ptr %4, align 8, !noalias !1080
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %_2425.i.i.not = icmp eq i32 %n, 0
  br i1 %_2425.i.i.not, label %bb17.i.i, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i20, %bb3.i3.i ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1090
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 4, 9) 4) #18, !noalias !1090
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #20
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1100

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb2.i.i.i3.i.i.i:                                 ; preds = %bb17.i.i.i
  store i64 0, ptr %v.i, align 8, !noalias !1080
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %8, align 8, !noalias !1080
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %9, align 8, !alias.scope !1087, !noalias !1101
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1106
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit"

bb17.i.i:                                         ; preds = %bb3.i3.i, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i20, %bb3.i3.i ]
  store i64 10, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1115
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1115
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 10, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1115
  store i64 %_4, ptr %5, align 8, !alias.scope !1087, !noalias !1116
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit"

bb3.i3.i:                                         ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %6, ptr noundef nonnull readonly align 4 dereferenceable(40) %0, i64 40, i1 false), !noalias !1121
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 10, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1100
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %6, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1100
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 10, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1100
  %_15.i.i20 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb17.i.i, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1087, !noalias !1122
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1127
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #22, !noalias !1080
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %17, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i21
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1136
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit": ; preds = %bb2.i.i.i3.i.i.i, %bb17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %a, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1145
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1080
  %_0.i.not.i78 = icmp slt i32 %n, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %a, i64 16
  %_51.pre = load i64, ptr %.phi.trans.insert, align 8
  br i1 %_0.i.not.i78, label %bb7, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit"
  %13 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_41 = load ptr, ptr %13, align 8, !nonnull !6
  br label %bb2.i

bb2.i29.lr.ph:                                    ; preds = %bb16
  %14 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_64 = load ptr, ptr %14, align 8, !nonnull !6, !noundef !6
  %15 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %_63 = load i64, ptr %15, align 8, !noundef !6
  br label %bb2.i29

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb16
  %iter.sroa.0.079 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb16 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.079, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %16 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.079, %16
  %_14 = zext nneg i32 %iter.sroa.0.079 to i64
  %_43 = icmp ugt i64 %_51.pre, %_14
  br i1 %_43, label %bb15, label %panic12.invoke

cleanup:                                          ; preds = %panic12.invoke
  %17 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr noalias noundef align 8 dereferenceable(24) %a) #22
  br label %common.resume

bb2.i29:                                          ; preds = %bb2.i29.lr.ph, %bb28.8
  %iter1.sroa.0.082 = phi i32 [ 1, %bb2.i29.lr.ph ], [ %spec.select54, %bb28.8 ]
  %_0.i3.i30 = icmp sge i32 %iter1.sroa.0.082, %n
  %not._0.i3.i30 = xor i1 %_0.i3.i30, true
  %18 = zext i1 %not._0.i3.i30 to i32
  %spec.select54 = add nuw nsw i32 %iter1.sroa.0.082, %18
  %_26 = add nsw i32 %iter1.sroa.0.082, -1
  %_25 = sext i32 %_26 to i64
  %_66 = icmp ugt i64 %_63, %_25
  %_24 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_64, i64 %_25
  %19 = getelementptr inbounds nuw i8, ptr %_24, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %_31 = zext nneg i32 %iter1.sroa.0.082 to i64
  %_76 = icmp ugt i64 %_63, %_31
  %_30 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_64, i64 %_31
  %21 = getelementptr inbounds nuw i8, ptr %_30, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %_30, i64 16
  br i1 %_66, label %bb19.preheader, label %panic12.invoke

bb19.preheader:                                   ; preds = %bb2.i29
  %_68 = load i64, ptr %19, align 8, !noundef !6
  %_71 = icmp ugt i64 %_68, 8
  br i1 %_71, label %bb24, label %panic12.invoke

bb7:                                              ; preds = %bb28.8, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit"
  %_51 = phi i64 [ %_51.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit" ], [ %_63, %bb28.8 ]
  %_54 = icmp ugt i64 %_51, %_5
  br i1 %_54, label %bb18, label %panic12.invoke

bb18:                                             ; preds = %bb7
  %23 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_52 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_37 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_52, i64 %_5
  %24 = getelementptr inbounds nuw i8, ptr %_37, i64 16
  %_95 = load i64, ptr %24, align 8, !noundef !6
  %_98.not = icmp eq i64 %_95, 0
  br i1 %_98.not, label %panic12.invoke, label %bb29

bb29:                                             ; preds = %bb18
  %25 = getelementptr inbounds nuw i8, ptr %_37, i64 8
  %_96 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_0 = load i32, ptr %_96, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb29, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %26, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i" ], [ 0, %bb29 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_52, i64 %_3.sroa.0.012.i.i.i
  %26 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1164, !noalias !1167, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %27 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %28 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %28, align 8, !alias.scope !1164, !noalias !1167, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %27, i64 noundef range(i64 1, -9223372036854775807) 4) #18, !noalias !1171
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %26, %_51
  br i1 %_7.i.i.i, label %bb4.i36, label %bb5.i.i.i

bb4.i36:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %self1.i.i.i.i1.i = load i64, ptr %a, align 8, !range !22, !alias.scope !1181, !noalias !1184, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i36
  %29 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_52, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 8) #18, !noalias !1186
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E.exit": ; preds = %bb4.i36, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a)
  ret i32 %_0

bb24:                                             ; preds = %bb19.preheader
  %_69 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_23 = getelementptr inbounds nuw i8, ptr %_69, i64 32
  %_22 = load i32, ptr %_23, align 4, !noundef !6
  br i1 %_76, label %bb25, label %panic12.invoke

bb25:                                             ; preds = %bb24
  %_78 = load i64, ptr %22, align 8, !noundef !6
  %_81 = icmp ugt i64 %_78, 9
  br i1 %_81, label %bb28, label %panic12.invoke

bb28:                                             ; preds = %bb25
  %_79 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_29 = getelementptr inbounds nuw i8, ptr %_79, i64 36
  %_28 = load i32, ptr %_29, align 4, !noundef !6
  %_34 = getelementptr inbounds nuw i8, ptr %_79, i64 32
  %30 = add i32 %_28, %_22
  store i32 %30, ptr %_34, align 4
  %_68.1 = load i64, ptr %19, align 8, !noundef !6
  %_71.1 = icmp ugt i64 %_68.1, 7
  br i1 %_71.1, label %bb25.1, label %panic12.invoke

bb25.1:                                           ; preds = %bb28
  %_78.1 = load i64, ptr %22, align 8, !noundef !6
  %_81.1 = icmp ugt i64 %_78.1, 8
  br i1 %_81.1, label %bb28.1, label %panic12.invoke

bb28.1:                                           ; preds = %bb25.1
  %_79.1 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_69.1 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_23.1 = getelementptr inbounds nuw i8, ptr %_69.1, i64 28
  %_22.1 = load i32, ptr %_23.1, align 4, !noundef !6
  %_29.1 = getelementptr inbounds nuw i8, ptr %_79.1, i64 32
  %_28.1 = load i32, ptr %_29.1, align 4, !noundef !6
  %_34.1 = getelementptr inbounds nuw i8, ptr %_79.1, i64 28
  %31 = add i32 %_28.1, %_22.1
  store i32 %31, ptr %_34.1, align 4
  %_68.2 = load i64, ptr %19, align 8, !noundef !6
  %_71.2 = icmp ugt i64 %_68.2, 6
  br i1 %_71.2, label %bb25.2, label %panic12.invoke

bb25.2:                                           ; preds = %bb28.1
  %_78.2 = load i64, ptr %22, align 8, !noundef !6
  %_81.2 = icmp ugt i64 %_78.2, 7
  br i1 %_81.2, label %bb28.2, label %panic12.invoke

bb28.2:                                           ; preds = %bb25.2
  %_79.2 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_69.2 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_23.2 = getelementptr inbounds nuw i8, ptr %_69.2, i64 24
  %_22.2 = load i32, ptr %_23.2, align 4, !noundef !6
  %_29.2 = getelementptr inbounds nuw i8, ptr %_79.2, i64 28
  %_28.2 = load i32, ptr %_29.2, align 4, !noundef !6
  %_34.2 = getelementptr inbounds nuw i8, ptr %_79.2, i64 24
  %32 = add i32 %_28.2, %_22.2
  store i32 %32, ptr %_34.2, align 4
  %_68.3 = load i64, ptr %19, align 8, !noundef !6
  %_71.3 = icmp ugt i64 %_68.3, 5
  br i1 %_71.3, label %bb25.3, label %panic12.invoke

bb25.3:                                           ; preds = %bb28.2
  %_78.3 = load i64, ptr %22, align 8, !noundef !6
  %_81.3 = icmp ugt i64 %_78.3, 6
  br i1 %_81.3, label %bb28.3, label %panic12.invoke

bb28.3:                                           ; preds = %bb25.3
  %_79.3 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_69.3 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_23.3 = getelementptr inbounds nuw i8, ptr %_69.3, i64 20
  %_22.3 = load i32, ptr %_23.3, align 4, !noundef !6
  %_29.3 = getelementptr inbounds nuw i8, ptr %_79.3, i64 24
  %_28.3 = load i32, ptr %_29.3, align 4, !noundef !6
  %_34.3 = getelementptr inbounds nuw i8, ptr %_79.3, i64 20
  %33 = add i32 %_28.3, %_22.3
  store i32 %33, ptr %_34.3, align 4
  %_68.4 = load i64, ptr %19, align 8, !noundef !6
  %_71.4 = icmp ugt i64 %_68.4, 4
  br i1 %_71.4, label %bb25.4, label %panic12.invoke

bb25.4:                                           ; preds = %bb28.3
  %_78.4 = load i64, ptr %22, align 8, !noundef !6
  %_81.4 = icmp ugt i64 %_78.4, 5
  br i1 %_81.4, label %bb28.4, label %panic12.invoke

bb28.4:                                           ; preds = %bb25.4
  %_79.4 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_69.4 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_23.4 = getelementptr inbounds nuw i8, ptr %_69.4, i64 16
  %_22.4 = load i32, ptr %_23.4, align 4, !noundef !6
  %_29.4 = getelementptr inbounds nuw i8, ptr %_79.4, i64 20
  %_28.4 = load i32, ptr %_29.4, align 4, !noundef !6
  %_34.4 = getelementptr inbounds nuw i8, ptr %_79.4, i64 16
  %34 = add i32 %_28.4, %_22.4
  store i32 %34, ptr %_34.4, align 4
  %_68.5 = load i64, ptr %19, align 8, !noundef !6
  %_71.5 = icmp ugt i64 %_68.5, 3
  br i1 %_71.5, label %bb25.5, label %panic12.invoke

bb25.5:                                           ; preds = %bb28.4
  %_78.5 = load i64, ptr %22, align 8, !noundef !6
  %_81.5 = icmp ugt i64 %_78.5, 4
  br i1 %_81.5, label %bb28.5, label %panic12.invoke

bb28.5:                                           ; preds = %bb25.5
  %_79.5 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_69.5 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_23.5 = getelementptr inbounds nuw i8, ptr %_69.5, i64 12
  %_22.5 = load i32, ptr %_23.5, align 4, !noundef !6
  %_29.5 = getelementptr inbounds nuw i8, ptr %_79.5, i64 16
  %_28.5 = load i32, ptr %_29.5, align 4, !noundef !6
  %_34.5 = getelementptr inbounds nuw i8, ptr %_79.5, i64 12
  %35 = add i32 %_28.5, %_22.5
  store i32 %35, ptr %_34.5, align 4
  %_68.6 = load i64, ptr %19, align 8, !noundef !6
  %_71.6 = icmp ugt i64 %_68.6, 2
  br i1 %_71.6, label %bb25.6, label %panic12.invoke

bb25.6:                                           ; preds = %bb28.5
  %_78.6 = load i64, ptr %22, align 8, !noundef !6
  %_81.6 = icmp ugt i64 %_78.6, 3
  br i1 %_81.6, label %bb28.6, label %panic12.invoke

bb28.6:                                           ; preds = %bb25.6
  %_79.6 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_69.6 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_23.6 = getelementptr inbounds nuw i8, ptr %_69.6, i64 8
  %_22.6 = load i32, ptr %_23.6, align 4, !noundef !6
  %_29.6 = getelementptr inbounds nuw i8, ptr %_79.6, i64 12
  %_28.6 = load i32, ptr %_29.6, align 4, !noundef !6
  %_34.6 = getelementptr inbounds nuw i8, ptr %_79.6, i64 8
  %36 = add i32 %_28.6, %_22.6
  store i32 %36, ptr %_34.6, align 4
  %_68.7 = load i64, ptr %19, align 8, !noundef !6
  %_71.7 = icmp ugt i64 %_68.7, 1
  br i1 %_71.7, label %bb25.7, label %panic12.invoke

bb25.7:                                           ; preds = %bb28.6
  %_78.7 = load i64, ptr %22, align 8, !noundef !6
  %_81.7 = icmp ugt i64 %_78.7, 2
  br i1 %_81.7, label %bb28.7, label %panic12.invoke

bb28.7:                                           ; preds = %bb25.7
  %_79.7 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_69.7 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_23.7 = getelementptr inbounds nuw i8, ptr %_69.7, i64 4
  %_22.7 = load i32, ptr %_23.7, align 4, !noundef !6
  %_29.7 = getelementptr inbounds nuw i8, ptr %_79.7, i64 8
  %_28.7 = load i32, ptr %_29.7, align 4, !noundef !6
  %_34.7 = getelementptr inbounds nuw i8, ptr %_79.7, i64 4
  %37 = add i32 %_28.7, %_22.7
  store i32 %37, ptr %_34.7, align 4
  %_68.8 = load i64, ptr %19, align 8, !noundef !6
  %_71.8.not = icmp eq i64 %_68.8, 0
  br i1 %_71.8.not, label %panic12.invoke, label %bb25.8

bb25.8:                                           ; preds = %bb28.7
  %_78.8 = load i64, ptr %22, align 8, !noundef !6
  %_81.8 = icmp ugt i64 %_78.8, 1
  br i1 %_81.8, label %bb28.8, label %panic12.invoke

bb28.8:                                           ; preds = %bb25.8
  %_79.8 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_69.8 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_22.8 = load i32, ptr %_69.8, align 4, !noundef !6
  %_29.8 = getelementptr inbounds nuw i8, ptr %_79.8, i64 4
  %_28.8 = load i32, ptr %_29.8, align 4, !noundef !6
  %38 = add i32 %_28.8, %_22.8
  store i32 %38, ptr %_79.8, align 4
  %_0.i.not.i28 = icmp sgt i32 %spec.select54, %n
  %or.cond56 = select i1 %_0.i3.i30, i1 true, i1 %_0.i.not.i28
  br i1 %or.cond56, label %bb7, label %bb2.i29

bb15:                                             ; preds = %bb2.i
  %_13 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_41, i64 %_14
  %39 = getelementptr inbounds nuw i8, ptr %_13, i64 16
  %_46 = load i64, ptr %39, align 8, !noundef !6
  %_49 = icmp ugt i64 %_46, 9
  br i1 %_49, label %bb16, label %panic12.invoke

bb16:                                             ; preds = %bb15
  %40 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  %_47 = load ptr, ptr %40, align 8, !nonnull !6, !noundef !6
  %_12 = getelementptr inbounds nuw i8, ptr %_47, i64 36
  store i32 1, ptr %_12, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb2.i29.lr.ph, label %bb2.i

panic12.invoke:                                   ; preds = %bb15, %bb2.i, %bb25, %bb25.1, %bb25.2, %bb25.3, %bb25.4, %bb25.5, %bb25.6, %bb25.7, %bb25.8, %bb24, %bb19.preheader, %bb28, %bb28.1, %bb28.2, %bb28.3, %bb28.4, %bb28.5, %bb28.6, %bb28.7, %bb2.i29, %bb18, %bb7
  %41 = phi i64 [ %_5, %bb7 ], [ 0, %bb18 ], [ %_25, %bb2.i29 ], [ 8, %bb19.preheader ], [ 7, %bb28 ], [ 6, %bb28.1 ], [ 5, %bb28.2 ], [ 4, %bb28.3 ], [ 3, %bb28.4 ], [ 2, %bb28.5 ], [ 1, %bb28.6 ], [ 0, %bb28.7 ], [ %_31, %bb24 ], [ 9, %bb25 ], [ 8, %bb25.1 ], [ 7, %bb25.2 ], [ 6, %bb25.3 ], [ 5, %bb25.4 ], [ 4, %bb25.5 ], [ 3, %bb25.6 ], [ 2, %bb25.7 ], [ 1, %bb25.8 ], [ %_14, %bb2.i ], [ 9, %bb15 ]
  %42 = phi i64 [ %_51, %bb7 ], [ 0, %bb18 ], [ %_63, %bb2.i29 ], [ %_68, %bb19.preheader ], [ %_68.1, %bb28 ], [ %_68.2, %bb28.1 ], [ %_68.3, %bb28.2 ], [ %_68.4, %bb28.3 ], [ %_68.5, %bb28.4 ], [ %_68.6, %bb28.5 ], [ %_68.7, %bb28.6 ], [ 0, %bb28.7 ], [ %_63, %bb24 ], [ %_78, %bb25 ], [ %_78.1, %bb25.1 ], [ %_78.2, %bb25.2 ], [ %_78.3, %bb25.3 ], [ %_78.4, %bb25.4 ], [ %_78.5, %bb25.5 ], [ %_78.6, %bb25.6 ], [ %_78.7, %bb25.7 ], [ %_78.8, %bb25.8 ], [ %_51.pre, %bb2.i ], [ %_46, %bb15 ]
  %43 = phi ptr [ @alloc_9f8a1fa603b38d6f0354cfd7953091ba, %bb7 ], [ @alloc_b2125b75bf9c8525480588f931c77a68, %bb18 ], [ @alloc_a32607dfa100bdc5e1710911146a6a12, %bb2.i29 ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %bb19.preheader ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %bb28 ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %bb28.1 ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %bb28.2 ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %bb28.3 ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %bb28.4 ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %bb28.5 ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %bb28.6 ], [ @alloc_563a010e25f4f2d4fefdfc2421e36fcd, %bb28.7 ], [ @alloc_bbba2d2ca2b7088e16f7cfe8fafd272d, %bb24 ], [ @alloc_69c8473680779265916e759af82e00be, %bb25 ], [ @alloc_69c8473680779265916e759af82e00be, %bb25.1 ], [ @alloc_69c8473680779265916e759af82e00be, %bb25.2 ], [ @alloc_69c8473680779265916e759af82e00be, %bb25.3 ], [ @alloc_69c8473680779265916e759af82e00be, %bb25.4 ], [ @alloc_69c8473680779265916e759af82e00be, %bb25.5 ], [ @alloc_69c8473680779265916e759af82e00be, %bb25.6 ], [ @alloc_69c8473680779265916e759af82e00be, %bb25.7 ], [ @alloc_69c8473680779265916e759af82e00be, %bb25.8 ], [ @alloc_7162e58a8a7b0533268c046f1d583fd8, %bb2.i ], [ @alloc_3313e8fe8ee3acc11cc0fe56aa7f3bd8, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %41, i64 noundef %42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %43) #20
          to label %panic12.cont unwind label %cleanup

panic12.cont:                                     ; preds = %panic12.invoke
  unreachable
}
