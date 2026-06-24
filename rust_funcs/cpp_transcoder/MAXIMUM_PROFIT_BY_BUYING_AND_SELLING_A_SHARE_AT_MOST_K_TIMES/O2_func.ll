define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %price.sroa.1.0.extract.shift = lshr i64 %0, 32
  %price.sroa.1.0.extract.trunc = trunc nuw i64 %price.sroa.1.0.extract.shift to i32
  %_7 = sext i32 %n to i64
  %_6 = add nsw i64 %_7, 1
  %_21.0.i.i.i = shl nsw i64 %_6, 2
  %_21.1.i.i.i = icmp ugt i64 %_6, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  %1 = trunc i64 %0 to i32
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_6, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h04de51b341525be6E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %4 = ptrtoint ptr %2 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h04de51b341525be6E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h04de51b341525be6E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %4, %bb10.i.i ], [ 4, %bb17.i.i ]
  %5 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_9 = sext i32 %k to i64
  %_8 = add nsw i64 %_9, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_8, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_8, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h04de51b341525be6E.exit"
  %_8.i.i.i = icmp eq i64 %_8, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %6 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h04de51b341525be6E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h04de51b341525be6E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_8, ptr %v.i, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %6, ptr %8, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %k, 0
  br i1 %_2425.i.i.not, label %bb17.i.i19, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i20
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i20 ], [ %6, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i20 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %12, %bb3.i3.i20 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i20, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %10 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb3.i.i.i.i.i, label %bb3.i3.i20

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hedc74ae304ce4e99E.exit", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1098
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hedc74ae304ce4e99E.exit"

bb17.i.i19:                                       ; preds = %bb3.i3.i20, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %6, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i20 ]
  store i64 %_6, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1107
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %5, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1107
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_6, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1107
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hedc74ae304ce4e99E.exit"

bb3.i3.i20:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %10, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %5, i64 %_21.0.i.i.i, i1 false), !noalias !1108
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_6, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_6, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %12 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_9
  br i1 %exitcond.not.i.i, label %bb17.i.i19, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %9, align 8, !alias.scope !1084, !noalias !1109
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1114
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17ha7b4e261e82a415dE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup, %bb4.i22, %bb2.i.i.i3.i, %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i
  %common.resume.op = phi { ptr, i32 } [ %13, %cleanup1.body.i ], [ %14, %bb4.i ], [ %14, %bb2.i.i.i3.i.i ], [ %lpad.phi119, %bb2.i.i.i3.i ], [ %lpad.phi119, %bb4.i22 ], [ %lpad.thr_comm.split-lp, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1123
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hedc74ae304ce4e99E.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i19
  %_4.sroa.10.0.i.i52 = phi ptr [ inttoptr (i64 8 to ptr), %bb6.i.i ], [ inttoptr (i64 8 to ptr), %bb2.i.i.i3.i.i.i ], [ %6, %bb17.i.i19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i83 = icmp slt i32 %k, 1
  br i1 %_0.i.not.i83, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hedc74ae304ce4e99E.exit"
  %_5479 = icmp sgt i32 %n, 1
  %_25 = sub i32 %price.sroa.1.0.extract.trunc, %1
  %_54.not = icmp eq i32 %n, 2
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb37, %bb2.i
  %_0.i.not.i = icmp sgt i32 %spec.select, %k
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.084 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.084, %k
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %15 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.084, %15
  br i1 %_5479, label %bb8.preheader.lr.ph, label %bb1.loopexit

bb8.preheader.lr.ph:                              ; preds = %bb2.i
  %_36 = zext nneg i32 %iter.sroa.0.084 to i64
  %_35 = add nsw i64 %_36, -1
  %_34 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i52, i64 %_35
  %16 = getelementptr inbounds nuw i8, ptr %_34, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  %_72 = icmp ugt i64 %_8, %_36
  %_40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i52, i64 %_36
  %18 = getelementptr inbounds nuw i8, ptr %_40, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %_77.not = icmp ult i64 %_35, %_8
  br i1 %_77.not, label %bb9, label %panic10.invoke

cleanup.thread:                                   ; preds = %panic11.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i.i.i.preheader

cleanup:                                          ; preds = %panic10.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br i1 %_8.i.i.i, label %common.resume, label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %cleanup.thread, %cleanup
  %lpad.phi119 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %20, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i52, i64 %_3.sroa.0.012.i.i.i
  %20 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %21 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %22 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %22, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %21, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1156
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %_3.sroa.0.012.i.i.i, %_9
  br i1 %_7.i.i.i, label %bb4.i22, label %bb5.i.i.i

bb4.i22:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i"
  br i1 %_8.i.i.i, label %common.resume, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i22
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i52, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1157
  br label %common.resume

bb4:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hedc74ae304ce4e99E.exit"
  %_53.not = icmp eq i32 %k, -1
  br i1 %_53.not, label %panic10.invoke, label %bb21

bb21:                                             ; preds = %bb4
  %_47 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i52, i64 %_9
  %_48 = add nsw i64 %_7, -1
  %23 = getelementptr inbounds nuw i8, ptr %_47, i64 16
  %_101 = load i64, ptr %23, align 8, !noundef !6
  %_104 = icmp ult i64 %_48, %_101
  br i1 %_104, label %bb38, label %panic10.invoke

bb38:                                             ; preds = %bb21
  %24 = getelementptr inbounds nuw i8, ptr %_47, i64 8
  %_102 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_46 = getelementptr inbounds nuw i32, ptr %_102, i64 %_48
  %_0 = load i32, ptr %_46, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  br label %bb5.i.i.i26

bb5.i.i.i26:                                      ; preds = %bb38, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i33"
  %_3.sroa.0.012.i.i.i27 = phi i64 [ %25, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i33" ], [ 0, %bb38 ]
  %_6.i.i.i28 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i52, i64 %_3.sroa.0.012.i.i.i27
  %25 = add nuw i64 %_3.sroa.0.012.i.i.i27, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %self1.i.i.i.i1.i.i.i.i29 = load i64, ptr %_6.i.i.i28, align 8, !range !22, !alias.scope !1179, !noalias !1182, !noundef !6
  %_6.i.i.i.i2.i.i.i.i30 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i29, 0
  br i1 %_6.i.i.i.i2.i.i.i.i30, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i33", label %bb2.i.i.i3.i.i.i.i31

bb2.i.i.i3.i.i.i.i31:                             ; preds = %bb5.i.i.i26
  %26 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i29, 2
  %27 = getelementptr inbounds nuw i8, ptr %_6.i.i.i28, i64 8
  %self3.i.i.i.i4.i.i.i.i32 = load ptr, ptr %27, align 8, !alias.scope !1179, !noalias !1182, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i32, i64 noundef %26, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1188
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i33"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i33": ; preds = %bb2.i.i.i3.i.i.i.i31, %bb5.i.i.i26
  %_7.i.i.i34 = icmp eq i64 %_3.sroa.0.012.i.i.i27, %_9
  br i1 %_7.i.i.i34, label %bb4.i35, label %bb5.i.i.i26

bb4.i35:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h58faa89df6ec1625E.exit.i.i.i33"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i52, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1189
  ret i32 %_0

bb9:                                              ; preds = %bb8.preheader.lr.ph
  %_79 = load i64, ptr %16, align 8, !noundef !6
  %_82.not = icmp eq i64 %_79, 0
  br i1 %_82.not, label %panic11.invoke, label %bb10

bb10:                                             ; preds = %bb9
  %_80 = load ptr, ptr %17, align 8, !nonnull !6, !noundef !6
  %_32 = load i32, ptr %_80, align 4, !noundef !6
  %_24 = add i32 %_25, %_32
  br i1 %_72, label %bb32, label %panic11.invoke

bb32:                                             ; preds = %bb10
  %_84 = load i64, ptr %18, align 8, !noundef !6
  switch i64 %_84, label %bb37 [
    i64 0, label %panic11.invoke
    i64 1, label %panic11.invoke.fold.split
  ]

bb37:                                             ; preds = %bb32
  %_85 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_38 = load i32, ptr %_85, align 4, !noundef !6
  %_0.sroa.0.0.i40 = tail call noundef i32 @llvm.smax.i32(i32 %_24, i32 %_38)
  %_44 = getelementptr inbounds nuw i8, ptr %_85, i64 4
  store i32 %_0.sroa.0.0.i40, ptr %_44, align 4
  br i1 %_54.not, label %bb1.loopexit, label %panic10.invoke

panic10.invoke:                                   ; preds = %bb8.preheader.lr.ph, %bb37, %bb21, %bb4
  %28 = phi i64 [ %_9, %bb4 ], [ %_48, %bb21 ], [ %_35, %bb8.preheader.lr.ph ], [ 2, %bb37 ]
  %29 = phi i64 [ %_8, %bb4 ], [ %_101, %bb21 ], [ %_8, %bb8.preheader.lr.ph ], [ 2, %bb37 ]
  %30 = phi ptr [ @alloc_f8d9581fe936e953ac51a7e8b5687314, %bb4 ], [ @alloc_b274709009eb3d9c8a1df5bbf890cf53, %bb21 ], [ @alloc_28aa43d5f64527ce4a67b49f9d52d122, %bb8.preheader.lr.ph ], [ @alloc_35486b20b5ff856ebd8392742e3b3ccd, %bb37 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %28, i64 noundef %29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %30) #21
          to label %panic10.cont unwind label %cleanup

panic10.cont:                                     ; preds = %panic10.invoke
  unreachable

panic11.invoke.fold.split:                        ; preds = %bb32
  br label %panic11.invoke

panic11.invoke:                                   ; preds = %bb32, %panic11.invoke.fold.split, %bb9, %bb10
  %31 = phi i64 [ %_36, %bb10 ], [ 0, %bb32 ], [ 0, %bb9 ], [ 1, %panic11.invoke.fold.split ]
  %32 = phi i64 [ %_8, %bb10 ], [ %_84, %bb32 ], [ %_79, %bb9 ], [ %_84, %panic11.invoke.fold.split ]
  %33 = phi ptr [ @alloc_ef9d9bf0a09eaaed94e6d012d83d0504, %bb10 ], [ @alloc_cee765cebe5878ed92c5ed05969ec737, %bb32 ], [ @alloc_209afce7b4c06ca5af88a1c704ecd021, %bb9 ], [ @alloc_8e894ee9319548fe6c2e6bef8a98c9b5, %panic11.invoke.fold.split ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %31, i64 noundef %32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %33) #21
          to label %panic11.cont unwind label %cleanup.thread

panic11.cont:                                     ; preds = %panic11.invoke
  unreachable
}
