define noundef range(i32 -1, 2) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %left_max = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %left_max)
  %_4 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_5.i.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %1, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0670189b6efee336E.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #26, !noalias !1644
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0670189b6efee336E.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp uge i64 %err.0.i.i.i, %_4
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
  %_2415.i.i.i = icmp ugt i32 %n, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0670189b6efee336E.exit.i.i"
  %4 = add nsw i64 %_4, -1
  %5 = add nsw i64 %_4, -2
  %xtraiter = and i64 %4, 7
  %6 = icmp ult i64 %5, 7
  br i1 %6, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %4, -8
  br label %bb13.i.i.i

bb14.loopexit.i.i.i.unr-lcssa:                    ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader
  %_15.i.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %ptr.sroa.0.018.i.i.i.unr = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.loopexit.i.i.i, label %bb13.i.i.i.epil

bb13.i.i.i.epil:                                  ; preds = %bb14.loopexit.i.i.i.unr-lcssa, %bb13.i.i.i.epil
  %ptr.sroa.0.018.i.i.i.epil = phi ptr [ %_15.i.i.i.epil, %bb13.i.i.i.epil ], [ %ptr.sroa.0.018.i.i.i.unr, %bb14.loopexit.i.i.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.i.epil ], [ 0, %bb14.loopexit.i.i.i.unr-lcssa ]
  store float 0x7FF0000000000000, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1644
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.loopexit.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1645

bb14.loopexit.i.i.i:                              ; preds = %bb13.i.i.i.epil, %bb14.loopexit.i.i.i.unr-lcssa
  %_15.i.i.i.lcssa = phi ptr [ %_15.i.i.i.lcssa.ph, %bb14.loopexit.i.i.i.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %7 = add nsw i64 %_4, -1
  br label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %bb14.loopexit.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0670189b6efee336E.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0670189b6efee336E.exit.i.i" ], [ %7, %bb14.loopexit.i.i.i ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0670189b6efee336E.exit.i.i" ], [ %_15.i.i.i.lcssa, %bb14.loopexit.i.i.i ]
  %_17.not.i.i.i = icmp eq i32 %n, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h0a5ba0f4e24f9940E.exit, label %bb4.i.i.i

bb13.i.i.i:                                       ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader.new
  %ptr.sroa.0.018.i.i.i = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader.new ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %niter = phi i64 [ 0, %bb13.i.i.i.preheader.new ], [ %niter.next.7, %bb13.i.i.i ]
  store float 0x7FF0000000000000, ptr %ptr.sroa.0.018.i.i.i, align 4, !noalias !1644
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 4
  store float 0x7FF0000000000000, ptr %_15.i.i.i, align 4, !noalias !1644
  %_15.i.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 8
  store float 0x7FF0000000000000, ptr %_15.i.i.i.1, align 4, !noalias !1644
  %_15.i.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 12
  store float 0x7FF0000000000000, ptr %_15.i.i.i.2, align 4, !noalias !1644
  %_15.i.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 16
  store float 0x7FF0000000000000, ptr %_15.i.i.i.3, align 4, !noalias !1644
  %_15.i.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 20
  store float 0x7FF0000000000000, ptr %_15.i.i.i.4, align 4, !noalias !1644
  %_15.i.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 24
  store float 0x7FF0000000000000, ptr %_15.i.i.i.5, align 4, !noalias !1644
  %_15.i.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 28
  store float 0x7FF0000000000000, ptr %_15.i.i.i.6, align 4, !noalias !1644
  %_15.i.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store float 0x7FF0000000000000, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1644
  %8 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h0a5ba0f4e24f9940E.exit

_ZN5alloc3vec9from_elem17h0a5ba0f4e24f9940E.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %8, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %left_max, align 8, !alias.scope !1644
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %left_max, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %left_max, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %storemerge14.i.i.i, 0
  br i1 %_4.i.i.not, label %panic.i.i27.invoke, label %bb2

cleanup:                                          ; preds = %panic5.invoke, %panic.i.i27.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %left_max, i64 noundef 4, i64 noundef 4)
          to label %bb33 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h0a5ba0f4e24f9940E.exit
  store float 0x7FF0000000000000, ptr %this.1.i.i.i, align 4
  %_0.i.i.i45 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i45, label %bb7, label %bb15.preheader

bb15.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31.1", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31.2", %bb2
  %_0.i.i.i.i.not.not50 = icmp eq i32 %n, 0
  br i1 %_0.i.i.i.i.not.not50, label %bb31, label %bb17.lr.ph

bb17.lr.ph:                                       ; preds = %bb15.preheader
  %iter1.sroa.5.152 = tail call i64 @llvm.usub.sat.i64(i64 %_4, i64 1)
  %len.i18 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1646, !noalias !1649, !noundef !37
  %_6.i21 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !nonnull !37
  br label %bb17

bb7:                                              ; preds = %bb2
  %len.i12 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !noundef !37
  %_4.i.i13.not = icmp eq i64 %len.i12, 0
  br i1 %_4.i.i13.not, label %panic.i.i27.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit": ; preds = %bb7
  %_6.i15 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !nonnull !37, !noundef !37
  %_4.i.i26.not = icmp eq i64 %len.i12, 1
  br i1 %_4.i.i26.not, label %panic.i.i27.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31"

bb17:                                             ; preds = %bb17.lr.ph, %bb27
  %iter1.sroa.5.156 = phi i64 [ %iter1.sroa.5.152, %bb17.lr.ph ], [ %iter1.sroa.5.1, %bb27 ]
  %right_min.sroa.0.054 = phi float [ 0x7FF0000000000000, %bb17.lr.ph ], [ %12, %bb27 ]
  %iter1.sroa.5.053 = phi i64 [ %_4, %bb17.lr.ph ], [ %iter1.sroa.5.156, %bb27 ]
  %_0.i1.i.i.i55 = add i64 %iter1.sroa.5.053, -1
  %_4.i.i19 = icmp ult i64 %_0.i1.i.i.i55, %len.i18
  br i1 %_4.i.i19, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit24", label %panic.i.i27.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit24": ; preds = %bb17
  %_39 = icmp ult i64 %iter1.sroa.5.053, 3
  br i1 %_39, label %bb20, label %panic5.invoke

bb31:                                             ; preds = %bb27, %bb15.preheader, %bb23
  %_0.sroa.0.0 = phi i32 [ %11, %bb23 ], [ -1, %bb15.preheader ], [ -1, %bb27 ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %left_max, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %left_max)
  ret i32 %_0.sroa.0.0

bb20:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit24"
  %_0.i.i22 = getelementptr inbounds nuw float, ptr %_6.i21, i64 %_0.i1.i.i.i55
  %_34 = load float, ptr %_0.i.i22, align 4, !noundef !37
  %10 = getelementptr inbounds nuw i32, ptr %arr, i64 %_0.i1.i.i.i55
  %_38 = load i32, ptr %10, align 4, !noundef !37
  %_37 = sitofp i32 %_38 to float
  %_33 = fcmp olt float %_34, %_37
  %_40 = fcmp ogt float %right_min.sroa.0.054, %_37
  %or.cond = and i1 %_33, %_40
  br i1 %or.cond, label %bb23, label %bb27

bb23:                                             ; preds = %bb20
  %11 = trunc nuw nsw i64 %_0.i1.i.i.i55 to i32
  br label %bb31

bb27:                                             ; preds = %bb20
  %12 = tail call noundef float @llvm.minnum.f32(float %right_min.sroa.0.054, float %_37)
  %_0.i.i.i.i.not.not = icmp eq i64 %iter1.sroa.5.156, 0
  %iter1.sroa.5.1 = tail call i64 @llvm.usub.sat.i64(i64 %iter1.sroa.5.156, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb31, label %bb17

panic5.invoke:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.2", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit24"
  %13 = phi i64 [ %_0.i1.i.i.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit24" ], [ %_18.2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.2" ]
  %14 = phi ptr [ @alloc_364c74a4dfd1ffb8fd695b07409dc25a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit24" ], [ @alloc_f73299564b4bdfa3d285c01b50503340, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.2" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %13, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #26
          to label %panic5.cont unwind label %cleanup

panic5.cont:                                      ; preds = %panic5.invoke
  unreachable

panic.i.i27.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit", %bb7, %bb7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.1", %bb7.2, %bb10.2, %bb17, %_ZN5alloc3vec9from_elem17h0a5ba0f4e24f9940E.exit
  %15 = phi i64 [ 0, %_ZN5alloc3vec9from_elem17h0a5ba0f4e24f9940E.exit ], [ %_0.i1.i.i.i55, %bb17 ], [ 0, %bb7 ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit" ], [ 1, %bb7.1 ], [ 2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.1" ], [ %_18.2, %bb7.2 ], [ %spec.select, %bb10.2 ]
  %16 = phi i64 [ %storemerge14.i.i.i, %_ZN5alloc3vec9from_elem17h0a5ba0f4e24f9940E.exit ], [ %len.i18, %bb17 ], [ %len.i12, %bb7 ], [ %len.i12, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit" ], [ %len.i12.1, %bb7.1 ], [ %len.i12.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.1" ], [ %len.i12.2, %bb7.2 ], [ %len.i12.2, %bb10.2 ]
  %17 = phi ptr [ @alloc_be1e2a62c724524594da0e416e75e3c6, %_ZN5alloc3vec9from_elem17h0a5ba0f4e24f9940E.exit ], [ @alloc_70bcb1840b51fbc65b708664eddbb2fb, %bb17 ], [ @alloc_41df549983361f78ff3e0173138d3135, %bb7 ], [ @alloc_250bbfe5e1db6f88b51fe398d0ef8611, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit" ], [ @alloc_41df549983361f78ff3e0173138d3135, %bb7.1 ], [ @alloc_250bbfe5e1db6f88b51fe398d0ef8611, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.1" ], [ @alloc_41df549983361f78ff3e0173138d3135, %bb7.2 ], [ @alloc_250bbfe5e1db6f88b51fe398d0ef8611, %bb10.2 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %15, i64 noundef range(i64 0, 2305843009213693952) %16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #25
          to label %panic.i.i27.cont unwind label %cleanup

panic.i.i27.cont:                                 ; preds = %panic.i.i27.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit"
  %_15 = load float, ptr %_6.i15, align 4, !noundef !37
  %_20 = load i32, ptr %arr, align 8, !noundef !37
  %_19 = sitofp i32 %_20 to float
  %18 = tail call noundef float @llvm.maxnum.f32(float %_15, float %_19)
  %_0.i.i29 = getelementptr inbounds nuw i8, ptr %_6.i15, i64 4
  store float %18, ptr %_0.i.i29, align 4
  %_0.i.i.i.not = icmp eq i32 %n, 2
  %spec.select = select i1 %_0.i.i.i.not, i64 2, i64 3
  br i1 %_0.i.i.i.not, label %bb15.preheader, label %bb7.1

bb7.1:                                            ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31"
  %len.i12.1 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !noundef !37
  %_4.i.i13.1 = icmp ugt i64 %len.i12.1, 1
  br i1 %_4.i.i13.1, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.1", label %panic.i.i27.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.1": ; preds = %bb7.1
  %_6.i15.1 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !nonnull !37, !noundef !37
  %_4.i.i26.1.not = icmp eq i64 %len.i12.1, 2
  br i1 %_4.i.i26.1.not, label %panic.i.i27.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31.1"

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31.1": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.1"
  %_0.i.i.1 = getelementptr inbounds nuw i8, ptr %_6.i15.1, i64 4
  %_15.1 = load float, ptr %_0.i.i.1, align 4, !noundef !37
  %19 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_20.1 = load i32, ptr %19, align 4, !noundef !37
  %_19.1 = sitofp i32 %_20.1 to float
  %20 = tail call noundef float @llvm.maxnum.f32(float %_15.1, float %_19.1)
  %_0.i.i29.1 = getelementptr inbounds nuw i8, ptr %_6.i15.1, i64 8
  store float %20, ptr %_0.i.i29.1, align 4
  %_0.i.i.i.1 = icmp ult i64 %spec.select, %_4
  br i1 %_0.i.i.i.1, label %bb7.2, label %bb15.preheader

bb7.2:                                            ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31.1"
  %_18.2 = add nsw i64 %spec.select, -1
  %len.i12.2 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !noundef !37
  %_4.i.i13.2 = icmp ult i64 %_18.2, %len.i12.2
  br i1 %_4.i.i13.2, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.2", label %panic.i.i27.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.2": ; preds = %bb7.2
  %_6.i15.2 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !nonnull !37, !noundef !37
  br i1 %_0.i.i.i.not, label %bb10.2, label %panic5.invoke

bb10.2:                                           ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h6ac5c113644e00edE.exit.2"
  %_4.i.i26.2 = icmp ult i64 %spec.select, %len.i12.2
  br i1 %_4.i.i26.2, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31.2", label %panic.i.i27.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc2a2b58525890b65E.exit31.2": ; preds = %bb10.2
  %_0.i.i.2 = getelementptr inbounds nuw float, ptr %_6.i15.2, i64 %_18.2
  %_15.2 = load float, ptr %_0.i.i.2, align 4, !noundef !37
  %21 = getelementptr inbounds nuw i32, ptr %arr, i64 %_18.2
  %_20.2 = load i32, ptr %21, align 4, !noundef !37
  %_19.2 = sitofp i32 %_20.2 to float
  %22 = tail call noundef float @llvm.maxnum.f32(float %_15.2, float %_19.2)
  %_0.i.i29.2 = getelementptr inbounds nuw float, ptr %_6.i15.2, i64 %spec.select
  store float %22, ptr %_0.i.i29.2, align 4
  br label %bb15.preheader

terminate:                                        ; preds = %cleanup
  %23 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb33:                                             ; preds = %cleanup
  resume { ptr, i32 } %9
}
