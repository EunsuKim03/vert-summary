define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %v.i = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %N = load i64, ptr %0, align 8, !noundef !6
  %_55 = icmp sgt i64 %N, -1
  tail call void @llvm.assume(i1 %_55)
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
  br i1 %2, label %bb14.i, label %bb19

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb17:                                             ; preds = %cleanup1.body.i, %bb2.i.i.i3.i.i36, %cleanup, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE.exit"
  %.pn = phi { ptr, i32 } [ %16, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE.exit" ], [ %4, %cleanup ], [ %12, %cleanup1.body.i ], [ %13, %bb2.i.i.i3.i.i36 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !22, !alias.scope !1091, !noalias !1094, !noundef !6
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb18, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb17
  %3 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %3, align 8, !alias.scope !1091, !noalias !1094, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1096
  br label %bb18

cleanup:                                          ; preds = %bb14.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %bb17

bb19:                                             ; preds = %bb3.i3.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v.i), !noalias !1097
  %_21.0.i.i.i.i = mul i64 %_5, 24
  %or.cond.i.i.i.i = icmp samesign ugt i64 %N, 384307168202282324
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !379

bb17.i.i.i:                                       ; preds = %bb19
  %_8.i.i.i = icmp eq i64 %_21.0.i.i.i.i, 0
  br i1 %_8.i.i.i, label %bb1.i.i, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1101
; call __rustc::__rust_alloc
  %5 = tail call noundef align 8 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 4, 9) 8) #19, !noalias !1101
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb3.i.i, label %bb1.i.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb19
  %_4.sroa.4.0.ph.i.i = phi i64 [ 8, %bb3.i.i.i ], [ 0, %bb19 ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #21
          to label %.noexc.i unwind label %bb2.i.i.i3.i.i36, !noalias !1097

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
  br i1 %_2417.i.i.not, label %bb5.preheader.split.thread, label %bb3.i.i.i.i.i.i

bb5.preheader.split.thread:                       ; preds = %bb1.i.i
  store i64 %_5, ptr %_4.sroa.10.0.i.i, align 8, !noalias !1107
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 8
  store ptr %1, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i256, align 8, !noalias !1107
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i257 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 16
  store i64 %_5, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i257, align 8, !noalias !1107
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1097
  br label %bb27

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i, %bb3.i3.i33
  %ptr.sroa.0.020.i.i = phi ptr [ %_15.i.i, %bb3.i3.i33 ], [ %_4.sroa.10.0.i.i, %bb1.i.i ]
  %iter.sroa.0.019.i.i = phi i64 [ %_28.i.i, %bb3.i3.i33 ], [ 1, %bb1.i.i ]
  %storemerge18.i.i = phi i64 [ %11, %bb3.i3.i33 ], [ 0, %bb1.i.i ]
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1108
; call __rustc::__rust_alloc
  %9 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 4, 9) 4) #19, !noalias !1108
  %10 = icmp eq ptr %9, null
  br i1 %10, label %bb3.i.i.i.i.i, label %bb3.i3.i33

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc9.i.i unwind label %cleanup1.body.i, !noalias !1118

.noexc9.i.i:                                      ; preds = %bb3.i.i.i.i.i
  unreachable

bb3.i3.i33:                                       ; preds = %bb3.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %9, ptr nonnull readonly align 4 %1, i64 %_21.0.i.i.i, i1 false), !noalias !1119
  %_28.i.i = add nuw i64 %iter.sroa.0.019.i.i, 1
  store i64 %_5, ptr %ptr.sroa.0.020.i.i, align 8, !noalias !1118
  %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 8
  store ptr %9, ptr %src.sroa.4.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1118
  %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 16
  store i64 %_5, ptr %src.sroa.5.0.ptr.sroa.0.0.sroa_idx.i.i, align 8, !noalias !1118
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 24
  %11 = add nuw nsw i64 %storemerge18.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.019.i.i, %N
  br i1 %exitcond.not.i.i, label %bb24.preheader, label %bb3.i.i.i.i.i.i

cleanup1.body.i:                                  ; preds = %bb3.i.i.i.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge18.i.i, ptr %8, align 8, !alias.scope !1104, !noalias !1120
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1125
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE"(ptr noalias noundef align 8 dereferenceable(24) %v.i) #23, !noalias !1097
  br label %bb17

bb2.i.i.i3.i.i36:                                 ; preds = %bb3.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1134
  br label %bb17

bb24.preheader:                                   ; preds = %bb3.i3.i33
  store i64 %_5, ptr %_15.i.i, align 8, !noalias !1107
  %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 32
  store ptr %1, ptr %_7.sroa.5.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1107
  %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.020.i.i, i64 40
  store i64 %_5, ptr %_7.sroa.7.0.ptr.sroa.0.0.lcssa.i.sroa_idx.i, align 8, !noalias !1107
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v.i), !noalias !1097
  br label %bb24

bb5.preheader.split:                              ; preds = %bb25
  %_0.i.not.i187 = icmp eq i64 %N, 1
  br i1 %_0.i.not.i187, label %bb27, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb5.preheader.split
  %14 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_85 = load ptr, ptr %14, align 8, !nonnull !6
  br label %bb9.preheader

bb5.loopexit:                                     ; preds = %bb13
  %_0.i.not.i = icmp samesign ugt i64 %spec.select, %N
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb27, label %bb9.preheader

bb9.preheader:                                    ; preds = %bb5.loopexit, %bb2.i.lr.ph
  %iter.sroa.0.0188 = phi i64 [ 2, %bb2.i.lr.ph ], [ %spec.select, %bb5.loopexit ]
  %_0.i3.i = icmp samesign uge i64 %iter.sroa.0.0188, %N
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select = add nuw nsw i64 %iter.sroa.0.0188, %_0.i4.i
  %15 = sub nsw i64 1, %iter.sroa.0.0188
  br label %bb9

cleanup3:                                         ; preds = %bb35.invoke, %panic21.invoke
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  br label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %cleanup3, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i"
  %_3.sroa.0.012.i.i.i = phi i64 [ %17, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i" ], [ 0, %cleanup3 ]
  %_6.i.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_3.sroa.0.012.i.i.i
  %17 = add nuw i64 %_3.sroa.0.012.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %self1.i.i.i.i1.i.i.i.i = load i64, ptr %_6.i.i.i, align 8, !range !22, !alias.scope !1158, !noalias !1161, !noundef !6
  %_6.i.i.i.i2.i.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i", label %bb2.i.i.i3.i.i.i.i

bb2.i.i.i3.i.i.i.i:                               ; preds = %bb5.i.i.i
  %18 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i, 2
  %19 = getelementptr inbounds nuw i8, ptr %_6.i.i.i, i64 8
  %self3.i.i.i.i4.i.i.i.i = load ptr, ptr %19, align 8, !alias.scope !1158, !noalias !1161, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i, i64 noundef %18, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1167
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i": ; preds = %bb2.i.i.i3.i.i.i.i, %bb5.i.i.i
  %_7.i.i.i = icmp eq i64 %_3.sroa.0.012.i.i.i, %N
  br i1 %_7.i.i.i, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE.exit", label %bb5.i.i.i

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17hd3bef7cb221c7e2cE.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i"
  %20 = mul nuw i64 %_4.sroa.4.0.i.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %20, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1168
  br label %bb17

bb27:                                             ; preds = %bb5.loopexit, %bb5.preheader.split.thread, %bb5.preheader.split
  %_54 = add nsw i64 %N, -1
  %21 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 16
  %_186 = load i64, ptr %21, align 8, !noundef !6
  %_189 = icmp ult i64 %_54, %_186
  br i1 %_189, label %bb55, label %panic21.invoke

bb55:                                             ; preds = %bb27
  %22 = getelementptr inbounds nuw i8, ptr %_4.sroa.10.0.i.i, i64 8
  %_187 = load ptr, ptr %22, align 8, !nonnull !6, !noundef !6
  %_52 = getelementptr inbounds nuw i32, ptr %_187, i64 %_54
  %_0 = load i32, ptr %_52, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  br label %bb5.i.i.i43

bb5.i.i.i43:                                      ; preds = %bb55, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i50"
  %_3.sroa.0.012.i.i.i44 = phi i64 [ %23, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i50" ], [ 0, %bb55 ]
  %_6.i.i.i45 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %_3.sroa.0.012.i.i.i44
  %23 = add nuw i64 %_3.sroa.0.012.i.i.i44, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %self1.i.i.i.i1.i.i.i.i46 = load i64, ptr %_6.i.i.i45, align 8, !range !22, !alias.scope !1190, !noalias !1193, !noundef !6
  %_6.i.i.i.i2.i.i.i.i47 = icmp eq i64 %self1.i.i.i.i1.i.i.i.i46, 0
  br i1 %_6.i.i.i.i2.i.i.i.i47, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i50", label %bb2.i.i.i3.i.i.i.i48

bb2.i.i.i3.i.i.i.i48:                             ; preds = %bb5.i.i.i43
  %24 = shl nuw i64 %self1.i.i.i.i1.i.i.i.i46, 2
  %25 = getelementptr inbounds nuw i8, ptr %_6.i.i.i45, i64 8
  %self3.i.i.i.i4.i.i.i.i49 = load ptr, ptr %25, align 8, !alias.scope !1190, !noalias !1193, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i.i49, i64 noundef %24, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1199
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i50"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i50": ; preds = %bb2.i.i.i3.i.i.i.i48, %bb5.i.i.i43
  %_7.i.i.i51 = icmp eq i64 %_3.sroa.0.012.i.i.i44, %N
  br i1 %_7.i.i.i51, label %bb14, label %bb5.i.i.i43

bb14:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb14d39b51e809f9cE.exit.i.i.i50"
  %26 = mul nuw i64 %_4.sroa.4.0.i.i, 24
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_4.sroa.10.0.i.i, i64 noundef %26, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !1200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %self1.i.i.i.i1.i.i57 = load i64, ptr %str, align 8, !range !22, !alias.scope !1222, !noalias !1225, !noundef !6
  %_6.i.i.i.i2.i.i58 = icmp eq i64 %self1.i.i.i.i1.i.i57, 0
  br i1 %_6.i.i.i.i2.i.i58, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he38dc3e8ad247e78E.exit61", label %bb2.i.i.i3.i.i59

bb2.i.i.i3.i.i59:                                 ; preds = %bb14
  %27 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i60 = load ptr, ptr %27, align 8, !alias.scope !1222, !noalias !1225, !nonnull !6, !noundef !6
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i60, i64 noundef %self1.i.i.i.i1.i.i57, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1227
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he38dc3e8ad247e78E.exit61"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he38dc3e8ad247e78E.exit61": ; preds = %bb14, %bb2.i.i.i3.i.i59
  ret i32 %_0

bb9:                                              ; preds = %bb9.preheader, %bb13
  %28 = phi i64 [ %48, %bb13 ], [ 1, %bb9.preheader ]
  %iter2.sroa.0.0186 = phi i64 [ %28, %bb13 ], [ 0, %bb9.preheader ]
  %_21 = add nuw i64 %iter2.sroa.0.0186, %iter.sroa.0.0188
  %k = add i64 %_21, -1
  %_11.i = icmp eq i64 %iter2.sroa.0.0186, 0
  br i1 %_11.i, label %bb15.i, label %bb13.i

bb13.i:                                           ; preds = %bb9
  %29 = getelementptr inbounds nuw i8, ptr %_85, i64 %iter2.sroa.0.0186
  %self.i = load i8, ptr %29, align 1, !alias.scope !1228, !noundef !6
  %30 = icmp sgt i8 %self.i, -65
  br i1 %30, label %bb15.i, label %bb35.invoke

bb15.i:                                           ; preds = %bb13.i, %bb9
  %_19.not.i = icmp ult i64 %28, %N
  br i1 %_19.not.i, label %bb19.i, label %bb16.i

bb16.i:                                           ; preds = %bb15.i
  %31 = icmp eq i64 %28, %N
  br i1 %31, label %bb33, label %bb35.invoke

bb19.i:                                           ; preds = %bb15.i
  %32 = getelementptr inbounds nuw i8, ptr %_85, i64 %28
  %self2.i = load i8, ptr %32, align 1, !alias.scope !1228, !noundef !6
  %33 = icmp sgt i8 %self2.i, -65
  br i1 %33, label %bb33, label %bb35.invoke

bb33:                                             ; preds = %bb19.i, %bb16.i
  %data.i = getelementptr inbounds nuw i8, ptr %_85, i64 %iter2.sroa.0.0186
  %exitcond253 = icmp eq i64 %28, %15
  br i1 %exitcond253, label %bb35.invoke, label %bb1.i67

bb1.i67:                                          ; preds = %bb33
  %_11.i68 = icmp eq i64 %k, 0
  br i1 %_11.i68, label %bb15.i76, label %bb9.i69

bb9.i69:                                          ; preds = %bb1.i67
  %_12.not.i70 = icmp ult i64 %k, %N
  br i1 %_12.not.i70, label %bb13.i83, label %bb10.i71

bb10.i71:                                         ; preds = %bb9.i69
  %34 = icmp eq i64 %k, %N
  br i1 %34, label %bb15.i76, label %bb35.invoke

bb13.i83:                                         ; preds = %bb9.i69
  %35 = getelementptr inbounds nuw i8, ptr %_85, i64 %k
  %self.i84 = load i8, ptr %35, align 1, !alias.scope !1231, !noundef !6
  %36 = icmp sgt i8 %self.i84, -65
  br i1 %36, label %bb15.i76, label %bb35.invoke

bb15.i76:                                         ; preds = %bb1.i67, %bb10.i71, %bb13.i83
  %_19.not.i77 = icmp ult i64 %_21, %N
  br i1 %_19.not.i77, label %bb19.i81, label %bb16.i78

bb16.i78:                                         ; preds = %bb15.i76
  %37 = icmp eq i64 %_21, %N
  br i1 %37, label %bb38, label %bb35.invoke

bb19.i81:                                         ; preds = %bb15.i76
  %38 = getelementptr inbounds nuw i8, ptr %_85, i64 %_21
  %self2.i82 = load i8, ptr %38, align 1, !alias.scope !1231, !noundef !6
  %39 = icmp sgt i8 %self2.i82, -65
  br i1 %39, label %bb38, label %bb35.invoke

bb35.invoke:                                      ; preds = %bb16.i78, %bb10.i71, %bb33, %bb13.i83, %bb19.i81, %bb16.i, %bb13.i, %bb19.i
  %40 = phi i64 [ %iter2.sroa.0.0186, %bb19.i ], [ %iter2.sroa.0.0186, %bb13.i ], [ %iter2.sroa.0.0186, %bb16.i ], [ %k, %bb19.i81 ], [ %k, %bb13.i83 ], [ -1, %bb33 ], [ %k, %bb10.i71 ], [ %k, %bb16.i78 ]
  %41 = phi i64 [ %28, %bb19.i ], [ %28, %bb13.i ], [ %28, %bb16.i ], [ %_21, %bb19.i81 ], [ %_21, %bb13.i83 ], [ 0, %bb33 ], [ %_21, %bb10.i71 ], [ %_21, %bb16.i78 ]
  %42 = phi ptr [ @alloc_26afdd522f55b1e0eba86a1f9263dd5a, %bb19.i ], [ @alloc_26afdd522f55b1e0eba86a1f9263dd5a, %bb13.i ], [ @alloc_26afdd522f55b1e0eba86a1f9263dd5a, %bb16.i ], [ @alloc_6e7aa3ae607030d3a785625c1a237d9f, %bb19.i81 ], [ @alloc_6e7aa3ae607030d3a785625c1a237d9f, %bb13.i83 ], [ @alloc_6e7aa3ae607030d3a785625c1a237d9f, %bb33 ], [ @alloc_6e7aa3ae607030d3a785625c1a237d9f, %bb10.i71 ], [ @alloc_6e7aa3ae607030d3a785625c1a237d9f, %bb16.i78 ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_85, i64 noundef %N, i64 noundef %40, i64 noundef %41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %42) #21
          to label %bb35.cont unwind label %cleanup3

bb35.cont:                                        ; preds = %bb35.invoke
  unreachable

bb38:                                             ; preds = %bb16.i78, %bb19.i81
  %data.i80 = getelementptr inbounds nuw i8, ptr %_85, i64 %k
  %lhsc = load i8, ptr %data.i, align 1
  %rhsc = load i8, ptr %data.i80, align 1
  %_22 = icmp eq i8 %lhsc, %rhsc
  %_32 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter2.sroa.0.0186
  %_33 = add nsw i64 %_21, -2
  %43 = getelementptr inbounds nuw i8, ptr %_32, i64 8
  %_118 = load ptr, ptr %43, align 8, !nonnull !6, !noundef !6
  %44 = getelementptr inbounds nuw i8, ptr %_32, i64 16
  %_117 = load i64, ptr %44, align 8, !noundef !6
  %_120 = icmp ult i64 %_33, %_117
  br i1 %_22, label %bb11, label %bb12

bb12:                                             ; preds = %bb38
  br i1 %_120, label %bb49, label %panic21.invoke

bb11:                                             ; preds = %bb38
  br i1 %_120, label %bb43, label %panic21.invoke

bb43:                                             ; preds = %bb11
  %_31 = getelementptr inbounds nuw i32, ptr %_118, i64 %_33
  %_30 = load i32, ptr %_31, align 4, !noundef !6
  %_36 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %28
  %45 = getelementptr inbounds nuw i8, ptr %_36, i64 16
  %_127 = load i64, ptr %45, align 8, !noundef !6
  %_130 = icmp ult i64 %k, %_127
  br i1 %_130, label %bb44, label %panic21.invoke

bb44:                                             ; preds = %bb43
  %_142 = icmp ult i64 %k, %_117
  br i1 %_142, label %bb46, label %panic21.invoke

bb46:                                             ; preds = %bb44
  %46 = getelementptr inbounds nuw i8, ptr %_36, i64 8
  %_128 = load ptr, ptr %46, align 8, !nonnull !6, !noundef !6
  %_35 = getelementptr inbounds nuw i32, ptr %_128, i64 %k
  %_34 = load i32, ptr %_35, align 4, !noundef !6
  %_37 = getelementptr inbounds nuw i32, ptr %_118, i64 %k
  %_29 = add i32 %_30, 1
  %47 = add i32 %_29, %_34
  store i32 %47, ptr %_37, align 4
  br label %bb13

bb13:                                             ; preds = %bb54, %bb46
  %48 = add nuw i64 %28, 1
  %exitcond254.not = icmp eq i64 %28, %N
  br i1 %exitcond254.not, label %bb5.loopexit, label %bb9

bb49:                                             ; preds = %bb12
  %_46 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %28
  %49 = getelementptr inbounds nuw i8, ptr %_46, i64 8
  %_160 = load ptr, ptr %49, align 8, !nonnull !6, !noundef !6
  %50 = getelementptr inbounds nuw i8, ptr %_46, i64 16
  %_159 = load i64, ptr %50, align 8, !noundef !6
  %_162 = icmp ult i64 %k, %_159
  br i1 %_162, label %bb50, label %panic21.invoke

bb50:                                             ; preds = %bb49
  %_41 = getelementptr inbounds nuw i32, ptr %_118, i64 %_33
  %_40 = load i32, ptr %_41, align 4, !noundef !6
  %_45 = getelementptr inbounds nuw i32, ptr %_160, i64 %k
  %_44 = load i32, ptr %_45, align 4, !noundef !6
  %_39 = add i32 %_44, %_40
  %_172 = icmp ult i64 %_33, %_159
  br i1 %_172, label %bb52, label %panic21.invoke

bb52:                                             ; preds = %bb50
  %_184 = icmp ult i64 %k, %_117
  br i1 %_184, label %bb54, label %panic21.invoke

bb54:                                             ; preds = %bb52
  %_48 = getelementptr inbounds nuw i32, ptr %_160, i64 %_33
  %_47 = load i32, ptr %_48, align 4, !noundef !6
  %_50 = getelementptr inbounds nuw i32, ptr %_118, i64 %k
  %51 = sub i32 %_39, %_47
  store i32 %51, ptr %_50, align 4
  br label %bb13

bb24:                                             ; preds = %bb24.preheader, %bb25
  %52 = phi i64 [ %55, %bb25 ], [ 1, %bb24.preheader ]
  %iter1.sroa.0.0184 = phi i64 [ %52, %bb25 ], [ 0, %bb24.preheader ]
  %_10 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_4.sroa.10.0.i.i, i64 %iter1.sroa.0.0184
  %53 = getelementptr inbounds nuw i8, ptr %_10, i64 16
  %_68 = load i64, ptr %53, align 8, !noundef !6
  %_71 = icmp ult i64 %iter1.sroa.0.0184, %_68
  br i1 %_71, label %bb25, label %panic21.invoke

bb25:                                             ; preds = %bb24
  %54 = getelementptr inbounds nuw i8, ptr %_10, i64 8
  %_69 = load ptr, ptr %54, align 8, !nonnull !6, !noundef !6
  %_9 = getelementptr inbounds nuw i32, ptr %_69, i64 %iter1.sroa.0.0184
  store i32 1, ptr %_9, align 4
  %55 = add nuw i64 %52, 1
  %exitcond.not = icmp eq i64 %52, %N
  br i1 %exitcond.not, label %bb5.preheader.split, label %bb24

panic21.invoke:                                   ; preds = %bb24, %bb52, %bb50, %bb49, %bb12, %bb44, %bb43, %bb11, %bb27
  %56 = phi i64 [ %_54, %bb27 ], [ %_33, %bb11 ], [ %k, %bb43 ], [ %k, %bb44 ], [ %_33, %bb12 ], [ %k, %bb49 ], [ %_33, %bb50 ], [ %k, %bb52 ], [ %iter1.sroa.0.0184, %bb24 ]
  %57 = phi i64 [ %_186, %bb27 ], [ %_117, %bb11 ], [ %_127, %bb43 ], [ %_117, %bb44 ], [ %_117, %bb12 ], [ %_159, %bb49 ], [ %_159, %bb50 ], [ %_117, %bb52 ], [ %_68, %bb24 ]
  %58 = phi ptr [ @alloc_d236b0242df7c5803f09a1e9b6ec0106, %bb27 ], [ @alloc_64422b2f142978549256c8b72bb77199, %bb11 ], [ @alloc_b1503b2cc08369785ac8374ef82ebf57, %bb43 ], [ @alloc_e836aa6bf5e61509e32ee53ca7c0ef3b, %bb44 ], [ @alloc_d4df6d254994bb3043a805c3828c52e3, %bb12 ], [ @alloc_16255c1547d82634905aebedaa0978a8, %bb49 ], [ @alloc_05e0b3f4033e5ab48795dae405be3b68, %bb50 ], [ @alloc_c1b99c8b01f4c49c71ca97df7d7400df, %bb52 ], [ @alloc_620dfc3b86741debbba8ca00006e8648, %bb24 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %56, i64 noundef %57, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %58) #21
          to label %panic21.cont unwind label %cleanup3

panic21.cont:                                     ; preds = %panic21.invoke
  unreachable

bb18:                                             ; preds = %bb2.i.i.i3.i.i, %bb17
  resume { ptr, i32 } %.pn
}
