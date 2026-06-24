define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
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
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17he5856236bb6a3bceE.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #26, !noalias !1644
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17he5856236bb6a3bceE.exit.i.i": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp ule i64 %_3, %err.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
  %_2415.i.i.i = icmp ugt i64 %_3, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17he5856236bb6a3bceE.exit.i.i"
  %3 = add nsw i64 %_4, -1
  %xtraiter = and i64 %_4, 7
  %4 = icmp ult i64 %3, 7
  br i1 %4, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %_4, -8
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
  store i32 1, ptr %ptr.sroa.0.018.i.i.i.epil, align 4, !noalias !1644
  %_15.i.i.i.epil = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb14.i.i.i, label %bb13.i.i.i.epil, !llvm.loop !1645

bb14.i.i.i:                                       ; preds = %bb14.i.i.i.loopexit.unr-lcssa, %bb13.i.i.i.epil, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17he5856236bb6a3bceE.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17he5856236bb6a3bceE.exit.i.i" ], [ %_4, %bb13.i.i.i.epil ], [ %_4, %bb14.i.i.i.loopexit.unr-lcssa ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17he5856236bb6a3bceE.exit.i.i" ], [ %_15.i.i.i.lcssa.ph, %bb14.i.i.i.loopexit.unr-lcssa ], [ %_15.i.i.i.epil, %bb13.i.i.i.epil ]
  %_17.not.i.i.i = icmp eq i64 %_3, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h372e2269bfef4ae1E.exit, label %bb4.i.i.i

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
  br i1 %niter.ncmp.7, label %bb14.i.i.i.loopexit.unr-lcssa, label %bb13.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i.i.i, align 4, !noalias !1644
  %6 = add nsw i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h372e2269bfef4ae1E.exit

_ZN5alloc3vec9from_elem17h372e2269bfef4ae1E.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %6, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %dp, align 8, !alias.scope !1644
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %_0.i.not.i.i39 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i39, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %_ZN5alloc3vec9from_elem17h372e2269bfef4ae1E.exit
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.145 = zext i1 %.not to i8
  %_0.i3.i.i40.not = icmp eq i32 %n, 2
  %iter.sroa.0.144 = select i1 %_0.i3.i.i40.not, i32 2, i32 3
  br label %bb7

cleanup:                                          ; preds = %panic.i.i19.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb15 unwind label %terminate

bb7:                                              ; preds = %bb7.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h86d98e9de5e5dbdcE.exit"
  %_0.sroa.3.0.i.i48 = phi i32 [ 2, %bb7.lr.ph ], [ %_0.sroa.3.0.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h86d98e9de5e5dbdcE.exit" ]
  %iter.sroa.7.147 = phi i8 [ %iter.sroa.7.145, %bb7.lr.ph ], [ %iter.sroa.7.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h86d98e9de5e5dbdcE.exit" ]
  %iter.sroa.0.146 = phi i32 [ %iter.sroa.0.144, %bb7.lr.ph ], [ %iter.sroa.0.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h86d98e9de5e5dbdcE.exit" ]
  %_17 = add i32 %_0.sroa.3.0.i.i48, -1
  %_16 = sext i32 %_17 to i64
  %len.i = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1646, !noalias !1649, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_16
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit", label %panic.i.i19.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit": ; preds = %bb7
  %_6.i = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1646, !noalias !1649, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_16
  %_13 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_22 = add i32 %_0.sroa.3.0.i.i48, -2
  %_21 = sext i32 %_22 to i64
  %_4.i.i11 = icmp ugt i64 %len.i, %_21
  br i1 %_4.i.i11, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit16", label %panic.i.i19.invoke

bb8:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h86d98e9de5e5dbdcE.exit", %_ZN5alloc3vec9from_elem17h372e2269bfef4ae1E.exit
  %len.i3 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !noundef !37
  %_4.i.i4 = icmp ugt i64 %len.i3, %_4
  br i1 %_4.i.i4, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit9", label %panic.i.i19.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit9": ; preds = %bb8
  %_6.i6 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !nonnull !37, !noundef !37
  %_0.i.i7 = getelementptr inbounds nuw i32, ptr %_6.i6, i64 %_4
  %_0 = load i32, ptr %_0.i.i7, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit16": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit"
  %_25 = sext i32 %_0.sroa.3.0.i.i48 to i64
  %_4.i.i18 = icmp ugt i64 %len.i, %_25
  br i1 %_4.i.i18, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h86d98e9de5e5dbdcE.exit", label %panic.i.i19.invoke

panic.i.i19.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit16", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit", %bb7, %bb8
  %8 = phi i64 [ %_4, %bb8 ], [ %_25, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit16" ], [ %_21, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit" ], [ %_16, %bb7 ]
  %9 = phi i64 [ %len.i3, %bb8 ], [ %len.i, %bb7 ], [ %len.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit" ], [ %len.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit16" ]
  %10 = phi ptr [ @alloc_14eaec5d391f111a239c9c48914d7ab0, %bb8 ], [ @alloc_a7c15957f75e3e05971d4fa4272f1067, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit16" ], [ @alloc_74dcb3c0e909c0559a597b01e4a90e09, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit" ], [ @alloc_831c3e2b73ced7094fc4e5b18a788af0, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %panic.i.i19.cont unwind label %cleanup

panic.i.i19.cont:                                 ; preds = %panic.i.i19.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h86d98e9de5e5dbdcE.exit": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17ha9e996e42416bf38E.exit16"
  %_0.i.i14 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_21
  %_18 = load i32, ptr %_0.i.i14, align 4, !noundef !37
  %_0.i.i21 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_25
  %_12 = add i32 %_13, 1
  %11 = add i32 %_12, %_18
  store i32 %11, ptr %_0.i.i21, align 4
  %_10.i.i = trunc nuw i8 %iter.sroa.7.147 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.146, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.146, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.146, %spec.select
  %12 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %12, i8 %iter.sroa.7.147, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.146
  br i1 %or.cond, label %bb8, label %bb7

terminate:                                        ; preds = %cleanup
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb15:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
