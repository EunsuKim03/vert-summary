define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %N = load i64, ptr %0, align 8, !noundef !6
  %_85 = icmp sgt i64 %N, -1
  tail call void @llvm.assume(i1 %_85)
  %_5 = add nuw i64 %N, 1
  %_21.0.i.i.i = shl i64 %_5, 2
  %_21.1.i.i.i = icmp samesign ugt i64 %N, 4611686018427387902
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb3.i3.i, !prof !379

bb3.i3.i:                                         ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1071
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1071
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb31

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb29:                                             ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i61, %cleanup, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E.exit"
  %.pn = phi { ptr, i32 } [ %17, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E.exit" ], [ %4, %cleanup ], [ %12, %cleanup1.body.i ], [ %13, %bb2.i.i.i3.i.i61 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !22, !alias.scope !1091, !noalias !1094, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb30, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb29
  %3 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %3, align 8, !alias.scope !1091, !noalias !1094, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1096
  br label %bb30

cleanup:                                          ; preds = %bb14.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb29

bb31:                                             ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1097
  %_21.0.i.i.i.i = mul i64 %_5, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %N, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %bb31
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1101
; call __rustc::__rust_alloc
  %5 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1101
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb31
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %bb31 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i61, !noalias !1097

.noexc.i:                                         ; preds = %bb3.i.i
  unreachable

bb1.i.i:                                          ; preds = %bb3.i.i.i, %bb17.i.i.i
  %_4.sroa.4.0.i.i = phi i64 [ 0, %bb17.i.i.i ], [ %_5, %bb3.i.i.i ]
  %_4.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb17.i.i.i ], [ %5, %bb3.i.i.i ]
  %_7.i.i = icmp samesign ult i64 %N, %_4.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %_7.i.i)
  store i64 %_4.sroa.4.0.i.i, ptr %v.i, align 8, !noalias !1097
  %7 = getelementptr inbounds nuw i8, ptr %v.i, i64 8
  store ptr %_4.sroa.10.0.i.i, ptr %7, align 8, !noalias !1097
  %8 = getelementptr inbounds nuw i8, ptr %v.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %_2417.i.i.not = icmp eq i64 %N, 0
  br i1 %_2417.i.i.not, label %bb32, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i58
  %ptr.sroa.0.020.i.i = phi ptr [ %_15.i.i, %bb3.i3.i58 ], [ %_4.sroa.10.0.i.i, %bb1.i.i ]
  %iter.sroa.0.019.i.i = phi i64 [ %_28.i.i, %bb3.i3.i58 ], [ 1, %bb1.i.i ]
  %storemerge18.i.i = phi i64 [ %11, %bb3.i3.i58 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1107
; call __rustc::__rust_alloc
  %9 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1107
  %10 = icmp eq ptr %9, null
  br i1 %10, label %bb3.i.i.i.i.i, label %bb3.i3.i58

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1117

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i58:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %9, ptr nonnull readonly align 4 %1, i64 %_21.0.i.i.i, i1 false), !noalias !1118
  %_28.i.i = add nuw i64 %iter.sroa.0.019.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.020.i.i, align 8, !noalias !1117
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 8
  store ptr %9, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1117
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1117
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 24
  %11 = add nuw nsw i64 %storemerge18.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.019.i.i, %N
  br i1 %exitcond.not.i.i, label %bb32, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge18.i.i, ptr %8, align 8, !alias.scope !1104, !noalias !1119
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1124
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1097
  br label %bb29

bb2.i.i.i3.i.i61:                                 ; preds = %bb3.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1133
  br label %bb29

bb32:                                             ; preds = %bb3.i3.i58, %bb1.i.i
  %ptr.sroa.0.0.lcssa.i.i = phi ptr [ %_4.sroa.10.0.i.i, %bb1.i.i ], [ %_15.i.i, %bb3.i3.i58 ]
  store i64 %_5, ptr %ptr.sroa.0.0.lcssa.i.i, align 8, !noalias !1142
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa.i.i, i64 8
  store ptr %1, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1142
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.0.lcssa.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1142
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1097
  br label %bb2.i

bb1.loopexit:                                     ; preds = %bb36
  %_0.i.not.i = icmp samesign ugt i64 %spec.select257, %N
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb8.preheader.split, label %bb2.i

bb8.preheader.split:                              ; preds = %bb1.loopexit
  br i1 %_2417.i.i.not, label %bb38, label %bb2.i71.lr.ph

bb2.i71.lr.ph:                                    ; preds = %bb8.preheader.split
  %14 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_145 = load ptr, ptr %14, align 8, !nonnull !6
  br label %bb2.i71

bb2.i:                                            ; preds = %bb32, %bb1.loopexit
  %iter.sroa.0.0386 = phi i64 [ 0, %bb32 ], [ %spec.select257, %bb1.loopexit ]
  %_0.i3.i = icmp samesign uge i64 %iter.sroa.0.0386, %N
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select257 = add nuw nsw i64 %iter.sroa.0.0386, %_0.i4.i
  %_18 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter.sroa.0.0386
  %15 = getelementptr inbounds nuw i8, ptr %_18, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %_18, i64 8
  br label %bb2.i187

cleanup5:                                         ; preds = %bb69.invoke, %panic31.invoke
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %cleanup5, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %18, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i" ], [ 0, %cleanup5 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_3.sroa.0.012.i.i.i
  %18 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1158, !noalias !1161, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %19 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %20 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %20, align 8, !alias.scope !1158, !noalias !1161, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %19, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1167
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %_3.sroa.0.012.i.i.i, %N
  br i1 %_7.i.i.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E.exit", label %bb5.i.i.i

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hedf48bb8a32fa4f7E.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i"
  %21 = mul nuw i64 %_4.sroa.4.0.i.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %21, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1168
  br label %bb29

bb8.loopexit:                                     ; preds = %bb25
  %_0.i.not.i70 = icmp samesign ugt i64 %spec.select258, %N
  %or.cond266 = select i1 %_0.i3.i72, i1 true, i1 %_0.i.not.i70
  br i1 %or.cond266, label %bb38, label %bb2.i71

bb2.i71:                                          ; preds = %bb2.i71.lr.ph, %bb8.loopexit
  %iter2.sroa.0.0392 = phi i64 [ 1, %bb2.i71.lr.ph ], [ %spec.select258, %bb8.loopexit ]
  %_0.i3.i72 = icmp samesign uge i64 %iter2.sroa.0.0392, %N
  %not._0.i3.i72 = xor i1 %_0.i3.i72, true
  %_0.i4.i77 = zext i1 %not._0.i3.i72 to i64
  %spec.select258 = add nuw nsw i64 %iter2.sroa.0.0392, %_0.i4.i77
  %_26 = sub nuw nsw i64 %N, %iter2.sroa.0.0392
  %_31 = add nsw i64 %iter2.sroa.0.0392, -1
  %_32 = icmp eq i64 %iter2.sroa.0.0392, 1
  br label %bb12

bb38:                                             ; preds = %bb8.loopexit, %bb8.preheader.split
  %_84 = add nsw i64 %N, -1
  %22 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 16
  %_276 = load i64, ptr %22, align 8, !noundef !6
  %_279 = icmp ult i64 %_84, %_276
  br i1 %_279, label %bb83, label %panic31.invoke

bb83:                                             ; preds = %bb38
  %23 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 8
  %_277 = load ptr, ptr %23, align 8, !nonnull !6, !noundef !6
  %_82 = getelementptr inbounds nuw i32, ptr %_277, i64 %_84
  %_0 = load i32, ptr %_82, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  br label %bb5.i.i.i82

bb5.i.i.i82:                                      ; preds = %bb83, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i89"
  %_3.sroa.0.012.i.i.i83 = phi i64 [ %24, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i89" ], [ 0, %bb83 ]
  %_6.i.i.i84 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_3.sroa.0.012.i.i.i83
  %24 = add nuw i64 %_3.sroa.0.012.i.i.i83, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %self1.i.i.i.i1.i.i.i.i85 = load i64, ptr %_6.i.i.i84, align 8, !range !22, !alias.scope !1190, !noalias !1193, !noundef !6
  %_6.i.i.i.i2.i.i.i.i86 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i85, 0
  br i1 %_6.i.i.i.i2.i.i.i.i86, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i89", label %bb2.i.i.i3.i.i.i.i87

bb2.i.i.i3.i.i.i.i87:                             ; preds = %bb5.i.i.i82
  %25 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i85, 2
  %26 = getelementptr inbounds nuw i8, ptr %_6.i.i.i84, i64 8
  %self3.i.i.i.i4.i.i.i.i88 = load ptr, ptr %26, align 8, !alias.scope !1190, !noalias !1193, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i88, i64 noundef %25, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1199
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i89"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i89": ; preds = %bb2.i.i.i3.i.i.i.i87, %bb5.i.i.i82
  %_7.i.i.i90 = icmp eq i64 %_3.sroa.0.012.i.i.i83, %N
  br i1 %_7.i.i.i90, label %bb26, label %bb5.i.i.i82

bb26:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hffcf64ef4c9777d3E.exit.i.i.i89"
  %27 = mul nuw i64 %_4.sroa.4.0.i.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %27, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %self1.i.i.i.i1.i.i96 = load i64, ptr %str, align 8, !range !22, !alias.scope !1222, !noalias !1225, !noundef !6
  %_6.i.i.i.i2.i.i97 = icmp eq i64 %self1.i.i.i.i1.i.i96, 0
  br i1 %_6.i.i.i.i2.i.i97, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h19694d511a22bb7dE.exit100", label %bb2.i.i.i3.i.i98

bb2.i.i.i3.i.i98:                                 ; preds = %bb26
  %28 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i99 = load ptr, ptr %28, align 8, !alias.scope !1222, !noalias !1225, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i99, i64 noundef %self1.i.i.i.i1.i.i96, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1227
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h19694d511a22bb7dE.exit100"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h19694d511a22bb7dE.exit100": ; preds = %bb26, %bb2.i.i.i3.i.i98
  ret i32 %_0

bb12:                                             ; preds = %bb2.i71, %bb25
  %iter4.sroa.0.1390 = phi i64 [ 1, %bb2.i71 ], [ %48, %bb25 ]
  %iter4.sroa.0.0389 = phi i64 [ 0, %bb2.i71 ], [ %iter4.sroa.0.1390, %bb25 ]
  %j = add i64 %_31, %iter4.sroa.0.0389
  br i1 %_32, label %bb14, label %bb15

bb15:                                             ; preds = %bb12
  %_123.not = icmp ugt i64 %iter4.sroa.0.1390, %N
  br i1 %_123.not, label %panic31.invoke, label %bb44

bb14:                                             ; preds = %bb12
  %_34 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter4.sroa.0.0389
  %29 = getelementptr inbounds nuw i8, ptr %_34, i64 16
  %_115 = load i64, ptr %29, align 8, !noundef !6
  %_118 = icmp ult i64 %j, %_115
  br i1 %_118, label %bb43, label %panic31.invoke

bb44:                                             ; preds = %bb15
  %_37 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter4.sroa.0.1390
  %30 = getelementptr inbounds nuw i8, ptr %_37, i64 16
  %_125 = load i64, ptr %30, align 8, !noundef !6
  %_128 = icmp ult i64 %j, %_125
  br i1 %_128, label %bb45, label %panic31.invoke

bb45:                                             ; preds = %bb44
  %31 = getelementptr inbounds nuw i8, ptr %_37, i64 8
  %_40 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter4.sroa.0.0389
  %32 = getelementptr inbounds nuw i8, ptr %_40, i64 16
  %_137 = load i64, ptr %32, align 8, !noundef !6
  %_140 = icmp ult i64 %j, %_137
  br i1 %_140, label %bb47, label %panic31.invoke

bb47:                                             ; preds = %bb45
  %_126 = load ptr, ptr %31, align 8, !nonnull !6, !noundef !6
  %_36 = getelementptr inbounds nuw i32, ptr %_126, i64 %j
  %_35 = load i32, ptr %_36, align 4, !noundef !6
  %33 = getelementptr inbounds nuw i8, ptr %_40, i64 8
  %_138 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_39 = getelementptr inbounds nuw i32, ptr %_138, i64 %j
  %34 = add i32 %_35, 1
  store i32 %34, ptr %_39, align 4
  switch i64 %iter4.sroa.0.0389, label %bb9.i [
    i64 -1, label %bb69.invoke
    i64 0, label %bb15.i
  ]

bb9.i:                                            ; preds = %bb47
  %_12.not.i = icmp ult i64 %iter4.sroa.0.0389, %N
  br i1 %_12.not.i, label %bb13.i, label %bb15.i

bb13.i:                                           ; preds = %bb9.i
  %35 = getelementptr inbounds nuw i8, ptr %_145, i64 %iter4.sroa.0.0389
  %self.i = load i8, ptr %35, align 1, !alias.scope !1228, !noundef !6
  %36 = icmp sgt i8 %self.i, -65
  br i1 %36, label %bb2.i104, label %bb69.invoke

bb2.i104:                                         ; preds = %bb13.i
  %_18.i = icmp eq i64 %iter4.sroa.0.1390, 0
  br i1 %_18.i, label %bb15.i115, label %bb15.i

bb15.i:                                           ; preds = %bb9.i, %bb47, %bb2.i104
  %_19.not.i = icmp samesign uge i64 %iter4.sroa.0.1390, %N
  br i1 %_19.not.i, label %bb50, label %bb19.i

bb19.i:                                           ; preds = %bb15.i
  %37 = getelementptr inbounds nuw i8, ptr %_145, i64 %iter4.sroa.0.1390
  %self2.i = load i8, ptr %37, align 1, !alias.scope !1228, !noundef !6
  %38 = icmp sgt i8 %self2.i, -65
  br i1 %38, label %bb50, label %bb69.invoke

bb50:                                             ; preds = %bb15.i, %bb19.i
  %_46 = add i64 %iter4.sroa.0.0389, 2
  %_3.not.i105 = icmp ugt i64 %iter4.sroa.0.1390, %_46
  br i1 %_3.not.i105, label %bb69.invoke, label %bb1.i106

bb1.i106:                                         ; preds = %bb50
  %_11.i107 = icmp eq i64 %iter4.sroa.0.1390, 0
  %brmerge591 = or i1 %_11.i107, %_19.not.i
  %.mux = select i1 %_11.i107, i64 1, i64 %_46
  br i1 %brmerge591, label %bb15.i115, label %bb13.i122

bb13.i122:                                        ; preds = %bb1.i106
  %39 = getelementptr inbounds nuw i8, ptr %_145, i64 %iter4.sroa.0.1390
  %self.i123 = load i8, ptr %39, align 1, !alias.scope !1231, !noundef !6
  %40 = icmp sgt i8 %self.i123, -65
  br i1 %40, label %bb15.i115, label %bb69.invoke

bb15.i115:                                        ; preds = %bb1.i106, %bb2.i104, %bb13.i122
  %_46227232 = phi i64 [ %_46, %bb13.i122 ], [ %.mux, %bb1.i106 ], [ 1, %bb2.i104 ]
  %data.i225233 = getelementptr inbounds nuw i8, ptr %_145, i64 %iter4.sroa.0.0389
  %_19.not.i116 = icmp ult i64 %_46227232, %N
  br i1 %_19.not.i116, label %bb19.i120, label %bb16.i117

bb16.i117:                                        ; preds = %bb15.i115
  %41 = icmp eq i64 %_46227232, %N
  br i1 %41, label %bb55, label %bb69.invoke

bb19.i120:                                        ; preds = %bb15.i115
  %42 = getelementptr inbounds nuw i8, ptr %_145, i64 %_46227232
  %self2.i121 = load i8, ptr %42, align 1, !alias.scope !1231, !noundef !6
  %43 = icmp sgt i8 %self2.i121, -65
  br i1 %43, label %bb55, label %bb69.invoke

bb55:                                             ; preds = %bb16.i117, %bb19.i120
  %data.i119 = getelementptr inbounds nuw i8, ptr %_145, i64 %iter4.sroa.0.1390
  %lhsc = load i8, ptr %data.i225233, align 1
  %rhsc = load i8, ptr %data.i119, align 1
  %_41 = icmp eq i8 %lhsc, %rhsc
  br i1 %_41, label %bb58, label %bb18

bb18:                                             ; preds = %bb63, %bb55
  %_0.i.not.i131387 = icmp ugt i64 %_46227232, %j
  br i1 %_0.i.not.i131387, label %bb25, label %bb2.i132.lr.ph

bb2.i132.lr.ph:                                   ; preds = %bb18
  %_11.i142 = icmp eq i64 %iter4.sroa.0.0389, 0
  %_12.not.i144 = icmp uge i64 %iter4.sroa.0.0389, %N
  %_19.not.i151 = icmp samesign ult i64 %iter4.sroa.0.1390, %N
  %brmerge = or i1 %_11.i142, %_12.not.i144
  br label %bb2.i132

bb58:                                             ; preds = %bb55
  %_177 = load i64, ptr %32, align 8, !noundef !6
  %_180 = icmp ult i64 %j, %_177
  br i1 %_180, label %bb59, label %panic31.invoke

bb59:                                             ; preds = %bb58
  %_178 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_49 = getelementptr inbounds nuw i32, ptr %_178, i64 %j
  %_48 = load i32, ptr %_49, align 4, !noundef !6
  %_185.not = icmp samesign ugt i64 %_46227232, %N
  br i1 %_185.not, label %panic31.invoke, label %bb60

bb60:                                             ; preds = %bb59
  %_54 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_46227232
  %44 = getelementptr inbounds nuw i8, ptr %_54, i64 16
  %_187 = load i64, ptr %44, align 8, !noundef !6
  %_190 = icmp ult i64 %j, %_187
  br i1 %_190, label %bb63, label %panic31.invoke

bb63:                                             ; preds = %bb60
  %45 = getelementptr inbounds nuw i8, ptr %_54, i64 8
  %_188 = load ptr, ptr %45, align 8, !nonnull !6, !noundef !6
  %_53 = getelementptr inbounds nuw i32, ptr %_188, i64 %j
  %_52 = load i32, ptr %_53, align 4, !noundef !6
  %_51 = add i32 %_52, 1
  %_0.sroa.0.0.i125 = tail call noundef i32 @llvm.smin.i32(i32 %_51, i32 %_48)
  store i32 %_0.sroa.0.0.i125, ptr %_49, align 4
  br label %bb18

bb2.i132:                                         ; preds = %bb2.i132.lr.ph, %bb24
  %iter3.sroa.0.0388 = phi i64 [ %_46227232, %bb2.i132.lr.ph ], [ %spec.select260, %bb24 ]
  %_0.i3.i133 = icmp uge i64 %iter3.sroa.0.0388, %j
  %not._0.i3.i133 = xor i1 %_0.i3.i133, true
  %_0.i4.i138 = zext i1 %not._0.i3.i133 to i64
  %spec.select260 = add nuw i64 %iter3.sroa.0.0388, %_0.i4.i138
  br i1 %brmerge, label %bb15.i150, label %bb13.i157

bb13.i157:                                        ; preds = %bb2.i132
  %self.i158 = load i8, ptr %data.i225233, align 1, !alias.scope !1234, !noundef !6
  %46 = icmp sgt i8 %self.i158, -65
  br i1 %46, label %bb15.i150, label %bb69.invoke

bb15.i150:                                        ; preds = %bb2.i132, %bb13.i157
  br i1 %_19.not.i151, label %bb19.i155, label %bb67

bb19.i155:                                        ; preds = %bb15.i150
  %self2.i156 = load i8, ptr %data.i119, align 1, !alias.scope !1234, !noundef !6
  %47 = icmp sgt i8 %self2.i156, -65
  br i1 %47, label %bb67, label %bb69.invoke

bb25:                                             ; preds = %bb24, %bb18, %bb43
  %_103.not = icmp ugt i64 %iter4.sroa.0.1390, %_26
  %48 = add i64 %iter4.sroa.0.1390, 1
  br i1 %_103.not, label %bb8.loopexit, label %bb12

bb67:                                             ; preds = %bb15.i150, %bb19.i155
  %_67 = add i64 %iter3.sroa.0.0388, 1
  switch i64 %iter3.sroa.0.0388, label %bb9.i163 [
    i64 -1, label %bb69.invoke
    i64 0, label %bb15.i170
  ]

bb9.i163:                                         ; preds = %bb67
  %_12.not.i164 = icmp ult i64 %iter3.sroa.0.0388, %N
  br i1 %_12.not.i164, label %bb13.i177, label %bb10.i165

bb10.i165:                                        ; preds = %bb9.i163
  %49 = icmp eq i64 %iter3.sroa.0.0388, %N
  br i1 %49, label %bb15.i170, label %bb69.invoke

bb13.i177:                                        ; preds = %bb9.i163
  %50 = getelementptr inbounds nuw i8, ptr %_145, i64 %iter3.sroa.0.0388
  %self.i178 = load i8, ptr %50, align 1, !alias.scope !1237, !noundef !6
  %51 = icmp sgt i8 %self.i178, -65
  br i1 %51, label %bb15.i170, label %bb69.invoke

bb15.i170:                                        ; preds = %bb67, %bb10.i165, %bb13.i177
  %_19.not.i171 = icmp ult i64 %_67, %N
  br i1 %_19.not.i171, label %bb19.i175, label %bb16.i172

bb16.i172:                                        ; preds = %bb15.i170
  %52 = icmp eq i64 %_67, %N
  br i1 %52, label %bb72, label %bb69.invoke

bb19.i175:                                        ; preds = %bb15.i170
  %53 = getelementptr inbounds nuw i8, ptr %_145, i64 %_67
  %self2.i176 = load i8, ptr %53, align 1, !alias.scope !1237, !noundef !6
  %54 = icmp sgt i8 %self2.i176, -65
  br i1 %54, label %bb72, label %bb69.invoke

bb69.invoke:                                      ; preds = %bb16.i117, %bb50, %bb13.i122, %bb19.i120, %bb13.i, %bb19.i, %bb47, %bb16.i172, %bb10.i165, %bb13.i177, %bb19.i175, %bb67, %bb13.i157, %bb19.i155
  %55 = phi i64 [ %iter4.sroa.0.0389, %bb19.i155 ], [ %iter4.sroa.0.0389, %bb13.i157 ], [ %iter3.sroa.0.0388, %bb67 ], [ %iter3.sroa.0.0388, %bb19.i175 ], [ %iter3.sroa.0.0388, %bb13.i177 ], [ %iter3.sroa.0.0388, %bb10.i165 ], [ %iter3.sroa.0.0388, %bb16.i172 ], [ %iter4.sroa.0.0389, %bb47 ], [ %iter4.sroa.0.0389, %bb19.i ], [ %iter4.sroa.0.0389, %bb13.i ], [ %iter4.sroa.0.1390, %bb19.i120 ], [ %iter4.sroa.0.1390, %bb13.i122 ], [ %iter4.sroa.0.1390, %bb50 ], [ %iter4.sroa.0.1390, %bb16.i117 ]
  %56 = phi i64 [ %iter4.sroa.0.1390, %bb19.i155 ], [ %iter4.sroa.0.1390, %bb13.i157 ], [ %_67, %bb67 ], [ %_67, %bb19.i175 ], [ %_67, %bb13.i177 ], [ %_67, %bb10.i165 ], [ %_67, %bb16.i172 ], [ %iter4.sroa.0.1390, %bb47 ], [ %iter4.sroa.0.1390, %bb19.i ], [ %iter4.sroa.0.1390, %bb13.i ], [ %_46227232, %bb19.i120 ], [ %_46, %bb13.i122 ], [ %_46, %bb50 ], [ %_46227232, %bb16.i117 ]
  %57 = phi ptr [ @alloc_3599240ad9c036f367dc937afdeb7674, %bb19.i155 ], [ @alloc_3599240ad9c036f367dc937afdeb7674, %bb13.i157 ], [ @alloc_50691c52435e0b533a833de3d71578c4, %bb67 ], [ @alloc_50691c52435e0b533a833de3d71578c4, %bb19.i175 ], [ @alloc_50691c52435e0b533a833de3d71578c4, %bb13.i177 ], [ @alloc_50691c52435e0b533a833de3d71578c4, %bb10.i165 ], [ @alloc_50691c52435e0b533a833de3d71578c4, %bb16.i172 ], [ @alloc_c434b6e725389ed18298be7de95276e7, %bb47 ], [ @alloc_c434b6e725389ed18298be7de95276e7, %bb19.i ], [ @alloc_c434b6e725389ed18298be7de95276e7, %bb13.i ], [ @alloc_7452c3969efa35b6a92ce4a05dfe6c48, %bb19.i120 ], [ @alloc_7452c3969efa35b6a92ce4a05dfe6c48, %bb13.i122 ], [ @alloc_7452c3969efa35b6a92ce4a05dfe6c48, %bb50 ], [ @alloc_7452c3969efa35b6a92ce4a05dfe6c48, %bb16.i117 ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_145, i64 noundef %N, i64 noundef %55, i64 noundef %56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %57) #21
          to label %bb69.cont unwind label %cleanup5

bb69.cont:                                        ; preds = %bb69.invoke
  unreachable

bb72:                                             ; preds = %bb16.i172, %bb19.i175
  %data.i174 = getelementptr inbounds nuw i8, ptr %_145, i64 %iter3.sroa.0.0388
  %lhsc264 = load i8, ptr %data.i225233, align 1
  %rhsc265 = load i8, ptr %data.i174, align 1
  %_63 = icmp eq i8 %lhsc264, %rhsc265
  br i1 %_63, label %bb75, label %bb24

bb24:                                             ; preds = %bb82, %bb72
  %_0.i.not.i131 = icmp ugt i64 %spec.select260, %j
  %or.cond267 = select i1 %_0.i3.i133, i1 true, i1 %_0.i.not.i131
  br i1 %or.cond267, label %bb25, label %bb2.i132

bb75:                                             ; preds = %bb72
  %_239 = load i64, ptr %32, align 8, !noundef !6
  %_242 = icmp ult i64 %j, %_239
  br i1 %_242, label %bb77, label %panic31.invoke

bb77:                                             ; preds = %bb75
  %_240 = load ptr, ptr %33, align 8, !nonnull !6, !noundef !6
  %_70 = getelementptr inbounds nuw i32, ptr %_240, i64 %j
  %_69 = load i32, ptr %_70, align 4, !noundef !6
  %_76 = add nsw i64 %iter3.sroa.0.0388, -1
  %_249 = load i64, ptr %30, align 8, !noundef !6
  %_252 = icmp ult i64 %_76, %_249
  br i1 %_252, label %bb78, label %panic31.invoke

bb78:                                             ; preds = %bb77
  %_250 = load ptr, ptr %31, align 8, !nonnull !6, !noundef !6
  %_74 = getelementptr inbounds nuw i32, ptr %_250, i64 %_76
  %_73 = load i32, ptr %_74, align 4, !noundef !6
  %_257.not = icmp samesign ugt i64 %_67, %N
  br i1 %_257.not, label %panic31.invoke, label %bb79

bb79:                                             ; preds = %bb78
  %_79 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_67
  %58 = getelementptr inbounds nuw i8, ptr %_79, i64 16
  %_259 = load i64, ptr %58, align 8, !noundef !6
  %_262 = icmp ult i64 %j, %_259
  br i1 %_262, label %bb82, label %panic31.invoke

bb82:                                             ; preds = %bb79
  %59 = getelementptr inbounds nuw i8, ptr %_79, i64 8
  %_260 = load ptr, ptr %59, align 8, !nonnull !6, !noundef !6
  %_78 = getelementptr inbounds nuw i32, ptr %_260, i64 %j
  %_77 = load i32, ptr %_78, align 4, !noundef !6
  %_72 = add i32 %_77, %_73
  %_0.sroa.0.0.i180 = tail call noundef i32 @llvm.smin.i32(i32 %_72, i32 %_69)
  store i32 %_0.sroa.0.0.i180, ptr %_70, align 4
  br label %bb24

bb43:                                             ; preds = %bb14
  %60 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  %_116 = load ptr, ptr %60, align 8, !nonnull !6, !noundef !6
  %_33 = getelementptr inbounds nuw i32, ptr %_116, i64 %j
  store i32 1, ptr %_33, align 4
  br label %bb25

bb2.i187:                                         ; preds = %bb2.i, %bb36
  %iter1.sroa.0.0385 = phi i64 [ 0, %bb2.i ], [ %spec.select262, %bb36 ]
  %_94 = load i64, ptr %15, align 8, !noundef !6
  %_97 = icmp ult i64 %iter1.sroa.0.0385, %_94
  br i1 %_97, label %bb36, label %panic31.invoke

bb36:                                             ; preds = %bb2.i187
  %_0.i3.i188 = icmp samesign uge i64 %iter1.sroa.0.0385, %N
  %not._0.i3.i188 = xor i1 %_0.i3.i188, true
  %_0.i4.i193 = zext i1 %not._0.i3.i188 to i64
  %spec.select262 = add nuw nsw i64 %iter1.sroa.0.0385, %_0.i4.i193
  %_95 = load ptr, ptr %16, align 8, !nonnull !6, !noundef !6
  %_17 = getelementptr inbounds nuw i32, ptr %_95, i64 %iter1.sroa.0.0385
  store i32 0, ptr %_17, align 4
  %_0.i.not.i186 = icmp samesign ugt i64 %spec.select262, %N
  %or.cond268 = select i1 %_0.i3.i188, i1 true, i1 %_0.i.not.i186
  br i1 %or.cond268, label %bb1.loopexit, label %bb2.i187

panic31.invoke:                                   ; preds = %bb2.i187, %bb14, %bb60, %bb59, %bb58, %bb45, %bb44, %bb15, %bb79, %bb78, %bb77, %bb75, %bb38
  %61 = phi i64 [ %_84, %bb38 ], [ %j, %bb75 ], [ %_76, %bb77 ], [ %_67, %bb78 ], [ %j, %bb79 ], [ %iter4.sroa.0.1390, %bb15 ], [ %j, %bb44 ], [ %j, %bb45 ], [ %j, %bb58 ], [ %_46227232, %bb59 ], [ %j, %bb60 ], [ %j, %bb14 ], [ %iter1.sroa.0.0385, %bb2.i187 ]
  %62 = phi i64 [ %_276, %bb38 ], [ %_239, %bb75 ], [ %_249, %bb77 ], [ %_5, %bb78 ], [ %_259, %bb79 ], [ %_5, %bb15 ], [ %_125, %bb44 ], [ %_137, %bb45 ], [ %_177, %bb58 ], [ %_5, %bb59 ], [ %_187, %bb60 ], [ %_115, %bb14 ], [ %_94, %bb2.i187 ]
  %63 = phi ptr [ @alloc_32a5fb7023fa92c01fb8d23496c811ab, %bb38 ], [ @alloc_3258b43c0e586cfebadad5d9b06e199a, %bb75 ], [ @alloc_c4ad05f4868203e0276bebdff804fdf4, %bb77 ], [ @alloc_b0f954d1de8063202abc582b5edd1028, %bb78 ], [ @alloc_c12674f93d03fe9e475f754037315898, %bb79 ], [ @alloc_ea04b4282f3ecb11f76847f2523d02ae, %bb15 ], [ @alloc_5080bf987922e717732635722f07d0cf, %bb44 ], [ @alloc_fa5f7e8fcfe0330da9ccf800ea86b0ec, %bb45 ], [ @alloc_6b3b532efca5c791106087d22090968f, %bb58 ], [ @alloc_76257ca614eadef188fc734e6e36deaa, %bb59 ], [ @alloc_35a4674d698ca1bc0478e9bb79486e5f, %bb60 ], [ @alloc_4d02adb086ec39aa4ee6e663aff7048f, %bb14 ], [ @alloc_a0fdff677409a98b5d52790e5dd650ea, %bb2.i187 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %61, i64 noundef %62, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %63) #21
          to label %panic31.cont unwind label %cleanup5

panic31.cont:                                     ; preds = %panic31.invoke
  unreachable

bb30:                                             ; preds = %bb2.i.i.i3.i.i, %bb29
  resume { ptr, i32 } %.pn
}
