define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %_59 = alloca [16 x i8], align 8
  %_56 = alloca [16 x i8], align 8
  %_34 = alloca [16 x i8], align 8
  %_31 = alloca [16 x i8], align 8
  %_5 = add i64 %str.1, 1
  %_21.0.i.i.i = shl i64 %_5, 2
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_21.0.i.i.i, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9892cd9dd92eae73E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1080
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1080
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9892cd9dd92eae73E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22, !noalias !1085
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9892cd9dd92eae73E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.4.0.i = phi i64 [ %_5, %bb10.i.i ], [ 0, %bb17.i.i ]
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1086
  %_21.0.i.i.i.i = mul i64 %_5, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %_5, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9892cd9dd92eae73E.exit"
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1090
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #20, !noalias !1090
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9892cd9dd92eae73E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9892cd9dd92eae73E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #22
          to label %.noexc.i unwind label %bb4.i, !noalias !1086

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_5, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %4, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ule i64 %_5, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1086
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %6, align 8, !noalias !1086
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %_2425.i.i = icmp samesign ugt i64 %_5, 1
  br i1 %_2425.i.i, label %bb3.i.i.i.i.i.i, label %bb14.i.i

bb14.i.i:                                         ; preds = %bb1.i.i
  %_17.not.i.i = icmp eq i64 %_5, 0
  br i1 %_17.not.i.i, label %bb6.i.i, label %bb4.thread

bb4.thread:                                       ; preds = %bb14.i.i
  store i64 %_16.sroa.4.0.i, ptr %_4.sroa.10.0.i.i, align 8, !noalias !1096
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i411 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i411, align 8, !noalias !1096
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i412 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i412, align 8, !noalias !1096
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1086
  br label %bb28

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i50
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i50 ], [ %_4.sroa.10.0.i.i, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i50 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %11, %bb3.i3.i50 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1097
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #20, !noalias !1097
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i50

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #22
          to label %.noexc9.i.i unwind label %bb11.i.i, !noalias !1107

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb14.i.i
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %_16.sroa.4.0.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %bb2.i.lr.ph, label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
  %10 = shl nuw i64 %_16.sroa.4.0.i, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %10, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1108
  br label %bb2.i.lr.ph

bb3.i3.i50:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %8, ptr nonnull readonly align 4 %3, i64 %_21.0.i.i.i, i1 false), !noalias !1117
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1107
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %8, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1107
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1107
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %11 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %str.1
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdcbdf7bab652001aE.exit", label %bb3.i.i.i.i.i.i

bb11.i.i:                                         ; preds = %bb3.i.i.i.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1093, !noalias !1118
  %_6.i.i.i.i2.i15.i.i = icmp eq i64 %_16.sroa.4.0.i, 0
  br i1 %_6.i.i.i.i2.i15.i.i, label %cleanup1.body.i, label %bb2.i.i.i3.i16.i.i

bb2.i.i.i3.i16.i.i:                               ; preds = %bb11.i.i
  %13 = shl nuw i64 %_16.sroa.4.0.i, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %13, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1123
  br label %cleanup1.body.i

cleanup1.body.i:                                  ; preds = %bb2.i.i.i3.i16.i.i, %bb11.i.i
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #24, !noalias !1086
  br label %common.resume

common.resume:                                    ; preds = %bb4.i52, %bb2.i.i.i3.i, %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i
  %common.resume.op = phi { ptr, i32 } [ %12, %cleanup1.body.i ], [ %14, %bb4.i ], [ %14, %bb2.i.i.i3.i.i ], [ %23, %bb2.i.i.i3.i ], [ %23, %bb4.i52 ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i.i = icmp eq i64 %_16.sroa.4.0.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
  %15 = shl nuw i64 %_16.sroa.4.0.i, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %15, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1132
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdcbdf7bab652001aE.exit": ; preds = %bb3.i3.i50
  store i64 %_16.sroa.4.0.i, ptr %_15.i.i, align 8, !noalias !1096
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 32
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1096
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 40
  store i64 %_5, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1096
  br label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb2.i.i.i3.i.i.i, %bb6.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hdcbdf7bab652001aE.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1086
  %_125 = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %16 = getelementptr inbounds nuw i8, ptr %_31, i64 8
  %17 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %_56, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %_59, i64 8
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb21, %bb2.i
  %_0.i.not.i = icmp ugt i64 %spec.select258, %str.1
  %or.cond263 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond263, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.0339 = phi i64 [ 1, %bb2.i.lr.ph ], [ %spec.select258, %bb1.loopexit ]
  %_0.i3.i = icmp uge i64 %iter.sroa.0.0339, %str.1
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select258 = add nuw i64 %iter.sroa.0.0339, %_0.i4.i
  %iter4 = sub i64 %_5, %iter.sroa.0.0339
  %_84334.not = icmp eq i64 %_5, %iter.sroa.0.0339
  br i1 %_84334.not, label %bb1.loopexit, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %bb2.i
  %_18 = add i64 %iter.sroa.0.0339, -1
  %_19 = icmp eq i64 %iter.sroa.0.0339, 1
  br label %bb6

cleanup.thread414:                                ; preds = %panic20.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i.i.i.preheader

cleanup:                                          ; preds = %panic24.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %_711.i.i.i = icmp eq i64 %_5, 0
  br i1 %_711.i.i.i, label %bb4.i52, label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %cleanup.thread414, %cleanup
  %lpad.phi417 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread414 ], [ %lpad.thr_comm.split-lp, %cleanup ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %20, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_3.sroa.0.012.i.i.i
  %20 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1156, !noalias !1159, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %21 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %22 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %22, align 8, !alias.scope !1156, !noalias !1159, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %21, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1165
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %_3.sroa.0.012.i.i.i, %str.1
  br i1 %_7.i.i.i, label %bb4.i52, label %bb5.i.i.i

bb4.i52:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i", %cleanup.thread, %cleanup
  %23 = phi { ptr, i32 } [ %26, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi417, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i" ]
  %_6.i.i.i.i2.i = icmp eq i64 %_4.sroa.4.0.i.i, 0
  br i1 %_6.i.i.i.i2.i, label %common.resume, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i52
  %24 = mul nuw i64 %_4.sroa.4.0.i.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %24, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !1166
  br label %common.resume

bb4:                                              ; preds = %bb1.loopexit
  %_83.not = icmp eq i64 %_5, 0
  br i1 %_83.not, label %panic, label %bb28

bb28:                                             ; preds = %bb4.thread, %bb4
  %_77 = add i64 %str.1, -1
  %25 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 16
  %_263 = load i64, ptr %25, align 8, !noundef !6
  %_266 = icmp ult i64 %_77, %_263
  br i1 %_266, label %bb95, label %panic20.invoke

panic:                                            ; preds = %bb4
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_09d9726e9dca430ce46f65da2758a105) #22
          to label %unreachable unwind label %cleanup.thread

cleanup.thread:                                   ; preds = %panic
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %bb4.i52

unreachable:                                      ; preds = %panic
  unreachable

bb95:                                             ; preds = %bb28
  %27 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 8
  %_264 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_75 = getelementptr inbounds nuw i32, ptr %_264, i64 %_77
  %_0 = load i32, ptr %_75, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  br label %bb5.i.i.i56

bb5.i.i.i56:                                      ; preds = %bb95, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i63"
  %_3.sroa.0.012.i.i.i57 = phi i64 [ %28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i63" ], [ 0, %bb95 ]
  %_6.i.i.i58 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_3.sroa.0.012.i.i.i57
  %28 = add nuw i64 %_3.sroa.0.012.i.i.i57, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %self1.i.i.i.i1.i.i.i.i59 = load i64, ptr %_6.i.i.i58, align 8, !range !22, !alias.scope !1188, !noalias !1191, !noundef !6
  %_6.i.i.i.i2.i.i.i.i60 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i59, 0
  br i1 %_6.i.i.i.i2.i.i.i.i60, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i63", label %bb2.i.i.i3.i.i.i.i61

bb2.i.i.i3.i.i.i.i61:                             ; preds = %bb5.i.i.i56
  %29 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i59, 2
  %30 = getelementptr inbounds nuw i8, ptr %_6.i.i.i58, i64 8
  %self3.i.i.i.i4.i.i.i.i62 = load ptr, ptr %30, align 8, !alias.scope !1188, !noalias !1191, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i62, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1197
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i63"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i63": ; preds = %bb2.i.i.i3.i.i.i.i61, %bb5.i.i.i56
  %_7.i.i.i64 = icmp eq i64 %_3.sroa.0.012.i.i.i57, %str.1
  br i1 %_7.i.i.i64, label %bb2.i.i.i3.i68, label %bb5.i.i.i56

bb2.i.i.i3.i68:                                   ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i63"
  %31 = mul nuw i64 %_4.sroa.4.0.i.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !1198
  ret i32 %_0

bb6:                                              ; preds = %bb6.lr.ph, %bb21
  %iter2.sroa.0.1337 = phi i64 [ 1, %bb6.lr.ph ], [ %47, %bb21 ]
  %iter2.sroa.0.0336 = phi i64 [ 0, %bb6.lr.ph ], [ %iter2.sroa.0.1337, %bb21 ]
  %j = add i64 %_18, %iter2.sroa.0.0336
  br i1 %_19, label %bb8, label %bb9

bb9:                                              ; preds = %bb6
  %_104 = icmp ult i64 %iter2.sroa.0.1337, %_5
  br i1 %_104, label %bb34, label %panic24.invoke

bb8:                                              ; preds = %bb6
  %_93 = icmp ult i64 %iter2.sroa.0.0336, %_5
  br i1 %_93, label %bb32, label %panic24.invoke

bb34:                                             ; preds = %bb9
  %_24 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter2.sroa.0.1337
  %32 = getelementptr inbounds nuw i8, ptr %_24, i64 16
  %_106 = load i64, ptr %32, align 8, !noundef !6
  %_109 = icmp ult i64 %j, %_106
  br i1 %_109, label %bb35, label %panic20.invoke

bb35:                                             ; preds = %bb34
  %33 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %_107 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_23 = getelementptr inbounds nuw i32, ptr %_107, i64 %j
  %_22 = load i32, ptr %_23, align 4, !noundef !6
  %_115 = icmp ult i64 %iter2.sroa.0.0336, %_5
  br i1 %_115, label %bb36, label %panic20.invoke

bb36:                                             ; preds = %bb35
  %_27 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter2.sroa.0.0336
  %34 = getelementptr inbounds nuw i8, ptr %_27, i64 16
  %_118 = load i64, ptr %34, align 8, !noundef !6
  %_121 = icmp ult i64 %j, %_118
  br i1 %_121, label %bb37, label %panic20.invoke

bb37:                                             ; preds = %bb36
  %35 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %_119 = load ptr, ptr %35, align 8, !nonnull !6, !noundef !6
  %_26 = getelementptr inbounds nuw i32, ptr %_119, i64 %j
  %36 = add i32 %_22, 1
  store i32 %36, ptr %_26, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_31)
  store ptr %str.0, ptr %_31, align 8
  store ptr %_125, ptr %16, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_129 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_31, i64 noundef %iter2.sroa.0.0336)
  %.not = icmp eq i64 %_129, 0
  br i1 %.not, label %bb41, label %bb39

bb41:                                             ; preds = %bb37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %ptr.i.i = load ptr, ptr %_31, align 8, !alias.scope !1208, !nonnull !6, !noundef !6
  %end_or_len.i.i = load ptr, ptr %16, align 8, !alias.scope !1208, !nonnull !6, !noundef !6
  %_7.i.i70.not = icmp eq ptr %ptr.i.i, %end_or_len.i.i
  br i1 %_7.i.i70.not, label %bb39, label %bb14.i71

bb14.i71:                                         ; preds = %bb41
  %x.i = load i8, ptr %ptr.i.i, align 1, !noalias !1205, !noundef !6
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i76, label %bb4.i72

bb4.i72:                                          ; preds = %bb14.i71
  %_18.i.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1205, !noundef !6
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %37 = or disjoint i32 %_34.i, %_35.i
  %_13.i73 = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i73, label %bb6.i75, label %bb39

bb3.i76:                                          ; preds = %bb14.i71
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb39

bb6.i75:                                          ; preds = %bb4.i72
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1205, !noundef !6
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %38 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb39

bb8.i:                                            ; preds = %bb6.i75
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %ptr.i.i, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %end_or_len.i.i
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1205, !noundef !6
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %39 = or disjoint i32 %_27.i, %_25.i
  br label %bb39

bb39:                                             ; preds = %bb41, %bb4.i72, %bb3.i76, %bb6.i75, %bb8.i, %bb37
  %_29.sroa.0.1 = phi i32 [ 1114112, %bb37 ], [ %_7.i, %bb3.i76 ], [ %39, %bb8.i ], [ %38, %bb6.i75 ], [ %37, %bb4.i72 ], [ 1114112, %bb41 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %str.0, ptr %_34, align 8
  store ptr %_125, ptr %17, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_143 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %iter2.sroa.0.1337)
  %.not39 = icmp eq i64 %_143, 0
  br i1 %.not39, label %bb49, label %bb47.thread

bb49:                                             ; preds = %bb39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %ptr.i.i77 = load ptr, ptr %_34, align 8, !alias.scope !1214, !nonnull !6, !noundef !6
  %end_or_len.i.i78 = load ptr, ptr %17, align 8, !alias.scope !1214, !nonnull !6, !noundef !6
  %_7.i.i79.not = icmp eq ptr %ptr.i.i77, %end_or_len.i.i78
  br i1 %_7.i.i79.not, label %bb47.thread419, label %bb14.i80

bb14.i80:                                         ; preds = %bb49
  %x.i82 = load i8, ptr %ptr.i.i77, align 1, !noalias !1211, !noundef !6
  %_6.i83 = icmp sgt i8 %x.i82, -1
  br i1 %_6.i83, label %bb3.i116, label %bb4.i84

bb4.i84:                                          ; preds = %bb14.i80
  %_18.i.i81 = getelementptr inbounds nuw i8, ptr %ptr.i.i77, i64 1
  %_30.i85 = and i8 %x.i82, 31
  %init.i86 = zext nneg i8 %_30.i85 to i32
  %_7.i10.i87 = icmp ne ptr %_18.i.i81, %end_or_len.i.i78
  tail call void @llvm.assume(i1 %_7.i10.i87)
  %y.i89 = load i8, ptr %_18.i.i81, align 1, !noalias !1211, !noundef !6
  %_34.i90 = shl nuw nsw i32 %init.i86, 6
  %_36.i91 = and i8 %y.i89, 63
  %_35.i92 = zext nneg i8 %_36.i91 to i32
  %40 = or disjoint i32 %_34.i90, %_35.i92
  %_13.i93 = icmp samesign ugt i8 %x.i82, -33
  br i1 %_13.i93, label %bb6.i96, label %bb47

bb3.i116:                                         ; preds = %bb14.i80
  %_7.i117 = zext nneg i8 %x.i82 to i32
  br label %bb47

bb6.i96:                                          ; preds = %bb4.i84
  %_18.i12.i88 = getelementptr inbounds nuw i8, ptr %ptr.i.i77, i64 2
  %_7.i17.i97 = icmp ne ptr %_18.i12.i88, %end_or_len.i.i78
  tail call void @llvm.assume(i1 %_7.i17.i97)
  %z.i99 = load i8, ptr %_18.i12.i88, align 1, !noalias !1211, !noundef !6
  %_40.i100 = shl nuw nsw i32 %_35.i92, 6
  %_42.i101 = and i8 %z.i99, 63
  %_41.i102 = zext nneg i8 %_42.i101 to i32
  %y_z.i103 = or disjoint i32 %_40.i100, %_41.i102
  %_20.i104 = shl nuw nsw i32 %init.i86, 12
  %41 = or disjoint i32 %y_z.i103, %_20.i104
  %_21.i105 = icmp samesign ugt i8 %x.i82, -17
  br i1 %_21.i105, label %bb8.i106, label %bb47

bb8.i106:                                         ; preds = %bb6.i96
  %_18.i19.i98 = getelementptr inbounds nuw i8, ptr %ptr.i.i77, i64 3
  %_7.i24.i107 = icmp ne ptr %_18.i19.i98, %end_or_len.i.i78
  tail call void @llvm.assume(i1 %_7.i24.i107)
  %w.i109 = load i8, ptr %_18.i19.i98, align 1, !noalias !1211, !noundef !6
  %_26.i110 = shl nuw nsw i32 %init.i86, 18
  %_25.i111 = and i32 %_26.i110, 1835008
  %_46.i112 = shl nuw nsw i32 %y_z.i103, 6
  %_48.i113 = and i8 %w.i109, 63
  %_47.i114 = zext nneg i8 %_48.i113 to i32
  %_27.i115 = or disjoint i32 %_46.i112, %_47.i114
  %42 = or disjoint i32 %_27.i115, %_25.i111
  br label %bb47

bb47:                                             ; preds = %bb4.i84, %bb3.i116, %bb6.i96, %bb8.i106
  %spec.select46 = phi i32 [ %_7.i117, %bb3.i116 ], [ %42, %bb8.i106 ], [ %41, %bb6.i96 ], [ %40, %bb4.i84 ]
  %.not40 = icmp eq i32 %_29.sroa.0.1, 1114112
  br i1 %.not40, label %bb54, label %bb55

bb47.thread419:                                   ; preds = %bb49
  %.not40421 = icmp eq i32 %_29.sroa.0.1, 1114112
  br i1 %.not40421, label %bb10, label %bb12

bb47.thread:                                      ; preds = %bb39
  %.not40238 = icmp eq i32 %_29.sroa.0.1, 1114112
  br i1 %.not40238, label %bb10, label %bb12

bb55:                                             ; preds = %bb47
  %.not41 = icmp ne i32 %spec.select46, 1114112
  %43 = icmp eq i32 %_29.sroa.0.1, %spec.select46
  %or.cond = select i1 %.not41, i1 %43, i1 false
  br i1 %or.cond, label %bb10, label %bb12

bb54:                                             ; preds = %bb47
  %44 = icmp eq i32 %spec.select46, 1114112
  br i1 %44, label %bb10, label %bb12

bb12:                                             ; preds = %bb47.thread419, %bb47.thread, %bb55, %bb54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_31)
  %.pre = add nuw i64 %iter2.sroa.0.0336, 2
  br label %bb13

bb10:                                             ; preds = %bb47.thread419, %bb55, %bb47.thread, %bb54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_31)
  %_40 = add nuw i64 %iter2.sroa.0.0336, 2
  %_159 = icmp ult i64 %_40, %_5
  br i1 %_159, label %bb59, label %panic20.invoke

bb13:                                             ; preds = %bb64, %bb12
  %_47.pre-phi = phi i64 [ %_40, %bb64 ], [ %.pre, %bb12 ]
  %_0.i.not.i124332 = icmp ugt i64 %_47.pre-phi, %j
  br i1 %_0.i.not.i124332, label %bb21, label %bb2.i125

bb59:                                             ; preds = %bb10
  %_39 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_40
  %45 = getelementptr inbounds nuw i8, ptr %_39, i64 16
  %_161 = load i64, ptr %45, align 8, !noundef !6
  %_164 = icmp ult i64 %j, %_161
  br i1 %_164, label %bb61, label %panic20.invoke

bb61:                                             ; preds = %bb59
  %_171 = load i64, ptr %34, align 8, !noundef !6
  %_174 = icmp ult i64 %j, %_171
  br i1 %_174, label %bb64, label %panic20.invoke

bb64:                                             ; preds = %bb61
  %46 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  %_162 = load ptr, ptr %46, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i32, ptr %_162, i64 %j
  %_37 = load i32, ptr %_38, align 4, !noundef !6
  %_36 = add i32 %_37, 1
  %_172 = load ptr, ptr %35, align 8, !nonnull !6, !noundef !6
  %_42 = getelementptr inbounds nuw i32, ptr %_172, i64 %j
  %_41 = load i32, ptr %_42, align 4, !noundef !6
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %_36, i32 %_41)
  store i32 %x.y.i, ptr %_42, align 4
  br label %bb13

bb2.i125:                                         ; preds = %bb13, %bb20
  %iter1.sroa.0.0333 = phi i64 [ %spec.select260, %bb20 ], [ %_47.pre-phi, %bb13 ]
  %_0.i3.i126 = icmp uge i64 %iter1.sroa.0.0333, %j
  %not._0.i3.i126 = xor i1 %_0.i3.i126, true
  %_0.i4.i132 = zext i1 %not._0.i3.i126 to i64
  %spec.select260 = add nuw i64 %iter1.sroa.0.0333, %_0.i4.i132
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_56)
  store ptr %str.0, ptr %_56, align 8
  store ptr %_125, ptr %18, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_194 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_56, i64 noundef %iter2.sroa.0.0336)
  %.not42 = icmp eq i64 %_194, 0
  br i1 %.not42, label %bb69, label %bb67

bb21:                                             ; preds = %bb20, %bb13, %bb33
  %_84 = icmp ult i64 %iter2.sroa.0.1337, %iter4
  %47 = add i64 %iter2.sroa.0.1337, 1
  br i1 %_84, label %bb6, label %bb1.loopexit

bb69:                                             ; preds = %bb2.i125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %ptr.i.i134 = load ptr, ptr %_56, align 8, !alias.scope !1220, !nonnull !6, !noundef !6
  %end_or_len.i.i135 = load ptr, ptr %18, align 8, !alias.scope !1220, !nonnull !6, !noundef !6
  %_7.i.i136.not = icmp eq ptr %ptr.i.i134, %end_or_len.i.i135
  br i1 %_7.i.i136.not, label %bb67, label %bb14.i137

bb14.i137:                                        ; preds = %bb69
  %x.i139 = load i8, ptr %ptr.i.i134, align 1, !noalias !1217, !noundef !6
  %_6.i140 = icmp sgt i8 %x.i139, -1
  br i1 %_6.i140, label %bb3.i173, label %bb4.i141

bb4.i141:                                         ; preds = %bb14.i137
  %_18.i.i138 = getelementptr inbounds nuw i8, ptr %ptr.i.i134, i64 1
  %_30.i142 = and i8 %x.i139, 31
  %init.i143 = zext nneg i8 %_30.i142 to i32
  %_7.i10.i144 = icmp ne ptr %_18.i.i138, %end_or_len.i.i135
  tail call void @llvm.assume(i1 %_7.i10.i144)
  %y.i146 = load i8, ptr %_18.i.i138, align 1, !noalias !1217, !noundef !6
  %_34.i147 = shl nuw nsw i32 %init.i143, 6
  %_36.i148 = and i8 %y.i146, 63
  %_35.i149 = zext nneg i8 %_36.i148 to i32
  %48 = or disjoint i32 %_34.i147, %_35.i149
  %_13.i150 = icmp samesign ugt i8 %x.i139, -33
  br i1 %_13.i150, label %bb6.i153, label %bb67

bb3.i173:                                         ; preds = %bb14.i137
  %_7.i174 = zext nneg i8 %x.i139 to i32
  br label %bb67

bb6.i153:                                         ; preds = %bb4.i141
  %_18.i12.i145 = getelementptr inbounds nuw i8, ptr %ptr.i.i134, i64 2
  %_7.i17.i154 = icmp ne ptr %_18.i12.i145, %end_or_len.i.i135
  tail call void @llvm.assume(i1 %_7.i17.i154)
  %z.i156 = load i8, ptr %_18.i12.i145, align 1, !noalias !1217, !noundef !6
  %_40.i157 = shl nuw nsw i32 %_35.i149, 6
  %_42.i158 = and i8 %z.i156, 63
  %_41.i159 = zext nneg i8 %_42.i158 to i32
  %y_z.i160 = or disjoint i32 %_40.i157, %_41.i159
  %_20.i161 = shl nuw nsw i32 %init.i143, 12
  %49 = or disjoint i32 %y_z.i160, %_20.i161
  %_21.i162 = icmp samesign ugt i8 %x.i139, -17
  br i1 %_21.i162, label %bb8.i163, label %bb67

bb8.i163:                                         ; preds = %bb6.i153
  %_18.i19.i155 = getelementptr inbounds nuw i8, ptr %ptr.i.i134, i64 3
  %_7.i24.i164 = icmp ne ptr %_18.i19.i155, %end_or_len.i.i135
  tail call void @llvm.assume(i1 %_7.i24.i164)
  %w.i166 = load i8, ptr %_18.i19.i155, align 1, !noalias !1217, !noundef !6
  %_26.i167 = shl nuw nsw i32 %init.i143, 18
  %_25.i168 = and i32 %_26.i167, 1835008
  %_46.i169 = shl nuw nsw i32 %y_z.i160, 6
  %_48.i170 = and i8 %w.i166, 63
  %_47.i171 = zext nneg i8 %_48.i170 to i32
  %_27.i172 = or disjoint i32 %_46.i169, %_47.i171
  %50 = or disjoint i32 %_27.i172, %_25.i168
  br label %bb67

bb67:                                             ; preds = %bb69, %bb4.i141, %bb3.i173, %bb6.i153, %bb8.i163, %bb2.i125
  %_54.sroa.0.1 = phi i32 [ 1114112, %bb2.i125 ], [ %_7.i174, %bb3.i173 ], [ %50, %bb8.i163 ], [ %49, %bb6.i153 ], [ %48, %bb4.i141 ], [ 1114112, %bb69 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_59)
  store ptr %str.0, ptr %_59, align 8
  store ptr %_125, ptr %19, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_208 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_59, i64 noundef %iter1.sroa.0.0333)
  %.not43 = icmp eq i64 %_208, 0
  br i1 %.not43, label %bb77, label %bb75.thread

bb77:                                             ; preds = %bb67
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %ptr.i.i176 = load ptr, ptr %_59, align 8, !alias.scope !1226, !nonnull !6, !noundef !6
  %end_or_len.i.i177 = load ptr, ptr %19, align 8, !alias.scope !1226, !nonnull !6, !noundef !6
  %_7.i.i178.not = icmp eq ptr %ptr.i.i176, %end_or_len.i.i177
  br i1 %_7.i.i178.not, label %bb75.thread425, label %bb14.i179

bb14.i179:                                        ; preds = %bb77
  %x.i181 = load i8, ptr %ptr.i.i176, align 1, !noalias !1223, !noundef !6
  %_6.i182 = icmp sgt i8 %x.i181, -1
  br i1 %_6.i182, label %bb3.i215, label %bb4.i183

bb4.i183:                                         ; preds = %bb14.i179
  %_18.i.i180 = getelementptr inbounds nuw i8, ptr %ptr.i.i176, i64 1
  %_30.i184 = and i8 %x.i181, 31
  %init.i185 = zext nneg i8 %_30.i184 to i32
  %_7.i10.i186 = icmp ne ptr %_18.i.i180, %end_or_len.i.i177
  tail call void @llvm.assume(i1 %_7.i10.i186)
  %y.i188 = load i8, ptr %_18.i.i180, align 1, !noalias !1223, !noundef !6
  %_34.i189 = shl nuw nsw i32 %init.i185, 6
  %_36.i190 = and i8 %y.i188, 63
  %_35.i191 = zext nneg i8 %_36.i190 to i32
  %51 = or disjoint i32 %_34.i189, %_35.i191
  %_13.i192 = icmp samesign ugt i8 %x.i181, -33
  br i1 %_13.i192, label %bb6.i195, label %bb75

bb3.i215:                                         ; preds = %bb14.i179
  %_7.i216 = zext nneg i8 %x.i181 to i32
  br label %bb75

bb6.i195:                                         ; preds = %bb4.i183
  %_18.i12.i187 = getelementptr inbounds nuw i8, ptr %ptr.i.i176, i64 2
  %_7.i17.i196 = icmp ne ptr %_18.i12.i187, %end_or_len.i.i177
  tail call void @llvm.assume(i1 %_7.i17.i196)
  %z.i198 = load i8, ptr %_18.i12.i187, align 1, !noalias !1223, !noundef !6
  %_40.i199 = shl nuw nsw i32 %_35.i191, 6
  %_42.i200 = and i8 %z.i198, 63
  %_41.i201 = zext nneg i8 %_42.i200 to i32
  %y_z.i202 = or disjoint i32 %_40.i199, %_41.i201
  %_20.i203 = shl nuw nsw i32 %init.i185, 12
  %52 = or disjoint i32 %y_z.i202, %_20.i203
  %_21.i204 = icmp samesign ugt i8 %x.i181, -17
  br i1 %_21.i204, label %bb8.i205, label %bb75

bb8.i205:                                         ; preds = %bb6.i195
  %_18.i19.i197 = getelementptr inbounds nuw i8, ptr %ptr.i.i176, i64 3
  %_7.i24.i206 = icmp ne ptr %_18.i19.i197, %end_or_len.i.i177
  tail call void @llvm.assume(i1 %_7.i24.i206)
  %w.i208 = load i8, ptr %_18.i19.i197, align 1, !noalias !1223, !noundef !6
  %_26.i209 = shl nuw nsw i32 %init.i185, 18
  %_25.i210 = and i32 %_26.i209, 1835008
  %_46.i211 = shl nuw nsw i32 %y_z.i202, 6
  %_48.i212 = and i8 %w.i208, 63
  %_47.i213 = zext nneg i8 %_48.i212 to i32
  %_27.i214 = or disjoint i32 %_46.i211, %_47.i213
  %53 = or disjoint i32 %_27.i214, %_25.i210
  br label %bb75

bb75:                                             ; preds = %bb4.i183, %bb3.i215, %bb6.i195, %bb8.i205
  %spec.select48 = phi i32 [ %_7.i216, %bb3.i215 ], [ %53, %bb8.i205 ], [ %52, %bb6.i195 ], [ %51, %bb4.i183 ]
  %.not44 = icmp eq i32 %_54.sroa.0.1, 1114112
  br i1 %.not44, label %bb82, label %bb83

bb75.thread425:                                   ; preds = %bb77
  %.not44427 = icmp eq i32 %_54.sroa.0.1, 1114112
  br i1 %.not44427, label %bb87, label %bb19

bb75.thread:                                      ; preds = %bb67
  %.not44252 = icmp eq i32 %_54.sroa.0.1, 1114112
  br i1 %.not44252, label %bb87, label %bb19

bb83:                                             ; preds = %bb75
  %.not45 = icmp ne i32 %spec.select48, 1114112
  %54 = icmp eq i32 %_54.sroa.0.1, %spec.select48
  %or.cond262 = select i1 %.not45, i1 %54, i1 false
  br i1 %or.cond262, label %bb87, label %bb19

bb82:                                             ; preds = %bb75
  %55 = icmp eq i32 %spec.select48, 1114112
  br i1 %55, label %bb87, label %bb19

bb19:                                             ; preds = %bb75.thread425, %bb75.thread, %bb83, %bb82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_59)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_56)
  br label %bb20

bb20:                                             ; preds = %bb94, %bb19
  %_0.i.not.i124 = icmp ugt i64 %spec.select260, %j
  %or.cond264 = select i1 %_0.i3.i126, i1 true, i1 %_0.i.not.i124
  br i1 %or.cond264, label %bb21, label %bb2.i125

bb87:                                             ; preds = %bb75.thread425, %bb83, %bb75.thread, %bb82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_59)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_56)
  %_65 = add i64 %iter1.sroa.0.0333, -1
  %_226 = load i64, ptr %32, align 8, !noundef !6
  %_229 = icmp ult i64 %_65, %_226
  br i1 %_229, label %bb88, label %panic24.invoke

bb88:                                             ; preds = %bb87
  %_227 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_63 = getelementptr inbounds nuw i32, ptr %_227, i64 %_65
  %_62 = load i32, ptr %_63, align 4, !noundef !6
  %_69 = add i64 %iter1.sroa.0.0333, 1
  %_234 = icmp ult i64 %_69, %_5
  br i1 %_234, label %bb89, label %panic24.invoke

bb89:                                             ; preds = %bb88
  %_68 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_69
  %56 = getelementptr inbounds nuw i8, ptr %_68, i64 16
  %_236 = load i64, ptr %56, align 8, !noundef !6
  %_239 = icmp ult i64 %j, %_236
  br i1 %_239, label %bb91, label %panic20.invoke

bb91:                                             ; preds = %bb89
  %_246 = load i64, ptr %34, align 8, !noundef !6
  %_249 = icmp ult i64 %j, %_246
  br i1 %_249, label %bb94, label %panic20.invoke

panic20.invoke:                                   ; preds = %bb61, %bb59, %bb10, %bb36, %bb35, %bb34, %bb91, %bb89, %bb28
  %57 = phi i64 [ %_77, %bb28 ], [ %j, %bb89 ], [ %j, %bb91 ], [ %j, %bb34 ], [ %iter2.sroa.0.0336, %bb35 ], [ %j, %bb36 ], [ %_40, %bb10 ], [ %j, %bb59 ], [ %j, %bb61 ]
  %58 = phi i64 [ %_263, %bb28 ], [ %_246, %bb91 ], [ %_236, %bb89 ], [ %_106, %bb34 ], [ %_5, %bb35 ], [ %_118, %bb36 ], [ %_5, %bb10 ], [ %_161, %bb59 ], [ %_171, %bb61 ]
  %59 = phi ptr [ @alloc_7ea99a588233bc662b17535c284e45f0, %bb28 ], [ @alloc_fff4570fd7ff5175315c97e5b351fcd3, %bb91 ], [ @alloc_4a57d5fa5a079133928698c565cbbb0e, %bb89 ], [ @alloc_1b6967bd50a3ed3744b9db0d19da8cab, %bb34 ], [ @alloc_20e56ebe0b68aef944d27b754d6cc860, %bb35 ], [ @alloc_6f099308f8cec46ab1f61428cf774695, %bb36 ], [ @alloc_1b6b3a58d991771f9df5b12abdfe2e86, %bb10 ], [ @alloc_ecb15a8ed04bd1e7364ee97f47c3d1d9, %bb59 ], [ @alloc_fca3c7fc7851ae25cd234b6bef1bf372, %bb61 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %57, i64 noundef %58, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %59) #22
          to label %panic20.cont unwind label %cleanup.thread414

panic20.cont:                                     ; preds = %panic20.invoke
  unreachable

bb94:                                             ; preds = %bb91
  %60 = getelementptr inbounds nuw i8, ptr %_68, i64 8
  %_237 = load ptr, ptr %60, align 8, !nonnull !6, !noundef !6
  %_67 = getelementptr inbounds nuw i32, ptr %_237, i64 %j
  %_66 = load i32, ptr %_67, align 4, !noundef !6
  %_61 = add i32 %_66, %_62
  %_247 = load ptr, ptr %35, align 8, !nonnull !6, !noundef !6
  %_71 = getelementptr inbounds nuw i32, ptr %_247, i64 %j
  %_70 = load i32, ptr %_71, align 4, !noundef !6
  %x.y.i218 = tail call noundef i32 @llvm.smin.i32(i32 %_61, i32 %_70)
  store i32 %x.y.i218, ptr %_71, align 4
  br label %bb20

bb32:                                             ; preds = %bb8
  %_21 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter2.sroa.0.0336
  %61 = getelementptr inbounds nuw i8, ptr %_21, i64 16
  %_96 = load i64, ptr %61, align 8, !noundef !6
  %_99 = icmp ult i64 %j, %_96
  br i1 %_99, label %bb33, label %panic24.invoke

bb33:                                             ; preds = %bb32
  %62 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  %_97 = load ptr, ptr %62, align 8, !nonnull !6, !noundef !6
  %_20 = getelementptr inbounds nuw i32, ptr %_97, i64 %j
  store i32 1, ptr %_20, align 4
  br label %bb21

panic24.invoke:                                   ; preds = %bb32, %bb8, %bb9, %bb88, %bb87
  %63 = phi i64 [ %_65, %bb87 ], [ %_69, %bb88 ], [ %iter2.sroa.0.1337, %bb9 ], [ %iter2.sroa.0.0336, %bb8 ], [ %j, %bb32 ]
  %64 = phi i64 [ %_226, %bb87 ], [ %_5, %bb88 ], [ %_5, %bb9 ], [ %_5, %bb8 ], [ %_96, %bb32 ]
  %65 = phi ptr [ @alloc_f189b43c609a3f1819a996f646fdb5c5, %bb87 ], [ @alloc_9385309506eab2a8069a1d40e6f50c98, %bb88 ], [ @alloc_e0fb644f2835251536e28d976c083ab5, %bb9 ], [ @alloc_68fe8210ffca6323f95345929d5156af, %bb8 ], [ @alloc_eeec4d2fcb69fadc1d546cf32c68ce1f, %bb32 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %63, i64 noundef %64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %65) #22
          to label %panic24.cont unwind label %cleanup

panic24.cont:                                     ; preds = %panic24.invoke
  unreachable
}
