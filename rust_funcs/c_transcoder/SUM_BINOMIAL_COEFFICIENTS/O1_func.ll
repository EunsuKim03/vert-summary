define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %c = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_5.i.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5efdbd5e545152e7E.exit.i.i", !prof !1036

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #28, !noalias !1681
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5efdbd5e545152e7E.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  %_7.i.i.i = icmp ule i64 %_4, %err.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1681
  %_2415.i.i.i = icmp ugt i64 %_4, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5efdbd5e545152e7E.exit.i.i"
  %3 = add nsw i64 %_5, -1
  %xtraiter = and i64 %_5, 7
  %4 = icmp ult i64 %3, 7
  br i1 %4, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %_5, -8
  br label %bb13.i.i.i

bb14.i.i.i.loopexit.unr-lcssa:                    ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader
  %_15.i.i.i.lcssa.ph = phi ptr [ poison, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %ptr.sroa.0.018.i.i.i.unr = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %5 = and i32 %n, 7
  %lcmp.mod.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod.not, label %bb14.i.i.i, label %bb13.i.i.i.epil

bb13.i.i.i.epil:                                  ; preds = %bb14.i.i.i.loopexit.unr-lcssa, %bb13.i.i.i.epil
  %ptr.sroa.0.018.i.i.i.epil = phi ptr [ %_15.i.i.i.epil, %bb13.i.i.i.epil ], [ %ptr.sroa.0.018.i.i.i.unr, %bb14.i.i.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb13.i.i.i.epil ], [ 0, %bb14.i.i.i.loopexit.unr-lcssa ]
  store float 1.000000e+00, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1681
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1682

bb14.i.i.i:                                       ; preds = %bb14.i.i.i.loopexit.unr-lcssa, %bb13.i.i.i.epil, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5efdbd5e545152e7E.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5efdbd5e545152e7E.exit.i.i" ], [ %_5, %bb13.i.i.i.epil ], [ %_5, %bb14.i.i.i.loopexit.unr-lcssa ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h5efdbd5e545152e7E.exit.i.i" ], [ %_15.i.i.i.lcssa.ph, %bb14.i.i.i.loopexit.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %_17.not.i.i.i = icmp eq i64 %_4, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17hc0b02c3db5d4b0c4E.exit, label %bb4.i.i.i

bb13.i.i.i:                                       ; preds = %bb13.i.i.i, %bb13.i.i.i.preheader.new
  %ptr.sroa.0.018.i.i.i = phi ptr [ %this.1.i.i.i, %bb13.i.i.i.preheader.new ], [ %_15.i.i.i.7, %bb13.i.i.i ]
  %niter = phi i64 [ 0, %bb13.i.i.i.preheader.new ], [ %niter.next.7, %bb13.i.i.i ]
  store float 1.000000e+00, ptr %ptr.sroa.0.018.i.i.i, align 4, !noalias !1681
  %_15.i.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 4
  store float 1.000000e+00, ptr %_15.i.i.i, align 4, !noalias !1681
  %_15.i.i.i.1 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 8
  store float 1.000000e+00, ptr %_15.i.i.i.1, align 4, !noalias !1681
  %_15.i.i.i.2 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 12
  store float 1.000000e+00, ptr %_15.i.i.i.2, align 4, !noalias !1681
  %_15.i.i.i.3 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 16
  store float 1.000000e+00, ptr %_15.i.i.i.3, align 4, !noalias !1681
  %_15.i.i.i.4 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 20
  store float 1.000000e+00, ptr %_15.i.i.i.4, align 4, !noalias !1681
  %_15.i.i.i.5 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 24
  store float 1.000000e+00, ptr %_15.i.i.i.5, align 4, !noalias !1681
  %_15.i.i.i.6 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 28
  store float 1.000000e+00, ptr %_15.i.i.i.6, align 4, !noalias !1681
  %_15.i.i.i.7 = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i, i64 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store float 1.000000e+00, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1681
  %6 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17hc0b02c3db5d4b0c4E.exit

_ZN5alloc3vec9from_elem17hc0b02c3db5d4b0c4E.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %6, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %_3, align 8, !alias.scope !1681
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h70b433861be4d16fE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %7 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_0.i.not.i.i208 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i.i208, label %bb31.preheader, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17hc0b02c3db5d4b0c4E.exit
  %.not = icmp eq i32 %n, 1
  %iter.sroa.7.1214 = zext i1 %.not to i8
  %_0.i3.i.i209.not = icmp eq i32 %n, 1
  %iter.sroa.0.1213 = select i1 %_0.i3.i.i209.not, i32 1, i32 2
  br label %bb8

cleanup:                                          ; preds = %panic.i.i91.invoke
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h91bef48a2a6b92e0E"(ptr noalias noundef align 8 dereferenceable(24) %c) #30
          to label %bb39 unwind label %terminate

bb5.loopexit:                                     ; preds = %bb28
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1216 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.1215, %n
  %or.cond101 = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.1215, %n
  %not.or.cond101 = xor i1 %or.cond101, true
  %narrow = select i1 %not.or.cond101, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.1215, %spec.select
  %12 = select i1 %or.cond101, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %12, i8 %iter.sroa.7.1216, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.1215
  br i1 %or.cond101, label %bb31.preheader, label %bb8

bb31.preheader:                                   ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17hc0b02c3db5d4b0c4E.exit
  %13 = getelementptr inbounds nuw i8, ptr %c, i64 16
  %len.i = load i64, ptr %13, align 8
  %_4.i.i = icmp ugt i64 %len.i, %_5
  %14 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %_6.i = load ptr, ptr %14, align 8, !nonnull !15
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_6.i, i64 %_5
  %15 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  br label %bb31

bb8:                                              ; preds = %bb8.lr.ph, %bb5.loopexit
  %_0.sroa.3.0.i.i217 = phi i32 [ 1, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb5.loopexit ]
  %iter.sroa.7.1216 = phi i8 [ %iter.sroa.7.1214, %bb8.lr.ph ], [ %iter.sroa.7.1, %bb5.loopexit ]
  %iter.sroa.0.1215 = phi i32 [ %iter.sroa.0.1213, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb5.loopexit ]
  %_0.sroa.0.0.i = call noundef i32 @llvm.smin.i32(i32 %n, i32 %_0.sroa.3.0.i.i217)
  %_33 = add i32 %_0.sroa.3.0.i.i217, -1
  %_32 = sext i32 %_33 to i64
  %_44 = sext i32 %_0.sroa.3.0.i.i217 to i64
  %_26 = sext i32 %_0.sroa.3.0.i.i217 to i64
  %_0.i3.i.i36200 = icmp sgt i32 %_0.sroa.3.0.i.i217, 0
  %not._0.i3.i.i36200 = xor i1 %_0.i3.i.i36200, true
  %iter1.sroa.7.1204 = zext i1 %not._0.i3.i.i36200 to i8
  %spec.select99203 = zext i1 %_0.i3.i.i36200 to i32
  br label %bb15

bb31:                                             ; preds = %bb31.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit"
  %iter2.sroa.0.0 = phi i32 [ %iter2.sroa.0.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit" ], [ 0, %bb31.preheader ]
  %iter2.sroa.7.0 = phi i8 [ %iter2.sroa.7.1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit" ], [ 0, %bb31.preheader ]
  %sum.sroa.0.0 = phi i32 [ %19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit" ], [ 0, %bb31.preheader ]
  %_10.i.i10 = trunc nuw i8 %iter2.sroa.7.0 to i1
  %_0.i.not.i.i15 = icmp sgt i32 %iter2.sroa.0.0, %n
  %or.cond102 = select i1 %_10.i.i10, i1 true, i1 %_0.i.not.i.i15
  br i1 %or.cond102, label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit22", label %bb2.i.i16

bb2.i.i16:                                        ; preds = %bb31
  %_0.i3.i.i17 = icmp slt i32 %iter2.sroa.0.0, %n
  %17 = zext i1 %_0.i3.i.i17 to i32
  %spec.select97 = add nsw i32 %iter2.sroa.0.0, %17
  %spec.select98 = select i1 %_0.i3.i.i17, i8 %iter2.sroa.7.0, i8 1
  %18 = sext i32 %iter2.sroa.0.0 to i64
  br label %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit22"

"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit22": ; preds = %bb2.i.i16, %bb31
  %iter2.sroa.0.1 = phi i32 [ %iter2.sroa.0.0, %bb31 ], [ %spec.select97, %bb2.i.i16 ]
  %iter2.sroa.7.1 = phi i8 [ %iter2.sroa.7.0, %bb31 ], [ %spec.select98, %bb2.i.i16 ]
  %_0.sroa.3.0.i.i19 = phi i64 [ 0, %bb31 ], [ %18, %bb2.i.i16 ]
  br i1 %or.cond102, label %bb34, label %bb33

bb33:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit22"
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit": ; preds = %bb33
  %len.i23 = load i64, ptr %15, align 8, !alias.scope !1683, !noalias !1686, !noundef !15
  %_4.i.i24 = icmp ult i64 %_0.sroa.3.0.i.i19, %len.i23
  br i1 %_4.i.i24, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit", label %panic.i.i91.invoke

bb34:                                             ; preds = %"_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h9f098f98a20949e5E.exit22"
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<f32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h91bef48a2a6b92e0E"(ptr noalias noundef align 8 dereferenceable(24) %c)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c)
  ret i32 %sum.sroa.0.0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit"
  %_6.i26 = load ptr, ptr %16, align 8, !alias.scope !1683, !noalias !1686, !nonnull !15, !noundef !15
  %_0.i.i27 = getelementptr inbounds nuw float, ptr %_6.i26, i64 %_0.sroa.3.0.i.i19
  %_53 = load float, ptr %_0.i.i27, align 4, !noundef !15
  %_52 = call i32 @llvm.fptosi.sat.i32.f32(float %_53)
  %19 = add i32 %_52, %sum.sroa.0.0
  br label %bb31

bb15:                                             ; preds = %bb8, %bb28
  %_0.sroa.3.0.i.i38207 = phi i32 [ 0, %bb8 ], [ %_0.sroa.3.0.i.i38, %bb28 ]
  %iter1.sroa.7.1206 = phi i8 [ %iter1.sroa.7.1204, %bb8 ], [ %iter1.sroa.7.1, %bb28 ]
  %iter1.sroa.0.1205 = phi i32 [ %spec.select99203, %bb8 ], [ %iter1.sroa.0.1, %bb28 ]
  %_21 = icmp eq i32 %_0.sroa.3.0.i.i38207, 0
  %_22 = icmp eq i32 %_0.sroa.3.0.i.i38207, %_0.sroa.3.0.i.i217
  %or.cond = or i1 %_21, %_22
  br i1 %or.cond, label %bb18, label %bb21

bb18:                                             ; preds = %bb15
  %len.i42 = load i64, ptr %9, align 8, !alias.scope !1688, !noalias !1691, !noundef !15
  %_4.i.i43 = icmp ugt i64 %len.i42, %_26
  br i1 %_4.i.i43, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit", label %panic.i.i91.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit": ; preds = %bb18
  %_6.i45 = load ptr, ptr %10, align 8, !alias.scope !1688, !noalias !1691, !nonnull !15, !noundef !15
  %_0.i.i46 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_6.i45, i64 %_26
  %_27 = sext i32 %_0.sroa.3.0.i.i38207 to i64
  %20 = getelementptr inbounds nuw i8, ptr %_0.i.i46, i64 16
  %len.i89 = load i64, ptr %20, align 8, !alias.scope !1693, !noalias !1696, !noundef !15
  %_4.i.i90 = icmp ugt i64 %len.i89, %_27
  br i1 %_4.i.i90, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5ddf513642bd8839E.exit95", label %panic.i.i91.invoke

bb21:                                             ; preds = %bb15
  %len.i48 = load i64, ptr %7, align 8, !alias.scope !1698, !noalias !1701, !noundef !15
  %_4.i.i49 = icmp ugt i64 %len.i48, %_32
  br i1 %_4.i.i49, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit54", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit54": ; preds = %bb21
  %_6.i51 = load ptr, ptr %8, align 8, !alias.scope !1698, !noalias !1701, !nonnull !15, !noundef !15
  %_0.i.i52 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_6.i51, i64 %_32
  %_35 = add i32 %_0.sroa.3.0.i.i38207, -1
  %_34 = sext i32 %_35 to i64
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 16
  %len.i55 = load i64, ptr %21, align 8, !alias.scope !1703, !noalias !1706, !noundef !15
  %_4.i.i56 = icmp ugt i64 %len.i55, %_34
  br i1 %_4.i.i56, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit61", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit61": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit54"
  %22 = getelementptr inbounds nuw i8, ptr %_0.i.i52, i64 8
  %_6.i58 = load ptr, ptr %22, align 8, !alias.scope !1703, !noalias !1706, !nonnull !15, !noundef !15
  %_0.i.i59 = getelementptr inbounds nuw float, ptr %_6.i58, i64 %_34
  %_28 = load float, ptr %_0.i.i59, align 4, !noundef !15
  %_40 = sext i32 %_0.sroa.3.0.i.i38207 to i64
  %_4.i.i70 = icmp ugt i64 %len.i55, %_40
  br i1 %_4.i.i70, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit75", label %panic.i.i91.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit75": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit61"
  %_0.i.i73 = getelementptr inbounds nuw float, ptr %_6.i58, i64 %_40
  %_36 = load float, ptr %_0.i.i73, align 4, !noundef !15
  %_4.i.i77 = icmp ugt i64 %len.i48, %_44
  br i1 %_4.i.i77, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit82", label %panic.i.i91.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit82": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit75"
  %_0.i.i80 = getelementptr inbounds nuw %"alloc::vec::Vec<f32>", ptr %_6.i51, i64 %_44
  %23 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 16
  %len.i83 = load i64, ptr %23, align 8, !alias.scope !1708, !noalias !1711, !noundef !15
  %_4.i.i84 = icmp ugt i64 %len.i83, %_40
  br i1 %_4.i.i84, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5ddf513642bd8839E.exit", label %panic.i.i91.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5ddf513642bd8839E.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit82"
  %24 = getelementptr inbounds nuw i8, ptr %_0.i.i80, i64 8
  %_6.i86 = load ptr, ptr %24, align 8, !alias.scope !1708, !noalias !1711, !nonnull !15, !noundef !15
  %_0.i.i87 = getelementptr inbounds nuw float, ptr %_6.i86, i64 %_40
  %25 = fadd float %_28, %_36
  store float %25, ptr %_0.i.i87, align 4
  br label %bb28

bb28:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5ddf513642bd8839E.exit95", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5ddf513642bd8839E.exit"
  %_10.i.i29 = trunc nuw i8 %iter1.sroa.7.1206 to i1
  %_0.i.not.i.i34 = icmp sgt i32 %iter1.sroa.0.1205, %_0.sroa.0.0.i
  %or.cond103 = select i1 %_10.i.i29, i1 true, i1 %_0.i.not.i.i34
  %_0.i3.i.i36 = icmp slt i32 %iter1.sroa.0.1205, %_0.sroa.0.0.i
  %not.or.cond103 = xor i1 %or.cond103, true
  %narrow163 = select i1 %not.or.cond103, i1 %_0.i3.i.i36, i1 false
  %spec.select99 = zext i1 %narrow163 to i32
  %iter1.sroa.0.1 = add nuw nsw i32 %iter1.sroa.0.1205, %spec.select99
  %26 = select i1 %or.cond103, i1 true, i1 %_0.i3.i.i36
  %iter1.sroa.7.1 = select i1 %26, i8 %iter1.sroa.7.1206, i8 1
  %_0.sroa.3.0.i.i38 = select i1 %_10.i.i29, i32 undef, i32 %iter1.sroa.0.1205
  br i1 %or.cond103, label %bb5.loopexit, label %bb15

panic.i.i91.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit82", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit75", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit61", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit54", %bb21, %bb18, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit", %bb33
  %27 = phi i64 [ %_0.sroa.3.0.i.i19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit" ], [ %_5, %bb33 ], [ %_27, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit" ], [ %_40, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit82" ], [ %_44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit75" ], [ %_40, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit61" ], [ %_34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit54" ], [ %_32, %bb21 ], [ %_26, %bb18 ]
  %28 = phi i64 [ %len.i23, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit" ], [ %len.i, %bb33 ], [ %len.i89, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit" ], [ %len.i83, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit82" ], [ %len.i48, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit75" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit61" ], [ %len.i55, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit54" ], [ %len.i48, %bb21 ], [ %len.i42, %bb18 ]
  %29 = phi ptr [ @alloc_f08b290234a188f05dd07309e3a322d5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit" ], [ @alloc_da27dded71960ddc26d4765a23c70a81, %bb33 ], [ @alloc_70d6a72566d1fbe42868c57bcc86a4a1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit" ], [ @alloc_9b8e73f987c682cbf1663323381ec2ca, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit82" ], [ @alloc_59b2f3a6572deebdf1619411ccd775a5, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit75" ], [ @alloc_38ba028bc456ed8aa671c62c298a0430, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h43e379c433b1a471E.exit61" ], [ @alloc_55a89c28d6cb93fd77894075acdbc197, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hdcc1dd412562efd8E.exit54" ], [ @alloc_dd0b5b2c13e5784edb33320707816a8c, %bb21 ], [ @alloc_c462e595a85a0c4f2c1474dd47fa8faf, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %27, i64 noundef range(i64 0, 2305843009213693952) %28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %29) #27
          to label %panic.i.i91.cont unwind label %cleanup

panic.i.i91.cont:                                 ; preds = %panic.i.i91.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h5ddf513642bd8839E.exit95": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h8aca3194764ae1a9E.exit"
  %30 = getelementptr inbounds nuw i8, ptr %_0.i.i46, i64 8
  %_6.i92 = load ptr, ptr %30, align 8, !alias.scope !1693, !noalias !1696, !nonnull !15, !noundef !15
  %_0.i.i93 = getelementptr inbounds nuw float, ptr %_6.i92, i64 %_27
  store float 1.000000e+00, ptr %_0.i.i93, align 4
  br label %bb28

terminate:                                        ; preds = %cleanup
  %31 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb39:                                             ; preds = %cleanup
  resume { ptr, i32 } %11
}
