define noundef range(i32 0, -2147483648) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %e.i = alloca [0 x i8], align 1
  %_4.i.i.i = alloca [24 x i8], align 8
  %lioes = alloca [24 x i8], align 8
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.3.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.3.0.extract.trunc = trunc nuw i64 %arr.sroa.3.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lioes)
  %_2.i.i = icmp slt i32 %n, 0
  %_3.i.i = zext nneg i32 %n to i64
  %_0.sroa.3.0.i.i = select i1 %_2.i.i, i64 undef, i64 %_3.i.i
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %e.i)
  %1 = icmp slt i32 %n, 0
  br i1 %1, label %bb2.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15b0712aba2ca02cE.exit", !prof !1033

bb2.i:                                            ; preds = %start
; call core::result::unwrap_failed
  call void @_ZN4core6result13unwrap_failed17hac9339a6c7ad693bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @vtable.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_587b0cc76b30d160b83f17a85334bffd) #27
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15b0712aba2ca02cE.exit": ; preds = %start
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %e.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef %_0.sroa.3.0.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %2 = trunc nuw i64 %_5.i.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %3, align 8, !range !1032, !noalias !1644, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %2, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15b0712aba2ca02cE.exit"
  %err.1.i.i.i = load i64, ptr %4, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #27, !noalias !1644
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h15b0712aba2ca02cE.exit"
  %this.1.i.i.i = load ptr, ptr %4, align 8, !noalias !1644, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp ule i64 %_0.sroa.3.0.i.i, %err.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1644
  %_2415.i.i.i = icmp ugt i64 %_0.sroa.3.0.i.i, 1
  br i1 %_2415.i.i.i, label %bb13.i.i.i.preheader, label %bb14.i.i.i

bb13.i.i.i.preheader:                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i"
  %5 = add i64 %_0.sroa.3.0.i.i, -1
  %6 = add i64 %_0.sroa.3.0.i.i, -2
  %xtraiter = and i64 %5, 7
  %7 = icmp ult i64 %6, 7
  br i1 %7, label %bb14.loopexit.i.i.i.unr-lcssa, label %bb13.i.i.i.preheader.new

bb13.i.i.i.preheader.new:                         ; preds = %bb13.i.i.i.preheader
  %unroll_iter = and i64 %5, -8
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
  %8 = add i64 %_0.sroa.3.0.i.i, -1
  br label %bb14.i.i.i

bb14.i.i.i:                                       ; preds = %bb14.loopexit.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i"
  %storemerge.lcssa.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i" ], [ %8, %bb14.loopexit.i.i.i ]
  %ptr.sroa.0.0.lcssa.i.i.i = phi ptr [ %this.1.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h7bdfccb6e7e5346cE.exit.i.i" ], [ %_15.i.i.i.lcssa, %bb14.loopexit.i.i.i ]
  %_17.not.i.i.i = icmp eq i64 %_0.sroa.3.0.i.i, 0
  br i1 %_17.not.i.i.i, label %_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit, label %bb4.i.i.i

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
  %9 = add i64 %storemerge.lcssa.i.i.i, 1
  br label %_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit

_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit: ; preds = %bb14.i.i.i, %bb4.i.i.i
  %storemerge14.i.i.i = phi i64 [ %9, %bb4.i.i.i ], [ %storemerge.lcssa.i.i.i, %bb14.i.i.i ]
  store i64 %err.0.i.i.i, ptr %lioes, align 8, !alias.scope !1644
  %v.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %lioes, i64 8
  store ptr %this.1.i.i.i, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %v.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %lioes, i64 16
  store i64 %storemerge14.i.i.i, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1644
  %_0.i.i.i78 = icmp sgt i32 %n, 1
  br i1 %_0.i.i.i78, label %bb11.preheader.split, label %bb30.preheader

cleanup:                                          ; preds = %bb13.2.invoke, %panic.i.i45.invoke
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lioes, i64 noundef 4, i64 noundef 4)
          to label %bb41 unwind label %terminate

bb11.preheader.split:                             ; preds = %_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit
  %_20 = icmp sgt i32 %arr.sroa.3.0.extract.trunc, %arr.sroa.0.0.extract.trunc
  br i1 %_20, label %bb19, label %bb28

bb30.preheader:                                   ; preds = %_ZN5alloc3vec9from_elem17h75d6cdbf4758f365E.exit
  %_0.i.i.i1782.not = icmp eq i32 %n, 0
  br i1 %_0.i.i.i1782.not, label %bb33, label %bb32.lr.ph

bb32.lr.ph:                                       ; preds = %bb28, %bb30.preheader
  %len.i = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1646, !noalias !1649, !noundef !37
  %_6.i = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !nonnull !37
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 1)
  %wide.trip.count104 = zext nneg i32 %smax to i64
  br label %bb32

bb32:                                             ; preds = %bb32.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit"
  %indvars.iv100 = phi i64 [ 0, %bb32.lr.ph ], [ %indvars.iv.next101, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit" ]
  %max_len.sroa.0.084 = phi i32 [ 0, %bb32.lr.ph ], [ %spec.select68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit" ]
  %exitcond.not = icmp eq i64 %indvars.iv100, %len.i
  br i1 %exitcond.not, label %panic.i.i45.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit": ; preds = %bb32
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %indvars.iv100
  %_52 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %spec.select68 = tail call i32 @llvm.smax.i32(i32 %max_len.sroa.0.084, i32 %_52)
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count104
  br i1 %exitcond105.not, label %bb33, label %bb32

bb33:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit", %bb30.preheader
  %max_len.sroa.0.0.lcssa = phi i32 [ 0, %bb30.preheader ], [ %spec.select68, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit" ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %lioes, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lioes)
  ret i32 %max_len.sroa.0.0.lcssa

bb28:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit42", %bb19, %bb23, %bb11.preheader.split
  %cond = icmp eq i32 %n, 2
  br i1 %cond, label %bb32.lr.ph, label %bb13.2.invoke

bb13.2.invoke:                                    ; preds = %bb28
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_05f210d1c1c889d67ef9022de8f1125a) #27
          to label %bb13.2.cont unwind label %cleanup

bb13.2.cont:                                      ; preds = %bb13.2.invoke
  unreachable

bb19:                                             ; preds = %bb11.preheader.split
  %_29 = add i32 %arr.sroa.0.0.extract.trunc, %arr.sroa.3.0.extract.trunc
  %11 = and i32 %_29, 1
  %_27.not = icmp eq i32 %11, 0
  br i1 %_27.not, label %bb28, label %bb20

bb20:                                             ; preds = %bb19
  %len.i36 = load i64, ptr %v.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !noundef !37
  %_4.i.i37 = icmp ugt i64 %len.i36, 1
  br i1 %_4.i.i37, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit42", label %panic.i.i45.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit42": ; preds = %bb20
  %_6.i39 = load ptr, ptr %v.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1651, !noalias !1654, !nonnull !37, !noundef !37
  %_0.i.i40 = getelementptr inbounds nuw i8, ptr %_6.i39, i64 4
  %_31 = load i32, ptr %_0.i.i40, align 4, !noundef !37
  %_35 = load i32, ptr %_6.i39, align 4, !noundef !37
  %_34 = add i32 %_35, 1
  %_30 = icmp slt i32 %_31, %_34
  br i1 %_30, label %bb23, label %bb28

panic.i.i45.invoke:                               ; preds = %bb20, %bb32
  %12 = phi i64 [ %indvars.iv100, %bb32 ], [ 1, %bb20 ]
  %13 = phi i64 [ %len.i, %bb32 ], [ %len.i36, %bb20 ]
  %14 = phi ptr [ @alloc_86558c888f51606b928a8e9d506f7647, %bb32 ], [ @alloc_1ca3cdbda71c5d64196db805f66a7b5c, %bb20 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %12, i64 noundef range(i64 0, 2305843009213693952) %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #26
          to label %panic.i.i45.cont unwind label %cleanup

panic.i.i45.cont:                                 ; preds = %panic.i.i45.invoke
  unreachable

bb23:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hb569ad831088c71fE.exit42"
  store i32 %_34, ptr %_0.i.i40, align 4
  br label %bb28

terminate:                                        ; preds = %cleanup
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #28
  unreachable

bb41:                                             ; preds = %cleanup
  resume { ptr, i32 } %10
}
