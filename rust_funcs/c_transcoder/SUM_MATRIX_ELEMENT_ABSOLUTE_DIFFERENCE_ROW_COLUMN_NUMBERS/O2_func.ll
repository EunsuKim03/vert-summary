define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  %_4 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit.thread", label %bb3.i3.i

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
  %_2425.i.i.not = icmp eq i32 %n, 1
  br i1 %_2425.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit", label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i15
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i15 ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i15 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i15 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i15

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit.thread": ; preds = %bb17.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1098
  store i64 %_4, ptr %v.i, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %8, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %9, align 8, !alias.scope !1084, !noalias !1101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arr, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1106
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_5.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1107
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %len.i.i.pre = load i64, ptr %.phi.trans.insert69, align 8, !alias.scope !1107
  br label %bb26

bb3.i3.i15:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr nonnull readonly align 4 %0, i64 %_21.0.i.i.i, i1 false), !noalias !1112
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_4, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %6, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_4, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_4
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit", label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1084, !noalias !1113
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1118
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %27, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1127
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit": ; preds = %bb3.i3.i15, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i15 ]
  store i64 %_4, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1136
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1136
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_4, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1136
  store i64 %_4, ptr %5, align 8, !alias.scope !1084, !noalias !1137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arr, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1106
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %13 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %_42 = load i64, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_43 = load ptr, ptr %14, align 8, !nonnull !6
  %wide.trip.count55 = zext nneg i32 %n to i64
  br label %bb15.lr.ph

bb1.loopexit:                                     ; preds = %bb24
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %bb25.lr.ph, label %bb15.lr.ph

bb25.lr.ph:                                       ; preds = %bb1.loopexit
  %15 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %_67 = load i64, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_68 = load ptr, ptr %16, align 8, !nonnull !6
  %17 = add nsw i32 %n, -1
  %18 = zext i32 %17 to i64
  %wide.trip.count66 = zext nneg i32 %n to i64
  br label %bb29.lr.ph

bb15.lr.ph:                                       ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit"
  %indvars.iv52 = phi i64 [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit" ], [ %indvars.iv.next53, %bb1.loopexit ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %_45 = icmp ugt i64 %_42, %indvars.iv52
  %_12 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_43, i64 %indvars.iv52
  %19 = getelementptr inbounds nuw i8, ptr %_12, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %_12, i64 8
  br i1 %_45, label %bb15, label %panic8.invoke

bb3.loopexit:                                     ; preds = %bb34
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %bb26, label %bb29.lr.ph

bb26:                                             ; preds = %bb3.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit.thread"
  %len.i.i = phi i64 [ %len.i.i.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit.thread" ], [ %_67, %bb3.loopexit ]
  %_5.i.i = phi ptr [ %_5.i.i.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit.thread" ], [ %_68, %bb3.loopexit ]
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE.exit.thread" ], [ %28, %bb3.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i16, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb26, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %21, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i" ], [ 0, %bb26 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %21 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1159, !noalias !1162, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %22 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %23 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %23, align 8, !alias.scope !1159, !noalias !1162, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %22, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1164
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %21, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i16, label %bb5.i.i.i

bb4.i16:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hdc688cb098de7683E.exit.i.i.i", %bb26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  %self1.i.i.i.i1.i = load i64, ptr %arr, align 8, !range !22, !alias.scope !1174, !noalias !1177, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i16
  %24 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %24, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1179
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E.exit": ; preds = %bb4.i16, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
  ret i32 %sum.sroa.0.0.lcssa

bb29.lr.ph:                                       ; preds = %bb3.loopexit, %bb25.lr.ph
  %indvars.iv63 = phi i64 [ 0, %bb25.lr.ph ], [ %indvars.iv.next64, %bb3.loopexit ]
  %sum.sroa.0.042 = phi i32 [ 0, %bb25.lr.ph ], [ %28, %bb3.loopexit ]
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %_70 = icmp ugt i64 %_67, %indvars.iv63
  %_21 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_68, i64 %indvars.iv63
  %25 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  br i1 %_70, label %bb29.lr.ph.split, label %panic8.invoke

bb29.lr.ph.split:                                 ; preds = %bb29.lr.ph
  %26 = getelementptr inbounds nuw i8, ptr %_21, i64 16
  %_72 = load i64, ptr %26, align 8, !noundef !6
  br label %bb29

bb29:                                             ; preds = %bb29.lr.ph.split, %bb34
  %indvars.iv57 = phi i64 [ 0, %bb29.lr.ph.split ], [ %indvars.iv.next58, %bb34 ]
  %sum.sroa.0.139 = phi i32 [ %sum.sroa.0.042, %bb29.lr.ph.split ], [ %28, %bb34 ]
  %exitcond60.not = icmp eq i64 %indvars.iv57, %_72
  br i1 %exitcond60.not, label %panic4, label %bb34

cleanup:                                          ; preds = %panic8.invoke
  %27 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr noalias noundef align 8 dereferenceable(24) %arr) #23
  br label %common.resume

bb34:                                             ; preds = %bb29
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %_73 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_20 = getelementptr inbounds nuw i32, ptr %_73, i64 %indvars.iv57
  %_19 = load i32, ptr %_20, align 4, !noundef !6
  %28 = add i32 %_19, %sum.sroa.0.139
  %exitcond62.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count66
  br i1 %exitcond62.not, label %bb3.loopexit, label %bb29

panic4:                                           ; preds = %bb29
  %umin.le = tail call i64 @llvm.umin.i64(i64 %_72, i64 %18)
  br label %panic8.invoke

bb15:                                             ; preds = %bb15.lr.ph, %bb24
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb24 ], [ 0, %bb15.lr.ph ]
  %_48 = load i64, ptr %19, align 8, !noundef !6
  %_51 = icmp ugt i64 %_48, %indvars.iv
  br i1 %_51, label %bb24, label %panic8.invoke

bb24:                                             ; preds = %bb15
  %29 = sub nsw i64 %indvars.iv52, %indvars.iv
  %30 = trunc nsw i64 %29 to i32
  %_9.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %30, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_49 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_11 = getelementptr inbounds nuw i32, ptr %_49, i64 %indvars.iv
  store i32 %_9.sroa.0.0, ptr %_11, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count55
  br i1 %exitcond.not, label %bb1.loopexit, label %bb15

panic8.invoke:                                    ; preds = %bb15.lr.ph, %bb15, %bb29.lr.ph, %panic4
  %31 = phi i64 [ %umin.le, %panic4 ], [ %indvars.iv63, %bb29.lr.ph ], [ %indvars.iv, %bb15 ], [ %indvars.iv52, %bb15.lr.ph ]
  %32 = phi i64 [ %_72, %panic4 ], [ %_67, %bb29.lr.ph ], [ %_48, %bb15 ], [ %_42, %bb15.lr.ph ]
  %33 = phi ptr [ @alloc_e863ea49af8e4fc7fb8ec6db4b775443, %panic4 ], [ @alloc_1e5f4e5df4528f6bb4ac49f15b0987a0, %bb29.lr.ph ], [ @alloc_df7142f0d48c095c8f3e93fc36af732f, %bb15 ], [ @alloc_e11e5bead5643a05eaf6cfcadf2f29da, %bb15.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %31, i64 noundef %32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %33) #21
          to label %panic8.cont unwind label %cleanup

panic8.cont:                                      ; preds = %panic8.invoke
  unreachable
}
