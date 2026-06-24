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
  br i1 %_2425.i.i.not, label %bb17.i.i29, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i30
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i30 ], [ %4, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i30 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i30 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i30, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i30

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

bb17.i.i29:                                       ; preds = %bb3.i3.i30, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %4, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i30 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1107
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1107
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1107
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit"

bb3.i3.i30:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
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
  br i1 %exitcond.not.i.i, label %bb17.i.i29, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1084, !noalias !1109
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1114
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hbabd58f46bec568aE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup, %bb4.i32, %bb2.i.i.i3.i, %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i
  %common.resume.op = phi { ptr, i32 } [ %11, %cleanup1.body.i ], [ %12, %bb4.i ], [ %12, %bb2.i.i.i3.i.i ], [ %lpad.phi243, %bb2.i.i.i3.i ], [ %lpad.phi243, %bb4.i32 ], [ %lpad.thr_comm.split-lp, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1123
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i29
  %_4.sroa.10.0.i.i116 = phi ptr [ inttoptr (i64 8 to ptr), %bb6.i.i ], [ inttoptr (i64 8 to ptr), %bb2.i.i.i3.i.i.i ], [ %4, %bb17.i.i29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i194 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i194, label %bb5.preheader, label %bb2.i

bb5.preheader:                                    ; preds = %bb30, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit"
  %_0.i.not.i38196 = icmp slt i32 %k, 1
  br i1 %_0.i.not.i38196, label %bb8.preheader, label %bb2.i39.lr.ph

bb2.i39.lr.ph:                                    ; preds = %bb5.preheader
  %_101 = icmp ugt i64 %_7, 1
  %13 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i116, i64 40
  %14 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i116, i64 32
  br i1 %_101, label %bb2.i39, label %panic20.invoke

bb2.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit", %bb30
  %iter.sroa.0.0195 = phi i32 [ %spec.select155, %bb30 ], [ 1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h634e26d8b7c6aaecE.exit" ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0195, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %15 = zext i1 %not._0.i3.i to i32
  %spec.select155 = add nuw nsw i32 %iter.sroa.0.0195, %15
  %_18 = zext nneg i32 %iter.sroa.0.0195 to i64
  %_77 = icmp ugt i64 %_7, %_18
  br i1 %_77, label %bb27, label %panic20.invoke

cleanup.thread:                                   ; preds = %panic23.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i.i.i.preheader

cleanup:                                          ; preds = %panic20.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br i1 %_8.i.i.i, label %common.resume, label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %cleanup.thread, %cleanup
  %lpad.phi243 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %16, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i116, i64 %_3.sroa.0.012.i.i.i
  %16 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %17 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %18 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %18, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %17, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1156
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %_3.sroa.0.012.i.i.i, %_8
  br i1 %_7.i.i.i, label %bb4.i32, label %bb5.i.i.i

bb4.i32:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i"
  br i1 %_8.i.i.i, label %common.resume, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i32
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i116, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1157
  br label %common.resume

bb8.preheader:                                    ; preds = %bb33, %bb5.preheader
  %_0.i.not.i51202 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i51202, label %bb10, label %bb2.i52.lr.ph

bb2.i52.lr.ph:                                    ; preds = %bb8.preheader
  %_0.i.not.i81200 = icmp slt i32 %k, 2
  br label %bb2.i52

bb2.i39:                                          ; preds = %bb2.i39.lr.ph, %bb33
  %iter1.sroa.0.0197 = phi i32 [ %spec.select156, %bb33 ], [ 1, %bb2.i39.lr.ph ]
  %_29 = zext nneg i32 %iter1.sroa.0.0197 to i64
  %_104 = load i64, ptr %13, align 8, !noundef !6
  %_107 = icmp ugt i64 %_104, %_29
  br i1 %_107, label %bb33, label %panic20.invoke

bb8.loopexit:                                     ; preds = %bb11.loopexit, %bb2.i52
  %_0.i.not.i51 = icmp sgt i32 %spec.select158, %n
  %or.cond165 = select i1 %_0.i3.i53, i1 true, i1 %_0.i.not.i51
  br i1 %or.cond165, label %bb10, label %bb2.i52

bb2.i52:                                          ; preds = %bb2.i52.lr.ph, %bb8.loopexit
  %iter2.sroa.0.0203 = phi i32 [ 2, %bb2.i52.lr.ph ], [ %spec.select158, %bb8.loopexit ]
  %_0.i3.i53 = icmp sge i32 %iter2.sroa.0.0203, %n
  %not._0.i3.i53 = xor i1 %_0.i3.i53, true
  %19 = zext i1 %not._0.i3.i53 to i32
  %spec.select158 = add nuw nsw i32 %iter2.sroa.0.0203, %19
  br i1 %_0.i.not.i81200, label %bb8.loopexit, label %bb2.i82.lr.ph

bb2.i82.lr.ph:                                    ; preds = %bb2.i52
  %_44 = zext nneg i32 %iter2.sroa.0.0203 to i64
  %_118 = icmp ugt i64 %_7, %_44
  %_43 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i116, i64 %_44
  %20 = getelementptr inbounds nuw i8, ptr %_43, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_43, i64 8
  %_56 = add nsw i64 %_44, -1
  %_129 = icmp ult i64 %_56, %_7
  %_55 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i116, i64 %_56
  %22 = getelementptr inbounds nuw i8, ptr %_55, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %_55, i64 8
  br i1 %_118, label %bb2.i82, label %panic20.invoke

bb10:                                             ; preds = %bb8.loopexit, %bb8.preheader
  %_112.not = icmp eq i32 %n, -1
  br i1 %_112.not, label %panic20.invoke, label %bb35

bb35:                                             ; preds = %bb10
  %_71 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i116, i64 %_8
  %24 = getelementptr inbounds nuw i8, ptr %_71, i64 16
  %_168 = load i64, ptr %24, align 8, !noundef !6
  %_171 = icmp ugt i64 %_168, %_6
  br i1 %_171, label %bb48, label %panic20.invoke

bb48:                                             ; preds = %bb35
  %25 = getelementptr inbounds nuw i8, ptr %_71, i64 8
  %_169 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_70 = getelementptr inbounds nuw i32, ptr %_169, i64 %_6
  %_0 = load i32, ptr %_70, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  br label %bb5.i.i.i62

bb5.i.i.i62:                                      ; preds = %bb48, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i69"
  %_3.sroa.0.012.i.i.i63 = phi i64 [ %26, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i69" ], [ 0, %bb48 ]
  %_6.i.i.i64 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i116, i64 %_3.sroa.0.012.i.i.i63
  %26 = add nuw i64 %_3.sroa.0.012.i.i.i63, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %self1.i.i.i.i1.i.i.i.i65 = load i64, ptr %_6.i.i.i64, align 8, !range !22, !alias.scope !1179, !noalias !1182, !noundef !6
  %_6.i.i.i.i2.i.i.i.i66 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i65, 0
  br i1 %_6.i.i.i.i2.i.i.i.i66, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i69", label %bb2.i.i.i3.i.i.i.i67

bb2.i.i.i3.i.i.i.i67:                             ; preds = %bb5.i.i.i62
  %27 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i65, 2
  %28 = getelementptr inbounds nuw i8, ptr %_6.i.i.i64, i64 8
  %self3.i.i.i.i4.i.i.i.i68 = load ptr, ptr %28, align 8, !alias.scope !1179, !noalias !1182, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i68, i64 noundef %27, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1188
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i69"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i69": ; preds = %bb2.i.i.i3.i.i.i.i67, %bb5.i.i.i62
  %_7.i.i.i70 = icmp eq i64 %_3.sroa.0.012.i.i.i63, %_8
  br i1 %_7.i.i.i70, label %bb4.i71, label %bb5.i.i.i62

bb4.i71:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2d9035506b21a83eE.exit.i.i.i69"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i116, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1189
  ret i32 %_0

bb11.loopexit:                                    ; preds = %bb20
  %_0.i.not.i81 = icmp sgt i32 %spec.select160, %k
  %or.cond166 = select i1 %_0.i3.i83, i1 true, i1 %_0.i.not.i81
  br i1 %or.cond166, label %bb8.loopexit, label %bb2.i82

bb2.i82:                                          ; preds = %bb2.i82.lr.ph, %bb11.loopexit
  %iter3.sroa.0.0201 = phi i32 [ %spec.select160, %bb11.loopexit ], [ 2, %bb2.i82.lr.ph ]
  %_0.i3.i83 = icmp sge i32 %iter3.sroa.0.0201, %k
  %not._0.i3.i83 = xor i1 %_0.i3.i83, true
  %29 = zext i1 %not._0.i3.i83 to i32
  %spec.select160 = add nuw nsw i32 %iter3.sroa.0.0201, %29
  %_45 = zext nneg i32 %iter3.sroa.0.0201 to i64
  %_121 = load i64, ptr %20, align 8, !noundef !6
  %_124 = icmp ugt i64 %_121, %_45
  br i1 %_124, label %bb2.i95.lr.ph, label %panic20.invoke

bb2.i95.lr.ph:                                    ; preds = %bb2.i82
  %_122 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_42 = getelementptr inbounds nuw i32, ptr %_122, i64 %_45
  store i32 2147483647, ptr %_42, align 4
  br i1 %_129, label %bb2.i95, label %panic20.invoke

bb2.i95:                                          ; preds = %bb2.i95.lr.ph, %bb20
  %iter4.sroa.0.0199 = phi i32 [ %spec.select162, %bb20 ], [ 1, %bb2.i95.lr.ph ]
  %_0.i3.i96 = icmp samesign uge i32 %iter4.sroa.0.0199, %iter3.sroa.0.0201
  %not._0.i3.i96 = xor i1 %_0.i3.i96, true
  %30 = zext i1 %not._0.i3.i96 to i32
  %spec.select162 = add nuw nsw i32 %iter4.sroa.0.0199, %30
  %_58 = add nsw i32 %iter4.sroa.0.0199, -1
  %_57 = sext i32 %_58 to i64
  %_131 = load i64, ptr %22, align 8, !noundef !6
  %_134 = icmp ugt i64 %_131, %_57
  br i1 %_134, label %bb42, label %panic20.invoke

bb42:                                             ; preds = %bb2.i95
  %_63 = sub nsw i32 %iter3.sroa.0.0201, %iter4.sroa.0.0199
  %_62 = sext i32 %_63 to i64
  %_141 = load i64, ptr %20, align 8, !noundef !6
  %_144 = icmp ugt i64 %_141, %_62
  br i1 %_144, label %bb44, label %panic20.invoke

bb44:                                             ; preds = %bb42
  %_132 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_54 = getelementptr inbounds nuw i32, ptr %_132, i64 %_57
  %_53 = load i32, ptr %_54, align 4, !noundef !6
  %_142 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_60 = getelementptr inbounds nuw i32, ptr %_142, i64 %_62
  %_59 = load i32, ptr %_60, align 4, !noundef !6
  %_0.sroa.0.0.i102 = tail call noundef i32 @llvm.smax.i32(i32 %_59, i32 %_53)
  %res = add i32 %_0.sroa.0.0.i102, 1
  %_154 = icmp ugt i64 %_141, %_45
  br i1 %_154, label %bb45, label %panic20.invoke

bb45:                                             ; preds = %bb44
  %_66 = getelementptr inbounds nuw i32, ptr %_142, i64 %_45
  %_65 = load i32, ptr %_66, align 4, !noundef !6
  %_64 = icmp slt i32 %res, %_65
  br i1 %_64, label %bb47, label %bb20

bb20:                                             ; preds = %bb45, %bb47
  %_0.i.not.i94 = icmp samesign ugt i32 %spec.select162, %iter3.sroa.0.0201
  %or.cond167 = select i1 %_0.i3.i96, i1 true, i1 %_0.i.not.i94
  br i1 %or.cond167, label %bb11.loopexit, label %bb2.i95

bb47:                                             ; preds = %bb45
  store i32 %res, ptr %_66, align 4
  br label %bb20

bb33:                                             ; preds = %bb2.i39
  %_0.i3.i40 = icmp sge i32 %iter1.sroa.0.0197, %k
  %not._0.i3.i40 = xor i1 %_0.i3.i40, true
  %31 = zext i1 %not._0.i3.i40 to i32
  %spec.select156 = add nuw nsw i32 %iter1.sroa.0.0197, %31
  %_105 = load ptr, ptr %14, align 8, !nonnull !6, !noundef !6
  %_27 = getelementptr inbounds nuw i32, ptr %_105, i64 %_29
  store i32 %iter1.sroa.0.0197, ptr %_27, align 4
  %_0.i.not.i38 = icmp sgt i32 %spec.select156, %k
  %or.cond164 = select i1 %_0.i3.i40, i1 true, i1 %_0.i.not.i38
  br i1 %or.cond164, label %bb8.preheader, label %bb2.i39

bb27:                                             ; preds = %bb2.i
  %_17 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i116, i64 %_18
  %32 = getelementptr inbounds nuw i8, ptr %_17, i64 16
  %_80 = load i64, ptr %32, align 8, !noundef !6
  %_83 = icmp ugt i64 %_80, 1
  br i1 %_83, label %bb29, label %panic23.invoke

panic20.invoke:                                   ; preds = %bb2.i, %bb2.i39, %bb2.i82.lr.ph, %bb2.i95.lr.ph, %bb2.i82, %bb44, %bb42, %bb2.i95, %bb2.i39.lr.ph, %bb35, %bb10
  %33 = phi i64 [ %_8, %bb10 ], [ %_6, %bb35 ], [ 1, %bb2.i39.lr.ph ], [ %_57, %bb2.i95 ], [ %_62, %bb42 ], [ %_45, %bb44 ], [ %_45, %bb2.i82 ], [ %_56, %bb2.i95.lr.ph ], [ %_44, %bb2.i82.lr.ph ], [ %_29, %bb2.i39 ], [ %_18, %bb2.i ]
  %34 = phi i64 [ %_7, %bb10 ], [ %_168, %bb35 ], [ %_7, %bb2.i39.lr.ph ], [ %_131, %bb2.i95 ], [ %_141, %bb42 ], [ %_141, %bb44 ], [ %_121, %bb2.i82 ], [ %_7, %bb2.i95.lr.ph ], [ %_7, %bb2.i82.lr.ph ], [ %_104, %bb2.i39 ], [ %_7, %bb2.i ]
  %35 = phi ptr [ @alloc_fdcf2c6d2150b2fc9bae18ecd7fcd3ba, %bb10 ], [ @alloc_2429a749cd708bad3bd715664c620beb, %bb35 ], [ @alloc_f4c1fc385b1e1b09c5d67512231de85e, %bb2.i39.lr.ph ], [ @alloc_4d7b73b0c4b699d0f47426473d564737, %bb2.i95 ], [ @alloc_eb67e84b433205304f18292273289147, %bb42 ], [ @alloc_0a3293fb90ec7a21ca3ec3f6d8e1128f, %bb44 ], [ @alloc_2f73a3f93ea74f024ba3d3d946c0327b, %bb2.i82 ], [ @alloc_b911eee1ed79bf2f2ab75ea1bd163924, %bb2.i95.lr.ph ], [ @alloc_fc1b892186aa1294ed00c965fc9f7acd, %bb2.i82.lr.ph ], [ @alloc_13ae6f97f744c199421ef8bc95f56e8a, %bb2.i39 ], [ @alloc_a45a3ada32d02356006c6967e63029ea, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %33, i64 noundef %34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %35) #21
          to label %panic20.cont unwind label %cleanup

panic20.cont:                                     ; preds = %panic20.invoke
  unreachable

bb29:                                             ; preds = %bb27
  %36 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %_81 = load ptr, ptr %36, align 8, !nonnull !6, !noundef !6
  %_16 = getelementptr inbounds nuw i8, ptr %_81, i64 4
  store i32 1, ptr %_16, align 4
  %_92 = load i64, ptr %32, align 8, !noundef !6
  %_95.not = icmp eq i64 %_92, 0
  br i1 %_95.not, label %panic23.invoke, label %bb30

bb30:                                             ; preds = %bb29
  %_93 = load ptr, ptr %36, align 8, !nonnull !6, !noundef !6
  store i32 0, ptr %_93, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select155, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb5.preheader, label %bb2.i

panic23.invoke:                                   ; preds = %bb29, %bb27
  %37 = phi i64 [ 1, %bb27 ], [ 0, %bb29 ]
  %38 = phi i64 [ %_80, %bb27 ], [ 0, %bb29 ]
  %39 = phi ptr [ @alloc_c1c7dccd1e4c49c1a9426c88282fb090, %bb27 ], [ @alloc_2f348a379fb378620ae67469b6464b82, %bb29 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %37, i64 noundef %38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %39) #21
          to label %panic23.cont unwind label %cleanup.thread

panic23.cont:                                     ; preds = %panic23.invoke
  unreachable
}
