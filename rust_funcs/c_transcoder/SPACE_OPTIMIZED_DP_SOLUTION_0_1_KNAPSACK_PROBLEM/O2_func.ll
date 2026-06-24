define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n, i32 noundef %W) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %mat = alloca [24 x i8], align 8
  %wt = alloca [8 x i8], align 8
  %val = alloca [8 x i8], align 8
  store i64 %0, ptr %val, align 8
  store i64 %1, ptr %wt, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mat)
  %_8 = sext i32 %W to i64
  %_7 = add nsw i64 %_8, 1
  %_21.0.i.i.i = shl nsw i64 %_7, 2
  %_21.1.i.i.i = icmp ugt i64 %_7, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_7, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6f6c830bee30745cE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %4 = ptrtoint ptr %2 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6f6c830bee30745cE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6f6c830bee30745cE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %4, %bb10.i.i ], [ 4, %bb17.i.i ]
  %5 = inttoptr i64 %_16.sroa.10.0.i to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %6 = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i, label %bb6.i

bb3.i.i:                                          ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6f6c830bee30745cE.exit"
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 48) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb6.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h6f6c830bee30745cE.exit"
  store i64 2, ptr %v.i, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %6, ptr %8, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7983e883d3453fc3E.exit", label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb6.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %10 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb3.i.i.i.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7983e883d3453fc3E.exit"

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %9, align 8, !alias.scope !1084, !noalias !1098
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hdd3fdca51066751bE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %29, %cleanup ], [ %12, %cleanup1.body.i ], [ %13, %bb4.i ], [ %13, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1112
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7983e883d3453fc3E.exit": ; preds = %bb6.i, %bb3.i.i.i.i.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb6.i ], [ %10, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %5, i64 %_21.0.i.i.i, i1 false), !noalias !1121
  store i64 %_7, ptr %6, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %_7, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %_7, ptr %_15.i.i, align 8, !noalias !1122
  %_7.sroa.5.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %5, ptr %_7.sroa.5.0._15.i.sroa_idx.i, align 8, !noalias !1122
  %_7.sroa.7.0._15.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %_7, ptr %_7.sroa.7.0._15.i.sroa_idx.i, align 8, !noalias !1122
  store i64 2, ptr %9, align 8, !alias.scope !1084, !noalias !1123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %mat, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_10107 = icmp sgt i32 %n, 0
  br i1 %_10107, label %bb2.lr.ph, label %bb26

bb2.lr.ph:                                        ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7983e883d3453fc3E.exit"
  %_16.not103 = icmp slt i32 %W, 0
  %14 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_108 = load ptr, ptr %14, align 8, !nonnull !6
  %15 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %_107 = load i64, ptr %15, align 8
  %_110.not = icmp eq i64 %_107, 0
  %16 = getelementptr inbounds nuw i8, ptr %_108, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %_108, i64 16
  %_131.not = icmp eq i64 %_107, 1
  %18 = getelementptr inbounds nuw i8, ptr %_108, i64 40
  %19 = getelementptr inbounds nuw i8, ptr %_108, i64 32
  %_164 = icmp ugt i64 %_107, 1
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb2

bb26:                                             ; preds = %bb25, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7983e883d3453fc3E.exit"
  %20 = and i32 %n, 1
  %_100.not = icmp eq i32 %20, 0
  %21 = getelementptr inbounds nuw i8, ptr %mat, i64 16
  %_225 = load i64, ptr %21, align 8, !noundef !6
  br i1 %_100.not, label %bb28, label %bb27

bb2:                                              ; preds = %bb2.lr.ph, %bb25
  %indvars.iv = phi i64 [ 0, %bb2.lr.ph ], [ %indvars.iv.next, %bb25 ]
  %22 = and i64 %indvars.iv, 1
  %_13.not = icmp eq i64 %22, 0
  br i1 %_13.not, label %bb15.preheader, label %bb4.preheader

bb4.preheader:                                    ; preds = %bb2
  br i1 %_16.not103, label %bb25, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %bb4.preheader
  %_22 = icmp samesign ult i64 %indvars.iv, 2
  %23 = getelementptr inbounds nuw i32, ptr %val, i64 %indvars.iv
  br i1 %_22, label %bb5.lr.ph.split, label %panic29.invoke

bb5.lr.ph.split:                                  ; preds = %bb5.lr.ph
  %24 = getelementptr inbounds nuw i32, ptr %wt, i64 %indvars.iv
  %_19 = load i32, ptr %24, align 4, !noundef !6
  br label %bb5

bb15.preheader:                                   ; preds = %bb2
  br i1 %_16.not103, label %bb25, label %bb16.lr.ph

bb16.lr.ph:                                       ; preds = %bb15.preheader
  %_64 = icmp samesign ult i64 %indvars.iv, 2
  %25 = getelementptr inbounds nuw i32, ptr %val, i64 %indvars.iv
  br i1 %_64, label %bb16.lr.ph.split, label %panic29.invoke

bb16.lr.ph.split:                                 ; preds = %bb16.lr.ph
  %26 = getelementptr inbounds nuw i32, ptr %wt, i64 %indvars.iv
  %_61 = load i32, ptr %26, align 4, !noundef !6
  br label %bb16

bb28:                                             ; preds = %bb26
  %_228 = icmp ugt i64 %_225, 1
  br i1 %_228, label %bb57, label %panic29.invoke

bb27:                                             ; preds = %bb26
  %_218.not = icmp eq i64 %_225, 0
  br i1 %_218.not, label %panic29.invoke, label %bb55

bb57:                                             ; preds = %bb28
  %27 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_226 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %28 = getelementptr inbounds nuw i8, ptr %_226, i64 40
  %_230 = load i64, ptr %28, align 8, !noundef !6
  %_233 = icmp ugt i64 %_230, %_8
  br i1 %_233, label %bb58, label %panic29.invoke

cleanup:                                          ; preds = %panic29.invoke
  %29 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hdd3fdca51066751bE"(ptr noalias noundef align 8 dereferenceable(24) %mat) #23
  br label %common.resume

bb58:                                             ; preds = %bb57
  %30 = getelementptr inbounds nuw i8, ptr %_226, i64 32
  br label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %bb58, %bb56
  %_5.i.i = phi ptr [ %_216, %bb56 ], [ %_226, %bb58 ]
  %_221.pn.in = phi ptr [ %37, %bb56 ], [ %30, %bb58 ]
  %_221.pn = load ptr, ptr %_221.pn.in, align 8, !nonnull !6, !noundef !6
  %_0.sroa.0.0.in = getelementptr inbounds nuw i32, ptr %_221.pn, i64 %_8
  %_0.sroa.0.0 = load i32, ptr %_0.sroa.0.0.in, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc45013cab8578d0aE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %31, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc45013cab8578d0aE.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %31 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc45013cab8578d0aE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %32 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %33 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %33, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %32, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1154
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc45013cab8578d0aE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc45013cab8578d0aE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %31, %_225
  br i1 %_7.i.i.i, label %bb4.i55, label %bb5.i.i.i

bb4.i55:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hc45013cab8578d0aE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %self1.i.i.i.i1.i = load i64, ptr %mat, align 8, !range !22, !alias.scope !1164, !noalias !1167, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hdd3fdca51066751bE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i55
  %34 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %34, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1169
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hdd3fdca51066751bE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hdd3fdca51066751bE.exit": ; preds = %bb4.i55, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mat)
  ret i32 %_0.sroa.0.0

bb55:                                             ; preds = %bb27
  %35 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  %_216 = load ptr, ptr %35, align 8, !nonnull !6, !noundef !6
  %36 = getelementptr inbounds nuw i8, ptr %_216, i64 16
  %_220 = load i64, ptr %36, align 8, !noundef !6
  %_223 = icmp ugt i64 %_220, %_8
  br i1 %_223, label %bb56, label %panic29.invoke

bb56:                                             ; preds = %bb55
  %37 = getelementptr inbounds nuw i8, ptr %_216, i64 8
  br label %bb5.i.i.i.preheader

bb16:                                             ; preds = %bb16.lr.ph.split, %bb23
  %j.sroa.0.0106 = phi i32 [ 0, %bb16.lr.ph.split ], [ %38, %bb23 ]
  %_60.not = icmp sgt i32 %_61, %j.sroa.0.0106
  br i1 %_60.not, label %bb22, label %bb19

bb25:                                             ; preds = %bb12, %bb23, %bb4.preheader, %bb15.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb26, label %bb2

bb22:                                             ; preds = %bb16
  br i1 %_164, label %bb51, label %panic29.invoke

bb51:                                             ; preds = %bb22
  %_94 = sext i32 %j.sroa.0.0106 to i64
  %_198 = load i64, ptr %18, align 8, !noundef !6
  %_201 = icmp ugt i64 %_198, %_94
  br i1 %_201, label %bb52, label %panic29.invoke

bb52:                                             ; preds = %bb51
  %_210 = load i64, ptr %17, align 8, !noundef !6
  %_213 = icmp ugt i64 %_210, %_94
  br i1 %_213, label %bb54, label %panic29.invoke

bb54:                                             ; preds = %bb52
  %_199 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_92 = getelementptr inbounds nuw i32, ptr %_199, i64 %_94
  %_91 = load i32, ptr %_92, align 4, !noundef !6
  br label %bb23

bb23:                                             ; preds = %bb50, %bb54
  %_85.sink = phi i64 [ %_85, %bb50 ], [ %_94, %bb54 ]
  %x.y.i.sink = phi i32 [ %x.y.i, %bb50 ], [ %_91, %bb54 ]
  %_189 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_87 = getelementptr inbounds nuw i32, ptr %_189, i64 %_85.sink
  store i32 %x.y.i.sink, ptr %_87, align 4
  %38 = add i32 %j.sroa.0.0106, 1
  %_58.not = icmp sgt i32 %38, %W
  br i1 %_58.not, label %bb25, label %bb16

bb19:                                             ; preds = %bb16
  %_68 = load i32, ptr %25, align 4, !noundef !6
  br i1 %_164, label %bb20, label %panic29.invoke

bb20:                                             ; preds = %bb19
  %_76 = sub i32 %j.sroa.0.0106, %_61
  %_75 = sext i32 %_76 to i64
  %_167 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_166 = load i64, ptr %18, align 8, !noundef !6
  %_169 = icmp ugt i64 %_166, %_75
  br i1 %_169, label %bb46, label %panic29.invoke

bb46:                                             ; preds = %bb20
  %_85 = sext i32 %j.sroa.0.0106 to i64
  %_179 = icmp ugt i64 %_166, %_85
  br i1 %_179, label %bb49, label %panic29.invoke

bb49:                                             ; preds = %bb46
  %_188 = load i64, ptr %17, align 8, !noundef !6
  %_191 = icmp ugt i64 %_188, %_85
  br i1 %_191, label %bb50, label %panic29.invoke

bb50:                                             ; preds = %bb49
  %_73 = getelementptr inbounds nuw i32, ptr %_167, i64 %_75
  %_72 = load i32, ptr %_73, align 4, !noundef !6
  %_67 = add i32 %_72, %_68
  %_83 = getelementptr inbounds nuw i32, ptr %_167, i64 %_85
  %_82 = load i32, ptr %_83, align 4, !noundef !6
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %_67, i32 %_82)
  br label %bb23

bb5:                                              ; preds = %bb5.lr.ph.split, %bb12
  %j.sroa.0.1104 = phi i32 [ 0, %bb5.lr.ph.split ], [ %39, %bb12 ]
  %_18.not = icmp sgt i32 %_19, %j.sroa.0.1104
  br i1 %_18.not, label %bb11, label %bb8

bb11:                                             ; preds = %bb5
  br i1 %_110.not, label %panic29.invoke, label %bb41

bb41:                                             ; preds = %bb11
  %_52 = sext i32 %j.sroa.0.1104 to i64
  %_144 = load i64, ptr %17, align 8, !noundef !6
  %_147 = icmp ule i64 %_144, %_52
  %brmerge = select i1 %_147, i1 true, i1 %_131.not
  br i1 %brmerge, label %panic29.invoke.loopexit202.split.loop.exit215, label %bb43

bb43:                                             ; preds = %bb41
  %_145 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_50 = getelementptr inbounds nuw i32, ptr %_145, i64 %_52
  %_49 = load i32, ptr %_50, align 4, !noundef !6
  %_156 = load i64, ptr %18, align 8, !noundef !6
  %_159 = icmp ugt i64 %_156, %_52
  br i1 %_159, label %bb12, label %panic29.invoke

bb12:                                             ; preds = %bb43, %bb39
  %_43.sink = phi i64 [ %_43, %bb39 ], [ %_52, %bb43 ]
  %x.y.i56.sink = phi i32 [ %x.y.i56, %bb39 ], [ %_49, %bb43 ]
  %_135 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_45 = getelementptr inbounds nuw i32, ptr %_135, i64 %_43.sink
  store i32 %x.y.i56.sink, ptr %_45, align 4
  %39 = add i32 %j.sroa.0.1104, 1
  %_16.not = icmp sgt i32 %39, %W
  br i1 %_16.not, label %bb25, label %bb5

bb8:                                              ; preds = %bb5
  %_26 = load i32, ptr %23, align 4, !noundef !6
  br i1 %_110.not, label %panic29.invoke, label %bb9

bb9:                                              ; preds = %bb8
  %_34 = sub i32 %j.sroa.0.1104, %_19
  %_33 = sext i32 %_34 to i64
  %_113 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_112 = load i64, ptr %17, align 8, !noundef !6
  %_115 = icmp ugt i64 %_112, %_33
  br i1 %_115, label %bb36, label %panic29.invoke

bb36:                                             ; preds = %bb9
  %_43 = sext i32 %j.sroa.0.1104 to i64
  %_125 = icmp ule i64 %_112, %_43
  %brmerge199 = select i1 %_125, i1 true, i1 %_131.not
  br i1 %brmerge199, label %panic29.invoke.loopexit202.split.loop.exit, label %bb39

bb39:                                             ; preds = %bb36
  %_31 = getelementptr inbounds nuw i32, ptr %_113, i64 %_33
  %_30 = load i32, ptr %_31, align 4, !noundef !6
  %_25 = add i32 %_30, %_26
  %_41 = getelementptr inbounds nuw i32, ptr %_113, i64 %_43
  %_40 = load i32, ptr %_41, align 4, !noundef !6
  %x.y.i56 = tail call noundef i32 @llvm.smax.i32(i32 %_25, i32 %_40)
  %_134 = load i64, ptr %18, align 8, !noundef !6
  %_137 = icmp ugt i64 %_134, %_43
  br i1 %_137, label %bb12, label %panic29.invoke

panic29.invoke.loopexit202.split.loop.exit:       ; preds = %bb36
  %_43.mux.le = select i1 %_125, i64 %_43, i64 1
  %_112.mux.le = select i1 %_125, i64 %_112, i64 1
  %alloc_a88ba0ef25ec725ecb7c2e77c6e4fe75.mux.le = select i1 %_125, ptr @alloc_a88ba0ef25ec725ecb7c2e77c6e4fe75, ptr @alloc_639bd504a2b5e641a7a630138e0d4b7c
  br label %panic29.invoke

panic29.invoke.loopexit202.split.loop.exit215:    ; preds = %bb41
  %_52.mux.le = select i1 %_147, i64 %_52, i64 1
  %_144.mux.le = select i1 %_147, i64 %_144, i64 1
  %alloc_251d6476aadc86ca95efb10bf90cefc4.mux.le = select i1 %_147, ptr @alloc_251d6476aadc86ca95efb10bf90cefc4, ptr @alloc_c6e1bed630d99e6d69d5fd1f463009fc
  br label %panic29.invoke

panic29.invoke:                                   ; preds = %bb5.lr.ph, %bb16.lr.ph, %panic29.invoke.loopexit202.split.loop.exit, %panic29.invoke.loopexit202.split.loop.exit215, %bb11, %bb43, %bb8, %bb9, %bb39, %bb49, %bb46, %bb20, %bb19, %bb52, %bb51, %bb22, %bb28, %bb55, %bb27, %bb57
  %40 = phi i64 [ %_8, %bb57 ], [ 0, %bb27 ], [ %_8, %bb55 ], [ 1, %bb28 ], [ 1, %bb22 ], [ %_94, %bb51 ], [ %_94, %bb52 ], [ 1, %bb19 ], [ %_75, %bb20 ], [ %_85, %bb46 ], [ %_85, %bb49 ], [ %_43.mux.le, %panic29.invoke.loopexit202.split.loop.exit ], [ %_52.mux.le, %panic29.invoke.loopexit202.split.loop.exit215 ], [ 0, %bb11 ], [ %_52, %bb43 ], [ 0, %bb8 ], [ %_33, %bb9 ], [ %_43, %bb39 ], [ %indvars.iv, %bb16.lr.ph ], [ %indvars.iv, %bb5.lr.ph ]
  %41 = phi i64 [ %_230, %bb57 ], [ 0, %bb27 ], [ %_220, %bb55 ], [ %_225, %bb28 ], [ %_107, %bb22 ], [ %_198, %bb51 ], [ %_210, %bb52 ], [ %_107, %bb19 ], [ %_166, %bb20 ], [ %_166, %bb46 ], [ %_188, %bb49 ], [ %_112.mux.le, %panic29.invoke.loopexit202.split.loop.exit ], [ %_144.mux.le, %panic29.invoke.loopexit202.split.loop.exit215 ], [ 0, %bb11 ], [ %_156, %bb43 ], [ 0, %bb8 ], [ %_112, %bb9 ], [ %_134, %bb39 ], [ 2, %bb16.lr.ph ], [ 2, %bb5.lr.ph ]
  %42 = phi ptr [ @alloc_deb46f6fe7cf5cc18becf044f534f29a, %bb57 ], [ @alloc_4cf96f0c451272b3a3260efd73d6b98a, %bb27 ], [ @alloc_2d0d89a080d009968733113dc6eb3ba3, %bb55 ], [ @alloc_92361a1050d8d5e8888d9b108ff01520, %bb28 ], [ @alloc_81370d0993cdfb7c440dd2cfd0c40b7d, %bb22 ], [ @alloc_33530c927815bc5a618a380289bfdeaa, %bb51 ], [ @alloc_0085ae16be34517cf0c12220c3eb1960, %bb52 ], [ @alloc_a65238f5b425853c8c2f54ffb62190a5, %bb19 ], [ @alloc_7a923da4fdde298034da3bc4e95870f9, %bb20 ], [ @alloc_8b8aff5035d4e850346620e14c1b5821, %bb46 ], [ @alloc_f4269b9378e35a0906f8c7af60b333aa, %bb49 ], [ %alloc_a88ba0ef25ec725ecb7c2e77c6e4fe75.mux.le, %panic29.invoke.loopexit202.split.loop.exit ], [ %alloc_251d6476aadc86ca95efb10bf90cefc4.mux.le, %panic29.invoke.loopexit202.split.loop.exit215 ], [ @alloc_103bc833ed564cb1fac32956c4d91155, %bb11 ], [ @alloc_4cf0e4c042860127977f898d53770e6b, %bb43 ], [ @alloc_fc8cd0d0810a0b20c72fe02c6f5f10eb, %bb8 ], [ @alloc_d67937fea68517d568e6417c5350821b, %bb9 ], [ @alloc_b7b883573d2af83879a88aa8e05367f3, %bb39 ], [ @alloc_400d3be88d0fc9f2875c9b0881d22071, %bb5.lr.ph ], [ @alloc_4fee7c83fafb72b88cd7635e0eaedf92, %bb16.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %40, i64 noundef %41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %42) #21
          to label %panic29.cont unwind label %cleanup

panic29.cont:                                     ; preds = %panic29.invoke
  unreachable
}
