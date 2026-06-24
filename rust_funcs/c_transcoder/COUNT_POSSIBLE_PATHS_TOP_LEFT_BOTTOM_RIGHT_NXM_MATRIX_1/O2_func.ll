define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %count = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %count)
  %_5 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_6 = sext i32 %m to i64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_6, 24
  %or.cond.i.i.i.i = icmp slt i32 %m, 0
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit"
  %_8.i.i.i = icmp eq i32 %m, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hc1b52f1b767177beE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_6, ptr %v.i, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %4, ptr %6, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %m, 1
  br i1 %_2425.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread118", label %bb13.i.i

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread118": ; preds = %bb1.i.i
  store i64 %_5, ptr %4, align 8, !noalias !1087
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i120, align 8, !noalias !1087
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i121, align 8, !noalias !1087
  br label %bb3.lr.ph

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i26
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i26 ], [ %4, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i26 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %12, %bb3.i3.i26 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i26, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1088
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1088
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i26

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1098

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  store i64 %_6, ptr %v.i, align 8, !noalias !1077
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %10, align 8, !noalias !1077
  %11 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %11, align 8, !alias.scope !1084, !noalias !1099
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1104
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread"

bb3.i3.i26:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %8, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %3, i64 %_21.0.i.i.i, i1 false), !noalias !1113
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1098
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1098
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1098
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %12 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_6
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit", label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1084, !noalias !1114
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1119
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %29, %cleanup ], [ %13, %cleanup1.body.i ], [ %14, %bb4.i ], [ %14, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1128
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %count, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  br label %bb5.preheader

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit": ; preds = %bb3.i3.i26
  store i64 %_5, ptr %_15.i.i, align 8, !noalias !1087
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 32
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1087
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 40
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1087
  br label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread118"
  store i64 %_6, ptr %7, align 8, !alias.scope !1084, !noalias !1138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %count, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %15 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %_52 = load i64, ptr %15, align 8, !noundef !6
  %16 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %_53 = load ptr, ptr %16, align 8, !nonnull !6
  %smax = tail call i32 @llvm.smax.i32(i32 %m, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb3

bb5.preheader:                                    ; preds = %bb25, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h434799ea41db2fe2E.exit.thread"
  %_6258 = icmp sgt i32 %n, 0
  br i1 %_6258, label %bb6.lr.ph, label %bb8.preheader

bb6.lr.ph:                                        ; preds = %bb5.preheader
  %17 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %_71 = load i64, ptr %17, align 8, !noundef !6
  %_74.not = icmp eq i64 %_71, 0
  %18 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %_72 = load ptr, ptr %18, align 8, !nonnull !6
  %19 = getelementptr inbounds nuw i8, ptr %_72, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %_72, i64 8
  br i1 %_74.not, label %panic16.invoke, label %bb6.preheader

bb6.preheader:                                    ; preds = %bb6.lr.ph
  %wide.trip.count102 = zext nneg i32 %n to i64
  br label %bb6

bb3:                                              ; preds = %bb3.lr.ph, %bb25
  %indvars.iv91 = phi i64 [ 0, %bb3.lr.ph ], [ %indvars.iv.next92, %bb25 ]
  %exitcond.not = icmp eq i64 %indvars.iv91, %_52
  br i1 %exitcond.not, label %panic16.invoke, label %bb24

bb8.preheader:                                    ; preds = %bb32, %bb5.preheader
  %_8162 = icmp sgt i32 %m, 1
  br i1 %_8162, label %bb11.preheader.lr.ph, label %bb8.preheader.bb10_crit_edge

bb8.preheader.bb10_crit_edge:                     ; preds = %bb8.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %count, i64 16
  %_89.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb10

bb11.preheader.lr.ph:                             ; preds = %bb8.preheader
  %_9360 = icmp sgt i32 %n, 1
  %21 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %_102 = load ptr, ptr %21, align 8, !nonnull !6
  %22 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %_101 = load i64, ptr %22, align 8
  %wide.trip.count115 = zext nneg i32 %m to i64
  %wide.trip.count109 = zext nneg i32 %n to i64
  br label %bb11.preheader

bb6:                                              ; preds = %bb6.preheader, %bb32
  %indvars.iv97 = phi i64 [ 0, %bb6.preheader ], [ %indvars.iv.next98, %bb32 ]
  %_77 = load i64, ptr %19, align 8, !noundef !6
  %_80 = icmp ugt i64 %_77, %indvars.iv97
  br i1 %_80, label %bb32, label %panic16.invoke

bb8.loopexit:                                     ; preds = %bb49, %bb11.preheader
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %exitcond116.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count115
  br i1 %exitcond116.not, label %bb10, label %bb11.preheader

bb11.preheader:                                   ; preds = %bb11.preheader.lr.ph, %bb8.loopexit
  %indvars.iv111 = phi i64 [ 1, %bb11.preheader.lr.ph ], [ %indvars.iv.next112, %bb8.loopexit ]
  br i1 %_9360, label %bb12.lr.ph, label %bb8.loopexit

bb12.lr.ph:                                       ; preds = %bb11.preheader
  %_28 = add nsw i64 %indvars.iv111, -1
  %_104 = icmp ult i64 %_28, %_101
  %_27 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_102, i64 %_28
  %23 = getelementptr inbounds nuw i8, ptr %_27, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %_114 = icmp ugt i64 %_101, %indvars.iv111
  %_33 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_102, i64 %indvars.iv111
  %25 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %_33, i64 16
  br i1 %_104, label %bb12, label %panic16.invoke

bb10:                                             ; preds = %bb8.loopexit, %bb8.preheader.bb10_crit_edge
  %_89 = phi i64 [ %_89.pre, %bb8.preheader.bb10_crit_edge ], [ %_101, %bb8.loopexit ]
  %_40 = add nsw i32 %m, -1
  %_39 = sext i32 %_40 to i64
  %_92 = icmp ugt i64 %_89, %_39
  br i1 %_92, label %bb38, label %panic16.invoke

bb38:                                             ; preds = %bb10
  %27 = getelementptr inbounds nuw i8, ptr %count, i64 8
  %_90 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_90, i64 %_39
  %_42 = add nsw i32 %n, -1
  %_41 = sext i32 %_42 to i64
  %28 = getelementptr inbounds nuw i8, ptr %_38, i64 16
  %_133 = load i64, ptr %28, align 8, !noundef !6
  %_136 = icmp ugt i64 %_133, %_41
  br i1 %_136, label %bb50, label %panic16.invoke

cleanup:                                          ; preds = %panic16.invoke
  %29 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E"(ptr noalias noundef align 8 dereferenceable(24) %count) #23
  br label %common.resume

bb50:                                             ; preds = %bb38
  %30 = getelementptr inbounds nuw i8, ptr %_38, i64 8
  %_134 = load ptr, ptr %30, align 8, !nonnull !6, !noundef !6
  %_37 = getelementptr inbounds nuw i32, ptr %_134, i64 %_41
  %_0 = load i32, ptr %_37, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb50, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %31, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i" ], [ 0, %bb50 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_90, i64 %_3.sroa.0.012.i.i.i
  %31 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %32 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %33 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %33, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %32, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %31, %_89
  br i1 %_7.i.i.i, label %bb4.i27, label %bb5.i.i.i

bb4.i27:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hd89927a3ddaf30fbE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %count, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i27
  %34 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_90, i64 noundef %34, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h775fb4c842b20801E.exit": ; preds = %bb4.i27, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %count)
  ret i32 %_0

bb12:                                             ; preds = %bb12.lr.ph, %bb49
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %bb49 ], [ 1, %bb12.lr.ph ]
  %_106 = load i64, ptr %23, align 8, !noundef !6
  %_109 = icmp ugt i64 %_106, %indvars.iv104
  br i1 %_109, label %bb45, label %panic16.invoke

bb45:                                             ; preds = %bb12
  %_107 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_26 = getelementptr inbounds nuw i32, ptr %_107, i64 %indvars.iv104
  %_25 = load i32, ptr %_26, align 4, !noundef !6
  br i1 %_114, label %bb46, label %panic16.invoke

bb46:                                             ; preds = %bb45
  %_34 = add nsw i64 %indvars.iv104, -1
  %_117 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_116 = load i64, ptr %26, align 8, !noundef !6
  %_119 = icmp ult i64 %_34, %_116
  br i1 %_119, label %bb47, label %panic16.invoke

bb47:                                             ; preds = %bb46
  %_131 = icmp ugt i64 %_116, %indvars.iv104
  br i1 %_131, label %bb49, label %panic16.invoke

bb49:                                             ; preds = %bb47
  %_32 = getelementptr inbounds nuw i32, ptr %_117, i64 %_34
  %_31 = load i32, ptr %_32, align 4, !noundef !6
  %_35 = getelementptr inbounds nuw i32, ptr %_117, i64 %indvars.iv104
  %35 = add i32 %_31, %_25
  store i32 %35, ptr %_35, align 4
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count109
  br i1 %exitcond110.not, label %bb8.loopexit, label %bb12

bb32:                                             ; preds = %bb6
  %_78 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_16 = getelementptr inbounds nuw i32, ptr %_78, i64 %indvars.iv97
  store i32 1, ptr %_16, align 4
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond103.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count102
  br i1 %exitcond103.not, label %bb8.preheader, label %bb6

bb24:                                             ; preds = %bb3
  %_11 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_53, i64 %indvars.iv91
  %36 = getelementptr inbounds nuw i8, ptr %_11, i64 16
  %_58 = load i64, ptr %36, align 8, !noundef !6
  %_61.not = icmp eq i64 %_58, 0
  br i1 %_61.not, label %panic16.invoke, label %bb25

bb25:                                             ; preds = %bb24
  %37 = getelementptr inbounds nuw i8, ptr %_11, i64 8
  %_59 = load ptr, ptr %37, align 8, !nonnull !6, !noundef !6
  store i32 1, ptr %_59, align 4
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond96.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count
  br i1 %exitcond96.not, label %bb5.preheader, label %bb3

panic16.invoke:                                   ; preds = %bb24, %bb3, %bb6, %bb12.lr.ph, %bb47, %bb46, %bb45, %bb12, %bb10, %bb6.lr.ph, %bb38
  %38 = phi i64 [ %_41, %bb38 ], [ 0, %bb6.lr.ph ], [ %_39, %bb10 ], [ %indvars.iv104, %bb12 ], [ %indvars.iv111, %bb45 ], [ %_34, %bb46 ], [ %indvars.iv104, %bb47 ], [ %_28, %bb12.lr.ph ], [ %indvars.iv97, %bb6 ], [ %_52, %bb3 ], [ 0, %bb24 ]
  %39 = phi i64 [ %_133, %bb38 ], [ 0, %bb6.lr.ph ], [ %_89, %bb10 ], [ %_106, %bb12 ], [ %_101, %bb45 ], [ %_116, %bb46 ], [ %_116, %bb47 ], [ %_101, %bb12.lr.ph ], [ %_77, %bb6 ], [ %_52, %bb3 ], [ 0, %bb24 ]
  %40 = phi ptr [ @alloc_da2511f4b4269b4a7fd5cfca5535e9f4, %bb38 ], [ @alloc_9fc7a9d98fb21370db2478d27f1b49de, %bb6.lr.ph ], [ @alloc_6ab99df21ce01782f0ee6016ad673e76, %bb10 ], [ @alloc_d0f0326656689df9233da8ab90025f95, %bb12 ], [ @alloc_75dc6024975f496abb85872b86361329, %bb45 ], [ @alloc_b94ad5197c47ec9dc4c9a3b2fa2dbbd0, %bb46 ], [ @alloc_cf9c4a5d74661590b1570b557fdfa7d0, %bb47 ], [ @alloc_43974869791014330758c959e8d8e0c6, %bb12.lr.ph ], [ @alloc_2c913550c49240baee728c30af18bb97, %bb6 ], [ @alloc_d0a5002dff78d74011b3f5713d56c529, %bb3 ], [ @alloc_ee513b290a65379b0a0d9252511305b1, %bb24 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %38, i64 noundef %39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %40) #21
          to label %panic16.cont unwind label %cleanup

panic16.cont:                                     ; preds = %panic16.invoke
  unreachable
}
