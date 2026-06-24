define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 dereferenceable_or_null(108) ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 108, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf1b1ee357077171dE.exit"

bb14.i:                                           ; preds = %start
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 108) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf1b1ee357077171dE.exit": ; preds = %start
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_4, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_4, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf1b1ee357077171dE.exit"
  %_8.i.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i.i, label %bb2.i.i.i3.i.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %2 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf1b1ee357077171dE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf1b1ee357077171dE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_4, ptr %v.i, align 8, !noalias !1077
  %4 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %2, ptr %4, align 8, !noalias !1077
  %5 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 0
  br i1 %_2425.i.i.not, label %bb17.i.i, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 dereferenceable_or_null(108) ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef 108, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 108) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb2.i.i.i3.i.i.i:                                 ; preds = %bb17.i.i.i
  store i64 0, ptr %v.i, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %8, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %9, align 8, !alias.scope !1084, !noalias !1098
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 108, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE.exit"

bb17.i.i:                                         ; preds = %bb3.i3.i, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i ]
  store i64 27, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 27, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_4, ptr %5, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE.exit"

bb3.i3.i:                                         ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(108) %6, ptr noundef nonnull readonly align 4 dereferenceable(108) %0, i64 108, i1 false), !noalias !1118
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 27, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %6, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 27, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb17.i.i, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1084, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 108, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1a49d248c15d4acfE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %17, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 108, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE.exit": ; preds = %bb2.i.i.i3.i.i.i, %bb17.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %13 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_58 = load i64, ptr %13, align 8, !noundef !6
  %_61 = icmp ugt i64 %_58, 1
  %14 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_59 = load ptr, ptr %14, align 8, !nonnull !6
  %15 = getelementptr inbounds nuw i8, ptr %_59, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %_59, i64 32
  br i1 %_61, label %bb2.i, label %panic18.invoke

bb5.preheader:                                    ; preds = %bb24
  %_0.i.not.i39169 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i39169, label %bb14.preheader, label %bb2.i40

bb2.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE.exit", %bb24
  %iter.sroa.0.0167 = phi i64 [ %spec.select115, %bb24 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE.exit" ]
  %_64 = load i64, ptr %15, align 8, !noundef !6
  %_67 = icmp ult i64 %iter.sroa.0.0167, %_64
  br i1 %_67, label %bb24, label %panic18.invoke

cleanup:                                          ; preds = %panic18.invoke
  %17 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1a49d248c15d4acfE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb5.loopexit:                                     ; preds = %bb13
  %_0.i.not.i39 = icmp sgt i32 %spec.select116, %n
  %or.cond120 = select i1 %_0.i3.i41, i1 true, i1 %_0.i.not.i39
  br i1 %or.cond120, label %bb14.preheader, label %bb2.i40

bb14.preheader:                                   ; preds = %bb5.loopexit, %bb5.preheader
  %_126 = icmp ugt i64 %_58, %_5
  %_55 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_59, i64 %_5
  %18 = getelementptr inbounds nuw i8, ptr %_55, i64 8
  br i1 %_126, label %bb14.preheader.split, label %panic18.invoke

bb14.preheader.split:                             ; preds = %bb14.preheader
  %19 = getelementptr inbounds nuw i8, ptr %_55, i64 16
  %_128 = load i64, ptr %19, align 8, !noundef !6
  br label %bb2.i52

bb2.i40:                                          ; preds = %bb5.preheader, %bb5.loopexit
  %iter1.sroa.0.0170 = phi i32 [ %spec.select116, %bb5.loopexit ], [ 2, %bb5.preheader ]
  %_0.i3.i41 = icmp sge i32 %iter1.sroa.0.0170, %n
  %not._0.i3.i41 = xor i1 %_0.i3.i41, true
  %20 = zext i1 %not._0.i3.i41 to i32
  %spec.select116 = add nuw nsw i32 %iter1.sroa.0.0170, %20
  %_30 = add nsw i32 %iter1.sroa.0.0170, -1
  %_29 = sext i32 %_30 to i64
  %_72 = icmp ugt i64 %_58, %_29
  %_28 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_59, i64 %_29
  %21 = getelementptr inbounds nuw i8, ptr %_28, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %_34 = zext nneg i32 %iter1.sroa.0.0170 to i64
  %_83 = icmp ugt i64 %_58, %_34
  %_33 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_59, i64 %_34
  %23 = getelementptr inbounds nuw i8, ptr %_33, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  br label %bb2.i67

bb2.i52:                                          ; preds = %bb14.preheader.split, %bb39
  %sum.sroa.0.0172 = phi i32 [ 0, %bb14.preheader.split ], [ %29, %bb39 ]
  %iter3.sroa.0.0171 = phi i64 [ 0, %bb14.preheader.split ], [ %spec.select118, %bb39 ]
  %_131 = icmp ult i64 %iter3.sroa.0.0171, %_128
  br i1 %_131, label %bb39, label %panic18.invoke

bb5.i.i.i.preheader:                              ; preds = %bb39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h04493e3e05b37c3bE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %25, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h04493e3e05b37c3bE.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_59, i64 %_3.sroa.0.012.i.i.i
  %25 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h04493e3e05b37c3bE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %26 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %27 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %27, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %26, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h04493e3e05b37c3bE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h04493e3e05b37c3bE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %25, %_58
  br i1 %_7.i.i.i, label %bb4.i60, label %bb5.i.i.i

bb4.i60:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h04493e3e05b37c3bE.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1a49d248c15d4acfE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i60
  %28 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_59, i64 noundef %28, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1a49d248c15d4acfE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1a49d248c15d4acfE.exit": ; preds = %bb4.i60, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %29

bb39:                                             ; preds = %bb2.i52
  %_0.i3.i53 = icmp eq i64 %iter3.sroa.0.0171, 25
  %_0.i4.i58 = add nuw nsw i64 %iter3.sroa.0.0171, 1
  %spec.select118 = select i1 %_0.i3.i53, i64 25, i64 %_0.i4.i58
  %_129 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_54 = getelementptr inbounds nuw i32, ptr %_129, i64 %iter3.sroa.0.0171
  %_53 = load i32, ptr %_54, align 4, !noundef !6
  %29 = add i32 %_53, %sum.sroa.0.0172
  %_0.i.not.i51 = icmp ugt i64 %spec.select118, 25
  %or.cond121 = select i1 %_0.i3.i53, i1 true, i1 %_0.i.not.i51
  br i1 %or.cond121, label %bb5.i.i.i.preheader, label %bb2.i52

bb2.i67:                                          ; preds = %bb2.i40, %bb13
  %iter2.sroa.0.0168 = phi i64 [ 0, %bb2.i40 ], [ %iter2.sroa.0.1.ph111, %bb13 ]
  %_0.i3.i68 = icmp eq i64 %iter2.sroa.0.0168, 25
  br i1 %_0.i3.i68, label %bb12, label %bb9

bb9:                                              ; preds = %bb2.i67
  %_0.i4.i73 = add nuw nsw i64 %iter2.sroa.0.0168, 1
  %_25 = icmp eq i64 %iter2.sroa.0.0168, 0
  br i1 %_25, label %bb11, label %bb12

bb12:                                             ; preds = %bb2.i67, %bb9
  %iter2.sroa.0.1.ph112 = phi i64 [ %_0.i4.i73, %bb9 ], [ 25, %bb2.i67 ]
  br i1 %_72, label %bb31, label %panic18.invoke

bb11:                                             ; preds = %bb9
  br i1 %_72, label %bb27, label %panic18.invoke

bb31:                                             ; preds = %bb12
  %_40 = add nsw i64 %iter2.sroa.0.0168, -1
  %_97 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_96 = load i64, ptr %21, align 8, !noundef !6
  %_99 = icmp ult i64 %_40, %_96
  br i1 %_99, label %bb32, label %panic18.invoke

bb32:                                             ; preds = %bb31
  %_36 = getelementptr inbounds nuw i32, ptr %_97, i64 %_40
  %_35 = load i32, ptr %_36, align 4, !noundef !6
  %_44 = add nuw nsw i64 %iter2.sroa.0.0168, 1
  %_109 = icmp ult i64 %_44, %_96
  br i1 %_109, label %bb34, label %panic18.invoke

bb34:                                             ; preds = %bb32
  %_42 = getelementptr inbounds nuw i32, ptr %_97, i64 %_44
  %_41 = load i32, ptr %_42, align 4, !noundef !6
  br i1 %_83, label %bb35, label %panic18.invoke

bb35:                                             ; preds = %bb34
  %_118 = load i64, ptr %23, align 8, !noundef !6
  %_121 = icmp ult i64 %iter2.sroa.0.0168, %_118
  br i1 %_121, label %bb36, label %panic18.invoke

bb36:                                             ; preds = %bb35
  %_119 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  %_45 = getelementptr inbounds nuw i32, ptr %_119, i64 %iter2.sroa.0.0168
  %30 = add i32 %_41, %_35
  store i32 %30, ptr %_45, align 4
  br label %bb13

bb13:                                             ; preds = %bb30, %bb36
  %iter2.sroa.0.1.ph111 = phi i64 [ 1, %bb30 ], [ %iter2.sroa.0.1.ph112, %bb36 ]
  br i1 %_0.i3.i68, label %bb5.loopexit, label %bb2.i67

bb27:                                             ; preds = %bb11
  %_74 = load i64, ptr %21, align 8, !noundef !6
  %_77 = icmp ugt i64 %_74, 1
  br i1 %_77, label %bb28, label %panic18.invoke

bb28:                                             ; preds = %bb27
  %_75 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_27 = getelementptr inbounds nuw i8, ptr %_75, i64 4
  %_26 = load i32, ptr %_27, align 4, !noundef !6
  br i1 %_83, label %bb29, label %panic18.invoke

bb29:                                             ; preds = %bb28
  %_86 = load i64, ptr %23, align 8, !noundef !6
  %_89.not = icmp eq i64 %_86, 0
  br i1 %_89.not, label %panic18.invoke, label %bb30

bb30:                                             ; preds = %bb29
  %_87 = load ptr, ptr %24, align 8, !nonnull !6, !noundef !6
  store i32 %_26, ptr %_87, align 4
  br label %bb13

bb24:                                             ; preds = %bb2.i
  %_0.i3.i = icmp eq i64 %iter.sroa.0.0167, 25
  %_0.i4.i = add nuw nsw i64 %iter.sroa.0.0167, 1
  %spec.select115 = select i1 %_0.i3.i, i64 25, i64 %_0.i4.i
  %_65 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_12 = getelementptr inbounds nuw i32, ptr %_65, i64 %iter.sroa.0.0167
  store i32 1, ptr %_12, align 4
  %_0.i.not.i = icmp ugt i64 %spec.select115, 25
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb5.preheader, label %bb2.i

panic18.invoke:                                   ; preds = %bb2.i, %bb29, %bb28, %bb27, %bb11, %bb35, %bb34, %bb32, %bb31, %bb12, %bb2.i52, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE.exit", %bb14.preheader
  %31 = phi i64 [ %_5, %bb14.preheader ], [ 1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE.exit" ], [ %iter3.sroa.0.0171, %bb2.i52 ], [ %_29, %bb12 ], [ %_40, %bb31 ], [ %_44, %bb32 ], [ %_34, %bb34 ], [ %iter2.sroa.0.0168, %bb35 ], [ %_29, %bb11 ], [ 1, %bb27 ], [ %_34, %bb28 ], [ 0, %bb29 ], [ %iter.sroa.0.0167, %bb2.i ]
  %32 = phi i64 [ %_58, %bb14.preheader ], [ %_58, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE.exit" ], [ %_128, %bb2.i52 ], [ %_58, %bb12 ], [ %_96, %bb31 ], [ %_96, %bb32 ], [ %_58, %bb34 ], [ %_118, %bb35 ], [ %_58, %bb11 ], [ %_74, %bb27 ], [ %_58, %bb28 ], [ 0, %bb29 ], [ %_64, %bb2.i ]
  %33 = phi ptr [ @alloc_2a17113741e559c14bd197440bb931ac, %bb14.preheader ], [ @alloc_22ab2c56e287a287214a1e1a8b6785ab, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17haa1082233851466cE.exit" ], [ @alloc_ea1b003d79af6d3a64e76cc2eaf3ed83, %bb2.i52 ], [ @alloc_2508536e22c130ed9045f6b520249db6, %bb12 ], [ @alloc_97f8fab629096b38d7d723d3fcc7ee46, %bb31 ], [ @alloc_ef0571cc6380bb258db4973dd4d13008, %bb32 ], [ @alloc_9a9a2e37add18c176c5cb61462e29301, %bb34 ], [ @alloc_2948f482fd36f0406bb7f8be30e31e90, %bb35 ], [ @alloc_6a4bdd0b393bf7a44aa5a825822e0e00, %bb11 ], [ @alloc_b3241f28fb12000b5e3620f99e6ab699, %bb27 ], [ @alloc_6fda34c5a5ccd26f8bff72bcf3f477b1, %bb28 ], [ @alloc_d8edd249abdc4ab744aa96ee5d8675a1, %bb29 ], [ @alloc_1083bbc45c68588113d031ebfefc2405, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %31, i64 noundef %32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %33) #21
          to label %panic18.cont unwind label %cleanup

panic18.cont:                                     ; preds = %panic18.invoke
  unreachable
}
