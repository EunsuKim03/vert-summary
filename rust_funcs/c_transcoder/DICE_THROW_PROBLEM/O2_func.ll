define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n, i32 noundef %x) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %_7 = sext i32 %x to i64
  %_6 = add nsw i64 %_7, 1
  %_21.0.i.i.i = shl nsw i64 %_6, 2
  %_21.1.i.i.i = icmp ugt i64 %_6, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_6, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7058a6d76df037a3E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7058a6d76df037a3E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7058a6d76df037a3E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_9 = sext i32 %n to i64
  %_8 = add nsw i64 %_9, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_8, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_8, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7058a6d76df037a3E.exit"
  %_8.i.i.i = icmp eq i64 %_8, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7058a6d76df037a3E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h7058a6d76df037a3E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_8, ptr %v.i, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %4, ptr %6, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 0
  br i1 %_2425.i.i.not, label %bb17.i.i16, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i17
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i17 ], [ %4, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i17 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i17 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i17, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i17

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  br i1 %_8.i.i, label %bb1, label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1098
  br label %bb1

bb17.i.i16:                                       ; preds = %bb3.i3.i17, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %4, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i17 ]
  store i64 %_6, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1107
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1107
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_6, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1107
  br label %bb1

bb3.i3.i17:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %8, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %3, i64 %_21.0.i.i.i, i1 false), !noalias !1108
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_6, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_6, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_9
  br i1 %exitcond.not.i.i, label %bb17.i.i16, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1084, !noalias !1109
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1114
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17he03508af9ca7e7dbE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup, %bb4.i18, %bb2.i.i.i3.i, %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i
  %common.resume.op = phi { ptr, i32 } [ %11, %cleanup1.body.i ], [ %12, %bb4.i ], [ %12, %bb2.i.i.i3.i.i ], [ %14, %bb2.i.i.i3.i ], [ %14, %bb4.i18 ], [ %13, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1123
  br label %common.resume

cleanup:                                          ; preds = %panic11.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br i1 %_8.i.i.i, label %common.resume, label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %cleanup.thread, %cleanup
  %14 = phi { ptr, i32 } [ %34, %cleanup.thread ], [ %13, %cleanup ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %15, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i87, i64 %_3.sroa.0.012.i.i.i
  %15 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %16 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %17 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %17, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %16, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1156
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %_3.sroa.0.012.i.i.i, %_9
  br i1 %_7.i.i.i, label %bb4.i18, label %bb5.i.i.i

bb4.i18:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i"
  br i1 %_8.i.i.i, label %common.resume, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i87, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1157
  br label %common.resume

bb1:                                              ; preds = %bb17.i.i16, %bb2.i.i.i3.i.i.i, %bb6.i.i
  %_4.sroa.10.0.i.i87 = phi ptr [ inttoptr (i64 8 to ptr), %bb6.i.i ], [ inttoptr (i64 8 to ptr), %bb2.i.i.i3.i.i.i ], [ %4, %bb17.i.i16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smin.i32(i32 %x, i32 %m)
  %_0.i.not.i138 = icmp slt i32 %_0.sroa.0.0.i, 1
  br i1 %_0.i.not.i138, label %bb6.preheader, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb1
  %_57 = icmp ugt i64 %_8, 1
  %18 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i87, i64 40
  %19 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i87, i64 32
  br i1 %_57, label %bb2.i, label %panic11.invoke

bb6.preheader:                                    ; preds = %bb23, %bb1
  %_0.i.not.i26144 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i26144, label %bb8, label %bb2.i27.lr.ph

bb2.i27.lr.ph:                                    ; preds = %bb6.preheader
  %_0.i.not.i56142 = icmp slt i32 %x, 1
  br label %bb2.i27

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb23
  %iter.sroa.0.0139 = phi i32 [ %spec.select119, %bb23 ], [ 1, %bb2.i.lr.ph ]
  %_19 = zext nneg i32 %iter.sroa.0.0139 to i64
  %_60 = load i64, ptr %18, align 8, !noundef !6
  %_63 = icmp ugt i64 %_60, %_19
  br i1 %_63, label %bb23, label %panic11.invoke

bb6.loopexit:                                     ; preds = %bb9.loopexit, %bb2.i27
  %_0.i.not.i26 = icmp sgt i32 %spec.select120, %n
  %or.cond126 = select i1 %_0.i3.i28, i1 true, i1 %_0.i.not.i26
  br i1 %or.cond126, label %bb8, label %bb2.i27

bb2.i27:                                          ; preds = %bb2.i27.lr.ph, %bb6.loopexit
  %iter1.sroa.0.0145 = phi i32 [ 2, %bb2.i27.lr.ph ], [ %spec.select120, %bb6.loopexit ]
  %_0.i3.i28 = icmp sge i32 %iter1.sroa.0.0145, %n
  %not._0.i3.i28 = xor i1 %_0.i3.i28, true
  %20 = zext i1 %not._0.i3.i28 to i32
  %spec.select120 = add nuw nsw i32 %iter1.sroa.0.0145, %20
  br i1 %_0.i.not.i56142, label %bb6.loopexit, label %bb2.i57.lr.ph

bb2.i57.lr.ph:                                    ; preds = %bb2.i27
  %_43 = add nsw i32 %iter1.sroa.0.0145, -1
  %_42 = sext i32 %_43 to i64
  %_73 = icmp ugt i64 %_8, %_42
  %_41 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i87, i64 %_42
  %21 = getelementptr inbounds nuw i8, ptr %_41, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %_41, i64 8
  %_48 = zext nneg i32 %iter1.sroa.0.0145 to i64
  %_84 = icmp ugt i64 %_8, %_48
  %_47 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i87, i64 %_48
  %23 = getelementptr inbounds nuw i8, ptr %_47, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %_47, i64 8
  br label %bb2.i57

bb8:                                              ; preds = %bb6.loopexit, %bb6.preheader
  %_68.not = icmp eq i32 %n, -1
  br i1 %_68.not, label %panic11.invoke, label %bb25

bb25:                                             ; preds = %bb8
  %_51 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i87, i64 %_9
  %25 = getelementptr inbounds nuw i8, ptr %_51, i64 16
  %_92 = load i64, ptr %25, align 8, !noundef !6
  %_95 = icmp ugt i64 %_92, %_7
  br i1 %_95, label %bb32, label %panic11.invoke

unreachable:                                      ; preds = %panic8
  unreachable

bb32:                                             ; preds = %bb25
  %26 = getelementptr inbounds nuw i8, ptr %_51, i64 8
  %_93 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_50 = getelementptr inbounds nuw i32, ptr %_93, i64 %_7
  %_0 = load i32, ptr %_50, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  br label %bb5.i.i.i37

bb5.i.i.i37:                                      ; preds = %bb32, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i44"
  %_3.sroa.0.012.i.i.i38 = phi i64 [ %27, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i44" ], [ 0, %bb32 ]
  %_6.i.i.i39 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i87, i64 %_3.sroa.0.012.i.i.i38
  %27 = add nuw i64 %_3.sroa.0.012.i.i.i38, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %self1.i.i.i.i1.i.i.i.i40 = load i64, ptr %_6.i.i.i39, align 8, !range !22, !alias.scope !1179, !noalias !1182, !noundef !6
  %_6.i.i.i.i2.i.i.i.i41 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i40, 0
  br i1 %_6.i.i.i.i2.i.i.i.i41, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i44", label %bb2.i.i.i3.i.i.i.i42

bb2.i.i.i3.i.i.i.i42:                             ; preds = %bb5.i.i.i37
  %28 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i40, 2
  %29 = getelementptr inbounds nuw i8, ptr %_6.i.i.i39, i64 8
  %self3.i.i.i.i4.i.i.i.i43 = load ptr, ptr %29, align 8, !alias.scope !1179, !noalias !1182, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i43, i64 noundef %28, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1188
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i44"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i44": ; preds = %bb2.i.i.i3.i.i.i.i42, %bb5.i.i.i37
  %_7.i.i.i45 = icmp eq i64 %_3.sroa.0.012.i.i.i38, %_9
  br i1 %_7.i.i.i45, label %bb4.i46, label %bb5.i.i.i37

bb4.i46:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h51d14347f5a9314dE.exit.i.i.i44"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i87, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1189
  ret i32 %_0

bb9.loopexit:                                     ; preds = %bb31, %bb2.i57
  %_0.i.not.i56 = icmp sgt i32 %spec.select122, %x
  %or.cond127 = select i1 %_0.i3.i58, i1 true, i1 %_0.i.not.i56
  br i1 %or.cond127, label %bb6.loopexit, label %bb2.i57

bb2.i57:                                          ; preds = %bb2.i57.lr.ph, %bb9.loopexit
  %iter2.sroa.0.0143 = phi i32 [ 1, %bb2.i57.lr.ph ], [ %spec.select122, %bb9.loopexit ]
  %_0.i3.i58 = icmp sge i32 %iter2.sroa.0.0143, %x
  %not._0.i3.i58 = xor i1 %_0.i3.i58, true
  %30 = zext i1 %not._0.i3.i58 to i32
  %spec.select122 = add nuw nsw i32 %iter2.sroa.0.0143, %30
  %_0.sroa.0.0.i64 = tail call noundef i32 @llvm.smin.i32(i32 %iter2.sroa.0.0143, i32 %m)
  %_0.i.not.i70140 = icmp slt i32 %_0.sroa.0.0.i64, 1
  br i1 %_0.i.not.i70140, label %bb9.loopexit, label %bb2.i71.lr.ph

bb2.i71.lr.ph:                                    ; preds = %bb2.i57
  %_49 = zext nneg i32 %iter2.sroa.0.0143 to i64
  br i1 %_73, label %bb2.i71, label %panic11.invoke

bb2.i71:                                          ; preds = %bb2.i71.lr.ph, %bb31
  %iter3.sroa.0.0141 = phi i32 [ %spec.select124, %bb31 ], [ 1, %bb2.i71.lr.ph ]
  %_0.i3.i72 = icmp sge i32 %iter3.sroa.0.0141, %_0.sroa.0.0.i64
  %not._0.i3.i72 = xor i1 %_0.i3.i72, true
  %31 = zext i1 %not._0.i3.i72 to i32
  %spec.select124 = add nuw nsw i32 %iter3.sroa.0.0141, %31
  %_45 = sub nsw i32 %iter2.sroa.0.0143, %iter3.sroa.0.0141
  %_44 = sext i32 %_45 to i64
  %_75 = load i64, ptr %21, align 8, !noundef !6
  %_78 = icmp ugt i64 %_75, %_44
  br i1 %_78, label %bb29, label %panic11.invoke

bb29:                                             ; preds = %bb2.i71
  %_76 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_40 = getelementptr inbounds nuw i32, ptr %_76, i64 %_44
  %_39 = load i32, ptr %_40, align 4, !noundef !6
  br i1 %_84, label %bb30, label %panic11.invoke

bb30:                                             ; preds = %bb29
  %_87 = load i64, ptr %23, align 8, !noundef !6
  %_90 = icmp ugt i64 %_87, %_49
  br i1 %_90, label %bb31, label %panic8

bb31:                                             ; preds = %bb30
  %_88 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_46 = getelementptr inbounds nuw i32, ptr %_88, i64 %_49
  %32 = load i32, ptr %_46, align 4, !noundef !6
  %33 = add i32 %32, %_39
  store i32 %33, ptr %_46, align 4
  %_0.i.not.i70 = icmp sgt i32 %spec.select124, %_0.sroa.0.0.i64
  %or.cond128 = select i1 %_0.i3.i72, i1 true, i1 %_0.i.not.i70
  br i1 %or.cond128, label %bb9.loopexit, label %bb2.i71

panic8:                                           ; preds = %bb30
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_49, i64 noundef %_87, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8d7541b78a625eb802b56d2455e50ddc) #21
          to label %unreachable unwind label %cleanup.thread

cleanup.thread:                                   ; preds = %panic8
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i.i.i.preheader

bb23:                                             ; preds = %bb2.i
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0139, %_0.sroa.0.0.i
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %35 = zext i1 %not._0.i3.i to i32
  %spec.select119 = add nuw nsw i32 %iter.sroa.0.0139, %35
  %_61 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_17 = getelementptr inbounds nuw i32, ptr %_61, i64 %_19
  store i32 1, ptr %_17, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select119, %_0.sroa.0.0.i
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb6.preheader, label %bb2.i

panic11.invoke:                                   ; preds = %bb2.i, %bb2.i71.lr.ph, %bb29, %bb2.i71, %bb2.i.lr.ph, %bb25, %bb8
  %36 = phi i64 [ %_9, %bb8 ], [ %_7, %bb25 ], [ 1, %bb2.i.lr.ph ], [ %_44, %bb2.i71 ], [ %_48, %bb29 ], [ %_42, %bb2.i71.lr.ph ], [ %_19, %bb2.i ]
  %37 = phi i64 [ %_8, %bb8 ], [ %_92, %bb25 ], [ %_8, %bb2.i.lr.ph ], [ %_75, %bb2.i71 ], [ %_8, %bb29 ], [ %_8, %bb2.i71.lr.ph ], [ %_60, %bb2.i ]
  %38 = phi ptr [ @alloc_f00ede298b14ec2fa76120a253f5c6ae, %bb8 ], [ @alloc_7d3f8aaa6ac2cc957194a3e93ab0a652, %bb25 ], [ @alloc_e3d21401c6aa205a88e651e9b1ed0d4b, %bb2.i.lr.ph ], [ @alloc_05421d283e5940d0ff933c7ad09a3f0d, %bb2.i71 ], [ @alloc_88d8d7569224b96d495d6268f741c6fe, %bb29 ], [ @alloc_f8fbe59ce21ef3c9574e12d12f23d9c8, %bb2.i71.lr.ph ], [ @alloc_c3ea006f633000c9cf551385f8cf170e, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %36, i64 noundef %37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %38) #21
          to label %panic11.cont unwind label %cleanup

panic11.cont:                                     ; preds = %panic11.invoke
  unreachable
}
