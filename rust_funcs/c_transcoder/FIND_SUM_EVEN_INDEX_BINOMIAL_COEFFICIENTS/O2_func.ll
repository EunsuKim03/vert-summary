define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %C = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %C)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp ugt i64 %_4, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i, label %bb6.i.i, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb3.i.i.i

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

bb3.i.i.i:                                        ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nuw nsw i64 %_4, 24
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %2 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 8, i64 %_21.0.i.i.i.i) #21
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
  br i1 %_2425.i.i.not, label %bb17.i.i18, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i19
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i19 ], [ %2, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i19 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %10, %bb3.i3.i19 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %6 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i.i.i.i, label %bb3.i3.i19

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1098
  store i64 0, ptr %v.i, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %8, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %9, align 8, !alias.scope !1084, !noalias !1101
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E.exit"

bb17.i.i18:                                       ; preds = %bb3.i3.i19, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %2, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i19 ]
  store i64 %_4, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1106
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %0, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1106
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_4, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1106
  store i64 %_4, ptr %5, align 8, !alias.scope !1084, !noalias !1107
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E.exit"

bb3.i3.i19:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr nonnull readonly align 4 %0, i64 %_21.0.i.i.i, i1 false), !noalias !1112
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_4, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %6, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_4, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %10 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb17.i.i18, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %5, align 8, !alias.scope !1084, !noalias !1113
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1118
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h70b6fc26fd496bc5E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %22, %cleanup ], [ %11, %cleanup1.body.i ], [ %12, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb2.i.i.i3.i.i:                                   ; preds = %bb3.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1127
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E.exit": ; preds = %bb6.i.i, %bb17.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %C, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i100 = icmp slt i32 %n, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %C, i64 8
  %_5.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %len.i.i.pre = load i64, ptr %.phi.trans.insert140, align 8
  br i1 %_0.i.not.i100, label %bb15, label %bb2.i

bb1.loopexit:                                     ; preds = %bb12
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond72 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond72, label %bb5.i.peel, label %bb2.i

bb5.i.peel:                                       ; preds = %bb1.loopexit
  %13 = getelementptr inbounds nuw i8, ptr %C, i64 16
  %_96 = load i64, ptr %13, align 8
  %_99 = icmp ugt i64 %_96, %_5
  %14 = getelementptr inbounds nuw i8, ptr %C, i64 8
  %_97 = load ptr, ptr %14, align 8, !nonnull !6
  %_46 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_97, i64 %_5
  %15 = getelementptr inbounds nuw i8, ptr %_46, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %_46, i64 8
  %_3.i8.i.peel = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 0, i32 %n)
  switch i8 %_3.i8.i.peel, label %bb31.i [
    i8 1, label %bb15
    i8 -1, label %bb10.i26.peel
    i8 0, label %bb14.peel
  ]

bb10.i26.peel:                                    ; preds = %bb5.i.peel
  br label %bb14.peel

bb14.peel:                                        ; preds = %bb10.i26.peel, %bb5.i.peel
  %iter2.sroa.4.1.peel = phi i32 [ 1, %bb10.i26.peel ], [ 0, %bb5.i.peel ]
  %iter2.sroa.11.1.peel = phi i1 [ false, %bb10.i26.peel ], [ true, %bb5.i.peel ]
  br i1 %_99, label %bb36.peel, label %panic12.invoke

bb36.peel:                                        ; preds = %bb14.peel
  %_101.peel = load i64, ptr %15, align 8, !noundef !6
  %_104.peel.not = icmp eq i64 %_101.peel, 0
  br i1 %_104.peel.not, label %panic12.invoke, label %bb37.peel

bb37.peel:                                        ; preds = %bb36.peel
  %_102.peel = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_44.peel = load i32, ptr %_102.peel, align 4, !noundef !6
  %_0.i.not.i23.peel = icmp samesign ugt i32 %iter2.sroa.4.1.peel, %n
  %or.cond73.peel = or i1 %iter2.sroa.11.1.peel, %_0.i.not.i23.peel
  br i1 %or.cond73.peel, label %bb5.i.i.i.preheader, label %bb2.i24

bb2.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E.exit", %bb1.loopexit
  %iter.sroa.0.0101 = phi i32 [ %spec.select, %bb1.loopexit ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E.exit" ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0101, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %17 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0101, %17
  %_29 = add nsw i32 %iter.sroa.0.0101, -1
  %_28 = sext i32 %_29 to i64
  %_64 = icmp ugt i64 %len.i.i.pre, %_28
  %_27 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i.pre, i64 %_28
  %18 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %_27, i64 16
  %_38 = zext nneg i32 %iter.sroa.0.0101 to i64
  %_85 = icmp ugt i64 %len.i.i.pre, %_38
  %_37 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i.pre, i64 %_38
  %20 = getelementptr inbounds nuw i8, ptr %_37, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %_37, i64 8
  br label %bb2.i34

cleanup:                                          ; preds = %panic12.invoke
  %22 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h70b6fc26fd496bc5E"(ptr noalias noundef align 8 dereferenceable(24) %C) #23
  br label %common.resume

bb2.i24:                                          ; preds = %bb37.peel, %bb37
  %sum.sroa.0.0105 = phi i32 [ %27, %bb37 ], [ %_44.peel, %bb37.peel ]
  %iter2.sroa.4.0103 = phi i32 [ %iter2.sroa.4.1, %bb37 ], [ %iter2.sroa.4.1.peel, %bb37.peel ]
  %wrapped.i.i = add i32 %iter2.sroa.4.0103, 1
  %_7.not.i.i.not = icmp eq i32 %iter2.sroa.4.0103, 2147483647
  br i1 %_7.not.i.i.not, label %bb15, label %bb5.i

bb5.i:                                            ; preds = %bb2.i24
  %_3.i8.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %wrapped.i.i, i32 %n)
  switch i8 %_3.i8.i, label %bb31.i [
    i8 1, label %bb15
    i8 -1, label %bb10.i26
    i8 0, label %bb36
  ]

bb31.i:                                           ; preds = %bb5.i, %bb5.i.peel
  unreachable

bb10.i26:                                         ; preds = %bb5.i
  %_0.i9.i = add i32 %iter2.sroa.4.0103, 2
  br label %bb36

bb15:                                             ; preds = %bb37, %bb5.i, %bb2.i24, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E.exit", %bb5.i.peel
  %len.i.i = phi i64 [ %_96, %bb5.i.peel ], [ %len.i.i.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E.exit" ], [ %_96, %bb2.i24 ], [ %_96, %bb5.i ], [ %_96, %bb37 ]
  %_5.i.i = phi ptr [ %_97, %bb5.i.peel ], [ %_5.i.i.pre, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E.exit" ], [ %_97, %bb2.i24 ], [ %_97, %bb5.i ], [ %_97, %bb37 ]
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb5.i.peel ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hfab5eec7a40be954E.exit" ], [ %27, %bb37 ], [ %sum.sroa.0.0105, %bb5.i ], [ %sum.sroa.0.0105, %bb2.i24 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %_711.i.i.i = icmp eq i64 %len.i.i, 0
  br i1 %_711.i.i.i, label %bb4.i27, label %bb5.i.i.i.preheader

bb5.i.i.i.preheader:                              ; preds = %bb37.peel, %bb15
  %sum.sroa.0.0.lcssa149 = phi i32 [ %sum.sroa.0.0.lcssa, %bb15 ], [ %_44.peel, %bb37.peel ]
  %_5.i.i147 = phi ptr [ %_5.i.i, %bb15 ], [ %_97, %bb37.peel ]
  %len.i.i146 = phi i64 [ %len.i.i, %bb15 ], [ %_96, %bb37.peel ]
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb5.i.i.i.preheader, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h55df20722a92c698E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %23, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h55df20722a92c698E.exit.i.i.i" ], [ 0, %bb5.i.i.i.preheader ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_5.i.i147, i64 %_3.sroa.0.012.i.i.i
  %23 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1155, !noalias !1158, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h55df20722a92c698E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %24 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %25 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %25, align 8, !alias.scope !1155, !noalias !1158, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %24, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1162
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h55df20722a92c698E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h55df20722a92c698E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %23, %len.i.i146
  br i1 %_7.i.i.i, label %bb4.i27, label %bb5.i.i.i

bb4.i27:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h55df20722a92c698E.exit.i.i.i", %bb15
  %sum.sroa.0.0.lcssa150 = phi i32 [ %sum.sroa.0.0.lcssa, %bb15 ], [ %sum.sroa.0.0.lcssa149, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h55df20722a92c698E.exit.i.i.i" ]
  %_5.i.i148 = phi ptr [ %_5.i.i, %bb15 ], [ %_5.i.i147, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h55df20722a92c698E.exit.i.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %self1.i.i.i.i1.i = load i64, ptr %C, align 8, !range !22, !alias.scope !1172, !noalias !1175, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h70b6fc26fd496bc5E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i27
  %26 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_5.i.i148, i64 noundef %26, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1177
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h70b6fc26fd496bc5E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h70b6fc26fd496bc5E.exit": ; preds = %bb4.i27, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %C)
  ret i32 %sum.sroa.0.0.lcssa150

bb36:                                             ; preds = %bb10.i26, %bb5.i
  %iter2.sroa.4.1 = phi i32 [ %_0.i9.i, %bb10.i26 ], [ %wrapped.i.i, %bb5.i ]
  %iter2.sroa.11.1 = phi i1 [ false, %bb10.i26 ], [ true, %bb5.i ]
  %_47 = sext i32 %wrapped.i.i to i64
  %_104 = icmp ugt i64 %_101.peel, %_47
  br i1 %_104, label %bb37, label %panic12.invoke

bb37:                                             ; preds = %bb36
  %_45 = getelementptr inbounds nuw i32, ptr %_102.peel, i64 %_47
  %_44 = load i32, ptr %_45, align 4, !noundef !6
  %27 = add i32 %_44, %sum.sroa.0.0105
  %_0.i.not.i23 = icmp sgt i32 %iter2.sroa.4.1, %n
  %or.cond73 = or i1 %iter2.sroa.11.1, %_0.i.not.i23
  br i1 %or.cond73, label %bb15, label %bb2.i24, !llvm.loop !1178

bb2.i34:                                          ; preds = %bb2.i, %bb12
  %iter1.sroa.0.099 = phi i32 [ 0, %bb2.i ], [ %spec.select70, %bb12 ]
  %_0.i3.i35 = icmp samesign uge i32 %iter1.sroa.0.099, %iter.sroa.0.0101
  %not._0.i3.i35 = xor i1 %_0.i3.i35, true
  %28 = zext i1 %not._0.i3.i35 to i32
  %spec.select70 = add nuw nsw i32 %iter1.sroa.0.099, %28
  %_19 = icmp eq i32 %iter1.sroa.0.099, 0
  %_20 = icmp eq i32 %iter1.sroa.0.099, %iter.sroa.0.0101
  %or.cond = or i1 %_19, %_20
  br i1 %or.cond, label %bb10, label %bb11

bb10:                                             ; preds = %bb2.i34
  br i1 %_85, label %bb23, label %panic12.invoke

bb11:                                             ; preds = %bb2.i34
  br i1 %_64, label %bb25, label %panic12.invoke

bb25:                                             ; preds = %bb11
  %_31 = add nsw i32 %iter1.sroa.0.099, -1
  %_30 = sext i32 %_31 to i64
  %_67 = load ptr, ptr %18, align 8, !nonnull !6, !noundef !6
  %_66 = load i64, ptr %19, align 8, !noundef !6
  %_69 = icmp ugt i64 %_66, %_30
  br i1 %_69, label %bb26, label %panic12.invoke

bb26:                                             ; preds = %bb25
  %_26 = getelementptr inbounds nuw i32, ptr %_67, i64 %_30
  %_25 = load i32, ptr %_26, align 4, !noundef !6
  %_35 = zext nneg i32 %iter1.sroa.0.099 to i64
  %_79 = icmp ugt i64 %_66, %_35
  br i1 %_79, label %bb28, label %panic12.invoke

bb28:                                             ; preds = %bb26
  %_33 = getelementptr inbounds nuw i32, ptr %_67, i64 %_35
  %_32 = load i32, ptr %_33, align 4, !noundef !6
  br i1 %_85, label %bb29, label %panic12.invoke

bb29:                                             ; preds = %bb28
  %_88 = load i64, ptr %20, align 8, !noundef !6
  %_91 = icmp ugt i64 %_88, %_35
  br i1 %_91, label %bb30, label %panic12.invoke

bb30:                                             ; preds = %bb29
  %_89 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_36 = getelementptr inbounds nuw i32, ptr %_89, i64 %_35
  %29 = add i32 %_32, %_25
  store i32 %29, ptr %_36, align 4
  br label %bb12

bb12:                                             ; preds = %bb24, %bb30
  %_0.i.not.i33 = icmp samesign ugt i32 %spec.select70, %iter.sroa.0.0101
  %or.cond74 = select i1 %_0.i3.i35, i1 true, i1 %_0.i.not.i33
  br i1 %or.cond74, label %bb1.loopexit, label %bb2.i34

bb23:                                             ; preds = %bb10
  %_24 = zext nneg i32 %iter1.sroa.0.099 to i64
  %_56 = load i64, ptr %20, align 8, !noundef !6
  %_59 = icmp ugt i64 %_56, %_24
  br i1 %_59, label %bb24, label %panic12.invoke

bb24:                                             ; preds = %bb23
  %_57 = load ptr, ptr %21, align 8, !nonnull !6, !noundef !6
  %_21 = getelementptr inbounds nuw i32, ptr %_57, i64 %_24
  store i32 1, ptr %_21, align 4
  br label %bb12

panic12.invoke:                                   ; preds = %bb23, %bb10, %bb29, %bb28, %bb26, %bb25, %bb11, %bb36, %bb36.peel, %bb14.peel
  %30 = phi i64 [ %_5, %bb14.peel ], [ 0, %bb36.peel ], [ %_47, %bb36 ], [ %_28, %bb11 ], [ %_30, %bb25 ], [ %_35, %bb26 ], [ %_38, %bb28 ], [ %_35, %bb29 ], [ %_38, %bb10 ], [ %_24, %bb23 ]
  %31 = phi i64 [ %_96, %bb14.peel ], [ %_101.peel, %bb36.peel ], [ %_101.peel, %bb36 ], [ %len.i.i.pre, %bb11 ], [ %_66, %bb25 ], [ %_66, %bb26 ], [ %len.i.i.pre, %bb28 ], [ %_88, %bb29 ], [ %len.i.i.pre, %bb10 ], [ %_56, %bb23 ]
  %32 = phi ptr [ @alloc_349bac9be1a4ded99c3f3efb43fab200, %bb14.peel ], [ @alloc_746f06f793be357c107ca0b7da1726ae, %bb36.peel ], [ @alloc_746f06f793be357c107ca0b7da1726ae, %bb36 ], [ @alloc_9de5f56926cab21ad0a3645601351780, %bb11 ], [ @alloc_dc62ab5f77d3cccb08104bb2e59a0b0d, %bb25 ], [ @alloc_ff92b3f7d579ab27636eb091b78e2d74, %bb26 ], [ @alloc_457eff48c84cf978d0fb8e5b25989d9f, %bb28 ], [ @alloc_672fce10a529e373bfa05c708f305f51, %bb29 ], [ @alloc_81debf332604faecc1c2234ac4984530, %bb10 ], [ @alloc_0cc6f4aeffdd5879548df92d6df4afe3, %bb23 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %30, i64 noundef %31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %32) #21
          to label %panic12.cont unwind label %cleanup

panic12.cont:                                     ; preds = %panic12.invoke
  unreachable
}
