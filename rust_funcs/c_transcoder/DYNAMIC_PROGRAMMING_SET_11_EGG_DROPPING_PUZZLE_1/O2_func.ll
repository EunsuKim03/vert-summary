define noundef i32 @f_gold(i32 noundef %n, i32 noundef %k) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %_6 = sext i32 %k to i64
  %_5 = add nsw i64 %_6, 1
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_5, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcfdcf937372f583aE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcfdcf937372f583aE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcfdcf937372f583aE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_8 = sext i32 %n to i64
  %_7 = add nsw i64 %_8, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_7, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_7, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcfdcf937372f583aE.exit"
  %_8.i.i.i = icmp eq i64 %_7, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcfdcf937372f583aE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hcfdcf937372f583aE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_7, ptr %v.i, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %4, ptr %6, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 0
  br i1 %_2425.i.i.not, label %bb17.i.i27, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i28
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i28 ], [ %4, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i28 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i28 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i28, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i28

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1098
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit"

bb17.i.i27:                                       ; preds = %bb3.i3.i28, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %4, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i28 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1107
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1107
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1107
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit"

bb3.i3.i28:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %8, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %3, i64 %_21.0.i.i.i, i1 false), !noalias !1108
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_8
  br i1 %exitcond.not.i.i, label %bb17.i.i27, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1084, !noalias !1109
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1114
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup, %bb4.i30, %bb2.i.i.i3.i, %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i
  %common.resume.op = phi { ptr, i32 } [ %11, %cleanup1.body.i ], [ %12, %bb4.i ], [ %12, %bb2.i.i.i3.i.i ], [ %17, %bb2.i.i.i3.i ], [ %17, %bb4.i30 ], [ %16, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1123
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i27
  %_4.sroa.10.0.i.i113 = phi ptr [ inttoptr (i64 8 to ptr), %bb6.i.i ], [ inttoptr (i64 8 to ptr), %bb2.i.i.i3.i.i.i ], [ %4, %bb17.i.i27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i189 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i189, label %bb5.preheader, label %bb2.i

bb5.preheader:                                    ; preds = %bb28, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit"
  %_0.i.not.i36191 = icmp slt i32 %k, 1
  br i1 %_0.i.not.i36191, label %bb8.preheader, label %bb2.i37.lr.ph

bb2.i37.lr.ph:                                    ; preds = %bb5.preheader
  %_87 = icmp ugt i64 %_7, 1
  %13 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i113, i64 40
  %14 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i113, i64 32
  br i1 %_87, label %bb2.i37, label %panic20.invoke

bb2.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit", %bb28
  %iter.sroa.0.0190 = phi i32 [ %spec.select152, %bb28 ], [ 1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit" ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0190, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %15 = zext i1 %not._0.i3.i to i32
  %spec.select152 = add nuw nsw i32 %iter.sroa.0.0190, %15
  %_18 = zext nneg i32 %iter.sroa.0.0190 to i64
  %_75 = icmp ugt i64 %_7, %_18
  br i1 %_75, label %bb27, label %panic20.invoke

cleanup:                                          ; preds = %panic20.invoke
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br i1 %_8.i.i.i, label %common.resume, label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %cleanup.thread, %cleanup
  %17 = phi { ptr, i32 } [ %39, %cleanup.thread ], [ %16, %cleanup ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %18, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i113, i64 %_3.sroa.0.012.i.i.i
  %18 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %19 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %20 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %20, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %19, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1156
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %_3.sroa.0.012.i.i.i, %_8
  br i1 %_7.i.i.i, label %bb4.i30, label %bb5.i.i.i

bb4.i30:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i"
  br i1 %_8.i.i.i, label %common.resume, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i30
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i113, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1157
  br label %common.resume

bb8.preheader:                                    ; preds = %bb31, %bb5.preheader
  %_0.i.not.i49197 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i49197, label %bb10, label %bb2.i50.lr.ph

bb2.i50.lr.ph:                                    ; preds = %bb8.preheader
  %_0.i.not.i79195 = icmp slt i32 %k, 2
  br label %bb2.i50

bb2.i37:                                          ; preds = %bb2.i37.lr.ph, %bb31
  %iter1.sroa.0.0192 = phi i32 [ %spec.select153, %bb31 ], [ 1, %bb2.i37.lr.ph ]
  %_27 = zext nneg i32 %iter1.sroa.0.0192 to i64
  %_90 = load i64, ptr %13, align 8, !noundef !6
  %_93 = icmp ugt i64 %_90, %_27
  br i1 %_93, label %bb31, label %panic20.invoke

bb8.loopexit:                                     ; preds = %bb11.loopexit, %bb2.i50
  %_0.i.not.i49 = icmp sgt i32 %spec.select155, %n
  %or.cond162 = select i1 %_0.i3.i51, i1 true, i1 %_0.i.not.i49
  br i1 %or.cond162, label %bb10, label %bb2.i50

bb2.i50:                                          ; preds = %bb2.i50.lr.ph, %bb8.loopexit
  %iter2.sroa.0.0198 = phi i32 [ 2, %bb2.i50.lr.ph ], [ %spec.select155, %bb8.loopexit ]
  %_0.i3.i51 = icmp sge i32 %iter2.sroa.0.0198, %n
  %not._0.i3.i51 = xor i1 %_0.i3.i51, true
  %21 = zext i1 %not._0.i3.i51 to i32
  %spec.select155 = add nuw nsw i32 %iter2.sroa.0.0198, %21
  br i1 %_0.i.not.i79195, label %bb8.loopexit, label %bb2.i80.lr.ph

bb2.i80.lr.ph:                                    ; preds = %bb2.i50
  %_42 = zext nneg i32 %iter2.sroa.0.0198 to i64
  %_104 = icmp ugt i64 %_7, %_42
  %_41 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i113, i64 %_42
  %22 = getelementptr inbounds nuw i8, ptr %_41, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %_41, i64 8
  %_54 = add nsw i64 %_42, -1
  %_115 = icmp ult i64 %_54, %_7
  %_53 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i113, i64 %_54
  %24 = getelementptr inbounds nuw i8, ptr %_53, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %_53, i64 8
  br i1 %_104, label %bb2.i80, label %panic20.invoke

bb10:                                             ; preds = %bb8.loopexit, %bb8.preheader
  %_98.not = icmp eq i32 %n, -1
  br i1 %_98.not, label %panic20.invoke, label %bb33

bb33:                                             ; preds = %bb10
  %_69 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i113, i64 %_8
  %26 = getelementptr inbounds nuw i8, ptr %_69, i64 16
  %_154 = load i64, ptr %26, align 8, !noundef !6
  %_157 = icmp ugt i64 %_154, %_6
  br i1 %_157, label %bb46, label %panic20.invoke

unreachable:                                      ; preds = %panic21
  unreachable

bb46:                                             ; preds = %bb33
  %27 = getelementptr inbounds nuw i8, ptr %_69, i64 8
  %_155 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_68 = getelementptr inbounds nuw i32, ptr %_155, i64 %_6
  %_0 = load i32, ptr %_68, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  br label %bb5.i.i.i60

bb5.i.i.i60:                                      ; preds = %bb46, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i67"
  %_3.sroa.0.012.i.i.i61 = phi i64 [ %28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i67" ], [ 0, %bb46 ]
  %_6.i.i.i62 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i113, i64 %_3.sroa.0.012.i.i.i61
  %28 = add nuw i64 %_3.sroa.0.012.i.i.i61, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %self1.i.i.i.i1.i.i.i.i63 = load i64, ptr %_6.i.i.i62, align 8, !range !22, !alias.scope !1179, !noalias !1182, !noundef !6
  %_6.i.i.i.i2.i.i.i.i64 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i63, 0
  br i1 %_6.i.i.i.i2.i.i.i.i64, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i67", label %bb2.i.i.i3.i.i.i.i65

bb2.i.i.i3.i.i.i.i65:                             ; preds = %bb5.i.i.i60
  %29 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i63, 2
  %30 = getelementptr inbounds nuw i8, ptr %_6.i.i.i62, i64 8
  %self3.i.i.i.i4.i.i.i.i66 = load ptr, ptr %30, align 8, !alias.scope !1179, !noalias !1182, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i66, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1188
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i67"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i67": ; preds = %bb2.i.i.i3.i.i.i.i65, %bb5.i.i.i60
  %_7.i.i.i68 = icmp eq i64 %_3.sroa.0.012.i.i.i61, %_8
  br i1 %_7.i.i.i68, label %bb4.i69, label %bb5.i.i.i60

bb4.i69:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i67"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i113, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1189
  ret i32 %_0

bb11.loopexit:                                    ; preds = %bb20
  %_0.i.not.i79 = icmp sgt i32 %spec.select157, %k
  %or.cond163 = select i1 %_0.i3.i81, i1 true, i1 %_0.i.not.i79
  br i1 %or.cond163, label %bb8.loopexit, label %bb2.i80

bb2.i80:                                          ; preds = %bb2.i80.lr.ph, %bb11.loopexit
  %iter3.sroa.0.0196 = phi i32 [ %spec.select157, %bb11.loopexit ], [ 2, %bb2.i80.lr.ph ]
  %_0.i3.i81 = icmp sge i32 %iter3.sroa.0.0196, %k
  %not._0.i3.i81 = xor i1 %_0.i3.i81, true
  %31 = zext i1 %not._0.i3.i81 to i32
  %spec.select157 = add nuw nsw i32 %iter3.sroa.0.0196, %31
  %_43 = zext nneg i32 %iter3.sroa.0.0196 to i64
  %_107 = load i64, ptr %22, align 8, !noundef !6
  %_110 = icmp ugt i64 %_107, %_43
  br i1 %_110, label %bb2.i93.lr.ph, label %panic20.invoke

bb2.i93.lr.ph:                                    ; preds = %bb2.i80
  %_108 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_40 = getelementptr inbounds nuw i32, ptr %_108, i64 %_43
  store i32 2147483647, ptr %_40, align 4
  br i1 %_115, label %bb2.i93, label %panic20.invoke

bb2.i93:                                          ; preds = %bb2.i93.lr.ph, %bb20
  %iter4.sroa.0.0194 = phi i32 [ %spec.select159, %bb20 ], [ 1, %bb2.i93.lr.ph ]
  %_0.i3.i94 = icmp samesign uge i32 %iter4.sroa.0.0194, %iter3.sroa.0.0196
  %not._0.i3.i94 = xor i1 %_0.i3.i94, true
  %32 = zext i1 %not._0.i3.i94 to i32
  %spec.select159 = add nuw nsw i32 %iter4.sroa.0.0194, %32
  %_56 = add nsw i32 %iter4.sroa.0.0194, -1
  %_55 = sext i32 %_56 to i64
  %_117 = load i64, ptr %24, align 8, !noundef !6
  %_120 = icmp ugt i64 %_117, %_55
  br i1 %_120, label %bb40, label %panic20.invoke

bb40:                                             ; preds = %bb2.i93
  %_61 = sub nsw i32 %iter3.sroa.0.0196, %iter4.sroa.0.0194
  %_60 = sext i32 %_61 to i64
  %_127 = load i64, ptr %22, align 8, !noundef !6
  %_130 = icmp ugt i64 %_127, %_60
  br i1 %_130, label %bb42, label %panic20.invoke

bb42:                                             ; preds = %bb40
  %_118 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_52 = getelementptr inbounds nuw i32, ptr %_118, i64 %_55
  %_51 = load i32, ptr %_52, align 4, !noundef !6
  %_128 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_58 = getelementptr inbounds nuw i32, ptr %_128, i64 %_60
  %_57 = load i32, ptr %_58, align 4, !noundef !6
  %_0.sroa.0.0.i100 = tail call noundef i32 @llvm.smax.i32(i32 %_57, i32 %_51)
  %res = add i32 %_0.sroa.0.0.i100, 1
  %_140 = icmp ugt i64 %_127, %_43
  br i1 %_140, label %bb43, label %panic20.invoke

bb43:                                             ; preds = %bb42
  %_64 = getelementptr inbounds nuw i32, ptr %_128, i64 %_43
  %_63 = load i32, ptr %_64, align 4, !noundef !6
  %_62 = icmp slt i32 %res, %_63
  br i1 %_62, label %bb45, label %bb20

bb20:                                             ; preds = %bb43, %bb45
  %_0.i.not.i92 = icmp samesign ugt i32 %spec.select159, %iter3.sroa.0.0196
  %or.cond164 = select i1 %_0.i3.i94, i1 true, i1 %_0.i.not.i92
  br i1 %or.cond164, label %bb11.loopexit, label %bb2.i93

bb45:                                             ; preds = %bb43
  store i32 %res, ptr %_64, align 4
  br label %bb20

bb31:                                             ; preds = %bb2.i37
  %_0.i3.i38 = icmp sge i32 %iter1.sroa.0.0192, %k
  %not._0.i3.i38 = xor i1 %_0.i3.i38, true
  %33 = zext i1 %not._0.i3.i38 to i32
  %spec.select153 = add nuw nsw i32 %iter1.sroa.0.0192, %33
  %_91 = load ptr, ptr %14, align 8, !nonnull !6, !noundef !6
  %_25 = getelementptr inbounds nuw i32, ptr %_91, i64 %_27
  store i32 %iter1.sroa.0.0192, ptr %_25, align 4
  %_0.i.not.i36 = icmp sgt i32 %spec.select153, %k
  %or.cond161 = select i1 %_0.i3.i38, i1 true, i1 %_0.i.not.i36
  br i1 %or.cond161, label %bb8.preheader, label %bb2.i37

bb27:                                             ; preds = %bb2.i
  %_17 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i113, i64 %_18
  %34 = getelementptr inbounds nuw i8, ptr %_17, i64 16
  %_78 = load i64, ptr %34, align 8, !noundef !6
  %_81 = icmp ugt i64 %_78, 1
  br i1 %_81, label %bb28, label %panic21

panic20.invoke:                                   ; preds = %bb2.i, %bb2.i37, %bb2.i80.lr.ph, %bb2.i93.lr.ph, %bb2.i80, %bb42, %bb40, %bb2.i93, %bb2.i37.lr.ph, %bb33, %bb10
  %35 = phi i64 [ %_8, %bb10 ], [ %_6, %bb33 ], [ 1, %bb2.i37.lr.ph ], [ %_55, %bb2.i93 ], [ %_60, %bb40 ], [ %_43, %bb42 ], [ %_43, %bb2.i80 ], [ %_54, %bb2.i93.lr.ph ], [ %_42, %bb2.i80.lr.ph ], [ %_27, %bb2.i37 ], [ %_18, %bb2.i ]
  %36 = phi i64 [ %_7, %bb10 ], [ %_154, %bb33 ], [ %_7, %bb2.i37.lr.ph ], [ %_117, %bb2.i93 ], [ %_127, %bb40 ], [ %_127, %bb42 ], [ %_107, %bb2.i80 ], [ %_7, %bb2.i93.lr.ph ], [ %_7, %bb2.i80.lr.ph ], [ %_90, %bb2.i37 ], [ %_7, %bb2.i ]
  %37 = phi ptr [ @alloc_979425176b9e4e936d365fbedae723fa, %bb10 ], [ @alloc_e7bb9824e3ee364bf45d0b902cc723c3, %bb33 ], [ @alloc_bfa1fe9798ef53d444f653cd4902de1e, %bb2.i37.lr.ph ], [ @alloc_94aaeeae065667cd5c793bdc0798a67c, %bb2.i93 ], [ @alloc_0c31d2bfb1bb6ba7b3f17241e4a35ddd, %bb40 ], [ @alloc_32c73f12a7be86413eb87fc0861dcc27, %bb42 ], [ @alloc_922e797aeef720d763533eb4ab0d8a96, %bb2.i80 ], [ @alloc_657f197df126bcf32c674d9d668e890c, %bb2.i93.lr.ph ], [ @alloc_6a0aa63816c39acff13056d09d596af5, %bb2.i80.lr.ph ], [ @alloc_0e229f4cc200af877ee383e1d6d6508c, %bb2.i37 ], [ @alloc_5703a26db8bc9ce61e1f1ea4fc9d51b8, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %35, i64 noundef %36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %37) #21
          to label %panic20.cont unwind label %cleanup

panic20.cont:                                     ; preds = %panic20.invoke
  unreachable

bb28:                                             ; preds = %bb27
  %38 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %_79 = load ptr, ptr %38, align 8, !nonnull !6, !noundef !6
  %_16 = getelementptr inbounds nuw i8, ptr %_79, i64 4
  store i32 1, ptr %_16, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select152, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb5.preheader, label %bb2.i

panic21:                                          ; preds = %bb27
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 1, i64 noundef %_78, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e141c136a3b1e0d8b8320110c912c63b) #21
          to label %unreachable unwind label %cleanup.thread

cleanup.thread:                                   ; preds = %panic21
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i.i.i.preheader
}
