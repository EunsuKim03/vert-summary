define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %str.0, i64 noundef range(i64 0, 2305843009213693952) %str.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %cps = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cps)
  %_5 = add nuw nsw i64 %str.1, 1
  %_26.i.i.i = icmp eq i64 %str.1, 2305843009213693951
  br i1 %_26.i.i.i, label %bb14.i, label %bb3.i3.i, !prof !379

bb3.i3.i:                                         ; preds = %start
  %0 = shl nuw nsw i64 %_5, 2
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %0, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf93f710c0eabdddfE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
  %_16.sroa.10.0.ph.i = phi i64 [ %0, %bb3.i3.i ], [ undef, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_16.sroa.10.0.ph.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf93f710c0eabdddfE.exit": ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul i64 %_5, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %str.1, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf93f710c0eabdddfE.exit"
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %3 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf93f710c0eabdddfE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf93f710c0eabdddfE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_5, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %3, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ult i64 %str.1, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1077
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %5, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2417.i.i.not = icmp eq i64 %str.1, 0
  br i1 %_2417.i.i.not, label %bb5.preheader.thread, label %bb3.i.i.i.i.i.i

bb5.preheader.thread:                             ; preds = %bb1.i.i
  store i64 %_5, ptr %_4.sroa.10.0.i.i, align 8, !noalias !1087
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 8
  store ptr %1, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i169, align 8, !noalias !1087
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i170, align 8, !noalias !1087
  store i64 %_5, ptr %6, align 8, !alias.scope !1084, !noalias !1088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %cps, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1094
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  br label %bb7

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i28
  %ptr.sroa.0.020.i.i = phi ptr [ %_15.i.i, %bb3.i3.i28 ], [ %_4.sroa.10.0.i.i, %bb1.i.i ]
  %iter.sroa.0.019.i.i = phi i64 [ %_28.i.i, %bb3.i3.i28 ], [ 1, %bb1.i.i ]
  %storemerge18.i.i = phi i64 [ %9, %bb3.i3.i28 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1095
; call __rustc::__rust_alloc
  %7 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef range(i64 4, 9) 4) #19, !noalias !1095
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb3.i.i.i.i.i, label %bb3.i3.i28

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %0) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1104

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i28:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %7, ptr noundef nonnull readonly align 4 dereferenceable(1) %1, i64 %0, i1 false), !noalias !1105
  %_28.i.i = add nuw nsw i64 %iter.sroa.0.019.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.020.i.i, align 8, !noalias !1104
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 8
  store ptr %7, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1104
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1104
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 24
  %9 = add nuw nsw i64 %storemerge18.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.019.i.i, %str.1
  br i1 %exitcond.not.i.i, label %bb3.lr.ph, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge18.i.i, ptr %6, align 8, !alias.scope !1084, !noalias !1106
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %0, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1111
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %18, %cleanup ], [ %10, %cleanup1.body.i ], [ %11, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %0, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1120
  br label %common.resume

bb3.lr.ph:                                        ; preds = %bb3.i3.i28
  store i64 %_5, ptr %_15.i.i, align 8, !noalias !1087
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 32
  store ptr %1, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1087
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 40
  store i64 %_5, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1087
  store i64 %_5, ptr %6, align 8, !alias.scope !1084, !noalias !1088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %cps, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1094
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %12 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %_61 = load i64, ptr %12, align 8, !noundef !6
  %13 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  %_62 = load ptr, ptr %13, align 8, !nonnull !6
  %14 = add i64 %_61, 1
  br label %bb3

bb5.preheader:                                    ; preds = %bb25
  %_0.i.not.i106 = icmp eq i64 %str.1, 1
  br i1 %_0.i.not.i106, label %bb7, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb5.preheader
  %15 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  %_114 = load ptr, ptr %15, align 8, !nonnull !6
  %16 = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %_113 = load i64, ptr %16, align 8
  br label %bb9.preheader

bb3:                                              ; preds = %bb3.lr.ph, %bb25
  %17 = phi i64 [ 1, %bb3.lr.ph ], [ %42, %bb25 ]
  %iter1.sroa.0.0103 = phi i64 [ 0, %bb3.lr.ph ], [ %17, %bb25 ]
  %exitcond.not = icmp eq i64 %17, %14
  br i1 %exitcond.not, label %panic22.invoke, label %bb24

bb5.loopexit:                                     ; preds = %bb15
  %_0.i.not.i = icmp ugt i64 %spec.select, %str.1
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb27, label %bb9.preheader

bb9.preheader:                                    ; preds = %bb5.loopexit, %bb2.i.lr.ph
  %iter.sroa.0.0107 = phi i64 [ 2, %bb2.i.lr.ph ], [ %spec.select, %bb5.loopexit ]
  %_0.i3.i = icmp uge i64 %iter.sroa.0.0107, %str.1
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select = add nuw i64 %iter.sroa.0.0107, %_0.i4.i
  br label %bb9

cleanup:                                          ; preds = %panic22.invoke
  %18 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr noalias noundef align 8 dereferenceable(24) %cps) #23
  br label %common.resume

bb7:                                              ; preds = %bb5.preheader, %bb5.preheader.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %cps, i64 16
  %_72.pre = load i64, ptr %.phi.trans.insert, align 8
  %_75.not = icmp eq i64 %_72.pre, 0
  br i1 %_75.not, label %panic22.invoke, label %bb27

bb27:                                             ; preds = %bb5.loopexit, %bb7
  %_72174 = phi i64 [ %_72.pre, %bb7 ], [ %_113, %bb5.loopexit ]
  %19 = getelementptr inbounds nuw i8, ptr %cps, i64 8
  %_73 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  %_54 = add nsw i64 %str.1, -1
  %20 = getelementptr inbounds nuw i8, ptr %_73, i64 16
  %_155 = load i64, ptr %20, align 8, !noundef !6
  %_158 = icmp ult i64 %_54, %_155
  br i1 %_158, label %bb45, label %panic22.invoke

bb45:                                             ; preds = %bb27
  %21 = getelementptr inbounds nuw i8, ptr %_73, i64 8
  %_156 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_52 = getelementptr inbounds nuw i32, ptr %_156, i64 %_54
  %_0 = load i32, ptr %_52, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb45, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %22, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i" ], [ 0, %bb45 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_73, i64 %_3.sroa.0.012.i.i.i
  %22 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1147, !noalias !1150, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %23 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %24 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %24, align 8, !alias.scope !1147, !noalias !1150, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %23, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1154
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %22, %_72174
  br i1 %_7.i.i.i, label %bb4.i30, label %bb5.i.i.i

bb4.i30:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %self1.i.i.i.i1.i = load i64, ptr %cps, align 8, !range !22, !alias.scope !1164, !noalias !1167, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i30
  %25 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_73, i64 noundef %25, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1169
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE.exit": ; preds = %bb4.i30, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cps)
  ret i32 %_0

bb9:                                              ; preds = %bb9.preheader, %bb15
  %26 = phi i64 [ %34, %bb15 ], [ 1, %bb9.preheader ]
  %iter2.sroa.0.0105 = phi i64 [ %26, %bb15 ], [ 0, %bb9.preheader ]
  %_21 = add i64 %iter2.sroa.0.0105, %iter.sroa.0.0107
  %k = add i64 %_21, -1
  %_26 = icmp ult i64 %k, %str.1
  br i1 %_26, label %bb12, label %panic22.invoke

bb12:                                             ; preds = %bb9
  %27 = getelementptr inbounds nuw i32, ptr %str.0, i64 %iter2.sroa.0.0105
  %_23 = load i32, ptr %27, align 4, !range !1170, !noundef !6
  %28 = getelementptr inbounds nuw i32, ptr %str.0, i64 %k
  %_25 = load i32, ptr %28, align 4, !range !1170, !noundef !6
  %_22 = icmp eq i32 %_23, %_25
  %_84 = icmp ult i64 %iter2.sroa.0.0105, %_113
  br i1 %_22, label %bb13, label %bb14

bb14:                                             ; preds = %bb12
  br i1 %_84, label %bb37, label %panic22.invoke

bb13:                                             ; preds = %bb12
  br i1 %_84, label %bb31, label %panic22.invoke

bb37:                                             ; preds = %bb14
  %_41 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_114, i64 %iter2.sroa.0.0105
  %_42 = add i64 %_21, -2
  %29 = getelementptr inbounds nuw i8, ptr %_41, i64 8
  %_119 = load ptr, ptr %29, align 8, !nonnull !6, !noundef !6
  %30 = getelementptr inbounds nuw i8, ptr %_41, i64 16
  %_118 = load i64, ptr %30, align 8, !noundef !6
  %_121 = icmp ult i64 %_42, %_118
  br i1 %_121, label %bb38, label %panic22.invoke

bb38:                                             ; preds = %bb37
  %_40 = getelementptr inbounds nuw i32, ptr %_119, i64 %_42
  %_39 = load i32, ptr %_40, align 4, !noundef !6
  %_126 = icmp ult i64 %26, %_113
  br i1 %_126, label %bb39, label %panic22.invoke

bb39:                                             ; preds = %bb38
  %_45 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_114, i64 %26
  %31 = getelementptr inbounds nuw i8, ptr %_45, i64 8
  %_129 = load ptr, ptr %31, align 8, !nonnull !6, !noundef !6
  %32 = getelementptr inbounds nuw i8, ptr %_45, i64 16
  %_128 = load i64, ptr %32, align 8, !noundef !6
  %_131 = icmp ult i64 %k, %_128
  br i1 %_131, label %bb40, label %panic22.invoke

bb40:                                             ; preds = %bb39
  %_44 = getelementptr inbounds nuw i32, ptr %_129, i64 %k
  %_43 = load i32, ptr %_44, align 4, !noundef !6
  %_38 = add i32 %_43, %_39
  %_141 = icmp ult i64 %_42, %_128
  br i1 %_141, label %bb42, label %panic22.invoke

bb42:                                             ; preds = %bb40
  %_153 = icmp ult i64 %k, %_118
  br i1 %_153, label %bb44, label %panic22.invoke

bb44:                                             ; preds = %bb42
  %_48 = getelementptr inbounds nuw i32, ptr %_129, i64 %_42
  %_47 = load i32, ptr %_48, align 4, !noundef !6
  %_50 = getelementptr inbounds nuw i32, ptr %_119, i64 %k
  %33 = sub i32 %_38, %_47
  store i32 %33, ptr %_50, align 4
  br label %bb15

bb15:                                             ; preds = %bb36, %bb44
  %34 = add nuw nsw i64 %26, 1
  %exitcond166.not = icmp eq i64 %26, %str.1
  br i1 %exitcond166.not, label %bb5.loopexit, label %bb9

bb31:                                             ; preds = %bb13
  %_30 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_114, i64 %iter2.sroa.0.0105
  %_31 = add i64 %_21, -2
  %35 = getelementptr inbounds nuw i8, ptr %_30, i64 8
  %_87 = load ptr, ptr %35, align 8, !nonnull !6, !noundef !6
  %36 = getelementptr inbounds nuw i8, ptr %_30, i64 16
  %_86 = load i64, ptr %36, align 8, !noundef !6
  %_89 = icmp ult i64 %_31, %_86
  br i1 %_89, label %bb32, label %panic22.invoke

bb32:                                             ; preds = %bb31
  %_29 = getelementptr inbounds nuw i32, ptr %_87, i64 %_31
  %_28 = load i32, ptr %_29, align 4, !noundef !6
  %_94 = icmp ult i64 %26, %_113
  br i1 %_94, label %bb33, label %panic22.invoke

bb33:                                             ; preds = %bb32
  %_34 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_114, i64 %26
  %37 = getelementptr inbounds nuw i8, ptr %_34, i64 16
  %_96 = load i64, ptr %37, align 8, !noundef !6
  %_99 = icmp ult i64 %k, %_96
  br i1 %_99, label %bb34, label %panic22.invoke

bb34:                                             ; preds = %bb33
  %_111 = icmp ult i64 %k, %_86
  br i1 %_111, label %bb36, label %panic22.invoke

bb36:                                             ; preds = %bb34
  %38 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  %_97 = load ptr, ptr %38, align 8, !nonnull !6, !noundef !6
  %_33 = getelementptr inbounds nuw i32, ptr %_97, i64 %k
  %_32 = load i32, ptr %_33, align 4, !noundef !6
  %_36 = getelementptr inbounds nuw i32, ptr %_87, i64 %k
  %_27 = add i32 %_28, 1
  %39 = add i32 %_27, %_32
  store i32 %39, ptr %_36, align 4
  br label %bb15

bb24:                                             ; preds = %bb3
  %_10 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_62, i64 %iter1.sroa.0.0103
  %40 = getelementptr inbounds nuw i8, ptr %_10, i64 16
  %_67 = load i64, ptr %40, align 8, !noundef !6
  %_70 = icmp ult i64 %iter1.sroa.0.0103, %_67
  br i1 %_70, label %bb25, label %panic22.invoke

bb25:                                             ; preds = %bb24
  %41 = getelementptr inbounds nuw i8, ptr %_10, i64 8
  %_68 = load ptr, ptr %41, align 8, !nonnull !6, !noundef !6
  %_9 = getelementptr inbounds nuw i32, ptr %_68, i64 %iter1.sroa.0.0103
  store i32 1, ptr %_9, align 4
  %42 = add nuw nsw i64 %17, 1
  %exitcond165.not = icmp eq i64 %17, %str.1
  br i1 %exitcond165.not, label %bb5.preheader, label %bb3

panic22.invoke:                                   ; preds = %bb24, %bb3, %bb34, %bb33, %bb32, %bb31, %bb13, %bb42, %bb40, %bb39, %bb38, %bb37, %bb14, %bb9, %bb27, %bb7
  %43 = phi i64 [ 0, %bb7 ], [ %_54, %bb27 ], [ %k, %bb9 ], [ %iter2.sroa.0.0105, %bb14 ], [ %_42, %bb37 ], [ %26, %bb38 ], [ %k, %bb39 ], [ %_42, %bb40 ], [ %k, %bb42 ], [ %iter2.sroa.0.0105, %bb13 ], [ %_31, %bb31 ], [ %26, %bb32 ], [ %k, %bb33 ], [ %k, %bb34 ], [ %_61, %bb3 ], [ %iter1.sroa.0.0103, %bb24 ]
  %44 = phi i64 [ 0, %bb7 ], [ %_155, %bb27 ], [ %str.1, %bb9 ], [ %_113, %bb14 ], [ %_118, %bb37 ], [ %_113, %bb38 ], [ %_128, %bb39 ], [ %_128, %bb40 ], [ %_118, %bb42 ], [ %_113, %bb13 ], [ %_86, %bb31 ], [ %_113, %bb32 ], [ %_96, %bb33 ], [ %_86, %bb34 ], [ %_61, %bb3 ], [ %_67, %bb24 ]
  %45 = phi ptr [ @alloc_7757919005380415a2994239c5bfd096, %bb7 ], [ @alloc_46ee436f46c976fc67b0a4d604ef43d1, %bb27 ], [ @alloc_8d62c3ed1b9c03e4736c665d1f08cba9, %bb9 ], [ @alloc_ddbaab3758c76bbf52bb001c18fac71e, %bb14 ], [ @alloc_45ab111b335fee41c27fc106ffc2a4bf, %bb37 ], [ @alloc_bc26929688ac6821c503b2c406ead434, %bb38 ], [ @alloc_09b67fd1095f97e7140e9fb1145c97db, %bb39 ], [ @alloc_484dcb8734abbbe5e0630690bd32d651, %bb40 ], [ @alloc_5f0e2680551a901c69138b3cf21798c7, %bb42 ], [ @alloc_fdd581b7752f899207845c0846b8f4ad, %bb13 ], [ @alloc_4011691a40a02c8eaa2d09fea6394e4a, %bb31 ], [ @alloc_05e09818b122da61b4322d659cc98e74, %bb32 ], [ @alloc_6add4e67cc9042309409da8fa897e2ef, %bb33 ], [ @alloc_188a750156dd86e4a285feb4f91107b6, %bb34 ], [ @alloc_39d060508fad4987e6ae1b4d84e4d73a, %bb3 ], [ @alloc_ce51f17b63fd60f37175c288e59c261c, %bb24 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %43, i64 noundef %44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %45) #21
          to label %panic22.cont unwind label %cleanup

panic22.cont:                                     ; preds = %panic22.invoke
  unreachable
}
