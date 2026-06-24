define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %num, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_8 = sext i32 %1 to i64
  %_7 = add nsw i64 %_8, 1
  %_21.0.i.i.i = shl nsw i64 %_7, 2
  %_21.1.i.i.i = icmp ugt i64 %_7, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  %2 = trunc i64 %0 to i32
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_7, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h38d150f4dc176decE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %3 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %5 = ptrtoint ptr %3 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h38d150f4dc176decE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h38d150f4dc176decE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %5, %bb10.i.i ], [ 4, %bb17.i.i ]
  %6 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_9 = sext i32 %n to i64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_9, 24
  %or.cond.i.i.i.i = icmp slt i32 %n, 0
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h38d150f4dc176decE.exit"
  %_8.i.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %7 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h38d150f4dc176decE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h38d150f4dc176decE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_9, ptr %v.i, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %7, ptr %9, align 8, !noalias !1077
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 1
  br i1 %_2425.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit.thread259", label %bb13.i.i

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit.thread259": ; preds = %bb1.i.i
  store i64 %_7, ptr %7, align 8, !noalias !1087
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i261 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i261, align 8, !noalias !1087
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i262 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %_7, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i262, align 8, !noalias !1087
  br label %bb5.preheader.lr.ph

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i48
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i48 ], [ %7, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i48 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %15, %bb3.i3.i48 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i48, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1088
; call __rustc::__rust_alloc
  %11 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1088
  %12 = icmp eq ptr %11, null
  br i1 %12, label %bb3.i.i.i.i.i, label %bb3.i3.i48

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1098

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  store i64 %_9, ptr %v.i, align 8, !noalias !1077
  %13 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %13, align 8, !noalias !1077
  %14 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %14, align 8, !alias.scope !1084, !noalias !1099
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit.thread", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1104
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit.thread"

bb3.i3.i48:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %11, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %6, i64 %_21.0.i.i.i, i1 false), !noalias !1113
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_7, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1098
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1098
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_7, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1098
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %15 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_9
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit", label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %16 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %10, align 8, !alias.scope !1084, !noalias !1114
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1119
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h0c5fee1ccc81c4caE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %38, %cleanup ], [ %16, %cleanup1.body.i ], [ %17, %bb4.i ], [ %17, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %17 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1128
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit.thread": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_211.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert257 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_212.pre = load ptr, ptr %.phi.trans.insert257, align 8
  br label %bb34.preheader

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit": ; preds = %bb3.i3.i48
  store i64 %_7, ptr %_15.i.i, align 8, !noalias !1087
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 32
  store ptr %6, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1087
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 40
  store i64 %_7, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1087
  br label %bb5.preheader.lr.ph

bb5.preheader.lr.ph:                              ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit.thread259"
  store i64 %_9, ptr %10, align 8, !alias.scope !1084, !noalias !1138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i145 = icmp slt i32 %1, 0
  %18 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_172 = load ptr, ptr %18, align 8, !nonnull !6
  %19 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_171 = load i64, ptr %19, align 8
  %_21 = sub i32 %num, %2
  %_26 = add i32 %num, %2
  %_109.not = icmp eq i64 %_171, 0
  %20 = getelementptr inbounds nuw i8, ptr %_172, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_172, i64 8
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb5.preheader

bb1.loopexit:                                     ; preds = %bb33, %bb5.preheader
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count
  br i1 %exitcond.not, label %bb34.preheader, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb5.preheader.lr.ph, %bb1.loopexit
  %indvars.iv248 = phi i64 [ 0, %bb5.preheader.lr.ph ], [ %indvars.iv.next249, %bb1.loopexit ]
  br i1 %_0.i.not.i145, label %bb1.loopexit, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb5.preheader
  %22 = getelementptr inbounds nuw i32, ptr %arr, i64 %indvars.iv248
  %23 = add nsw i64 %indvars.iv248, -1
  %_174 = icmp ugt i64 %_171, %23
  %_66 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_172, i64 %23
  %24 = getelementptr inbounds nuw i8, ptr %_66, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %_66, i64 8
  %_185 = icmp ugt i64 %_171, %indvars.iv248
  %_71 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_172, i64 %indvars.iv248
  %26 = getelementptr inbounds nuw i8, ptr %_71, i64 16
  %27 = getelementptr inbounds nuw i8, ptr %_71, i64 8
  %28 = trunc nuw nsw i64 %indvars.iv248 to i32
  br label %bb2.i

bb34.preheader:                                   ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit.thread"
  %_5.i.i = phi ptr [ %_212.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit.thread" ], [ %_172, %bb1.loopexit ]
  %len.i.i = phi i64 [ %_211.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h8c90e65631b4b194E.exit.thread" ], [ %_171, %bb1.loopexit ]
  %_83 = add nsw i32 %n, -1
  %_82 = sext i32 %_83 to i64
  %_214 = icmp ugt i64 %len.i.i, %_82
  %_81 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_82
  %29 = getelementptr inbounds nuw i8, ptr %_81, i64 16
  %30 = getelementptr inbounds nuw i8, ptr %_81, i64 8
  %31 = zext i32 %1 to i64
  br label %bb34

bb34:                                             ; preds = %bb34.preheader, %bb78
  %indvars.iv = phi i64 [ %31, %bb34.preheader ], [ %33, %bb78 ]
  %32 = trunc nuw i64 %indvars.iv to i32
  %_204 = icmp sgt i32 %32, 0
  %33 = add nsw i64 %indvars.iv, -1
  br i1 %_204, label %bb35, label %bb36

bb35:                                             ; preds = %bb34
  br i1 %_214, label %bb77, label %panic34.invoke

bb36:                                             ; preds = %bb34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i49, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb36, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %34, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i" ], [ 0, %bb36 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i
  %34 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %35 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %36 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %36, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %35, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %34, %len.i.i
  br i1 %_7.i.i.i, label %bb4.i49, label %bb5.i.i.i

bb4.i49:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i", %bb36
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1169, !noalias !1178, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %bb41, label %bb41.sink.split

bb41.sink.split:                                  ; preds = %bb4.i49, %bb4.i62
  %self1.i.i.i.i1.i.sink = phi i64 [ %self1.i.i.i.i1.i63, %bb4.i62 ], [ %self1.i.i.i.i1.i, %bb4.i49 ]
  %val.sroa.0.0.ph = phi i32 [ %42, %bb4.i62 ], [ -1, %bb4.i49 ]
  %37 = mul nuw i64 %self1.i.i.i.i1.i.sink, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i, i64 noundef %37, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !6
  br label %bb41

bb41:                                             ; preds = %bb41.sink.split, %bb4.i49, %bb4.i62
  %val.sroa.0.0 = phi i32 [ %42, %bb4.i62 ], [ -1, %bb4.i49 ], [ %val.sroa.0.0.ph, %bb41.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %val.sroa.0.0

bb77:                                             ; preds = %bb35
  %_216 = load i64, ptr %29, align 8, !noundef !6
  %_219 = icmp ugt i64 %_216, %33
  br i1 %_219, label %bb78, label %panic34.invoke

cleanup:                                          ; preds = %panic34.invoke
  %38 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h0c5fee1ccc81c4caE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb78:                                             ; preds = %bb77
  %_217 = load ptr, ptr %30, align 8, !nonnull !6, !noundef !6
  %_80 = getelementptr inbounds nuw i32, ptr %_217, i64 %33
  %_79 = load i32, ptr %_80, align 4, !noundef !6
  %_78 = icmp eq i32 %_79, 1
  br i1 %_78, label %bb37, label %bb34

bb37:                                             ; preds = %bb78
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  br label %bb5.i.i.i53

bb5.i.i.i53:                                      ; preds = %bb37, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i60"
  %_3.sroa.0.012.i.i.i54 = phi i64 [ %39, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i60" ], [ 0, %bb37 ]
  %_6.i.i.i55 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i, i64 %_3.sroa.0.012.i.i.i54
  %39 = add nuw i64 %_3.sroa.0.012.i.i.i54, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %self1.i.i.i.i1.i.i.i.i56 = load i64, ptr %_6.i.i.i55, align 8, !range !22, !alias.scope !1198, !noalias !1201, !noundef !6
  %_6.i.i.i.i2.i.i.i.i57 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i56, 0
  br i1 %_6.i.i.i.i2.i.i.i.i57, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i60", label %bb2.i.i.i3.i.i.i.i58

bb2.i.i.i3.i.i.i.i58:                             ; preds = %bb5.i.i.i53
  %40 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i56, 2
  %41 = getelementptr inbounds nuw i8, ptr %_6.i.i.i55, i64 8
  %self3.i.i.i.i4.i.i.i.i59 = load ptr, ptr %41, align 8, !alias.scope !1198, !noalias !1201, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i59, i64 noundef %40, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1205
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i60"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i60": ; preds = %bb2.i.i.i3.i.i.i.i58, %bb5.i.i.i53
  %_7.i.i.i61 = icmp eq i64 %39, %len.i.i
  br i1 %_7.i.i.i61, label %bb4.i62, label %bb5.i.i.i53

bb4.i62:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17ha7fe9cbc540689b8E.exit.i.i.i60"
  %42 = trunc i64 %33 to i32
  %self1.i.i.i.i1.i63 = load i64, ptr %dp, align 8, !range !22, !alias.scope !1206, !noalias !1215, !noundef !6
  %_6.i.i.i.i2.i64 = icmp eq i64 %self1.i.i.i.i1.i63, 0
  br i1 %_6.i.i.i.i2.i64, label %bb41, label %bb41.sink.split

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb33
  %iter.sroa.0.0146 = phi i32 [ 0, %bb2.i.lr.ph ], [ %spec.select, %bb33 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0146, %1
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %43 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0146, %43
  switch i32 %28, label %panic34.invoke [
    i32 0, label %bb9
    i32 1, label %bb18
  ]

bb18:                                             ; preds = %bb2.i
  %_35 = load i32, ptr %22, align 4, !noundef !6
  %_34 = sub i32 %iter.sroa.0.0146, %_35
  %_33 = icmp sgt i32 %_34, -1
  %_39 = add i32 %_35, %iter.sroa.0.0146
  %_38.not = icmp sgt i32 %_39, %1
  br i1 %_33, label %bb20, label %bb27

bb27:                                             ; preds = %bb18
  br i1 %_38.not, label %bb30, label %bb28

bb30:                                             ; preds = %bb27
  br i1 %_185, label %bb70, label %panic34.invoke

bb28:                                             ; preds = %bb27
  br i1 %_174, label %bb29, label %panic34.invoke

bb70:                                             ; preds = %bb30
  %_75 = zext nneg i32 %iter.sroa.0.0146 to i64
  %_200 = load i64, ptr %26, align 8, !noundef !6
  %_203 = icmp ugt i64 %_200, %_75
  br i1 %_203, label %bb71, label %panic34.invoke

bb71:                                             ; preds = %bb70
  %_201 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_73 = getelementptr inbounds nuw i32, ptr %_201, i64 %_75
  store i32 0, ptr %_73, align 4
  br label %bb33

bb29:                                             ; preds = %bb28
  %_69 = sext i32 %_39 to i64
  %_176 = load i64, ptr %24, align 8, !noundef !6
  %_179 = icmp ugt i64 %_176, %_69
  br i1 %_179, label %bb67, label %panic34.invoke

bb67:                                             ; preds = %bb29
  %_177 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_65 = getelementptr inbounds nuw i32, ptr %_177, i64 %_69
  %_64 = load i32, ptr %_65, align 4, !noundef !6
  br i1 %_185, label %bb68, label %panic34.invoke

bb68:                                             ; preds = %bb67
  %_72 = zext nneg i32 %iter.sroa.0.0146 to i64
  %_188 = load i64, ptr %26, align 8, !noundef !6
  %_191 = icmp ugt i64 %_188, %_72
  br i1 %_191, label %bb69, label %panic34.invoke

bb69:                                             ; preds = %bb68
  %_189 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_70 = getelementptr inbounds nuw i32, ptr %_189, i64 %_72
  store i32 %_64, ptr %_70, align 4
  br label %bb33

bb20:                                             ; preds = %bb18
  br i1 %_38.not, label %bb24, label %bb21

bb21:                                             ; preds = %bb20
  br i1 %_174, label %bb22, label %panic34.invoke

bb24:                                             ; preds = %bb20
  br i1 %_174, label %bb25, label %panic34.invoke

bb25:                                             ; preds = %bb24
  %_58 = zext nneg i32 %_34 to i64
  %_154 = load i64, ptr %24, align 8, !noundef !6
  %_157 = icmp ugt i64 %_154, %_58
  br i1 %_157, label %bb63, label %panic34.invoke

bb63:                                             ; preds = %bb25
  %_155 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_54 = getelementptr inbounds nuw i32, ptr %_155, i64 %_58
  %_53 = load i32, ptr %_54, align 4, !noundef !6
  br i1 %_185, label %bb64, label %panic34.invoke

bb64:                                             ; preds = %bb63
  %_61 = zext nneg i32 %iter.sroa.0.0146 to i64
  %_166 = load i64, ptr %26, align 8, !noundef !6
  %_169 = icmp ugt i64 %_166, %_61
  br i1 %_169, label %bb65, label %panic34.invoke

bb65:                                             ; preds = %bb64
  %_167 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_59 = getelementptr inbounds nuw i32, ptr %_167, i64 %_61
  store i32 %_53, ptr %_59, align 4
  br label %bb33

bb22:                                             ; preds = %bb21
  %_45 = zext nneg i32 %_34 to i64
  %_123 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_122 = load i64, ptr %24, align 8, !noundef !6
  %_125 = icmp ugt i64 %_122, %_45
  br i1 %_125, label %bb57, label %panic34.invoke

bb57:                                             ; preds = %bb22
  %_41 = getelementptr inbounds nuw i32, ptr %_123, i64 %_45
  %_40 = load i32, ptr %_41, align 4, !noundef !6
  %_49 = sext i32 %_39 to i64
  %_135 = icmp ugt i64 %_122, %_49
  br i1 %_135, label %bb59, label %panic34.invoke

bb59:                                             ; preds = %bb57
  %_47 = getelementptr inbounds nuw i32, ptr %_123, i64 %_49
  %_46 = load i32, ptr %_47, align 4, !noundef !6
  br i1 %_185, label %bb60, label %panic34.invoke

bb60:                                             ; preds = %bb59
  %_52 = zext nneg i32 %iter.sroa.0.0146 to i64
  %_144 = load i64, ptr %26, align 8, !noundef !6
  %_147 = icmp ugt i64 %_144, %_52
  br i1 %_147, label %bb61, label %panic34.invoke

bb61:                                             ; preds = %bb60
  %_145 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_50 = getelementptr inbounds nuw i32, ptr %_145, i64 %_52
  %44 = or i32 %_46, %_40
  store i32 %44, ptr %_50, align 4
  br label %bb33

bb33:                                             ; preds = %bb55, %bb53, %bb65, %bb61, %bb69, %bb71
  %_0.i.not.i = icmp sgt i32 %spec.select, %1
  %or.cond81 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond81, label %bb1.loopexit, label %bb2.i

bb9:                                              ; preds = %bb2.i
  %_20 = icmp eq i32 %_21, %iter.sroa.0.0146
  %_25 = icmp eq i32 %_26, %iter.sroa.0.0146
  %or.cond = or i1 %_20, %_25
  br i1 %or.cond, label %bb14, label %bb15

bb15:                                             ; preds = %bb9
  br i1 %_109.not, label %panic34.invoke, label %bb54

bb54:                                             ; preds = %bb15
  %_32 = zext nneg i32 %iter.sroa.0.0146 to i64
  %_112 = load i64, ptr %20, align 8, !noundef !6
  %_115 = icmp ugt i64 %_112, %_32
  br i1 %_115, label %bb55, label %panic34.invoke

bb55:                                             ; preds = %bb54
  %_113 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_30 = getelementptr inbounds nuw i32, ptr %_113, i64 %_32
  store i32 0, ptr %_30, align 4
  br label %bb33

bb14:                                             ; preds = %bb9
  br i1 %_109.not, label %panic34.invoke, label %bb52

bb52:                                             ; preds = %bb14
  %_29 = zext nneg i32 %iter.sroa.0.0146 to i64
  %_100 = load i64, ptr %20, align 8, !noundef !6
  %_103 = icmp ugt i64 %_100, %_29
  br i1 %_103, label %bb53, label %panic34.invoke

bb53:                                             ; preds = %bb52
  %_101 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_27 = getelementptr inbounds nuw i32, ptr %_101, i64 %_29
  store i32 1, ptr %_27, align 4
  br label %bb33

panic34.invoke:                                   ; preds = %bb52, %bb14, %bb54, %bb15, %bb60, %bb59, %bb57, %bb22, %bb21, %bb64, %bb63, %bb25, %bb24, %bb68, %bb67, %bb29, %bb28, %bb70, %bb30, %bb2.i, %bb35, %bb77
  %45 = phi i64 [ %33, %bb77 ], [ %_82, %bb35 ], [ %indvars.iv248, %bb2.i ], [ %indvars.iv248, %bb30 ], [ %_75, %bb70 ], [ %23, %bb28 ], [ %_69, %bb29 ], [ 1, %bb67 ], [ %_72, %bb68 ], [ %23, %bb24 ], [ %_58, %bb25 ], [ 1, %bb63 ], [ %_61, %bb64 ], [ %23, %bb21 ], [ %_45, %bb22 ], [ %_49, %bb57 ], [ 1, %bb59 ], [ %_52, %bb60 ], [ 0, %bb15 ], [ %_32, %bb54 ], [ 0, %bb14 ], [ %_29, %bb52 ]
  %46 = phi i64 [ %_216, %bb77 ], [ %len.i.i, %bb35 ], [ 2, %bb2.i ], [ %_171, %bb30 ], [ %_200, %bb70 ], [ %_171, %bb28 ], [ %_176, %bb29 ], [ 1, %bb67 ], [ %_188, %bb68 ], [ %_171, %bb24 ], [ %_154, %bb25 ], [ 1, %bb63 ], [ %_166, %bb64 ], [ %_171, %bb21 ], [ %_122, %bb22 ], [ %_122, %bb57 ], [ 1, %bb59 ], [ %_144, %bb60 ], [ 0, %bb15 ], [ %_112, %bb54 ], [ 0, %bb14 ], [ %_100, %bb52 ]
  %47 = phi ptr [ @alloc_386c73c30fea93eccc8a7f46f1983a1c, %bb77 ], [ @alloc_8544bfb3c8c084936535511a119a084f, %bb35 ], [ @alloc_a7aad532e8fc9d6b67afb0ef51807c9d, %bb2.i ], [ @alloc_ca4318a3aae233dcc8d8939970596e79, %bb30 ], [ @alloc_18f2ded290a7e240f3c77ae1a1d18cec, %bb70 ], [ @alloc_e4a2a57ae5b5158db5410ca2b0fc4911, %bb28 ], [ @alloc_fdc805f4c88fcdefc7ed1e1fae0f0010, %bb29 ], [ @alloc_4de28d89546c5858476c1330acb6fefc, %bb67 ], [ @alloc_f72ab7cdd9f702b12365cbb604335f87, %bb68 ], [ @alloc_0fcf2a4e7696da801f5d16213760d557, %bb24 ], [ @alloc_643c308694e490f30a227da0e0797d5b, %bb25 ], [ @alloc_3ab3dc165b20ab8d6bf6358a2b823572, %bb63 ], [ @alloc_b60d3fcbcf65782f6a0aed7bf14f322c, %bb64 ], [ @alloc_31acd7ca53f70ac5b43620ed7982f35c, %bb21 ], [ @alloc_bede37b29741f9bb5b0006ede25fa67b, %bb22 ], [ @alloc_6a6f11b586cba725f4a3d3108358ec0a, %bb57 ], [ @alloc_0c5d266dc036bd0c491cef68ce06f8da, %bb59 ], [ @alloc_ebd88c669f3567c18b09b5b480517974, %bb60 ], [ @alloc_391f698352d90130dbb8a820f06115a9, %bb15 ], [ @alloc_ef4fe3a8e20ba1cfc7592862c489d9a3, %bb54 ], [ @alloc_a19b72dfc79b3aa2e3715f5d662eaeb2, %bb14 ], [ @alloc_bdfb6b239066b77ed70793146b5c2059, %bb52 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %45, i64 noundef %46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %47) #21
          to label %panic34.cont unwind label %cleanup

panic34.cont:                                     ; preds = %panic34.invoke
  unreachable
}
