define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i4 = alloca [24 x i8], align 8
  %_4.i.i.i = alloca [24 x i8], align 8
  %b = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a)
  %_3 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_5.i.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #26, !noalias !1644
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp uge i64 %err.0.i.i.i, %_3
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
  %_2415.i.i.i = icmp ugt i32 %n, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i"
  %3 = add nsw i64 %_3, -1
  %4 = add nsw i64 %_3, -2
  %xtraiter = and i64 %3, 7
  %5 = icmp ult i64 %4, 7
  br i1 %5, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %3, -8
  br label %bb13.i.i.i

bb14.loopexit.i.i.i.unr-lcssa:                    ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader
  %_15.i.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %ptr.sroa.0.018.i.i.i.unr = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.loopexit.i.i.i, label %bb13.i.i.i.epil

bb13.i.i.i.epil:                                  ; preds = %bb14.loopexit.i.i.i.unr-lcssa, %bb13.i.i.i.epil
  %ptr.sroa.0.018.i.i.i.epil = phi ptr [ %_15.i.i.i.epil, %bb13.i.i.i.epil ], [ %ptr.sroa.0.018.i.i.i.unr, %bb14.loopexit.i.i.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.i.epil ], [ 0, %bb14.loopexit.i.i.i.unr-lcssa ]
  store float 1.000000e+00, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1644
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.loopexit.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1645

bb14.loopexit.i.i.i:                              ; preds = %bb13.i.i.i.epil, %bb14.loopexit.i.i.i.unr-lcssa
  %_15.i.i.i.lcssa = phi ptr [ %_15.i.i.i.lcssa.ph, %bb14.loopexit.i.i.i.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %6 = add nsw i64 %_3, -1
  br label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %bb14.loopexit.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i" ], [ %6, %bb14.loopexit.i.i.i ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i" ], [ %_15.i.i.i.lcssa, %bb14.loopexit.i.i.i ]
  %_17.not.i.i.i = icmp eq i32 %n, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit, label %bb4.i.i.i

bb13.i.i.i:                                       ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader.new
  %ptr.sroa.0.018.i.i.i = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader.new ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %niter = phi i64 [ 0, %bb13.i.i.i.preheader.new ], [ %niter.next.7, %bb13.i.i.i ]
  store float 1.000000e+00, ptr %ptr.sroa.0.018.i.i.i, align 4, !noalias !1644
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 4
  store float 1.000000e+00, ptr %_15.i.i.i, align 4, !noalias !1644
  %_15.i.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 8
  store float 1.000000e+00, ptr %_15.i.i.i.1, align 4, !noalias !1644
  %_15.i.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 12
  store float 1.000000e+00, ptr %_15.i.i.i.2, align 4, !noalias !1644
  %_15.i.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 16
  store float 1.000000e+00, ptr %_15.i.i.i.3, align 4, !noalias !1644
  %_15.i.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 20
  store float 1.000000e+00, ptr %_15.i.i.i.4, align 4, !noalias !1644
  %_15.i.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 24
  store float 1.000000e+00, ptr %_15.i.i.i.5, align 4, !noalias !1644
  %_15.i.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 28
  store float 1.000000e+00, ptr %_15.i.i.i.6, align 4, !noalias !1644
  %_15.i.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store float 1.000000e+00, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1644
  %7 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit

_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %7, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %a, align 8, !alias.scope !1644
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %a, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %a, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1649)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i4), !noalias !1652
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i4, i64 noundef %_3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit
  %_5.i.i.i5 = load i64, ptr %_4.i.i.i4, align 8, !range !1031, !noalias !1652, !noundef !37
  %8 = trunc nuw i64 %_5.i.i.i5 to i1
  %9 = getelementptr inbounds nuw i8, ptr %_4.i.i.i4, i64 8
  %err.0.i.i.i27 = load i64, ptr %9, align 8, !range !1032, !noalias !1652, !noundef !37
  %10 = getelementptr inbounds nuw i8, ptr %_4.i.i.i4, i64 16
  br i1 %8, label %bb3.i.i.i26, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i6", !prof !1033

bb3.i.i.i26:                                      ; preds = %.noexc
  %err.1.i.i.i28 = load i64, ptr %10, align 8, !noalias !1652
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i27, i64 %err.1.i.i.i28) #26
          to label %.noexc29 unwind label %cleanup

.noexc29:                                         ; preds = %bb3.i.i.i26
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i6": ; preds = %.noexc
  %this.1.i.i.i8 = load ptr, ptr %10, align 8, !noalias !1652, !nonnull !37, !noundef !37
  %_7.i.i.i9 = icmp uge i64 %err.0.i.i.i27, %_3
  tail call void @llvm.assume(i1 %_7.i.i.i9)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i4), !noalias !1652
  br i1 %_2415.i.i.i, label %bb13.i.i.i19.preheader, label %bb14.i.i.i11

bb13.i.i.i19.preheader:                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i6"
  %11 = add nsw i64 %_3, -1
  %12 = add nsw i64 %_3, -2
  %xtraiter142 = and i64 %11, 7
  %13 = icmp ult i64 %12, 7
  br i1 %13, label %bb14.loopexit.i.i.i25.unr-lcssa, label %bb13.i.i.i19.preheader.new

bb13.i.i.i19.preheader.new:                       ; preds = %bb13.i.i.i19.preheader
  %unroll_iter146 = and i64 %11, -8
  br label %bb13.i.i.i19

bb14.loopexit.i.i.i25.unr-lcssa:                  ; preds = %bb13.i.i.i19, %bb13.i.i.i19.preheader
  %_15.i.i.i23.lcssa.ph = phi ptr [ poison, %bb13.i.i.i19.preheader ], [ %_15.i.i.i23.7, %bb13.i.i.i19 ]
  %ptr.sroa.0.018.i.i.i20.unr = phi ptr [ %this.1.i.i.i8, %bb13.i.i.i19.preheader ], [ %_15.i.i.i23.7, %bb13.i.i.i19 ]
  %lcmp.mod144.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod144.not, label %bb14.loopexit.i.i.i25, label %bb13.i.i.i19.epil

bb13.i.i.i19.epil:                                ; preds = %bb14.loopexit.i.i.i25.unr-lcssa, %bb13.i.i.i19.epil
  %ptr.sroa.0.018.i.i.i20.epil = phi ptr [ %_15.i.i.i23.epil, %bb13.i.i.i19.epil ], [ %ptr.sroa.0.018.i.i.i20.unr, %bb14.loopexit.i.i.i25.unr-lcssa ]
  %epil.iter143 = phi i64 [ %epil.iter143.next, %bb13.i.i.i19.epil ], [ 0, %bb14.loopexit.i.i.i25.unr-lcssa ]
  store float 1.000000e+00, ptr %ptr.sroa.0.018.i.i.i20.epil, align 4, !noalias !1652
  %_15.i.i.i23.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i20.epil, i64 4
  %epil.iter143.next = add i64 %epil.iter143, 1
  %epil.iter143.cmp.not = icmp eq i64 %epil.iter143.next, %xtraiter142
  br i1 %epil.iter143.cmp.not, label %bb14.loopexit.i.i.i25, label %bb13.i.i.i19.epil, !llvm.loop !1653

bb14.loopexit.i.i.i25:                            ; preds = %bb13.i.i.i19.epil, %bb14.loopexit.i.i.i25.unr-lcssa
  %_15.i.i.i23.lcssa = phi ptr [ %_15.i.i.i23.lcssa.ph, %bb14.loopexit.i.i.i25.unr-lcssa ], [ %_15.i.i.i23.epil, %bb13.i.i.i19.epil ]
  %14 = add nsw i64 %_3, -1
  br label %bb14.i.i.i11

bb14.i.i.i11:                                     ; preds = %bb14.loopexit.i.i.i25, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i6"
  %storemerge.lcssa.i.i.i12 = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i6" ], [ %14, %bb14.loopexit.i.i.i25 ]
  %ptr.sroa.0.0.lcssa.i.i.i13 = phi ptr [ %this.1.i.i.i8, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h79f062ac34d75f5eE.exit.i.i6" ], [ %_15.i.i.i23.lcssa, %bb14.loopexit.i.i.i25 ]
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit30, label %bb4.i.i.i15

bb13.i.i.i19:                                     ; preds = %bb13.i.i.i19, %bb13.i.i.i19.preheader.new
  %ptr.sroa.0.018.i.i.i20 = phi ptr [ %this.1.i.i.i8, %bb13.i.i.i19.preheader.new ], [ %_15.i.i.i23.7, %bb13.i.i.i19 ]
  %niter147 = phi i64 [ 0, %bb13.i.i.i19.preheader.new ], [ %niter147.next.7, %bb13.i.i.i19 ]
  store float 1.000000e+00, ptr %ptr.sroa.0.018.i.i.i20, align 4, !noalias !1652
  %_15.i.i.i23 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i20, i64 4
  store float 1.000000e+00, ptr %_15.i.i.i23, align 4, !noalias !1652
  %_15.i.i.i23.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i20, i64 8
  store float 1.000000e+00, ptr %_15.i.i.i23.1, align 4, !noalias !1652
  %_15.i.i.i23.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i20, i64 12
  store float 1.000000e+00, ptr %_15.i.i.i23.2, align 4, !noalias !1652
  %_15.i.i.i23.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i20, i64 16
  store float 1.000000e+00, ptr %_15.i.i.i23.3, align 4, !noalias !1652
  %_15.i.i.i23.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i20, i64 20
  store float 1.000000e+00, ptr %_15.i.i.i23.4, align 4, !noalias !1652
  %_15.i.i.i23.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i20, i64 24
  store float 1.000000e+00, ptr %_15.i.i.i23.5, align 4, !noalias !1652
  %_15.i.i.i23.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i20, i64 28
  store float 1.000000e+00, ptr %_15.i.i.i23.6, align 4, !noalias !1652
  %_15.i.i.i23.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i20, i64 32
  %niter147.next.7 = add i64 %niter147, 8
  %niter147.ncmp.7 = icmp eq i64 %niter147.next.7, %unroll_iter146
  br i1 %niter147.ncmp.7, label %bb14.loopexit.i.i.i25.unr-lcssa, label %bb13.i.i.i19

bb4.i.i.i15:                                      ; preds = %bb14.i.i.i11
  store float 1.000000e+00, ptr %ptr.sroa.0.0.lcssa.i.i.i13, align 4, !noalias !1652
  %15 = add nsw i64 %storemerge.lcssa.i.i.i12, 1
  br label %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit30

_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit30: ; preds = %bb14.i.i.i11, %bb4.i.i.i15
  %storemerge14.i.i.i16 = phi i64 [ %15, %bb4.i.i.i15 ], [ %storemerge.lcssa.i.i.i12, %bb14.i.i.i11 ]
  store i64 %err.0.i.i.i27, ptr %b, align 8, !alias.scope !1652
  %v.sroa.4.0._0.sroa_idx.i.i17 = getelementptr inbounds nuw i8, ptr %b, i64 8
  store ptr %this.1.i.i.i8, ptr %v.sroa.4.0._0.sroa_idx.i.i17, align 8, !alias.scope !1652
  %v.sroa.5.0._0.sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %b, i64 16
  store i64 %storemerge14.i.i.i16, ptr %v.sroa.5.0._0.sroa_idx.i.i18, align 8, !alias.scope !1652
  %_0.i.i.i95 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i95, label %bb7, label %bb8

bb19:                                             ; preds = %cleanup1, %cleanup
  %.pn = phi { ptr, i32 } [ %16, %cleanup ], [ %17, %cleanup1 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
          to label %bb20 unwind label %terminate

cleanup:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit50", %bb3.i.i.i26, %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %bb19

cleanup1:                                         ; preds = %panic.i.i75.invoke
  %17 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b, i64 noundef 4, i64 noundef 4)
          to label %bb19 unwind label %terminate

bb7:                                              ; preds = %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit30, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit79"
  %spec.select98 = phi i32 [ %spec.select, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit79" ], [ 2, %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit30 ]
  %iter.sroa.0.097 = phi i32 [ %spec.select98, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit79" ], [ 1, %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit30 ]
  %_16 = add nsw i32 %iter.sroa.0.097, -1
  %_15 = sext i32 %_16 to i64
  %len.i = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1654, !noalias !1657, !noundef !37
  %_4.i.i35 = icmp ugt i64 %len.i, %_15
  br i1 %_4.i.i35, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit", label %panic.i.i75.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1654, !noalias !1657, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw float, ptr %_6.i, i64 %_15
  %_12 = load float, ptr %_0.i.i, align 4, !noundef !37
  %len.i53 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i18, align 8, !alias.scope !1659, !noalias !1662, !noundef !37
  %_4.i.i54 = icmp ugt i64 %len.i53, %_15
  br i1 %_4.i.i54, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit59", label %panic.i.i75.invoke

bb8:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit79", %_ZN5alloc3vec9from_elem17h5410a2b9d793e6faE.exit30
  %_33 = add i32 %n, -1
  %_32 = sext i32 %_33 to i64
  %len.i37 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1664, !noalias !1667, !noundef !37
  %_4.i.i38 = icmp ugt i64 %len.i37, %_32
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit43", label %panic.i.i75.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit43": ; preds = %bb8
  %_6.i40 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1664, !noalias !1667, !nonnull !37, !noundef !37
  %_0.i.i41 = getelementptr inbounds nuw float, ptr %_6.i40, i64 %_32
  %_29 = load float, ptr %_0.i.i41, align 4, !noundef !37
  %len.i44 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i18, align 8, !alias.scope !1669, !noalias !1672, !noundef !37
  %_4.i.i45 = icmp ugt i64 %len.i44, %_32
  br i1 %_4.i.i45, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit50", label %panic.i.i75.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit43"
  %_6.i47 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i17, align 8, !alias.scope !1669, !noalias !1672, !nonnull !37, !noundef !37
  %_0.i.i48 = getelementptr inbounds nuw float, ptr %_6.i47, i64 %_32
  %_34 = load float, ptr %_0.i.i48, align 4, !noundef !37
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %b, i64 noundef 4, i64 noundef 4)
          to label %bb16 unwind label %cleanup

bb16:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit50"
  %_28 = fadd float %_29, %_34
  %_0 = call i32 @llvm.fptosi.sat.i32.f32(float %_28)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %b)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit59": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit"
  %_22 = zext nneg i32 %iter.sroa.0.097 to i64
  %_4.i.i61 = icmp ugt i64 %len.i, %_22
  br i1 %_4.i.i61, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit", label %panic.i.i75.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit59"
  %_6.i56 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i17, align 8, !alias.scope !1659, !noalias !1662, !nonnull !37, !noundef !37
  %_0.i.i57 = getelementptr inbounds nuw float, ptr %_6.i56, i64 %_15
  %_17 = load float, ptr %_0.i.i57, align 4, !noundef !37
  %_0.i.i64 = getelementptr inbounds nuw float, ptr %_6.i, i64 %_22
  %18 = fadd float %_12, %_17
  store float %18, ptr %_0.i.i64, align 4
  %len.i66 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1674, !noalias !1677, !noundef !37
  %_4.i.i67 = icmp ugt i64 %len.i66, %_15
  br i1 %_4.i.i67, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit72", label %panic.i.i75.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit72": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit"
  %len.i73 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i18, align 8, !alias.scope !1679, !noalias !1682, !noundef !37
  %_4.i.i74 = icmp ugt i64 %len.i73, %_22
  br i1 %_4.i.i74, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit79", label %panic.i.i75.invoke

panic.i.i75.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit72", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit59", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit", %bb7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit43", %bb8
  %19 = phi i64 [ %_32, %bb8 ], [ %_32, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit43" ], [ %_22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit72" ], [ %_15, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit" ], [ %_22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit59" ], [ %_15, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit" ], [ %_15, %bb7 ]
  %20 = phi i64 [ %len.i37, %bb8 ], [ %len.i44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit43" ], [ %len.i73, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit72" ], [ %len.i66, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit" ], [ %len.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit59" ], [ %len.i53, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit" ], [ %len.i, %bb7 ]
  %21 = phi ptr [ @alloc_e669bf91d659b90e1c89102d6c888526, %bb8 ], [ @alloc_4833d9647f1dc7e3b841fab7c906a697, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit43" ], [ @alloc_37a4b4d7df8cc5a8a53e17cae4838714, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit72" ], [ @alloc_f21cd53b97cfbcae6106ecb1387e024b, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit" ], [ @alloc_c602af42b4d6f06c5be6f6e8b9027080, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit59" ], [ @alloc_a7e7a0ea0b4ba7eb3dfac0378beed50a, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit" ], [ @alloc_fc9cf361435cb030825afada3bc7b44d, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %19, i64 noundef range(i64 0, 2305843009213693952) %20, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %21) #25
          to label %panic.i.i75.cont unwind label %cleanup1

panic.i.i75.cont:                                 ; preds = %panic.i.i75.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hb5b70fca5981264cE.exit79": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hf53789352a14d869E.exit72"
  %_6.i69 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1674, !noalias !1677, !nonnull !37, !noundef !37
  %_0.i.i70 = getelementptr inbounds nuw float, ptr %_6.i69, i64 %_15
  %_23 = load float, ptr %_0.i.i70, align 4, !noundef !37
  %_6.i76 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i17, align 8, !alias.scope !1679, !noalias !1682, !nonnull !37, !noundef !37
  %_0.i.i77 = getelementptr inbounds nuw float, ptr %_6.i76, i64 %_22
  store float %_23, ptr %_0.i.i77, align 4
  %_0.i.i.i = icmp slt i32 %spec.select98, %n
  %22 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select98, %22
  br i1 %_0.i.i.i, label %bb7, label %bb8

terminate:                                        ; preds = %cleanup1, %bb19
  %23 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb20:                                             ; preds = %bb19
  resume { ptr, i32 } %.pn
}
