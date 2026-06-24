define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_6 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_6, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf8b89c71bbfd7a1dE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %3 = ptrtoint ptr %1 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf8b89c71bbfd7a1dE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf8b89c71bbfd7a1dE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %3, %bb10.i.i ], [ 4, %bb17.i.i ]
  %4 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_7 = sext i32 %k to i64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_7, 24
  %or.cond.i.i.i.i = icmp slt i32 %k, 0
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf8b89c71bbfd7a1dE.exit"
  %_8.i.i.i = icmp eq i32 %k, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %5 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf8b89c71bbfd7a1dE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf8b89c71bbfd7a1dE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_7, ptr %v.i, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %5, ptr %7, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %k, 1
  br i1 %_2425.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE.exit.thread172", label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i31
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i31 ], [ %5, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i31 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %11, %bb3.i3.i31 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i31, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %9 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %10 = icmp eq ptr %9, null
  br i1 %10, label %bb3.i.i.i.i.i, label %bb3.i3.i31

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  br i1 %_8.i.i, label %bb7.thread205, label %bb3.lr.ph.thread

bb3.lr.ph.thread:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1098
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_0a312454e82901e40ae5b11056910501) #21
  unreachable

bb3.i3.i31:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %9, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %4, i64 %_21.0.i.i.i, i1 false), !noalias !1107
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_6, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_6, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %11 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_7
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE.exit", label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %8, align 8, !alias.scope !1084, !noalias !1108
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1113
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hf0de684cfbd338f1E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %bb2.i.i.i3.i48, %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i
  %common.resume.op = phi { ptr, i32 } [ %12, %cleanup1.body.i ], [ %13, %bb4.i ], [ %13, %bb2.i.i.i3.i.i ], [ %lpad.phi187, %bb2.i.i.i3.i48 ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1122
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE.exit": ; preds = %bb3.i3.i31
  store i64 %_6, ptr %_15.i.i, align 8, !noalias !1131
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 32
  store ptr %4, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1131
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 40
  store i64 %_6, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_4992 = icmp sgt i32 %n, 0
  br i1 %_4992, label %bb3.preheader, label %bb5.preheader

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE.exit.thread172": ; preds = %bb1.i.i
  store i64 %_6, ptr %5, align 8, !noalias !1131
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i174, align 8, !noalias !1131
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i175 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %_6, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i175, align 8, !noalias !1131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_4992176.not = icmp eq i32 %n, 0
  br i1 %_4992176.not, label %bb5.i.i.i.preheader, label %bb3.preheader

bb3.preheader:                                    ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE.exit", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE.exit.thread172"
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb3

bb5.preheader:                                    ; preds = %bb33, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE.exit"
  %_68100 = icmp sgt i32 %k, 1
  br i1 %_68100, label %bb8.preheader.preheader, label %bb7

bb8.preheader.preheader:                          ; preds = %bb5.preheader
  %16 = add nuw i32 %n, 1
  br label %bb8.preheader

bb3:                                              ; preds = %bb3.preheader, %bb33
  %indvars.iv141 = phi i64 [ 0, %bb3.preheader ], [ %indvars.iv.next142, %bb33 ]
  %_64 = load i64, ptr %14, align 8, !noundef !6
  %_67 = icmp ugt i64 %_64, %indvars.iv141
  br i1 %_67, label %bb33, label %panic11.invoke.invoke

bb5.loopexit:                                     ; preds = %bb8.loopexit, %bb8.preheader
  %_68 = icmp slt i32 %iter1.sroa.0.1103, %k
  %17 = zext i1 %_68 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1103, %17
  br i1 %_68, label %bb8.preheader, label %bb7

bb8.preheader:                                    ; preds = %bb8.preheader.preheader, %bb5.loopexit
  %iter1.sroa.0.1103 = phi i32 [ %iter1.sroa.0.1, %bb5.loopexit ], [ 2, %bb8.preheader.preheader ]
  %iter1.sroa.0.0102 = phi i32 [ %iter1.sroa.0.1103, %bb5.loopexit ], [ 1, %bb8.preheader.preheader ]
  %_7596 = icmp slt i32 %iter1.sroa.0.0102, %n
  br i1 %_7596, label %bb9.lr.ph, label %bb5.loopexit

bb9.lr.ph:                                        ; preds = %bb8.preheader
  %_22 = zext i32 %iter1.sroa.0.0102 to i64
  %_87 = icmp ugt i32 %k, %iter1.sroa.0.0102
  %_21 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %5, i64 %_22
  %18 = getelementptr inbounds nuw i8, ptr %_21, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  %_24 = add nsw i32 %iter1.sroa.0.0102, -1
  %_37 = sext i32 %_24 to i64
  %_105 = icmp ugt i32 %k, %_24
  %_36 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %5, i64 %_37
  %20 = getelementptr inbounds nuw i8, ptr %_36, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_36, i64 8
  br i1 %_87, label %bb9.preheader, label %panic11.invoke.invoke

bb9.preheader:                                    ; preds = %bb9.lr.ph
  %22 = add nsw i64 %_22, -1
  %23 = add nuw nsw i64 %_22, 1
  %_31 = icmp ugt i64 %22, 1
  %24 = getelementptr inbounds nuw i32, ptr %arr, i64 %22
  %indvars.iv.next = add nuw nsw i64 %_22, 1
  %brmerge.1.not = icmp ult i32 %iter1.sroa.0.0102, 2
  %25 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %indvars.iv.next.1 = or disjoint i64 %_22, 2
  br label %bb9

bb7:                                              ; preds = %bb5.loopexit, %bb5.preheader
  %_123104.not = icmp sgt i32 %k, %n
  br i1 %_123104.not, label %bb21, label %bb20.lr.ph

bb7.thread205:                                    ; preds = %bb6.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef -1, i64 noundef %_7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c3572c7fd87e432207143541995dce7a) #21
  unreachable

bb20.lr.ph:                                       ; preds = %bb7
  %_40 = add nsw i32 %k, -1
  %_47 = sext i32 %_40 to i64
  %_46 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %5, i64 %_47
  %26 = getelementptr inbounds nuw i8, ptr %_46, i64 8
  %27 = getelementptr inbounds nuw i8, ptr %_46, i64 16
  %_136 = load i64, ptr %27, align 8, !noundef !6
  %28 = add nuw i32 %n, 1
  br label %bb20

bb20:                                             ; preds = %bb20.lr.ph, %bb61
  %indvars.iv156 = phi i64 [ %_7, %bb20.lr.ph ], [ %indvars.iv.next157, %bb61 ]
  %iter4.sroa.0.0106 = phi i32 [ %_40, %bb20.lr.ph ], [ %36, %bb61 ]
  %sum.sroa.0.0105 = phi i32 [ 0, %bb20.lr.ph ], [ %35, %bb61 ]
  %_48 = sext i32 %iter4.sroa.0.0106 to i64
  %_139 = icmp ugt i64 %_136, %_48
  br i1 %_139, label %bb61, label %panic11.invoke.invoke

bb21:                                             ; preds = %bb61, %bb7
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb7 ], [ %35, %bb61 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE.exit.thread172", %bb21
  %sum.sroa.0.0.lcssa223 = phi i32 [ %sum.sroa.0.0.lcssa, %bb21 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h35ba97a90fd3be5bE.exit.thread172" ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %29, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %5, i64 %_3.sroa.0.012.i.i.i
  %29 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %30 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %31 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %31, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %30, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1156
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %29, %_7
  br i1 %_7.i.i.i, label %bb2.i.i.i3.i, label %bb5.i.i.i

bb2.i.i.i3.i:                                     ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1157
  ret i32 %sum.sroa.0.0.lcssa223

cleanup.thread183:                                ; preds = %panic14.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb5.i.i.i36.preheader

cleanup:                                          ; preds = %panic11.invoke.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  br label %bb5.i.i.i36.preheader

bb5.i.i.i36.preheader:                            ; preds = %cleanup, %cleanup.thread183
  %lpad.phi187 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread183 ], [ %lpad.thr_comm.split-lp, %cleanup ]
  br label %bb5.i.i.i36

bb5.i.i.i36:                                      ; preds = %bb5.i.i.i36.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i43"
  %_3.sroa.0.012.i.i.i37 = phi i64 [ %32, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i43" ], [ 0, %bb5.i.i.i36.preheader ]
  %_6.i.i.i38 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %5, i64 %_3.sroa.0.012.i.i.i37
  %32 = add nuw i64 %_3.sroa.0.012.i.i.i37, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %self1.i.i.i.i1.i.i.i.i39 = load i64, ptr %_6.i.i.i38, align 8, !range !22, !alias.scope !1179, !noalias !1182, !noundef !6
  %_6.i.i.i.i2.i.i.i.i40 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i39, 0
  br i1 %_6.i.i.i.i2.i.i.i.i40, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i43", label %bb2.i.i.i3.i.i.i.i41

bb2.i.i.i3.i.i.i.i41:                             ; preds = %bb5.i.i.i36
  %33 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i39, 2
  %34 = getelementptr inbounds nuw i8, ptr %_6.i.i.i38, i64 8
  %self3.i.i.i.i4.i.i.i.i42 = load ptr, ptr %34, align 8, !alias.scope !1179, !noalias !1182, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i42, i64 noundef %33, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1188
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i43"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i43": ; preds = %bb2.i.i.i3.i.i.i.i41, %bb5.i.i.i36
  %_7.i.i.i44 = icmp eq i64 %32, %_7
  br i1 %_7.i.i.i44, label %bb2.i.i.i3.i48, label %bb5.i.i.i36

bb2.i.i.i3.i48:                                   ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ac0f6f9f147553dE.exit.i.i.i43"
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1189
  br label %common.resume

bb61:                                             ; preds = %bb20
  %_137 = load ptr, ptr %26, align 8, !nonnull !6, !noundef !6
  %_45 = getelementptr inbounds nuw i32, ptr %_137, i64 %_48
  %_44 = load i32, ptr %_45, align 4, !noundef !6
  %35 = add i32 %_44, %sum.sroa.0.0105
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %36 = trunc nsw i64 %indvars.iv156 to i32
  %lftr.wideiv159 = trunc i64 %indvars.iv.next157 to i32
  %exitcond160.not = icmp eq i32 %28, %lftr.wideiv159
  br i1 %exitcond160.not, label %bb21, label %bb20

bb8.loopexit:                                     ; preds = %bb18, %bb18.1, %bb45
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %37 = trunc nuw i64 %indvars.iv153 to i32
  %lftr.wideiv = trunc i64 %indvars.iv.next154 to i32
  %exitcond155.not = icmp eq i32 %16, %lftr.wideiv
  br i1 %exitcond155.not, label %bb5.loopexit, label %bb9

bb9:                                              ; preds = %bb9.preheader, %bb8.loopexit
  %indvars.iv153 = phi i64 [ %23, %bb9.preheader ], [ %indvars.iv.next154, %bb8.loopexit ]
  %iter2.sroa.0.098 = phi i32 [ %iter1.sroa.0.0102, %bb9.preheader ], [ %37, %bb8.loopexit ]
  %_23 = zext nneg i32 %iter2.sroa.0.098 to i64
  %_90 = load i64, ptr %18, align 8, !noundef !6
  %_93 = icmp ugt i64 %_90, %_23
  br i1 %_93, label %bb45, label %panic11.invoke.invoke

bb45:                                             ; preds = %bb9
  %_91 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_20 = getelementptr inbounds nuw i32, ptr %_91, i64 %_23
  store i32 0, ptr %_20, align 4
  %_9494.not = icmp samesign ugt i32 %iter1.sroa.0.0102, %iter2.sroa.0.098
  br i1 %_9494.not, label %bb8.loopexit, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %bb45
  %38 = getelementptr inbounds nuw i32, ptr %arr, i64 %_23
  %_33 = icmp ugt i32 %iter2.sroa.0.098, 1
  %brmerge = or i1 %_31, %_33
  br i1 %brmerge, label %panic11.invoke.invoke.loopexit278.split.loop.exit323, label %bb15

bb15:                                             ; preds = %bb12.lr.ph
  %_29 = load i32, ptr %24, align 4, !noundef !6
  %_32 = load i32, ptr %38, align 4, !noundef !6
  %_28 = icmp slt i32 %_29, %_32
  br i1 %_28, label %bb16, label %bb18

bb16:                                             ; preds = %bb15
  br i1 %_105, label %bb51, label %panic11.invoke.invoke

bb18:                                             ; preds = %bb15, %bb54
  %exitcond152.not = icmp eq i64 %indvars.iv.next, %indvars.iv153
  br i1 %exitcond152.not, label %bb8.loopexit, label %bb12.1

bb12.1:                                           ; preds = %bb18
  br i1 %brmerge.1.not, label %bb15.1, label %panic11.invoke.invoke

bb15.1:                                           ; preds = %bb12.1
  %_29.1 = load i32, ptr %25, align 4, !noundef !6
  %_32.1 = load i32, ptr %38, align 4, !noundef !6
  %_28.1 = icmp slt i32 %_29.1, %_32.1
  br i1 %_28.1, label %bb16.1, label %bb18.1

bb16.1:                                           ; preds = %bb15.1
  br i1 %_105, label %bb51.1, label %panic11.invoke.invoke

bb51.1:                                           ; preds = %bb16.1
  %_107.1 = load i64, ptr %20, align 8, !noundef !6
  %_110.1 = icmp ugt i64 %_107.1, %_22
  br i1 %_110.1, label %bb53.1, label %panic14.invoke

bb53.1:                                           ; preds = %bb51.1
  %_119.1 = load i64, ptr %18, align 8, !noundef !6
  %_122.1 = icmp ugt i64 %_119.1, %_23
  br i1 %_122.1, label %bb54.1, label %panic14.invoke

bb54.1:                                           ; preds = %bb53.1
  %_108.1 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_35.1 = getelementptr inbounds nuw i32, ptr %_108.1, i64 %_22
  %_34.1 = load i32, ptr %_35.1, align 4, !noundef !6
  %_120.1 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_38.1 = getelementptr inbounds nuw i32, ptr %_120.1, i64 %_23
  %39 = load i32, ptr %_38.1, align 4, !noundef !6
  %40 = add i32 %39, %_34.1
  store i32 %40, ptr %_38.1, align 4
  br label %bb18.1

bb18.1:                                           ; preds = %bb54.1, %bb15.1
  %exitcond152.not.1 = icmp eq i64 %indvars.iv.next.1, %indvars.iv153
  br i1 %exitcond152.not.1, label %bb8.loopexit, label %panic11.invoke.invoke.loopexit278.split.loop.exit311

bb51:                                             ; preds = %bb16
  %_107 = load i64, ptr %20, align 8, !noundef !6
  %_110 = icmp ugt i64 %_107, %22
  br i1 %_110, label %bb53, label %panic14.invoke

panic11.invoke.invoke.loopexit278.split.loop.exit311: ; preds = %bb18.1
  %indvars.iv.next147.1.le = add nuw nsw i64 %_22, 1
  br label %panic11.invoke.invoke

panic11.invoke.invoke.loopexit278.split.loop.exit323: ; preds = %bb12.lr.ph
  %indvars.iv146.mux.le = select i1 %_31, i64 %22, i64 %_23
  %alloc_ad3b123de7bbbcc93ad8c6b6c1ebdff3.mux.le = select i1 %_31, ptr @alloc_ad3b123de7bbbcc93ad8c6b6c1ebdff3, ptr @alloc_24c72aa61b91c2b192db8033567ec161
  br label %panic11.invoke.invoke

panic11.invoke.invoke:                            ; preds = %bb3, %bb9.lr.ph, %bb9, %panic11.invoke.invoke.loopexit278.split.loop.exit311, %panic11.invoke.invoke.loopexit278.split.loop.exit323, %bb16.1, %bb12.1, %bb16, %bb20
  %41 = phi i64 [ %_48, %bb20 ], [ %indvars.iv.next147.1.le, %panic11.invoke.invoke.loopexit278.split.loop.exit311 ], [ %indvars.iv146.mux.le, %panic11.invoke.invoke.loopexit278.split.loop.exit323 ], [ %_37, %bb16.1 ], [ %_22, %bb12.1 ], [ %_37, %bb16 ], [ %_23, %bb9 ], [ %_22, %bb9.lr.ph ], [ %indvars.iv141, %bb3 ]
  %42 = phi i64 [ %_136, %bb20 ], [ 2, %panic11.invoke.invoke.loopexit278.split.loop.exit311 ], [ 2, %panic11.invoke.invoke.loopexit278.split.loop.exit323 ], [ %_7, %bb16.1 ], [ 2, %bb12.1 ], [ %_7, %bb16 ], [ %_90, %bb9 ], [ %_7, %bb9.lr.ph ], [ %_64, %bb3 ]
  %43 = phi ptr [ @alloc_6850a72ad08aedc3f9f409943c139748, %bb20 ], [ @alloc_ad3b123de7bbbcc93ad8c6b6c1ebdff3, %panic11.invoke.invoke.loopexit278.split.loop.exit311 ], [ %alloc_ad3b123de7bbbcc93ad8c6b6c1ebdff3.mux.le, %panic11.invoke.invoke.loopexit278.split.loop.exit323 ], [ @alloc_d44678bac854b10d047e4ca8dab27e43, %bb16.1 ], [ @alloc_ad3b123de7bbbcc93ad8c6b6c1ebdff3, %bb12.1 ], [ @alloc_d44678bac854b10d047e4ca8dab27e43, %bb16 ], [ @alloc_1c9c883640de4a5c8244078cc1a67a62, %bb9 ], [ @alloc_9c5289c8f7d5a91955e70d4706a60f6b, %bb9.lr.ph ], [ @alloc_69e40fa8a2eeabd95b6720ee1c6f20f2, %bb3 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %41, i64 noundef %42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %43) #21
          to label %panic11.invoke.cont unwind label %cleanup

panic11.invoke.cont:                              ; preds = %panic11.invoke.invoke
  unreachable

bb53:                                             ; preds = %bb51
  %_119 = load i64, ptr %18, align 8, !noundef !6
  %_122 = icmp ugt i64 %_119, %_23
  br i1 %_122, label %bb54, label %panic14.invoke

bb54:                                             ; preds = %bb53
  %_108 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_35 = getelementptr inbounds nuw i32, ptr %_108, i64 %22
  %_34 = load i32, ptr %_35, align 4, !noundef !6
  %_120 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i32, ptr %_120, i64 %_23
  %44 = load i32, ptr %_38, align 4, !noundef !6
  %45 = add i32 %44, %_34
  store i32 %45, ptr %_38, align 4
  br label %bb18

panic14.invoke:                                   ; preds = %bb53.1, %bb51.1, %bb53, %bb51
  %46 = phi i64 [ %22, %bb51 ], [ %_23, %bb53 ], [ %_22, %bb51.1 ], [ %_23, %bb53.1 ]
  %47 = phi i64 [ %_107, %bb51 ], [ %_119, %bb53 ], [ %_107.1, %bb51.1 ], [ %_119.1, %bb53.1 ]
  %48 = phi ptr [ @alloc_76c290e1f27ec8b1236b3e59b23345ab, %bb51 ], [ @alloc_a2f5de6f9f8562225e3cf1c791e66783, %bb53 ], [ @alloc_76c290e1f27ec8b1236b3e59b23345ab, %bb51.1 ], [ @alloc_a2f5de6f9f8562225e3cf1c791e66783, %bb53.1 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %46, i64 noundef %47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %48) #21
          to label %panic14.cont unwind label %cleanup.thread183

panic14.cont:                                     ; preds = %panic14.invoke
  unreachable

bb33:                                             ; preds = %bb3
  %_65 = load ptr, ptr %15, align 8, !nonnull !6, !noundef !6
  %_11 = getelementptr inbounds nuw i32, ptr %_65, i64 %indvars.iv141
  store i32 1, ptr %_11, align 4
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count
  br i1 %exitcond.not, label %bb5.preheader, label %bb3
}
