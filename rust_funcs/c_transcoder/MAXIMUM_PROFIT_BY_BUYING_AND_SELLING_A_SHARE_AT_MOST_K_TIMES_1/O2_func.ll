define noundef i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %k) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %profit = alloca [24 x i8], align 8
  %price.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %price.sroa.2.0.extract.shift = lshr i64 %0, 32
  %price.sroa.2.0.extract.trunc = trunc nuw i64 %price.sroa.2.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %profit)
  %iter2 = sext i32 %n to i64
  %_6 = add nsw i64 %iter2, 1
  %_21.0.i.i.i = shl nsw i64 %_6, 2
  %_21.1.i.i.i = icmp ugt i64 %_6, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_6, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07d35ce36765adcfE.exit", label %bb3.i4.i

bb3.i4.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i4.i
  %3 = ptrtoint ptr %1 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07d35ce36765adcfE.exit"

bb14.i:                                           ; preds = %bb3.i4.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i4.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07d35ce36765adcfE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %3, %bb10.i.i ], [ 4, %bb17.i.i ]
  %4 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_9 = add i32 %k, 1
  %_8 = sext i32 %_9 to i64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_8, 24
  %or.cond.i.i.i.i = icmp slt i32 %_9, 0
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07d35ce36765adcfE.exit"
  %_8.i.i.i = icmp eq i32 %_9, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %5 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07d35ce36765adcfE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h07d35ce36765adcfE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_8, ptr %v.i, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %5, ptr %7, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %k, 0
  br i1 %_2425.i.i.not, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit", label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %5, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %13, %bb3.i3.i ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %9 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %10 = icmp eq ptr %9, null
  br i1 %10, label %bb3.i.i.i.i.i, label %bb3.i3.i

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  store i64 %_8, ptr %v.i, align 8, !noalias !1077
  %11 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %11, align 8, !noalias !1077
  %12 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %12, align 8, !alias.scope !1084, !noalias !1098
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.thread", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.thread"

bb3.i3.i:                                         ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %9, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %4, i64 %_21.0.i.i.i, i1 false), !noalias !1112
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_6, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_6, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %13 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %_28.i.i, %_8
  br i1 %exitcond.not.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit", label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %8, align 8, !alias.scope !1084, !noalias !1113
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1118
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17ha3b7f6464cf31c5eE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %22, %cleanup ], [ %14, %cleanup1.body.i ], [ %15, %bb4.i ], [ %15, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %15 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1127
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.thread": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %profit, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  br label %bb2.i.lr.ph

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit": ; preds = %bb3.i3.i, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %5, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i ]
  store i64 %_6, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1137
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %4, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1137
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_6, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1137
  store i64 %_8, ptr %8, align 8, !alias.scope !1084, !noalias !1138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %profit, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_11 = sext i32 %k to i64
  %_0.i.not.i66 = icmp eq i32 %k, 0
  br i1 %_0.i.not.i66, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.bb4_crit_edge", label %bb2.i.lr.ph

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.bb4_crit_edge": ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %profit, i64 16
  %_46.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb4

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.thread", %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit"
  %_11102 = phi i64 [ -1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.thread" ], [ %_11, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit" ]
  %_5063 = icmp ugt i32 %n, 1
  %16 = getelementptr inbounds nuw i8, ptr %profit, i64 8
  %_56 = load ptr, ptr %16, align 8, !nonnull !6
  %17 = getelementptr inbounds nuw i8, ptr %profit, i64 16
  %_55 = load i64, ptr %17, align 8
  %_27 = sitofp i32 %price.sroa.0.0.extract.trunc to float
  %_35 = sitofp i32 %price.sroa.2.0.extract.trunc to float
  %exitcond.not = icmp eq i32 %n, 2
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb24, %bb2.i
  %_0.i.not.i = icmp ugt i64 %spec.select, %_11102
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.067 = phi i64 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp uge i64 %iter.sroa.0.067, %_11102
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select = add nuw i64 %iter.sroa.0.067, %_0.i4.i
  br i1 %_5063, label %bb15.lr.ph, label %bb1.loopexit

bb15.lr.ph:                                       ; preds = %bb2.i
  %_25 = add i64 %iter.sroa.0.067, -1
  %_58 = icmp ult i64 %_25, %_55
  %_24 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_56, i64 %_25
  %18 = getelementptr inbounds nuw i8, ptr %_24, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %_68 = icmp ult i64 %iter.sroa.0.067, %_55
  %_33 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_56, i64 %iter.sroa.0.067
  %20 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %_33, i64 16
  br i1 %_58, label %bb15.preheader, label %panic11.invoke

bb15.preheader:                                   ; preds = %bb15.lr.ph
  %_60 = load i64, ptr %18, align 8, !noundef !6
  %_63.not = icmp eq i64 %_60, 0
  br i1 %_63.not, label %panic11.invoke, label %bb6

cleanup:                                          ; preds = %panic11.invoke
  %22 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17ha3b7f6464cf31c5eE"(ptr noalias noundef align 8 dereferenceable(24) %profit) #23
  br label %common.resume

bb4:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.bb4_crit_edge"
  %_11101 = phi i64 [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.bb4_crit_edge" ], [ %_11102, %bb1.loopexit ]
  %_46 = phi i64 [ %_46.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9a19352482a1ef62E.exit.bb4_crit_edge" ], [ %_55, %bb1.loopexit ]
  %_49 = icmp ugt i64 %_46, %_11101
  br i1 %_49, label %bb14, label %panic11.invoke

bb14:                                             ; preds = %bb4
  %23 = getelementptr inbounds nuw i8, ptr %profit, i64 8
  %_47 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_43 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_47, i64 %_11101
  %_44 = add nsw i64 %iter2, -1
  %24 = getelementptr inbounds nuw i8, ptr %_43, i64 16
  %_87 = load i64, ptr %24, align 8, !noundef !6
  %_90 = icmp ult i64 %_44, %_87
  br i1 %_90, label %bb25, label %panic11.invoke

bb25:                                             ; preds = %bb14
  %25 = getelementptr inbounds nuw i8, ptr %_43, i64 8
  %_88 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_42 = getelementptr inbounds nuw float, ptr %_88, i64 %_44
  %_41 = load float, ptr %_42, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb25, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h702d6fdea300b01fE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %26, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h702d6fdea300b01fE.exit.i.i.i" ], [ 0, %bb25 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_47, i64 %_3.sroa.0.012.i.i.i
  %26 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h702d6fdea300b01fE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %27 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %28 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %28, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %27, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h702d6fdea300b01fE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h702d6fdea300b01fE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %26, %_46
  br i1 %_7.i.i.i, label %bb4.i19, label %bb5.i.i.i

bb4.i19:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h702d6fdea300b01fE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %profit, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17ha3b7f6464cf31c5eE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i19
  %29 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_47, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17ha3b7f6464cf31c5eE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17ha3b7f6464cf31c5eE.exit": ; preds = %bb4.i19, %bb2.i.i.i3.i
  %_0 = tail call i32 @llvm.fptosi.sat.i32.f32(float %_41)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %profit)
  ret i32 %_0

bb6:                                              ; preds = %bb15.preheader
  %_61 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_22 = load float, ptr %_61, align 4, !noundef !6
  %_21 = fsub float %_22, %_27
  %30 = tail call float @llvm.maxnum.f32(float %_21, float 0xFFF0000000000000)
  br i1 %_68, label %bb20, label %panic11.invoke

bb20:                                             ; preds = %bb6
  %_70 = load i64, ptr %21, align 8, !noundef !6
  switch i64 %_70, label %bb24 [
    i64 0, label %panic11.invoke
    i64 1, label %panic11.invoke.loopexit134
  ]

panic9:                                           ; preds = %bb20.1
  br label %panic11.invoke

bb24:                                             ; preds = %bb20
  %_71 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_31 = load float, ptr %_71, align 4, !noundef !6
  %_34 = fadd float %30, %_35
  %31 = tail call float @llvm.maxnum.f32(float %_31, float %_34)
  %_39 = getelementptr inbounds nuw i8, ptr %_71, i64 4
  store float %31, ptr %_39, align 4
  br i1 %exitcond.not, label %bb1.loopexit, label %bb15.1

bb15.1:                                           ; preds = %bb24
  %_60.1 = load i64, ptr %18, align 8, !noundef !6
  %_63.1 = icmp ugt i64 %_60.1, 1
  br i1 %_63.1, label %bb20.1, label %panic11.invoke

bb20.1:                                           ; preds = %bb15.1
  %_70.1 = load i64, ptr %21, align 8, !noundef !6
  %_73.1 = icmp ugt i64 %_70.1, 1
  br i1 %_73.1, label %panic9, label %panic11.invoke

panic11.invoke.loopexit134:                       ; preds = %bb20
  br label %panic11.invoke

panic11.invoke:                                   ; preds = %bb6, %bb15.preheader, %bb15.lr.ph, %bb20, %panic11.invoke.loopexit134, %bb20.1, %bb15.1, %bb14, %bb4, %panic9
  %32 = phi i64 [ 2, %panic9 ], [ %_11101, %bb4 ], [ %_44, %bb14 ], [ 1, %bb15.1 ], [ 1, %bb20.1 ], [ %_70, %bb20 ], [ %_25, %bb15.lr.ph ], [ 0, %bb15.preheader ], [ %iter.sroa.0.067, %bb6 ], [ %_70, %panic11.invoke.loopexit134 ]
  %33 = phi i64 [ 2, %panic9 ], [ %_46, %bb4 ], [ %_87, %bb14 ], [ %_60.1, %bb15.1 ], [ %_70.1, %bb20.1 ], [ %_70, %bb20 ], [ %_55, %bb15.lr.ph ], [ 0, %bb15.preheader ], [ %_55, %bb6 ], [ %_70, %panic11.invoke.loopexit134 ]
  %34 = phi ptr [ @alloc_2f1ef89464b49e556dec7c217a556b4f, %panic9 ], [ @alloc_08b15ba745e096f233db07e44cac1c7d, %bb4 ], [ @alloc_2f1c40cee7905a5751ec2e9288d1776f, %bb14 ], [ @alloc_4a59789a91ddccce0310684cec7e115b, %bb15.1 ], [ @alloc_c2efa849385477082ff783fe117a7bd1, %bb20.1 ], [ @alloc_c2efa849385477082ff783fe117a7bd1, %bb20 ], [ @alloc_d99236fc3e93b89f3e99046d9e0e6aef, %bb15.lr.ph ], [ @alloc_4a59789a91ddccce0310684cec7e115b, %bb15.preheader ], [ @alloc_7e1d96c9ada9fd68c25f18d9308a6762, %bb6 ], [ @alloc_5f1a9a46a1465fe21f934874788cad0a, %panic11.invoke.loopexit134 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %32, i64 noundef %33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %34) #21
          to label %panic11.cont unwind label %cleanup

panic11.cont:                                     ; preds = %panic11.invoke
  unreachable
}
