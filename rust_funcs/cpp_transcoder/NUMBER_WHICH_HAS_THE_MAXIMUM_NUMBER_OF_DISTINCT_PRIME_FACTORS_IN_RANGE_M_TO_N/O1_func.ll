define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %prime = alloca [24 x i8], align 8
  %factor_count = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %factor_count)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h789e35a860d1c192E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h789e35a860d1c192E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %factor_count, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %factor_count, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %factor_count, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1644
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %prime)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1651
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %_ZN5alloc3vec9from_elem17h789e35a860d1c192E.exit
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1651, !noundef !37
  %5 = trunc nuw i64 %_5.i.i.i to i1
  %6 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %6, align 8, !range !1032, !noalias !1651, !noundef !37
  %7 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %5, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9861492ba41ccd8bE.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %.noexc
  %err.1.i.i.i = load i64, ptr %7, align 8, !noalias !1651
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #26
          to label %.noexc10 unwind label %cleanup

.noexc10:                                         ; preds = %bb3.i.i.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9861492ba41ccd8bE.exit.i.i": ; preds = %.noexc
  %this.1.i.i.i = load ptr, ptr %7, align 8, !noalias !1651, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp ule i64 %_4, %err.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1651
  %_2415.i.i.i = icmp ugt i64 %_4, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9861492ba41ccd8bE.exit.i.i"
  %8 = add nsw i64 %_5, -1
  %xtraiter = and i64 %_5, 7
  %9 = icmp ult i64 %8, 7
  br i1 %9, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %_5, -8
  br label %bb13.i.i.i

bb14.i.i.i.loopexit.unr-lcssa:                    ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader
  %_15.i.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %ptr.sroa.0.018.i.i.i.unr = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %10 = and i32 %n, 7
  %lcmp.mod.not = icmp eq i32 %10, 0
  br i1 %lcmp.mod.not, label %bb14.i.i.i, label %bb13.i.i.i.epil

bb13.i.i.i.epil:                                  ; preds = %bb14.i.i.i.loopexit.unr-lcssa, %bb13.i.i.i.epil
  %ptr.sroa.0.018.i.i.i.epil = phi ptr [ %_15.i.i.i.epil, %bb13.i.i.i.epil ], [ %ptr.sroa.0.018.i.i.i.unr, %bb14.i.i.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.i.epil ], [ 0, %bb14.i.i.i.loopexit.unr-lcssa ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1651
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1652

bb14.i.i.i:                                       ; preds = %bb14.i.i.i.loopexit.unr-lcssa, %bb13.i.i.i.epil, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9861492ba41ccd8bE.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9861492ba41ccd8bE.exit.i.i" ], [ %_5, %bb13.i.i.i.epil ], [ %_5, %bb14.i.i.i.loopexit.unr-lcssa ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h9861492ba41ccd8bE.exit.i.i" ], [ %_15.i.i.i.lcssa.ph, %bb14.i.i.i.loopexit.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %_17.not.i.i.i = icmp eq i64 %_4, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h789e35a860d1c192E.exit11, label %bb4.i.i.i

bb13.i.i.i:                                       ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader.new
  %ptr.sroa.0.018.i.i.i = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader.new ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %niter = phi i64 [ 0, %bb13.i.i.i.preheader.new ], [ %niter.next.7, %bb13.i.i.i ]
  store i32 1, ptr %ptr.sroa.0.018.i.i.i, align 4, !noalias !1651
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 4
  store i32 1, ptr %_15.i.i.i, align 4, !noalias !1651
  %_15.i.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 8
  store i32 1, ptr %_15.i.i.i.1, align 4, !noalias !1651
  %_15.i.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 12
  store i32 1, ptr %_15.i.i.i.2, align 4, !noalias !1651
  %_15.i.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 16
  store i32 1, ptr %_15.i.i.i.3, align 4, !noalias !1651
  %_15.i.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 20
  store i32 1, ptr %_15.i.i.i.4, align 4, !noalias !1651
  %_15.i.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 24
  store i32 1, ptr %_15.i.i.i.5, align 4, !noalias !1651
  %_15.i.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 28
  store i32 1, ptr %_15.i.i.i.6, align 4, !noalias !1651
  %_15.i.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1651
  %11 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h789e35a860d1c192E.exit11

_ZN5alloc3vec9from_elem17h789e35a860d1c192E.exit11: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %11, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %prime, align 8, !alias.scope !1651
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %prime, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1651
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %prime, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1651
  %_0.i.not.i.i132 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i132, label %bb9, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h789e35a860d1c192E.exit11
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.1138 = zext i1 %.not to i8
  %_0.i3.i.i133.not = icmp eq i32 %n, 2
  %iter.sroa.0.1137 = select i1 %_0.i3.i.i133.not, i32 2, i32 3
  br label %bb8

bb38:                                             ; preds = %cleanup3, %cleanup
  %.pn = phi { ptr, i32 } [ %12, %cleanup ], [ %13, %cleanup3 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %factor_count, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %terminate

cleanup:                                          ; preds = %bb29, %bb3.i.i.i, %_ZN5alloc3vec9from_elem17h789e35a860d1c192E.exit
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %bb38

cleanup3:                                         ; preds = %panic.i.i81.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %prime, i64 noundef 4, i64 noundef 4)
          to label %bb38 unwind label %terminate

bb8:                                              ; preds = %bb8.lr.ph, %bb22
  %_0.sroa.3.0.i.i141 = phi i32 [ 2, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb22 ]
  %iter.sroa.7.1140 = phi i8 [ %iter.sroa.7.1138, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb22 ]
  %iter.sroa.0.1139 = phi i32 [ %iter.sroa.0.1137, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb22 ]
  %_18 = sext i32 %_0.sroa.3.0.i.i141 to i64
  %len.i = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1653, !noalias !1656, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_18
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit", label %panic.i.i81.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1653, !noalias !1656, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_18
  %_15 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_14 = icmp eq i32 %_15, 1
  br i1 %_14, label %bb11, label %bb22

bb9:                                              ; preds = %bb22, %_ZN5alloc3vec9from_elem17h789e35a860d1c192E.exit11
  %_36 = sext i32 %m to i64
  %len.i17 = load i64, ptr %4, align 8, !alias.scope !1658, !noalias !1661, !noundef !37
  %_4.i.i18 = icmp ugt i64 %len.i17, %_36
  br i1 %_4.i.i18, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit23", label %panic.i.i81.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit23": ; preds = %bb9
  %_6.i20 = load ptr, ptr %3, align 8, !alias.scope !1658, !noalias !1661, !nonnull !37, !noundef !37
  %_0.i.not.i.i29142 = icmp sgt i32 %m, %n
  br i1 %_0.i.not.i.i29142, label %bb29, label %bb28.lr.ph

bb28.lr.ph:                                       ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit23"
  %.not154 = icmp eq i32 %m, %n
  %iter2.sroa.7.1148 = zext i1 %.not154 to i8
  %_0.i3.i.i31143 = icmp slt i32 %m, %n
  %spec.select87146 = zext i1 %_0.i3.i.i31143 to i32
  %iter2.sroa.0.1147 = add nsw i32 %m, %spec.select87146
  %_0.i.i21 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_36
  %14 = load i32, ptr %_0.i.i21, align 4, !noundef !37
  br label %bb28

bb28:                                             ; preds = %bb28.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43"
  %_0.sroa.3.0.i.i33153 = phi i32 [ %m, %bb28.lr.ph ], [ %_0.sroa.3.0.i.i33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43" ]
  %iter2.sroa.7.1152 = phi i8 [ %iter2.sroa.7.1148, %bb28.lr.ph ], [ %iter2.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43" ]
  %iter2.sroa.0.1151 = phi i32 [ %iter2.sroa.0.1147, %bb28.lr.ph ], [ %iter2.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43" ]
  %num.sroa.0.0150 = phi i32 [ %m, %bb28.lr.ph ], [ %spec.select93, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43" ]
  %max.sroa.0.0149 = phi i32 [ %14, %bb28.lr.ph ], [ %spec.select92, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43" ]
  %_48 = sext i32 %_0.sroa.3.0.i.i33153 to i64
  %_4.i.i38 = icmp ugt i64 %len.i17, %_48
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43", label %panic.i.i81.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43": ; preds = %bb28
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i20, i64 %_48
  %_45 = load i32, ptr %_0.i.i41, align 4, !noundef !37
  %_44 = icmp sgt i32 %_45, %max.sroa.0.0149
  %spec.select92 = tail call i32 @llvm.smax.i32(i32 %_45, i32 %max.sroa.0.0149)
  %spec.select93 = select i1 %_44, i32 %_0.sroa.3.0.i.i33153, i32 %num.sroa.0.0150
  %_10.i.i24 = trunc nuw i8 %iter2.sroa.7.1152 to i1
  %_0.i.not.i.i29 = icmp sgt i32 %iter2.sroa.0.1151, %n
  %or.cond91 = select i1 %_10.i.i24, i1 true, i1 %_0.i.not.i.i29
  %_0.i3.i.i31 = icmp slt i32 %iter2.sroa.0.1151, %n
  %not.or.cond91 = xor i1 %or.cond91, true
  %narrow119 = select i1 %not.or.cond91, i1 %_0.i3.i.i31, i1 false
  %spec.select87 = zext i1 %narrow119 to i32
  %iter2.sroa.0.1 = add nsw i32 %iter2.sroa.0.1151, %spec.select87
  %15 = select i1 %or.cond91, i1 true, i1 %_0.i3.i.i31
  %iter2.sroa.7.1 = select i1 %15, i8 %iter2.sroa.7.1152, i8 1
  %_0.sroa.3.0.i.i33 = select i1 %_10.i.i24, i32 undef, i32 %iter2.sroa.0.1151
  br i1 %or.cond91, label %bb29, label %bb28

bb29:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit23"
  %num.sroa.0.0.lcssa = phi i32 [ %m, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit23" ], [ %spec.select93, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit43" ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %prime, i64 noundef 4, i64 noundef 4)
          to label %bb35 unwind label %cleanup

bb35:                                             ; preds = %bb29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %prime)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %factor_count, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %factor_count)
  ret i32 %num.sroa.0.0.lcssa

bb11:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit"
  %len.i53 = load i64, ptr %4, align 8, !alias.scope !1663, !noalias !1666, !noundef !37
  %_4.i.i54 = icmp ugt i64 %len.i53, %_18
  br i1 %_4.i.i54, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit", label %panic.i.i81.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit": ; preds = %bb11
  %_6.i56 = load ptr, ptr %3, align 8, !alias.scope !1663, !noalias !1666, !nonnull !37, !noundef !37
  %_0.i.i57 = getelementptr inbounds nuw i32, ptr %_6.i56, i64 %_18
  store i32 1, ptr %_0.i.i57, align 4
  %_23 = shl i32 %_0.sroa.3.0.i.i141, 1
  br label %bb15

bb22:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hdad15631eb4c4620E.exit71", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04492909abf0abf2E.exit"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1140 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1139, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1139, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1139, %spec.select
  %16 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %16, i8 %iter.sroa.7.1140, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1139
  br i1 %or.cond, label %bb9, label %bb8

bb15:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit85", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit"
  %iter1.sroa.0.0 = phi i32 [ %_23, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit" ], [ %iter1.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit85" ]
  %iter1.sroa.7.0 = phi i8 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit" ], [ %iter1.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit85" ]
  %_10.i.i59 = trunc nuw i8 %iter1.sroa.7.0 to i1
  %_0.i.not.i.i64 = icmp sgt i32 %iter1.sroa.0.0, %n
  %or.cond94 = select i1 %_10.i.i59, i1 true, i1 %_0.i.not.i.i64
  br i1 %or.cond94, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hdad15631eb4c4620E.exit71", label %bb2.i.i65

bb2.i.i65:                                        ; preds = %bb15
  %_0.i3.i.i66 = icmp slt i32 %iter1.sroa.0.0, %n
  %17 = zext i1 %_0.i3.i.i66 to i32
  %spec.select89 = add nsw i32 %iter1.sroa.0.0, %17
  %spec.select90 = select i1 %_0.i3.i.i66, i8 %iter1.sroa.7.0, i8 1
  %18 = sext i32 %iter1.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hdad15631eb4c4620E.exit71"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hdad15631eb4c4620E.exit71": ; preds = %bb2.i.i65, %bb15
  %iter1.sroa.0.1 = phi i32 [ %iter1.sroa.0.0, %bb15 ], [ %spec.select89, %bb2.i.i65 ]
  %iter1.sroa.7.1 = phi i8 [ %iter1.sroa.7.0, %bb15 ], [ %spec.select90, %bb2.i.i65 ]
  %_0.sroa.3.0.i.i68 = phi i64 [ 0, %bb15 ], [ %18, %bb2.i.i65 ]
  br i1 %or.cond94, label %bb22, label %bb17

bb17:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17hdad15631eb4c4620E.exit71"
  %len.i72 = load i64, ptr %4, align 8, !alias.scope !1668, !noalias !1671, !noundef !37
  %_4.i.i73 = icmp ult i64 %_0.sroa.3.0.i.i68, %len.i72
  br i1 %_4.i.i73, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit78", label %panic.i.i81.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit78": ; preds = %bb17
  %_6.i75 = load ptr, ptr %3, align 8, !alias.scope !1668, !noalias !1671, !nonnull !37, !noundef !37
  %_0.i.i76 = getelementptr inbounds nuw i32, ptr %_6.i75, i64 %_0.sroa.3.0.i.i68
  %19 = load i32, ptr %_0.i.i76, align 4, !noundef !37
  %20 = add i32 %19, 1
  store i32 %20, ptr %_0.i.i76, align 4
  %len.i79 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1673, !noalias !1676, !noundef !37
  %_4.i.i80 = icmp ult i64 %_0.sroa.3.0.i.i68, %len.i79
  br i1 %_4.i.i80, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit85", label %panic.i.i81.invoke

panic.i.i81.invoke:                               ; preds = %bb11, %bb8, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit78", %bb17, %bb28, %bb9
  %21 = phi i64 [ %_36, %bb9 ], [ %_48, %bb28 ], [ %_0.sroa.3.0.i.i68, %bb17 ], [ %_0.sroa.3.0.i.i68, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit78" ], [ %_18, %bb8 ], [ %_18, %bb11 ]
  %22 = phi i64 [ %len.i17, %bb9 ], [ %len.i17, %bb28 ], [ %len.i79, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit78" ], [ %len.i72, %bb17 ], [ %len.i53, %bb11 ], [ %len.i, %bb8 ]
  %23 = phi ptr [ @alloc_5357896e48dc21afd5ab6a3d61a4e9cb, %bb9 ], [ @alloc_04ddb3480b23ec5c42eb071f20f87d55, %bb28 ], [ @alloc_4e2e38d17304b1594bcc49531a7bb880, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit78" ], [ @alloc_1c013262555e8f69e25bd91aa1d1a3f2, %bb17 ], [ @alloc_aa1bf3b0b35847e60fe6a0a4292527f8, %bb11 ], [ @alloc_e00afdeb8a0613c643c7084163b3ce95, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %21, i64 noundef range(i64 0, 2305843009213693952) %22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %23) #25
          to label %panic.i.i81.cont unwind label %cleanup3

panic.i.i81.cont:                                 ; preds = %panic.i.i81.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit85": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h97e84b61ddb1b938E.exit78"
  %_6.i82 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1673, !noalias !1676, !nonnull !37, !noundef !37
  %_0.i.i83 = getelementptr inbounds nuw i32, ptr %_6.i82, i64 %_0.sroa.3.0.i.i68
  store i32 0, ptr %_0.i.i83, align 4
  br label %bb15

terminate:                                        ; preds = %cleanup3, %bb38
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb39:                                             ; preds = %bb38
  resume { ptr, i32 } %.pn
}
