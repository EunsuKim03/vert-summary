define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 dereferenceable_or_null(40) ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit"

bb14.i:                                           ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 40) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit": ; preds = %start
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_4, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_4, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit"
  %_8.i.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i.i, label %bb2.i.i.i3.i.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %2 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdea754961bcec5b3E.exit" ]
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
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit"

bb17.i.i:                                         ; preds = %bb3.i3.i, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i ]
  store i64 10, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 10, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_4, ptr %5, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit"

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
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %18, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit": ; preds = %bb2.i.i.i3.i.i.i, %bb17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %a, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %13 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %_48 = load i64, ptr %13, align 8, !noundef !6
  %_51.not = icmp eq i64 %_48, 0
  %14 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %_49 = load ptr, ptr %14, align 8, !nonnull !6
  %15 = getelementptr inbounds nuw i8, ptr %_49, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %_49, i64 8
  br i1 %_51.not, label %panic16.invoke, label %bb3.preheader

bb3.preheader:                                    ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit"
  %_54 = load i64, ptr %15, align 8, !noundef !6
  %_57.not = icmp eq i64 %_54, 0
  br i1 %_57.not, label %panic16.invoke, label %bb23

bb2.i:                                            ; preds = %bb23.9, %bb26
  %iter.sroa.0.093 = phi i32 [ %spec.select, %bb26 ], [ 1, %bb23.9 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.093, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %17 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.093, %17
  %_19 = zext nneg i32 %iter.sroa.0.093 to i64
  %_63 = icmp ugt i64 %_48, %_19
  br i1 %_63, label %bb25, label %panic16.invoke

cleanup:                                          ; preds = %panic16.invoke
  %18 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E"(ptr noalias noundef align 8 dereferenceable(24) %a) #23
  br label %common.resume

bb2.i34:                                          ; preds = %bb26, %bb35.8
  %iter1.sroa.0.097 = phi i32 [ %spec.select59, %bb35.8 ], [ 1, %bb26 ]
  %_0.i3.i35 = icmp sge i32 %iter1.sroa.0.097, %n
  %not._0.i3.i35 = xor i1 %_0.i3.i35, true
  %19 = zext i1 %not._0.i3.i35 to i32
  %spec.select59 = add nuw nsw i32 %iter1.sroa.0.097, %19
  %_32 = add nsw i32 %iter1.sroa.0.097, -1
  %_31 = sext i32 %_32 to i64
  %_83 = icmp ugt i64 %_48, %_31
  %_30 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_49, i64 %_31
  %20 = getelementptr inbounds nuw i8, ptr %_30, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_30, i64 8
  %_36 = zext nneg i32 %iter1.sroa.0.097 to i64
  %_93 = icmp ugt i64 %_48, %_36
  %_35 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_49, i64 %_36
  %22 = getelementptr inbounds nuw i8, ptr %_35, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %_35, i64 16
  br i1 %_83, label %bb12.preheader, label %panic16.invoke

bb12.preheader:                                   ; preds = %bb2.i34
  %_85 = load i64, ptr %20, align 8, !noundef !6
  %_88 = icmp ugt i64 %_85, 8
  br i1 %_88, label %bb33, label %panic16.invoke

bb10:                                             ; preds = %bb35.8, %bb23.9
  %_74 = icmp ugt i64 %_48, %_5
  br i1 %_74, label %bb28, label %panic16.invoke

bb28:                                             ; preds = %bb10
  %_41 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_49, i64 %_5
  %24 = getelementptr inbounds nuw i8, ptr %_41, i64 16
  %_112 = load i64, ptr %24, align 8, !noundef !6
  %_115.not = icmp eq i64 %_112, 0
  br i1 %_115.not, label %panic16.invoke, label %bb38

bb38:                                             ; preds = %bb28
  %25 = getelementptr inbounds nuw i8, ptr %_41, i64 8
  %_113 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_0 = load i32, ptr %_113, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb38, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %26, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i" ], [ 0, %bb38 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_49, i64 %_3.sroa.0.012.i.i.i
  %26 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %27 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %28 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %28, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %27, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %26, %_48
  br i1 %_7.i.i.i, label %bb4.i41, label %bb5.i.i.i

bb4.i41:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h6cdb5d749e060be4E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %a, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i41
  %29 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_49, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h28ddabc450875e66E.exit": ; preds = %bb4.i41, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a)
  ret i32 %_0

bb33:                                             ; preds = %bb12.preheader
  %_86 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_29 = getelementptr inbounds nuw i8, ptr %_86, i64 32
  %_28 = load i32, ptr %_29, align 4, !noundef !6
  br i1 %_93, label %bb34, label %panic16.invoke

bb34:                                             ; preds = %bb33
  %_95 = load i64, ptr %23, align 8, !noundef !6
  %_98 = icmp ugt i64 %_95, 9
  br i1 %_98, label %bb35, label %panic16.invoke

bb35:                                             ; preds = %bb34
  %_96 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_34 = getelementptr inbounds nuw i8, ptr %_96, i64 36
  %_33 = load i32, ptr %_34, align 4, !noundef !6
  %_38 = getelementptr inbounds nuw i8, ptr %_96, i64 32
  %30 = add i32 %_33, %_28
  store i32 %30, ptr %_38, align 4
  %_85.1 = load i64, ptr %20, align 8, !noundef !6
  %_88.1 = icmp ugt i64 %_85.1, 7
  br i1 %_88.1, label %bb34.1, label %panic16.invoke

bb34.1:                                           ; preds = %bb35
  %_95.1 = load i64, ptr %23, align 8, !noundef !6
  %_98.1 = icmp ugt i64 %_95.1, 8
  br i1 %_98.1, label %bb35.1, label %panic16.invoke

bb35.1:                                           ; preds = %bb34.1
  %_86.1 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_29.1 = getelementptr inbounds nuw i8, ptr %_86.1, i64 28
  %_28.1 = load i32, ptr %_29.1, align 4, !noundef !6
  %_96.1 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_34.1 = getelementptr inbounds nuw i8, ptr %_96.1, i64 32
  %_33.1 = load i32, ptr %_34.1, align 4, !noundef !6
  %_38.1 = getelementptr inbounds nuw i8, ptr %_96.1, i64 28
  %31 = add i32 %_33.1, %_28.1
  store i32 %31, ptr %_38.1, align 4
  %_85.2 = load i64, ptr %20, align 8, !noundef !6
  %_88.2 = icmp ugt i64 %_85.2, 6
  br i1 %_88.2, label %bb34.2, label %panic16.invoke

bb34.2:                                           ; preds = %bb35.1
  %_95.2 = load i64, ptr %23, align 8, !noundef !6
  %_98.2 = icmp ugt i64 %_95.2, 7
  br i1 %_98.2, label %bb35.2, label %panic16.invoke

bb35.2:                                           ; preds = %bb34.2
  %_86.2 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_29.2 = getelementptr inbounds nuw i8, ptr %_86.2, i64 24
  %_28.2 = load i32, ptr %_29.2, align 4, !noundef !6
  %_96.2 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_34.2 = getelementptr inbounds nuw i8, ptr %_96.2, i64 28
  %_33.2 = load i32, ptr %_34.2, align 4, !noundef !6
  %_38.2 = getelementptr inbounds nuw i8, ptr %_96.2, i64 24
  %32 = add i32 %_33.2, %_28.2
  store i32 %32, ptr %_38.2, align 4
  %_85.3 = load i64, ptr %20, align 8, !noundef !6
  %_88.3 = icmp ugt i64 %_85.3, 5
  br i1 %_88.3, label %bb34.3, label %panic16.invoke

bb34.3:                                           ; preds = %bb35.2
  %_95.3 = load i64, ptr %23, align 8, !noundef !6
  %_98.3 = icmp ugt i64 %_95.3, 6
  br i1 %_98.3, label %bb35.3, label %panic16.invoke

bb35.3:                                           ; preds = %bb34.3
  %_86.3 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_29.3 = getelementptr inbounds nuw i8, ptr %_86.3, i64 20
  %_28.3 = load i32, ptr %_29.3, align 4, !noundef !6
  %_96.3 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_34.3 = getelementptr inbounds nuw i8, ptr %_96.3, i64 24
  %_33.3 = load i32, ptr %_34.3, align 4, !noundef !6
  %_38.3 = getelementptr inbounds nuw i8, ptr %_96.3, i64 20
  %33 = add i32 %_33.3, %_28.3
  store i32 %33, ptr %_38.3, align 4
  %_85.4 = load i64, ptr %20, align 8, !noundef !6
  %_88.4 = icmp ugt i64 %_85.4, 4
  br i1 %_88.4, label %bb34.4, label %panic16.invoke

bb34.4:                                           ; preds = %bb35.3
  %_95.4 = load i64, ptr %23, align 8, !noundef !6
  %_98.4 = icmp ugt i64 %_95.4, 5
  br i1 %_98.4, label %bb35.4, label %panic16.invoke

bb35.4:                                           ; preds = %bb34.4
  %_86.4 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_29.4 = getelementptr inbounds nuw i8, ptr %_86.4, i64 16
  %_28.4 = load i32, ptr %_29.4, align 4, !noundef !6
  %_96.4 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_34.4 = getelementptr inbounds nuw i8, ptr %_96.4, i64 20
  %_33.4 = load i32, ptr %_34.4, align 4, !noundef !6
  %_38.4 = getelementptr inbounds nuw i8, ptr %_96.4, i64 16
  %34 = add i32 %_33.4, %_28.4
  store i32 %34, ptr %_38.4, align 4
  %_85.5 = load i64, ptr %20, align 8, !noundef !6
  %_88.5 = icmp ugt i64 %_85.5, 3
  br i1 %_88.5, label %bb34.5, label %panic16.invoke

bb34.5:                                           ; preds = %bb35.4
  %_95.5 = load i64, ptr %23, align 8, !noundef !6
  %_98.5 = icmp ugt i64 %_95.5, 4
  br i1 %_98.5, label %bb35.5, label %panic16.invoke

bb35.5:                                           ; preds = %bb34.5
  %_86.5 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_29.5 = getelementptr inbounds nuw i8, ptr %_86.5, i64 12
  %_28.5 = load i32, ptr %_29.5, align 4, !noundef !6
  %_96.5 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_34.5 = getelementptr inbounds nuw i8, ptr %_96.5, i64 16
  %_33.5 = load i32, ptr %_34.5, align 4, !noundef !6
  %_38.5 = getelementptr inbounds nuw i8, ptr %_96.5, i64 12
  %35 = add i32 %_33.5, %_28.5
  store i32 %35, ptr %_38.5, align 4
  %_85.6 = load i64, ptr %20, align 8, !noundef !6
  %_88.6 = icmp ugt i64 %_85.6, 2
  br i1 %_88.6, label %bb34.6, label %panic16.invoke

bb34.6:                                           ; preds = %bb35.5
  %_95.6 = load i64, ptr %23, align 8, !noundef !6
  %_98.6 = icmp ugt i64 %_95.6, 3
  br i1 %_98.6, label %bb35.6, label %panic16.invoke

bb35.6:                                           ; preds = %bb34.6
  %_86.6 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_29.6 = getelementptr inbounds nuw i8, ptr %_86.6, i64 8
  %_28.6 = load i32, ptr %_29.6, align 4, !noundef !6
  %_96.6 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_34.6 = getelementptr inbounds nuw i8, ptr %_96.6, i64 12
  %_33.6 = load i32, ptr %_34.6, align 4, !noundef !6
  %_38.6 = getelementptr inbounds nuw i8, ptr %_96.6, i64 8
  %36 = add i32 %_33.6, %_28.6
  store i32 %36, ptr %_38.6, align 4
  %_85.7 = load i64, ptr %20, align 8, !noundef !6
  %_88.7 = icmp ugt i64 %_85.7, 1
  br i1 %_88.7, label %bb34.7, label %panic16.invoke

bb34.7:                                           ; preds = %bb35.6
  %_95.7 = load i64, ptr %23, align 8, !noundef !6
  %_98.7 = icmp ugt i64 %_95.7, 2
  br i1 %_98.7, label %bb35.7, label %panic16.invoke

bb35.7:                                           ; preds = %bb34.7
  %_86.7 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_29.7 = getelementptr inbounds nuw i8, ptr %_86.7, i64 4
  %_28.7 = load i32, ptr %_29.7, align 4, !noundef !6
  %_96.7 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_34.7 = getelementptr inbounds nuw i8, ptr %_96.7, i64 8
  %_33.7 = load i32, ptr %_34.7, align 4, !noundef !6
  %_38.7 = getelementptr inbounds nuw i8, ptr %_96.7, i64 4
  %37 = add i32 %_33.7, %_28.7
  store i32 %37, ptr %_38.7, align 4
  %_85.8 = load i64, ptr %20, align 8, !noundef !6
  %_88.8.not = icmp eq i64 %_85.8, 0
  br i1 %_88.8.not, label %panic16.invoke, label %bb34.8

bb34.8:                                           ; preds = %bb35.7
  %_95.8 = load i64, ptr %23, align 8, !noundef !6
  %_98.8 = icmp ugt i64 %_95.8, 1
  br i1 %_98.8, label %bb35.8, label %panic16.invoke

bb35.8:                                           ; preds = %bb34.8
  %_86.8 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_28.8 = load i32, ptr %_86.8, align 4, !noundef !6
  %_96.8 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_34.8 = getelementptr inbounds nuw i8, ptr %_96.8, i64 4
  %_33.8 = load i32, ptr %_34.8, align 4, !noundef !6
  %38 = add i32 %_33.8, %_28.8
  store i32 %38, ptr %_96.8, align 4
  %_0.i.not.i33 = icmp sgt i32 %spec.select59, %n
  %or.cond61 = select i1 %_0.i3.i35, i1 true, i1 %_0.i.not.i33
  br i1 %or.cond61, label %bb10, label %bb2.i34

bb25:                                             ; preds = %bb2.i
  %_18 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_49, i64 %_19
  %39 = getelementptr inbounds nuw i8, ptr %_18, i64 16
  %_66 = load i64, ptr %39, align 8, !noundef !6
  %_69 = icmp ugt i64 %_66, 9
  br i1 %_69, label %bb26, label %panic16.invoke

bb26:                                             ; preds = %bb25
  %40 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  %_67 = load ptr, ptr %40, align 8, !nonnull !6, !noundef !6
  %_17 = getelementptr inbounds nuw i8, ptr %_67, i64 36
  store i32 1, ptr %_17, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb2.i34, label %bb2.i

bb23:                                             ; preds = %bb3.preheader
  %_55 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  store i32 1, ptr %_55, align 4
  %_54.1 = load i64, ptr %15, align 8, !noundef !6
  %_57.1 = icmp ugt i64 %_54.1, 1
  br i1 %_57.1, label %bb23.1, label %panic16.invoke

bb23.1:                                           ; preds = %bb23
  %_55.1 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_9.1 = getelementptr inbounds nuw i8, ptr %_55.1, i64 4
  store i32 1, ptr %_9.1, align 4
  %_54.2 = load i64, ptr %15, align 8, !noundef !6
  %_57.2 = icmp ugt i64 %_54.2, 2
  br i1 %_57.2, label %bb23.2, label %panic16.invoke

bb23.2:                                           ; preds = %bb23.1
  %_55.2 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_9.2 = getelementptr inbounds nuw i8, ptr %_55.2, i64 8
  store i32 1, ptr %_9.2, align 4
  %_54.3 = load i64, ptr %15, align 8, !noundef !6
  %_57.3 = icmp ugt i64 %_54.3, 3
  br i1 %_57.3, label %bb23.3, label %panic16.invoke

bb23.3:                                           ; preds = %bb23.2
  %_55.3 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_9.3 = getelementptr inbounds nuw i8, ptr %_55.3, i64 12
  store i32 1, ptr %_9.3, align 4
  %_54.4 = load i64, ptr %15, align 8, !noundef !6
  %_57.4 = icmp ugt i64 %_54.4, 4
  br i1 %_57.4, label %bb23.4, label %panic16.invoke

bb23.4:                                           ; preds = %bb23.3
  %_55.4 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_9.4 = getelementptr inbounds nuw i8, ptr %_55.4, i64 16
  store i32 1, ptr %_9.4, align 4
  %_54.5 = load i64, ptr %15, align 8, !noundef !6
  %_57.5 = icmp ugt i64 %_54.5, 5
  br i1 %_57.5, label %bb23.5, label %panic16.invoke

bb23.5:                                           ; preds = %bb23.4
  %_55.5 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_9.5 = getelementptr inbounds nuw i8, ptr %_55.5, i64 20
  store i32 1, ptr %_9.5, align 4
  %_54.6 = load i64, ptr %15, align 8, !noundef !6
  %_57.6 = icmp ugt i64 %_54.6, 6
  br i1 %_57.6, label %bb23.6, label %panic16.invoke

bb23.6:                                           ; preds = %bb23.5
  %_55.6 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_9.6 = getelementptr inbounds nuw i8, ptr %_55.6, i64 24
  store i32 1, ptr %_9.6, align 4
  %_54.7 = load i64, ptr %15, align 8, !noundef !6
  %_57.7 = icmp ugt i64 %_54.7, 7
  br i1 %_57.7, label %bb23.7, label %panic16.invoke

bb23.7:                                           ; preds = %bb23.6
  %_55.7 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_9.7 = getelementptr inbounds nuw i8, ptr %_55.7, i64 28
  store i32 1, ptr %_9.7, align 4
  %_54.8 = load i64, ptr %15, align 8, !noundef !6
  %_57.8 = icmp ugt i64 %_54.8, 8
  br i1 %_57.8, label %bb23.8, label %panic16.invoke

bb23.8:                                           ; preds = %bb23.7
  %_55.8 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_9.8 = getelementptr inbounds nuw i8, ptr %_55.8, i64 32
  store i32 1, ptr %_9.8, align 4
  %_54.9 = load i64, ptr %15, align 8, !noundef !6
  %_57.9 = icmp ugt i64 %_54.9, 9
  br i1 %_57.9, label %bb23.9, label %panic16.invoke

bb23.9:                                           ; preds = %bb23.8
  %_55.9 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_9.9 = getelementptr inbounds nuw i8, ptr %_55.9, i64 36
  store i32 1, ptr %_9.9, align 4
  %_0.i.not.i92 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i92, label %bb10, label %bb2.i

panic16.invoke:                                   ; preds = %bb25, %bb2.i, %bb34, %bb34.1, %bb34.2, %bb34.3, %bb34.4, %bb34.5, %bb34.6, %bb34.7, %bb34.8, %bb33, %bb12.preheader, %bb35, %bb35.1, %bb35.2, %bb35.3, %bb35.4, %bb35.5, %bb35.6, %bb35.7, %bb2.i34, %bb3.preheader, %bb23, %bb23.1, %bb23.2, %bb23.3, %bb23.4, %bb23.5, %bb23.6, %bb23.7, %bb23.8, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit", %bb28, %bb10
  %41 = phi i64 [ %_5, %bb10 ], [ 0, %bb28 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit" ], [ 0, %bb3.preheader ], [ 1, %bb23 ], [ 2, %bb23.1 ], [ 3, %bb23.2 ], [ 4, %bb23.3 ], [ 5, %bb23.4 ], [ 6, %bb23.5 ], [ 7, %bb23.6 ], [ 8, %bb23.7 ], [ 9, %bb23.8 ], [ %_31, %bb2.i34 ], [ 8, %bb12.preheader ], [ 7, %bb35 ], [ 6, %bb35.1 ], [ 5, %bb35.2 ], [ 4, %bb35.3 ], [ 3, %bb35.4 ], [ 2, %bb35.5 ], [ 1, %bb35.6 ], [ 0, %bb35.7 ], [ %_36, %bb33 ], [ 9, %bb34 ], [ 8, %bb34.1 ], [ 7, %bb34.2 ], [ 6, %bb34.3 ], [ 5, %bb34.4 ], [ 4, %bb34.5 ], [ 3, %bb34.6 ], [ 2, %bb34.7 ], [ 1, %bb34.8 ], [ %_19, %bb2.i ], [ 9, %bb25 ]
  %42 = phi i64 [ %_48, %bb10 ], [ 0, %bb28 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit" ], [ 0, %bb3.preheader ], [ %_54.1, %bb23 ], [ %_54.2, %bb23.1 ], [ %_54.3, %bb23.2 ], [ %_54.4, %bb23.3 ], [ %_54.5, %bb23.4 ], [ %_54.6, %bb23.5 ], [ %_54.7, %bb23.6 ], [ %_54.8, %bb23.7 ], [ %_54.9, %bb23.8 ], [ %_48, %bb2.i34 ], [ %_85, %bb12.preheader ], [ %_85.1, %bb35 ], [ %_85.2, %bb35.1 ], [ %_85.3, %bb35.2 ], [ %_85.4, %bb35.3 ], [ %_85.5, %bb35.4 ], [ %_85.6, %bb35.5 ], [ %_85.7, %bb35.6 ], [ 0, %bb35.7 ], [ %_48, %bb33 ], [ %_95, %bb34 ], [ %_95.1, %bb34.1 ], [ %_95.2, %bb34.2 ], [ %_95.3, %bb34.3 ], [ %_95.4, %bb34.4 ], [ %_95.5, %bb34.5 ], [ %_95.6, %bb34.6 ], [ %_95.7, %bb34.7 ], [ %_95.8, %bb34.8 ], [ %_48, %bb2.i ], [ %_66, %bb25 ]
  %43 = phi ptr [ @alloc_ad53536c75336b5b550143ae8351bbba, %bb10 ], [ @alloc_a9295b2bed659bc12bf462e33dce4bc3, %bb28 ], [ @alloc_d8331e252f0bd3d702fc75b13ecfa4e4, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h054480c5ee330296E.exit" ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb3.preheader ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb23 ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb23.1 ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb23.2 ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb23.3 ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb23.4 ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb23.5 ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb23.6 ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb23.7 ], [ @alloc_b5e99050356f4e39f5508f6dbd95c079, %bb23.8 ], [ @alloc_97257dea4c25d16ac01dfed9157b334f, %bb2.i34 ], [ @alloc_422063443952b1d6e7a3f175e781b928, %bb12.preheader ], [ @alloc_422063443952b1d6e7a3f175e781b928, %bb35 ], [ @alloc_422063443952b1d6e7a3f175e781b928, %bb35.1 ], [ @alloc_422063443952b1d6e7a3f175e781b928, %bb35.2 ], [ @alloc_422063443952b1d6e7a3f175e781b928, %bb35.3 ], [ @alloc_422063443952b1d6e7a3f175e781b928, %bb35.4 ], [ @alloc_422063443952b1d6e7a3f175e781b928, %bb35.5 ], [ @alloc_422063443952b1d6e7a3f175e781b928, %bb35.6 ], [ @alloc_422063443952b1d6e7a3f175e781b928, %bb35.7 ], [ @alloc_58177cf6f21ea68bee3e8bdbc951e9f2, %bb33 ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %bb34 ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %bb34.1 ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %bb34.2 ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %bb34.3 ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %bb34.4 ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %bb34.5 ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %bb34.6 ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %bb34.7 ], [ @alloc_f7a63cf4bd7cf25b5afc968ec2d455ad, %bb34.8 ], [ @alloc_05b19055f92c9d5e9f047356ec5db620, %bb2.i ], [ @alloc_28514442b776d66058ab6f17c9cbc078, %bb25 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %41, i64 noundef %42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %43) #21
          to label %panic16.cont unwind label %cleanup

panic16.cont:                                     ; preds = %panic16.invoke
  unreachable
}
