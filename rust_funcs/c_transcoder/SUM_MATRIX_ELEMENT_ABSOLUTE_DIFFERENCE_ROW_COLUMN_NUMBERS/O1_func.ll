define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %arr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  %_4 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1681
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1034, !noalias !1681, !noundef !15
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1035, !noalias !1681, !noundef !15
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h16afed1b8a471707E.exit, !prof !1036

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1681
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #28, !noalias !1681
  unreachable

_ZN5alloc3vec9from_elem17h16afed1b8a471707E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1681, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1681
  store i64 %err.0.i.i, ptr %_3, align 8, !alias.scope !1681
  %3 = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1681
  %4 = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %_4, ptr %4, align 8, !alias.scope !1681
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h235e7fcc32a36c5bE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %arr, ptr noalias noundef align 8 captures(address) dereferenceable(24) %_3, i64 noundef %_4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %_0.i.i.i69 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i69, label %bb10.preheader.lr.ph, label %bb18.preheader

bb10.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17h16afed1b8a471707E.exit
  %5 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %wide.trip.count97 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb10.preheader

cleanup:                                          ; preds = %panic.i.i47.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr noalias noundef align 8 dereferenceable(24) %arr) #30
          to label %bb31 unwind label %terminate

bb4.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h73dab7201388e7cbE.exit"
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count97
  br i1 %exitcond98.not, label %bb18.preheader, label %bb10.preheader

bb10.preheader:                                   ; preds = %bb10.preheader.lr.ph, %bb4.loopexit
  %indvars.iv93 = phi i64 [ 0, %bb10.preheader.lr.ph ], [ %indvars.iv.next94, %bb4.loopexit ]
  br label %bb12

bb18.preheader:                                   ; preds = %bb4.loopexit, %_ZN5alloc3vec9from_elem17h16afed1b8a471707E.exit
  %_0.i.i.i1476 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i1476, label %bb23.preheader.lr.ph, label %bb21

bb23.preheader.lr.ph:                             ; preds = %bb18.preheader
  %8 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %len.i = load i64, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_6.i = load ptr, ptr %9, align 8, !nonnull !15
  %10 = add nsw i32 %n, -1
  %11 = zext i32 %10 to i64
  %wide.trip.count110 = zext nneg i32 %n to i64
  %wide.trip.count104 = zext nneg i32 %n to i64
  br label %bb23.preheader

bb18.loopexit:                                    ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit"
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count110
  br i1 %exitcond111.not, label %bb21, label %bb23.preheader

bb23.preheader:                                   ; preds = %bb23.preheader.lr.ph, %bb18.loopexit
  %indvars.iv106 = phi i64 [ 0, %bb23.preheader.lr.ph ], [ %indvars.iv.next107, %bb18.loopexit ]
  %sum.sroa.0.078 = phi i32 [ 0, %bb23.preheader.lr.ph ], [ %14, %bb18.loopexit ]
  %_4.i.i25 = icmp ugt i64 %len.i, %indvars.iv106
  %_0.i.i = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i, i64 %indvars.iv106
  %12 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 8
  br i1 %_4.i.i25, label %bb25.lr.ph.split, label %panic.i.i47.invoke

bb25.lr.ph.split:                                 ; preds = %bb23.preheader
  %13 = getelementptr inbounds nuw i8, ptr %_0.i.i, i64 16
  %len.i26 = load i64, ptr %13, align 8, !alias.scope !1682, !noundef !15
  br label %bb25

bb21:                                             ; preds = %bb18.loopexit, %bb18.preheader
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb18.preheader ], [ %14, %bb18.loopexit ]
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::vec::Vec<i32>>>
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h1912aa497468fe80E"(ptr noalias noundef align 8 dereferenceable(24) %arr)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr)
  ret i32 %sum.sroa.0.0.lcssa

bb25:                                             ; preds = %bb25.lr.ph.split, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit"
  %indvars.iv99 = phi i64 [ 0, %bb25.lr.ph.split ], [ %indvars.iv.next100, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit" ]
  %sum.sroa.0.174 = phi i32 [ %sum.sroa.0.078, %bb25.lr.ph.split ], [ %14, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit" ]
  %exitcond103.not = icmp eq i64 %indvars.iv99, %len.i26
  br i1 %exitcond103.not, label %panic.i.i47.invoke.loopexit, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit"

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h9d1fc7070e9ab275E.exit": ; preds = %bb25
  %_6.i29 = load ptr, ptr %12, align 8, !alias.scope !1682, !nonnull !15, !noundef !15
  %_0.i.i30 = getelementptr inbounds nuw i32, ptr %_6.i29, i64 %indvars.iv99
  %_37 = load i32, ptr %_0.i.i30, align 4, !noundef !15
  %14 = add i32 %_37, %sum.sroa.0.174
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count104
  br i1 %exitcond105.not, label %bb18.loopexit, label %bb25

bb12:                                             ; preds = %bb10.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h73dab7201388e7cbE.exit"
  %indvars.iv88 = phi i64 [ 0, %bb10.preheader ], [ %indvars.iv.next89, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h73dab7201388e7cbE.exit" ]
  %15 = sub nsw i64 %indvars.iv93, %indvars.iv88
  %16 = trunc nsw i64 %15 to i32
  %_0.sroa.0.0.i = call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %16, i1 false)
  %len.i39 = load i64, ptr %5, align 8, !alias.scope !1685, !noundef !15
  %_4.i.i40 = icmp ugt i64 %len.i39, %indvars.iv93
  br i1 %_4.i.i40, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc845a05bc7bd203cE.exit", label %panic.i.i47.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc845a05bc7bd203cE.exit": ; preds = %bb12
  %_6.i42 = load ptr, ptr %6, align 8, !alias.scope !1685, !nonnull !15, !noundef !15
  %_0.i.i43 = getelementptr inbounds nuw %"alloc::vec::Vec<i32>", ptr %_6.i42, i64 %indvars.iv93
  %17 = getelementptr inbounds nuw i8, ptr %_0.i.i43, i64 16
  %len.i45 = load i64, ptr %17, align 8, !alias.scope !1688, !noundef !15
  %_4.i.i46 = icmp ugt i64 %len.i45, %indvars.iv88
  br i1 %_4.i.i46, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h73dab7201388e7cbE.exit", label %panic.i.i47.invoke

panic.i.i47.invoke.loopexit:                      ; preds = %bb25
  %umin.le = call i64 @llvm.umin.i64(i64 %len.i26, i64 %11)
  br label %panic.i.i47.invoke

panic.i.i47.invoke:                               ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc845a05bc7bd203cE.exit", %bb12, %bb23.preheader, %panic.i.i47.invoke.loopexit
  %18 = phi i64 [ %umin.le, %panic.i.i47.invoke.loopexit ], [ %indvars.iv106, %bb23.preheader ], [ %indvars.iv88, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc845a05bc7bd203cE.exit" ], [ %indvars.iv93, %bb12 ]
  %19 = phi i64 [ %len.i26, %panic.i.i47.invoke.loopexit ], [ %len.i, %bb23.preheader ], [ %len.i45, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc845a05bc7bd203cE.exit" ], [ %len.i39, %bb12 ]
  %20 = phi ptr [ @alloc_e863ea49af8e4fc7fb8ec6db4b775443, %panic.i.i47.invoke.loopexit ], [ @alloc_1e5f4e5df4528f6bb4ac49f15b0987a0, %bb23.preheader ], [ @alloc_df7142f0d48c095c8f3e93fc36af732f, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc845a05bc7bd203cE.exit" ], [ @alloc_e11e5bead5643a05eaf6cfcadf2f29da, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %18, i64 noundef range(i64 0, 2305843009213693952) %19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %20) #27
          to label %panic.i.i47.cont unwind label %cleanup

panic.i.i47.cont:                                 ; preds = %panic.i.i47.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h73dab7201388e7cbE.exit": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hc845a05bc7bd203cE.exit"
  %21 = getelementptr inbounds nuw i8, ptr %_0.i.i43, i64 8
  %_6.i48 = load ptr, ptr %21, align 8, !alias.scope !1688, !nonnull !15, !noundef !15
  %_0.i.i49 = getelementptr inbounds nuw i32, ptr %_6.i48, i64 %indvars.iv88
  store i32 %_0.sroa.0.0.i, ptr %_0.i.i49, align 4
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond.not, label %bb4.loopexit, label %bb12

terminate:                                        ; preds = %cleanup
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb31:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}
