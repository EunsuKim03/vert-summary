define noundef i32 @f_gold(i32 noundef %f, i32 noundef %d, i32 noundef %s) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %mem = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mem)
  %_7 = sext i32 %s to i64
  %_6 = add nsw i64 %_7, 1
  %_21.0.i.i.i = shl nsw i64 %_6, 2
  %_21.1.i.i.i = icmp ugt i64 %_6, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !379

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_6, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9ffd6eb02f00f8aaE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9ffd6eb02f00f8aaE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1076
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9ffd6eb02f00f8aaE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_9 = sext i32 %d to i64
  %_8 = add nsw i64 %_9, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %_21.0.i.i.i.i = mul nsw i64 %_8, 24
  %or.cond.i.i.i.i = icmp ugt i64 %_8, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9ffd6eb02f00f8aaE.exit"
  %_8.i.i.i = icmp eq i64 %_8, 0
  br i1 %_8.i.i.i, label %bb6.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1081
; call __rustc::__rust_alloc
  %4 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1081
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9ffd6eb02f00f8aaE.exit"
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9ffd6eb02f00f8aaE.exit" ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb4.i, !noalias !1077

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i
  store i64 %_8, ptr %v.i, align 8, !noalias !1077
  %6 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %4, ptr %6, align 8, !noalias !1077
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %_2425.i.i.not = icmp eq i32 %d, 0
  br i1 %_2425.i.i.not, label %bb17.i.i17, label %bb13.i.i

bb13.i.i:                                         ; preds = %bb1.i.i, %bb3.i3.i18
  %ptr.sroa.0.028.i.i = phi ptr [ %_15.i.i, %bb3.i3.i18 ], [ %4, %bb1.i.i ]
  %iter.sroa.0.027.i.i = phi i64 [ %_28.i.i, %bb3.i3.i18 ], [ 1, %bb1.i.i ]
  %storemerge26.i.i = phi i64 [ %12, %bb3.i3.i18 ], [ 0, %bb1.i.i ]
  br i1 %_8.i.i, label %bb3.i3.i18, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb13.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1087
; call __rustc::__rust_alloc
  %8 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1087
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb3.i.i.i.i.i, label %bb3.i3.i18

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1097

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb6.i.i:                                          ; preds = %bb17.i.i.i
  store i64 0, ptr %v.i, align 8, !noalias !1077
  %10 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %10, align 8, !noalias !1077
  %11 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  store i64 0, ptr %11, align 8, !alias.scope !1084, !noalias !1098
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E.exit", label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %bb6.i.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1103
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E.exit"

bb17.i.i17:                                       ; preds = %bb3.i3.i18, %bb1.i.i
  %ptr.sroa.0.0.lcssa36.i.i = phi ptr [ %4, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i18 ]
  store i64 %_6, ptr %ptr.sroa.0.0.lcssa36.i.i, align 8, !noalias !1112
  %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 8
  store ptr %3, ptr %_7.sroa.6.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa36.i.i, i64 16
  store i64 %_6, ptr %_7.sroa.9.0.ptr.sroa.0.0.lcssa36.i.sroa_idx.i, align 8, !noalias !1112
  store i64 %_8, ptr %7, align 8, !alias.scope !1084, !noalias !1113
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E.exit"

bb3.i3.i18:                                       ; preds = %bb3.i.i.i.i.i.i, %bb13.i.i
  %_4.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb13.i.i ], [ %8, %bb3.i.i.i.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %_4.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %3, i64 %_21.0.i.i.i, i1 false), !noalias !1118
  %_28.i.i = add nuw i64 %iter.sroa.0.027.i.i, 1
  store i64 %_6, ptr %ptr.sroa.0.028.i.i, align 8, !noalias !1097
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 8
  store ptr %_4.sroa.10.0.i.i.i.i.i, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 16
  store i64 %_6, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1097
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.028.i.i, i64 24
  %12 = add nuw i64 %storemerge26.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.027.i.i, %_9
  br i1 %exitcond.not.i.i, label %bb17.i.i17, label %bb13.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge26.i.i, ptr %7, align 8, !alias.scope !1084, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h14bbc42e6e51dd72E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1077
  br label %common.resume

common.resume:                                    ; preds = %cleanup1.body.i, %bb4.i, %bb2.i.i.i3.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %18, %cleanup ], [ %13, %cleanup1.body.i ], [ %14, %bb4.i ], [ %14, %bb2.i.i.i3.i.i ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %bb3.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %common.resume, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb4.i
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %common.resume

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E.exit": ; preds = %bb6.i.i, %bb2.i.i.i3.i.i.i, %bb17.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %mem, ptr noundef nonnull align 8 dereferenceable(24) %v.i, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1077
  %15 = getelementptr inbounds nuw i8, ptr %mem, i64 16
  %_51 = load i64, ptr %15, align 8, !noundef !6
  %_54.not = icmp eq i64 %_51, 0
  br i1 %_54.not, label %panic14.invoke, label %bb15

bb15:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E.exit"
  %16 = getelementptr inbounds nuw i8, ptr %mem, i64 8
  %_52 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %17 = getelementptr inbounds nuw i8, ptr %_52, i64 16
  %_57 = load i64, ptr %17, align 8, !noundef !6
  %_60.not = icmp eq i64 %_57, 0
  br i1 %_60.not, label %panic14.invoke, label %bb16

cleanup:                                          ; preds = %panic14.invoke
  %18 = landingpad { ptr, i32 }
          cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h14bbc42e6e51dd72E"(ptr noalias noundef align 8 dereferenceable(24) %mem) #23
  br label %common.resume

bb16:                                             ; preds = %bb15
  %19 = getelementptr inbounds nuw i8, ptr %_52, i64 8
  %_58 = load ptr, ptr %19, align 8, !nonnull !6, !noundef !6
  store i32 1, ptr %_58, align 4
  %_0.i.not.i87 = icmp slt i32 %d, 1
  br i1 %_0.i.not.i87, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb16
  %20 = xor i32 %f, -1
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb9, %bb2.i
  %_0.i.not.i = icmp sgt i32 %spec.select, %d
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb1.loopexit
  %iter.sroa.0.088 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb1.loopexit ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.088, %d
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %21 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.088, %21
  %_0.i.not.i2685 = icmp sgt i32 %iter.sroa.0.088, %s
  br i1 %_0.i.not.i2685, label %bb1.loopexit, label %bb2.i27.lr.ph

bb2.i27.lr.ph:                                    ; preds = %bb2.i
  %_27 = zext nneg i32 %iter.sroa.0.088 to i64
  %_70 = icmp ugt i64 %_51, %_27
  %_26 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_52, i64 %_27
  %22 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %_26, i64 16
  %_34 = add nsw i32 %iter.sroa.0.088, -1
  %_33 = sext i32 %_34 to i64
  %_80 = icmp ugt i64 %_51, %_33
  %_32 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_52, i64 %_33
  %24 = getelementptr inbounds nuw i8, ptr %_32, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %_32, i64 8
  br i1 %_70, label %bb2.i27, label %panic14.invoke

bb4:                                              ; preds = %bb1.loopexit, %bb16
  %_65 = icmp ugt i64 %_51, %_9
  br i1 %_65, label %bb18, label %panic14.invoke

bb18:                                             ; preds = %bb4
  %_48 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_52, i64 %_9
  %26 = getelementptr inbounds nuw i8, ptr %_48, i64 16
  %_121 = load i64, ptr %26, align 8, !noundef !6
  %_124 = icmp ugt i64 %_121, %_7
  br i1 %_124, label %bb30, label %panic14.invoke

bb30:                                             ; preds = %bb18
  %27 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  %_122 = load ptr, ptr %27, align 8, !nonnull !6, !noundef !6
  %_47 = getelementptr inbounds nuw i32, ptr %_122, i64 %_7
  %_0 = load i32, ptr %_47, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb30, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf238ad059a02f545E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %28, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf238ad059a02f545E.exit.i.i.i" ], [ 0, %bb30 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_52, i64 %_3.sroa.0.012.i.i.i
  %28 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1161, !noalias !1164, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf238ad059a02f545E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %29 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %30 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %30, align 8, !alias.scope !1161, !noalias !1164, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %29, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1168
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf238ad059a02f545E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf238ad059a02f545E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %28, %_51
  br i1 %_7.i.i.i, label %bb4.i20, label %bb5.i.i.i

bb4.i20:                                          ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hf238ad059a02f545E.exit.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %self1.i.i.i.i1.i = load i64, ptr %mem, align 8, !range !22, !alias.scope !1178, !noalias !1181, !noundef !6
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h14bbc42e6e51dd72E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb4.i20
  %31 = mul nuw i64 %self1.i.i.i.i1.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_52, i64 noundef %31, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1183
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h14bbc42e6e51dd72E.exit"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h14bbc42e6e51dd72E.exit": ; preds = %bb4.i20, %bb2.i.i.i3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mem)
  ret i32 %_0

bb2.i27:                                          ; preds = %bb2.i27.lr.ph, %bb9
  %iter1.sroa.0.086 = phi i32 [ %spec.select54, %bb9 ], [ %iter.sroa.0.088, %bb2.i27.lr.ph ]
  %_0.i3.i28 = icmp sge i32 %iter1.sroa.0.086, %s
  %not._0.i3.i28 = xor i1 %_0.i3.i28, true
  %32 = zext i1 %not._0.i3.i28 to i32
  %spec.select54 = add nuw nsw i32 %iter1.sroa.0.086, %32
  %_29 = add nsw i32 %iter1.sroa.0.086, -1
  %_28 = sext i32 %_29 to i64
  %_73 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_72 = load i64, ptr %23, align 8, !noundef !6
  %_75 = icmp ugt i64 %_72, %_28
  br i1 %_75, label %bb21, label %panic14.invoke

bb21:                                             ; preds = %bb2.i27
  %_25 = getelementptr inbounds nuw i32, ptr %_73, i64 %_28
  %_24 = load i32, ptr %_25, align 4, !noundef !6
  br i1 %_80, label %bb22, label %panic14.invoke

bb22:                                             ; preds = %bb21
  %_82 = load i64, ptr %24, align 8, !noundef !6
  %_85 = icmp ugt i64 %_82, %_28
  br i1 %_85, label %bb23, label %panic14.invoke

bb23:                                             ; preds = %bb22
  %_37 = zext nneg i32 %iter1.sroa.0.086 to i64
  %_97 = icmp ugt i64 %_72, %_37
  br i1 %_97, label %bb25, label %panic14.invoke

bb25:                                             ; preds = %bb23
  %_83 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_31 = getelementptr inbounds nuw i32, ptr %_83, i64 %_28
  %_30 = load i32, ptr %_31, align 4, !noundef !6
  %_35 = getelementptr inbounds nuw i32, ptr %_73, i64 %_37
  %33 = add i32 %_30, %_24
  store i32 %33, ptr %_35, align 4
  %_39 = add i32 %iter1.sroa.0.086, %20
  %_38 = icmp sgt i32 %_39, -1
  br i1 %_38, label %bb26, label %bb9

bb9:                                              ; preds = %bb29, %bb25
  %_0.i.not.i26 = icmp sgt i32 %spec.select54, %s
  %or.cond56 = select i1 %_0.i3.i28, i1 true, i1 %_0.i.not.i26
  br i1 %or.cond56, label %bb1.loopexit, label %bb2.i27

bb26:                                             ; preds = %bb25
  %_44 = zext nneg i32 %_39 to i64
  %_104 = load i64, ptr %24, align 8, !noundef !6
  %_107 = icmp ugt i64 %_104, %_44
  br i1 %_107, label %bb28, label %panic14.invoke

bb28:                                             ; preds = %bb26
  %_116 = load i64, ptr %23, align 8, !noundef !6
  %_119 = icmp ugt i64 %_116, %_37
  br i1 %_119, label %bb29, label %panic14.invoke

bb29:                                             ; preds = %bb28
  %_105 = load ptr, ptr %25, align 8, !nonnull !6, !noundef !6
  %_42 = getelementptr inbounds nuw i32, ptr %_105, i64 %_44
  %_41 = load i32, ptr %_42, align 4, !noundef !6
  %_117 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_45 = getelementptr inbounds nuw i32, ptr %_117, i64 %_37
  %34 = load i32, ptr %_45, align 4, !noundef !6
  %35 = sub i32 %34, %_41
  store i32 %35, ptr %_45, align 4
  br label %bb9

panic14.invoke:                                   ; preds = %bb2.i27.lr.ph, %bb28, %bb26, %bb23, %bb22, %bb21, %bb2.i27, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E.exit", %bb18, %bb4, %bb15
  %36 = phi i64 [ 0, %bb15 ], [ %_9, %bb4 ], [ %_7, %bb18 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E.exit" ], [ %_28, %bb2.i27 ], [ %_33, %bb21 ], [ %_28, %bb22 ], [ %_37, %bb23 ], [ %_44, %bb26 ], [ %_37, %bb28 ], [ %_27, %bb2.i27.lr.ph ]
  %37 = phi i64 [ 0, %bb15 ], [ %_51, %bb4 ], [ %_121, %bb18 ], [ 0, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E.exit" ], [ %_72, %bb2.i27 ], [ %_51, %bb21 ], [ %_82, %bb22 ], [ %_72, %bb23 ], [ %_104, %bb26 ], [ %_116, %bb28 ], [ %_51, %bb2.i27.lr.ph ]
  %38 = phi ptr [ @alloc_6f35b41ea119093316f67fe513b76502, %bb15 ], [ @alloc_7fd48b4810d5547f51677e14f794f2a4, %bb4 ], [ @alloc_97d399a03a189396f4acc790d40e719f, %bb18 ], [ @alloc_dae2ef4da11f8c3277ff05767ca96ed7, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0ee3c13adba8d6c3E.exit" ], [ @alloc_097f029744a4e9cec99b18c0f5b1c109, %bb2.i27 ], [ @alloc_fb9b5c60a2a1eb635c2abb8efc804f6f, %bb21 ], [ @alloc_09d648b1f10f476932d3409de2524a2b, %bb22 ], [ @alloc_fd06b9c5674ae1c9e2c7b92d370707bb, %bb23 ], [ @alloc_0775f161b05850225c2c9f476e76260e, %bb26 ], [ @alloc_a636b71f01d028e62af66f041f36149c, %bb28 ], [ @alloc_1c90723536eb01ea4c6e30fe61f3c144, %bb2.i27.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %36, i64 noundef %37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %38) #21
          to label %panic14.cont unwind label %cleanup

panic14.cont:                                     ; preds = %panic14.invoke
  unreachable
}
