define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %m, i32 noundef %n) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %B = alloca [8 x i8], align 8
  %A = alloca [8 x i8], align 8
  store i64 %0, ptr %A, align 8
  store i64 %1, ptr %B, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_8 = sext i32 %m to i64
  %_7 = add nsw i64 %_8, 1
  %_21.0.i.i.i = shl nsw i64 %_7, 2
  %_21.1.i.i.i = icmp ugt i64 %_7, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_7, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he9544f57eff86b30E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %4 = ptrtoint ptr %2 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he9544f57eff86b30E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he9544f57eff86b30E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %4, %bb10.i.i ], [ 4, %bb17.i.i ]
  %5 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_10 = sext i32 %n to i64
  %_9 = add nsw i64 %_10, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_9, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_9, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he9544f57eff86b30E.exit"
  %_8.i.i.i = icmp eq i64 %_9, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %6 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he9544f57eff86b30E.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he9544f57eff86b30E.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_9, ptr %v.i, align 8, !noalias !1077
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %6, ptr %8, align 8, !noalias !1077
  %9 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %n, 0
  br i1 %_2425.i.i.not, label %bb17.i.i13, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i14
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i14 ], [ %6, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i14 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %14, %bb3.i3.i14 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i14, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %10 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb3.i.i.i.i.i, label %bb3.i3.i14

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  store i64 0, ptr %v.i, align 8, !noalias !1077
  %12 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %12, align 8, !noalias !1077
  %13 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %13, align 8, !alias.scope !1084, !noalias !1098
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2efdfed3eb9e7deaE.exit", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2efdfed3eb9e7deaE.exit"

bb17.i.i13:                                       ; preds = %bb3.i3.i14, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %6, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i14 ]
  store i64 %_7, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %5, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_7, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_9, ptr %9, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2efdfed3eb9e7deaE.exit"

bb3.i3.i14:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %10, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %5, i64 %_21.0.i.i.i, i1 false), !noalias !1118
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_7, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_7, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %14 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_10
  br i1 %exitcond.not.i.i, label %bb17.i.i13, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %15 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %9, align 8, !alias.scope !1084, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3017f06d6f81789aE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %24, %cleanup ], [ %15, %cleanup1.body.i ], [ %16, %bb4.i ], [ %16, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %16 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2efdfed3eb9e7deaE.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %dp, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_0.i.not.i84 = icmp slt i32 %n, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %dp, i64 16
  %_41.pre = load i64, ptr %.phi.trans.insert, align 8
  br i1 %_0.i.not.i84, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2efdfed3eb9e7deaE.exit"
  %17 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_47 = load ptr, ptr %17, align 8, !nonnull !6
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb22, %bb2.i
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.085 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.085, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %18 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.085, %18
  %_0.i.not.i2282 = icmp sgt i32 %iter.sroa.0.085, %m
  br i1 %_0.i.not.i2282, label %bb1.loopexit, label %bb2.i23.lr.ph

bb2.i23.lr.ph:                                    ; preds = %bb2.i
  %_28 = zext nneg i32 %iter.sroa.0.085 to i64
  %_27 = add nsw i64 %_28, -1
  %_49 = icmp ult i64 %_27, %_41.pre
  %_26 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_47, i64 %_27
  %19 = getelementptr inbounds nuw i8, ptr %_26, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %_35 = icmp samesign ugt i32 %iter.sroa.0.085, 2
  %21 = getelementptr inbounds nuw i32, ptr %B, i64 %_27
  %_60 = icmp ugt i64 %_41.pre, %_28
  %_37 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_47, i64 %_28
  %22 = getelementptr inbounds nuw i8, ptr %_37, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %_37, i64 8
  br i1 %_49, label %bb2.i23, label %panic8.invoke

cleanup:                                          ; preds = %panic8.invoke
  %24 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3017f06d6f81789aE"(ptr noalias noundef align 8 dereferenceable(24) %dp) #23
  br label %common.resume

bb4:                                              ; preds = %bb1.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h2efdfed3eb9e7deaE.exit"
  %_44 = icmp ugt i64 %_41.pre, %_10
  br i1 %_44, label %bb17, label %panic8.invoke

bb17:                                             ; preds = %bb4
  %25 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  %_42 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_39 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_42, i64 %_10
  %26 = getelementptr inbounds nuw i8, ptr %_39, i64 16
  %_68 = load i64, ptr %26, align 8, !noundef !6
  %_71 = icmp ugt i64 %_68, %_8
  br i1 %_71, label %bb23, label %panic8.invoke

bb23:                                             ; preds = %bb17
  %27 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  %_69 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_38 = getelementptr inbounds nuw i32, ptr %_69, i64 %_8
  %_0 = load i32, ptr %_38, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb23, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hee41de0ccbff9b00E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hee41de0ccbff9b00E.exit.i.i.i" ], [ 0, %bb23 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_42, i64 %_3.sroa.0.012.i.i.i
  %28 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hee41de0ccbff9b00E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %29 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %30 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %30, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hee41de0ccbff9b00E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hee41de0ccbff9b00E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %28, %_41.pre
  br i1 %_7.i.i.i, label %bb4.i16, label %bb5.i.i.i

bb4.i16:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hee41de0ccbff9b00E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %dp, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3017f06d6f81789aE.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i16
  %31 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_42, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3017f06d6f81789aE.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h3017f06d6f81789aE.exit": ; preds = %bb4.i16, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb2.i23:                                          ; preds = %bb2.i23.lr.ph, %bb22
  %iter1.sroa.0.083 = phi i32 [ %spec.select51, %bb22 ], [ %iter.sroa.0.085, %bb2.i23.lr.ph ]
  %_0.i3.i24 = icmp sge i32 %iter1.sroa.0.083, %m
  %not._0.i3.i24 = xor i1 %_0.i3.i24, true
  %32 = zext i1 %not._0.i3.i24 to i32
  %spec.select51 = add nuw nsw i32 %iter1.sroa.0.083, %32
  %_30 = zext nneg i32 %iter1.sroa.0.083 to i64
  %_29 = add nsw i64 %_30, -1
  %_51 = load i64, ptr %19, align 8, !noundef !6
  %_54 = icmp ult i64 %_29, %_51
  br i1 %_54, label %bb20, label %panic8.invoke

bb20:                                             ; preds = %bb2.i23
  %_33 = icmp ugt i64 %_29, 1
  %brmerge = select i1 %_33, i1 true, i1 %_35
  br i1 %brmerge, label %panic8.invoke.loopexit.split.loop.exit161, label %bb10

bb10:                                             ; preds = %bb20
  %_52 = load ptr, ptr %20, align 8, !nonnull !6, !noundef !6
  %_25 = getelementptr inbounds nuw i32, ptr %_52, i64 %_29
  %_24 = load i32, ptr %_25, align 4, !noundef !6
  %33 = getelementptr inbounds nuw i32, ptr %A, i64 %_29
  %_32 = load i32, ptr %33, align 4, !noundef !6
  %_34 = load i32, ptr %21, align 4, !noundef !6
  %_31 = mul i32 %_34, %_32
  %_0.sroa.0.0.i30 = tail call noundef i32 @llvm.smax.i32(i32 %_31, i32 %_24)
  br i1 %_60, label %bb21, label %panic8.invoke

bb21:                                             ; preds = %bb10
  %_63 = load i64, ptr %22, align 8, !noundef !6
  %_66 = icmp ugt i64 %_63, %_30
  br i1 %_66, label %bb22, label %panic8.invoke

bb22:                                             ; preds = %bb21
  %_64 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_36 = getelementptr inbounds nuw i32, ptr %_64, i64 %_30
  store i32 %_0.sroa.0.0.i30, ptr %_36, align 4
  %_0.i.not.i22 = icmp sgt i32 %spec.select51, %m
  %or.cond53 = select i1 %_0.i3.i24, i1 true, i1 %_0.i.not.i22
  br i1 %or.cond53, label %bb1.loopexit, label %bb2.i23

panic8.invoke.loopexit.split.loop.exit161:        ; preds = %bb20
  %_29.mux.le = select i1 %_33, i64 %_29, i64 %_27
  %alloc_1ba2814f37f2d13717660e56bee9b61f.mux.le = select i1 %_33, ptr @alloc_1ba2814f37f2d13717660e56bee9b61f, ptr @alloc_c259ae0edd27e98661744ff63fef8537
  br label %panic8.invoke

panic8.invoke:                                    ; preds = %bb2.i23.lr.ph, %panic8.invoke.loopexit.split.loop.exit161, %bb2.i23, %bb10, %bb21, %bb17, %bb4
  %34 = phi i64 [ %_10, %bb4 ], [ %_8, %bb17 ], [ %_29.mux.le, %panic8.invoke.loopexit.split.loop.exit161 ], [ %_29, %bb2.i23 ], [ %_28, %bb10 ], [ %_30, %bb21 ], [ %_27, %bb2.i23.lr.ph ]
  %35 = phi i64 [ %_41.pre, %bb4 ], [ %_68, %bb17 ], [ 2, %panic8.invoke.loopexit.split.loop.exit161 ], [ %_51, %bb2.i23 ], [ %_41.pre, %bb10 ], [ %_63, %bb21 ], [ %_41.pre, %bb2.i23.lr.ph ]
  %36 = phi ptr [ @alloc_cb52d429e2dce7656763cec6d8dda9c7, %bb4 ], [ @alloc_5c967810f868ed812be24b4df1e076e3, %bb17 ], [ %alloc_1ba2814f37f2d13717660e56bee9b61f.mux.le, %panic8.invoke.loopexit.split.loop.exit161 ], [ @alloc_e77b3bc922347aba9c581db160d3d686, %bb2.i23 ], [ @alloc_37b0748993523ed2d57b6614aab8d926, %bb10 ], [ @alloc_8ad2094554c434cc4d1fccc83d887e49, %bb21 ], [ @alloc_4c01ead1c2d45492ad555d8479d12bc6, %bb2.i23.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %34, i64 noundef %35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %36) #21
          to label %panic8.cont unwind label %cleanup

panic8.cont:                                      ; preds = %panic8.invoke
  unreachable
}
