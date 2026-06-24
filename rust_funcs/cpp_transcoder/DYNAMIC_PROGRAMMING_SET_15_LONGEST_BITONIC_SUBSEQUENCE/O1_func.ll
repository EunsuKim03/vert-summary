define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i20 = alloca [24 x i8], align 8
  %_4.i.i.i = alloca [24 x i8], align 8
  %lds = alloca [24 x i8], align 8
  %lis = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lis)
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
  br i1 %1, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #26, !noalias !1644
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp uge i64 %err.0.i.i.i, %_4
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
  %_2415.i.i.i = icmp ugt i32 %n, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i"
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
  store i32 1, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1644
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.loopexit.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1645

bb14.loopexit.i.i.i:                              ; preds = %bb13.i.i.i.epil, %bb14.loopexit.i.i.i.unr-lcssa
  %_15.i.i.i.lcssa = phi ptr [ %_15.i.i.i.lcssa.ph, %bb14.loopexit.i.i.i.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %7 = add nsw i64 %_4, -1
  br label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %bb14.loopexit.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i" ], [ %7, %bb14.loopexit.i.i.i ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i" ], [ %_15.i.i.i.lcssa, %bb14.loopexit.i.i.i ]
  %_17.not.i.i.i = icmp eq i32 %n, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit, label %bb4.i.i.i

bb13.i.i.i:                                       ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader.new
  %ptr.sroa.0.018.i.i.i = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader.new ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %niter = phi i64 [ 0, %bb13.i.i.i.preheader.new ], [ %niter.next.7, %bb13.i.i.i ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i, align 4, !noalias !1644
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 4
  store i32 1, ptr %_15.i.i.i, align 4, !noalias !1644
  %_15.i.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 8
  store i32 1, ptr %_15.i.i.i.1, align 4, !noalias !1644
  %_15.i.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 12
  store i32 1, ptr %_15.i.i.i.2, align 4, !noalias !1644
  %_15.i.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 16
  store i32 1, ptr %_15.i.i.i.3, align 4, !noalias !1644
  %_15.i.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 20
  store i32 1, ptr %_15.i.i.i.4, align 4, !noalias !1644
  %_15.i.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 24
  store i32 1, ptr %_15.i.i.i.5, align 4, !noalias !1644
  %_15.i.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 28
  store i32 1, ptr %_15.i.i.i.6, align 4, !noalias !1644
  %_15.i.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1644
  %8 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit

_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %8, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %lis, align 8, !alias.scope !1644
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %lis, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %lis, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lds)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1649)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i20), !noalias !1652
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i20, i64 noundef %_4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit
  %_5.i.i.i21 = load i64, ptr %_4.i.i.i20, align 8, !range !1031, !noalias !1652, !noundef !37
  %9 = trunc nuw i64 %_5.i.i.i21 to i1
  %10 = getelementptr inbounds nuw i8, ptr %_4.i.i.i20, i64 8
  %err.0.i.i.i43 = load i64, ptr %10, align 8, !range !1032, !noalias !1652, !noundef !37
  %11 = getelementptr inbounds nuw i8, ptr %_4.i.i.i20, i64 16
  br i1 %9, label %bb3.i.i.i42, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i22", !prof !1033

bb3.i.i.i42:                                      ; preds = %.noexc
  %err.1.i.i.i44 = load i64, ptr %11, align 8, !noalias !1652
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i43, i64 %err.1.i.i.i44) #26
          to label %.noexc45 unwind label %cleanup

.noexc45:                                         ; preds = %bb3.i.i.i42
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i22": ; preds = %.noexc
  %this.1.i.i.i24 = load ptr, ptr %11, align 8, !noalias !1652, !nonnull !37, !noundef !37
  %_7.i.i.i25 = icmp uge i64 %err.0.i.i.i43, %_4
  tail call void @llvm.assume(i1 %_7.i.i.i25)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i20), !noalias !1652
  br i1 %_2415.i.i.i, label %bb13.i.i.i35.preheader, label %bb14.i.i.i27

bb13.i.i.i35.preheader:                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i22"
  %12 = add nsw i64 %_4, -1
  %13 = add nsw i64 %_4, -2
  %xtraiter268 = and i64 %12, 7
  %14 = icmp ult i64 %13, 7
  br i1 %14, label %bb14.loopexit.i.i.i41.unr-lcssa, label %bb13.i.i.i35.preheader.new

bb13.i.i.i35.preheader.new:                       ; preds = %bb13.i.i.i35.preheader
  %unroll_iter272 = and i64 %12, -8
  br label %bb13.i.i.i35

bb14.loopexit.i.i.i41.unr-lcssa:                  ; preds = %bb13.i.i.i35, %bb13.i.i.i35.preheader
  %_15.i.i.i39.lcssa.ph = phi ptr [ poison, %bb13.i.i.i35.preheader ], [ %_15.i.i.i39.7, %bb13.i.i.i35 ]
  %ptr.sroa.0.018.i.i.i36.unr = phi ptr [ %this.1.i.i.i24, %bb13.i.i.i35.preheader ], [ %_15.i.i.i39.7, %bb13.i.i.i35 ]
  %lcmp.mod270.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod270.not, label %bb14.loopexit.i.i.i41, label %bb13.i.i.i35.epil

bb13.i.i.i35.epil:                                ; preds = %bb14.loopexit.i.i.i41.unr-lcssa, %bb13.i.i.i35.epil
  %ptr.sroa.0.018.i.i.i36.epil = phi ptr [ %_15.i.i.i39.epil, %bb13.i.i.i35.epil ], [ %ptr.sroa.0.018.i.i.i36.unr, %bb14.loopexit.i.i.i41.unr-lcssa ]
  %epil.iter269 = phi i64 [ %epil.iter269.next, %bb13.i.i.i35.epil ], [ 0, %bb14.loopexit.i.i.i41.unr-lcssa ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i36.epil, align 4, !noalias !1652
  %_15.i.i.i39.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i36.epil, i64 4
  %epil.iter269.next = add i64 %epil.iter269, 1
  %epil.iter269.cmp.not = icmp eq i64 %epil.iter269.next, %xtraiter268
  br i1 %epil.iter269.cmp.not, label %bb14.loopexit.i.i.i41, label %bb13.i.i.i35.epil, !llvm.loop !1653

bb14.loopexit.i.i.i41:                            ; preds = %bb13.i.i.i35.epil, %bb14.loopexit.i.i.i41.unr-lcssa
  %_15.i.i.i39.lcssa = phi ptr [ %_15.i.i.i39.lcssa.ph, %bb14.loopexit.i.i.i41.unr-lcssa ], [ %_15.i.i.i39.epil, %bb13.i.i.i35.epil ]
  %15 = add nsw i64 %_4, -1
  br label %bb14.i.i.i27

bb14.i.i.i27:                                     ; preds = %bb14.loopexit.i.i.i41, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i22"
  %storemerge.lcssa.i.i.i28 = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i22" ], [ %15, %bb14.loopexit.i.i.i41 ]
  %ptr.sroa.0.0.lcssa.i.i.i29 = phi ptr [ %this.1.i.i.i24, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5bae085a523a8ee7E.exit.i.i22" ], [ %_15.i.i.i39.lcssa, %bb14.loopexit.i.i.i41 ]
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit46, label %bb4.i.i.i31

bb13.i.i.i35:                                     ; preds = %bb13.i.i.i35, %bb13.i.i.i35.preheader.new
  %ptr.sroa.0.018.i.i.i36 = phi ptr [ %this.1.i.i.i24, %bb13.i.i.i35.preheader.new ], [ %_15.i.i.i39.7, %bb13.i.i.i35 ]
  %niter273 = phi i64 [ 0, %bb13.i.i.i35.preheader.new ], [ %niter273.next.7, %bb13.i.i.i35 ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i36, align 4, !noalias !1652
  %_15.i.i.i39 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i36, i64 4
  store i32 1, ptr %_15.i.i.i39, align 4, !noalias !1652
  %_15.i.i.i39.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i36, i64 8
  store i32 1, ptr %_15.i.i.i39.1, align 4, !noalias !1652
  %_15.i.i.i39.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i36, i64 12
  store i32 1, ptr %_15.i.i.i39.2, align 4, !noalias !1652
  %_15.i.i.i39.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i36, i64 16
  store i32 1, ptr %_15.i.i.i39.3, align 4, !noalias !1652
  %_15.i.i.i39.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i36, i64 20
  store i32 1, ptr %_15.i.i.i39.4, align 4, !noalias !1652
  %_15.i.i.i39.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i36, i64 24
  store i32 1, ptr %_15.i.i.i39.5, align 4, !noalias !1652
  %_15.i.i.i39.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i36, i64 28
  store i32 1, ptr %_15.i.i.i39.6, align 4, !noalias !1652
  %_15.i.i.i39.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i36, i64 32
  %niter273.next.7 = add i64 %niter273, 8
  %niter273.ncmp.7 = icmp eq i64 %niter273.next.7, %unroll_iter272
  br i1 %niter273.ncmp.7, label %bb14.loopexit.i.i.i41.unr-lcssa, label %bb13.i.i.i35

bb4.i.i.i31:                                      ; preds = %bb14.i.i.i27
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.i.i29, align 4, !noalias !1652
  %16 = add nsw i64 %storemerge.lcssa.i.i.i28, 1
  br label %_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit46

_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit46: ; preds = %bb14.i.i.i27, %bb4.i.i.i31
  %storemerge14.i.i.i32 = phi i64 [ %16, %bb4.i.i.i31 ], [ %storemerge.lcssa.i.i.i28, %bb14.i.i.i27 ]
  store i64 %err.0.i.i.i43, ptr %lds, align 8, !alias.scope !1652
  %v.sroa.4.0._0.sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %lds, i64 8
  store ptr %this.1.i.i.i24, ptr %v.sroa.4.0._0.sroa_idx.i.i33, align 8, !alias.scope !1652
  %v.sroa.5.0._0.sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %lds, i64 16
  store i64 %storemerge14.i.i.i32, ptr %v.sroa.5.0._0.sroa_idx.i.i34, align 8, !alias.scope !1652
  %_0.i.i.i190 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i190, label %bb10.preheader.split, label %bb8

bb64:                                             ; preds = %cleanup5, %cleanup
  %.pn = phi { ptr, i32 } [ %17, %cleanup ], [ %18, %cleanup5 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lis, i64 noundef 4, i64 noundef 4)
          to label %bb65 unwind label %terminate

cleanup:                                          ; preds = %bb53, %bb3.i.i.i42, %_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %bb64

cleanup5:                                         ; preds = %bb12.2.invoke, %panic.i.i146.invoke
  %18 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lds, i64 noundef 4, i64 noundef 4)
          to label %bb64 unwind label %terminate

bb10.preheader.split:                             ; preds = %_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit46
  %19 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_21 = load i32, ptr %19, align 4, !noundef !37
  %_24 = load i32, ptr %arr, align 8, !noundef !37
  %_20 = icmp sgt i32 %_21, %_24
  br i1 %_20, label %bb16, label %bb24

bb8:                                              ; preds = %bb24, %_ZN5alloc3vec9from_elem17hdc211e8a088928e2E.exit46
  %_43 = add i32 %n, -1
  %_0.i.i.i.i198 = icmp sgt i32 %_43, 0
  br i1 %_0.i.i.i.i198, label %bb32.preheader.preheader, label %bb30

bb32.preheader.preheader:                         ; preds = %bb8
  %20 = add i32 %n, -2
  %21 = zext nneg i32 %_43 to i64
  %_62 = icmp eq i32 %_43, 1
  %22 = getelementptr inbounds nuw i32, ptr %arr, i64 %21
  br label %bb32.preheader

bb27.loopexit:                                    ; preds = %bb46, %bb32.preheader
  %_0.i.i.i.i = icmp sgt i32 %iter2.sroa.4.1201, 0
  %23 = add nsw i32 %iter2.sroa.4.1201, -1
  %iter2.sroa.4.1 = select i1 %_0.i.i.i.i, i32 %23, i32 %iter2.sroa.4.1201
  %_0.sroa.3.0.i.i.i = select i1 %_0.i.i.i.i, i32 %23, i32 undef
  br i1 %_0.i.i.i.i, label %bb32.preheader, label %bb30

bb32.preheader:                                   ; preds = %bb32.preheader.preheader, %bb27.loopexit
  %_0.sroa.3.0.i.i.i202 = phi i32 [ %_0.sroa.3.0.i.i.i, %bb27.loopexit ], [ %20, %bb32.preheader.preheader ]
  %iter2.sroa.4.1201 = phi i32 [ %iter2.sroa.4.1, %bb27.loopexit ], [ %20, %bb32.preheader.preheader ]
  %_0.i.i.i99194 = icmp slt i32 %_43, %_0.sroa.3.0.i.i.i202
  br i1 %_0.i.i.i99194, label %bb34.lr.ph, label %bb27.loopexit

bb34.lr.ph:                                       ; preds = %bb32.preheader
  %_58 = sext i32 %_0.sroa.3.0.i.i.i202 to i64
  %_59 = icmp ult i32 %_0.sroa.3.0.i.i.i202, 2
  %24 = getelementptr inbounds nuw i32, ptr %arr, i64 %_58
  %_59.not = xor i1 %_59, true
  %_62.not = xor i1 %_62, true
  %brmerge = or i1 %_59.not, %_62.not
  %_58.mux = select i1 %_59.not, i64 %_58, i64 %21
  %alloc_fbb0a42b935a6403069846ad36369a2d.mux = select i1 %_59.not, ptr @alloc_fbb0a42b935a6403069846ad36369a2d, ptr @alloc_03b7d28282a695d26d17395cd5b9f22f
  br i1 %brmerge, label %bb12.2.invoke, label %bb37

bb30:                                             ; preds = %bb27.loopexit, %bb8
  %len.i = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1654, !noalias !1657, !noundef !37
  %_4.i.i52.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i52.not, label %panic.i.i146.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit": ; preds = %bb30
  %_6.i = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1654, !noalias !1657, !nonnull !37, !noundef !37
  %len.i54 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i34, align 8, !alias.scope !1659, !noalias !1662, !noundef !37
  %_4.i.i55.not = icmp eq i64 %len.i54, 0
  br i1 %_4.i.i55.not, label %panic.i.i146.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit59"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit59": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit"
  %_77 = load i32, ptr %_6.i, align 4, !noundef !37
  %_6.i57 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i33, align 8, !alias.scope !1659, !noalias !1662, !nonnull !37, !noundef !37
  %_80 = load i32, ptr %_6.i57, align 4, !noundef !37
  %_76 = add i32 %_77, -1
  %25 = add i32 %_76, %_80
  %_0.i.i.i63203 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i63203, label %bb52, label %bb53

bb52:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit59", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit81"
  %spec.select166207 = phi i32 [ %spec.select166, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit81" ], [ 2, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit59" ]
  %max.sroa.0.0206 = phi i32 [ %spec.select172, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit81" ], [ %25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit59" ]
  %iter4.sroa.0.0205 = phi i32 [ %spec.select166207, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit81" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit59" ]
  %_95 = zext nneg i32 %iter4.sroa.0.0205 to i64
  %_4.i.i68 = icmp ugt i64 %len.i, %_95
  br i1 %_4.i.i68, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit72", label %panic.i.i146.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit72": ; preds = %bb52
  %_4.i.i76 = icmp ugt i64 %len.i54, %_95
  br i1 %_4.i.i76, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit81", label %panic.i.i146.invoke

bb53:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit81", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit59"
  %max.sroa.0.0.lcssa = phi i32 [ %25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit59" ], [ %spec.select172, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit81" ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lds, i64 noundef 4, i64 noundef 4)
          to label %bb61 unwind label %cleanup

bb61:                                             ; preds = %bb53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lds)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lis, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lis)
  ret i32 %max.sroa.0.0.lcssa

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit81": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit72"
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_95
  %_92 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_0.i.i79 = getelementptr inbounds nuw i32, ptr %_6.i57, i64 %_95
  %_96 = load i32, ptr %_0.i.i79, align 4, !noundef !37
  %_91 = add i32 %_92, -1
  %_90 = add i32 %_91, %_96
  %spec.select172 = tail call i32 @llvm.smax.i32(i32 %_90, i32 %max.sroa.0.0206)
  %_0.i.i.i63 = icmp slt i32 %spec.select166207, %n
  %26 = zext i1 %_0.i.i.i63 to i32
  %spec.select166 = add nuw nsw i32 %spec.select166207, %26
  br i1 %_0.i.i.i63, label %bb52, label %bb53

bb37:                                             ; preds = %bb34.lr.ph
  %_57 = load i32, ptr %24, align 4, !noundef !37
  %_60 = load i32, ptr %22, align 4, !noundef !37
  %_56 = icmp sgt i32 %_57, %_60
  br i1 %_56, label %bb38, label %bb46

bb38:                                             ; preds = %bb37
  %len.i103 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i34, align 8, !alias.scope !1664, !noalias !1667, !noundef !37
  %_4.i.i104 = icmp ugt i64 %len.i103, %_58
  br i1 %_4.i.i104, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit109", label %panic.i.i146.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit109": ; preds = %bb38
  %_6.i106 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i33, align 8, !alias.scope !1664, !noalias !1667, !nonnull !37, !noundef !37
  %_0.i.i107 = getelementptr inbounds nuw i32, ptr %_6.i106, i64 %_58
  %_4.i.i111 = icmp ugt i64 %len.i103, %21
  br i1 %_4.i.i111, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit116", label %panic.i.i146.invoke

bb46:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit116", %bb37, %bb41
  %exitcond.not = icmp eq i32 %_0.sroa.3.0.i.i.i202, %n
  br i1 %exitcond.not, label %bb27.loopexit, label %bb12.2.invoke.loopexit.split.loop.exit290

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit116": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit109"
  %_64 = load i32, ptr %_0.i.i107, align 4, !noundef !37
  %_0.i.i114 = getelementptr inbounds nuw i32, ptr %_6.i106, i64 %21
  %_68 = load i32, ptr %_0.i.i114, align 4, !noundef !37
  %_67 = add i32 %_68, 1
  %_63 = icmp slt i32 %_64, %_67
  br i1 %_63, label %bb41, label %bb46

bb41:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit116"
  store i32 %_67, ptr %_0.i.i107, align 4
  br label %bb46

bb16:                                             ; preds = %bb10.preheader.split
  %len.i137 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1669, !noalias !1672, !noundef !37
  %_4.i.i138 = icmp ugt i64 %len.i137, 1
  br i1 %_4.i.i138, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit143", label %panic.i.i146.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit143": ; preds = %bb16
  %_6.i140 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1669, !noalias !1672, !nonnull !37, !noundef !37
  %_0.i.i141 = getelementptr inbounds nuw i8, ptr %_6.i140, i64 4
  %_28 = load i32, ptr %_0.i.i141, align 4, !noundef !37
  %_32 = load i32, ptr %_6.i140, align 4, !noundef !37
  %_31 = add i32 %_32, 1
  %_27 = icmp slt i32 %_28, %_31
  br i1 %_27, label %bb19, label %bb24

bb24:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit143", %bb10.preheader.split, %bb19
  %_0.i.i.i.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i.not, label %bb8, label %bb12.2.invoke

bb12.2.invoke.loopexit.split.loop.exit290:        ; preds = %bb46
  %indvars.iv.next231.le = add nuw nsw i64 %21, 1
  br label %bb12.2.invoke

bb12.2.invoke:                                    ; preds = %bb34.lr.ph, %bb24, %bb12.2.invoke.loopexit.split.loop.exit290
  %27 = phi i64 [ %indvars.iv.next231.le, %bb12.2.invoke.loopexit.split.loop.exit290 ], [ %_58.mux, %bb34.lr.ph ], [ 2, %bb24 ]
  %28 = phi ptr [ @alloc_03b7d28282a695d26d17395cd5b9f22f, %bb12.2.invoke.loopexit.split.loop.exit290 ], [ %alloc_fbb0a42b935a6403069846ad36369a2d.mux, %bb34.lr.ph ], [ @alloc_e7787dfaf466e88ef77af12cc2e7ee49, %bb24 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %27, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %28) #26
          to label %bb12.2.cont unwind label %cleanup5

bb12.2.cont:                                      ; preds = %bb12.2.invoke
  unreachable

panic.i.i146.invoke:                              ; preds = %bb16, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit109", %bb38, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit72", %bb52, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit", %bb30
  %29 = phi i64 [ 0, %bb30 ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit" ], [ %_95, %bb52 ], [ %_95, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit72" ], [ %_58, %bb38 ], [ %21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit109" ], [ 1, %bb16 ]
  %30 = phi i64 [ %len.i, %bb30 ], [ %len.i54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit" ], [ %len.i54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit72" ], [ %len.i, %bb52 ], [ %len.i103, %bb38 ], [ %len.i103, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit109" ], [ %len.i137, %bb16 ]
  %31 = phi ptr [ @alloc_44108cbca3058e83210cd4ddbd0bcb19, %bb30 ], [ @alloc_7ced8c0f7abba16e7f05c06ead05a7fa, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit" ], [ @alloc_60c4808b808cc7064f63f9d53f38f8e4, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit72" ], [ @alloc_83d83d2d895efb5f6eae1330db8a1d2c, %bb52 ], [ @alloc_5701df87b45f8fe5f7c1f3d588c83d66, %bb38 ], [ @alloc_fbe4347f48c5b21259477bfaee7fa067, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit109" ], [ @alloc_2611f1af6fbc2164a6c15b98e40edece, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %29, i64 noundef range(i64 0, 2305843009213693952) %30, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %31) #25
          to label %panic.i.i146.cont unwind label %cleanup5

panic.i.i146.cont:                                ; preds = %panic.i.i146.invoke
  unreachable

bb19:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hea53670f141df9bfE.exit143"
  store i32 %_31, ptr %_0.i.i141, align 4
  br label %bb24

terminate:                                        ; preds = %cleanup5, %bb64
  %32 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb65:                                             ; preds = %bb64
  resume { ptr, i32 } %.pn
}
