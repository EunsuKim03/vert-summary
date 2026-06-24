define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_27 = alloca [16 x i8], align 8
  %a = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1669, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1678
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_0.i, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

bb40:                                             ; preds = %cleanup2, %cleanup
  %.pn = phi { ptr, i32 } [ %1, %cleanup ], [ %10, %cleanup2 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fdd6ecb3f0ebda0E"(ptr noalias noundef align 8 dereferenceable(24) %s) #31
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit", %bb14.i.i, %start
  %1 = landingpad { ptr, i32 }
          cleanup
  br label %bb40

.noexc:                                           ; preds = %start
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1062, !noalias !1678, !noundef !15
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1063, !noalias !1678, !noundef !15
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h7a7e93d078be4abeE.exit, !prof !1064

bb14.i.i:                                         ; preds = %.noexc
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1678
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #29
          to label %.noexc7 unwind label %cleanup

.noexc7:                                          ; preds = %bb14.i.i
  unreachable

_ZN5alloc3vec9from_elem17h7a7e93d078be4abeE.exit: ; preds = %.noexc
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1678, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1678
  store i64 %err.0.i.i, ptr %a, align 8, !alias.scope !1678
  %5 = getelementptr inbounds nuw i8, ptr %a, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1678
  %6 = getelementptr inbounds nuw i8, ptr %a, i64 16
  store i64 %_0.i, ptr %6, align 8, !alias.scope !1678
  %_0.i.i.i.i.not.not77 = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i.i.not.not77, label %bb9, label %bb11.preheader.lr.ph

bb11.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17h7a7e93d078be4abeE.exit
  %iter.sroa.4.179 = add nsw i64 %_0.i, -1
  %7 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_27, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  br label %bb11.preheader

cleanup2:                                         ; preds = %panic.i.i39.invoke
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
          to label %bb40 unwind label %terminate

bb5.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit.peel", %bb35, %bb11.preheader
  %_0.i.i.i.i.not.not = icmp eq i64 %iter.sroa.4.181, 0
  %iter.sroa.4.1 = tail call i64 @llvm.usub.sat.i64(i64 %iter.sroa.4.181, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb9, label %bb11.preheader

bb11.preheader:                                   ; preds = %bb11.preheader.lr.ph, %bb5.loopexit
  %iter.sroa.4.181 = phi i64 [ %iter.sroa.4.179, %bb11.preheader.lr.ph ], [ %iter.sroa.4.1, %bb5.loopexit ]
  %_0.i1.i.i.i80.in = phi i64 [ %_0.i, %bb11.preheader.lr.ph ], [ %iter.sroa.4.181, %bb5.loopexit ]
  %_0.i1.i.i.i80 = add i64 %_0.i1.i.i.i80.in, -1
  %_0.i.i.i71 = icmp ult i64 %_0.i1.i.i.i80, %_0.i
  br i1 %_0.i.i.i71, label %bb15.peel, label %bb5.loopexit

bb15.peel:                                        ; preds = %bb11.preheader
  %len.i14.peel = load i64, ptr %6, align 8, !alias.scope !1679, !noalias !1682, !noundef !15
  %_4.i.i15.peel = icmp ult i64 %_0.i1.i.i.i80, %len.i14.peel
  br i1 %_4.i.i15.peel, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit.peel", label %panic.i.i39.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit.peel": ; preds = %bb15.peel
  %_6.i17.peel = load ptr, ptr %5, align 8, !alias.scope !1679, !noalias !1682, !nonnull !15, !noundef !15
  %_0.i.i18.peel = getelementptr inbounds nuw i32, ptr %_6.i17.peel, i64 %_0.i1.i.i.i80
  store i32 1, ptr %_0.i.i18.peel, align 4
  %_0.i.i.i.peel = icmp ult i64 %_0.i1.i.i.i80.in, %_0.i
  %_0.i1.i.i.peel = zext i1 %_0.i.i.i.peel to i64
  %spec.select.peel = add nuw i64 %_0.i1.i.i.i80.in, %_0.i1.i.i.peel
  br i1 %_0.i.i.i.peel, label %bb13, label %bb5.loopexit

bb9:                                              ; preds = %bb5.loopexit, %_ZN5alloc3vec9from_elem17h7a7e93d078be4abeE.exit
  %_56 = add nsw i64 %_0.i, -1
  %len.i = load i64, ptr %6, align 8, !alias.scope !1684, !noalias !1687, !noundef !15
  %_4.i.i = icmp ult i64 %_56, %len.i
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit", label %panic.i.i39.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit": ; preds = %bb9
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !1684, !noalias !1687, !nonnull !15, !noundef !15
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_56
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !15
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
          to label %bb37 unwind label %cleanup

bb37:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fdd6ecb3f0ebda0E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb37
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %bb40, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %11, %cleanup.i.i ], [ %.pn, %bb40 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fdd6ecb3f0ebda0E.exit": ; preds = %bb37
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %_0

bb13:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit.peel", %bb35
  %spec.select76 = phi i64 [ %spec.select, %bb35 ], [ %spec.select.peel, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit.peel" ]
  %back_up.sroa.0.075 = phi i32 [ %back_up.sroa.0.1, %bb35 ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit.peel" ]
  %iter1.sroa.0.074 = phi i64 [ %spec.select76, %bb35 ], [ %_0.i1.i.i.i80.in, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit.peel" ]
  %_20 = icmp eq i64 %iter1.sroa.0.074, %_0.i1.i.i.i80
  br i1 %_20, label %bb15, label %bb17

bb17:                                             ; preds = %bb13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_27)
  %_6.i.i = load ptr, ptr %7, align 8, !alias.scope !1689, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1689, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_27, align 8
  store ptr %_7.i, ptr %8, align 8
; call core::iter::traits::iterator::Iterator::nth
  %13 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3ceba1e92de1b884E(ptr noalias noundef align 8 dereferenceable(16) %_27, i64 noundef %_0.i1.i.i.i80)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_33)
  store ptr %_6.i.i, ptr %_33, align 8
  store ptr %_7.i, ptr %9, align 8
; call core::iter::traits::iterator::Iterator::nth
  %14 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3ceba1e92de1b884E(ptr noalias noundef align 8 dereferenceable(16) %_33, i64 noundef %iter1.sroa.0.074)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %14, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_27)
  %len.i30 = load i64, ptr %6, align 8, !noalias !15, !noundef !15
  %_4.i.i31 = icmp ult i64 %iter1.sroa.0.074, %len.i30
  br i1 %_0.sroa.0.0.shrunk.i, label %bb25, label %bb28

bb15:                                             ; preds = %bb13
  %len.i14 = load i64, ptr %6, align 8, !alias.scope !1679, !noalias !1682, !noundef !15
  %_4.i.i15 = icmp ult i64 %iter1.sroa.0.074, %len.i14
  br i1 %_4.i.i15, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit", label %panic.i.i39.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit": ; preds = %bb15
  %_6.i17 = load ptr, ptr %5, align 8, !alias.scope !1679, !noalias !1682, !nonnull !15, !noundef !15
  %_0.i.i18 = getelementptr inbounds nuw i32, ptr %_6.i17, i64 %iter1.sroa.0.074
  store i32 1, ptr %_0.i.i18, align 4
  br label %bb35

bb28:                                             ; preds = %bb17
  br i1 %_4.i.i31, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit29", label %panic.i.i39.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit29": ; preds = %bb28
  %_48 = add i64 %iter1.sroa.0.074, -1
  %_4.i.i38 = icmp ult i64 %_48, %len.i30
  br i1 %_4.i.i38, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit43", label %panic.i.i39.invoke

bb25:                                             ; preds = %bb17
  br i1 %_4.i.i31, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit36", label %panic.i.i39.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit36": ; preds = %bb25
  %_6.i33 = load ptr, ptr %5, align 8, !alias.scope !1694, !noalias !1697, !nonnull !15, !noundef !15
  %_0.i.i34 = getelementptr inbounds nuw i32, ptr %_6.i33, i64 %iter1.sroa.0.074
  %temp = load i32, ptr %_0.i.i34, align 4, !noundef !15
  %15 = add i32 %back_up.sroa.0.075, 2
  store i32 %15, ptr %_0.i.i34, align 4
  br label %bb35

panic.i.i39.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit29", %bb25, %bb28, %bb15, %bb15.peel, %bb9
  %16 = phi i64 [ %_56, %bb9 ], [ %iter1.sroa.0.074, %bb15 ], [ %iter1.sroa.0.074, %bb28 ], [ %iter1.sroa.0.074, %bb25 ], [ %_48, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit29" ], [ %_0.i1.i.i.i80, %bb15.peel ]
  %17 = phi i64 [ %len.i, %bb9 ], [ %len.i14, %bb15 ], [ %len.i30, %bb28 ], [ %len.i30, %bb25 ], [ %len.i30, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit29" ], [ %len.i14.peel, %bb15.peel ]
  %18 = phi ptr [ @alloc_2c66dce60e0a21df08c3fb555b23b154, %bb9 ], [ @alloc_fbc73e4db9f0246799f40da116f9295e, %bb15 ], [ @alloc_c2de0ba88ff554d3adb36f4927883a29, %bb28 ], [ @alloc_8085eb300284139bdaab5ef616ba542a, %bb25 ], [ @alloc_35c5e9b812b73477d57228355f68ef6c, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit29" ], [ @alloc_fbc73e4db9f0246799f40da116f9295e, %bb15.peel ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %16, i64 noundef range(i64 0, 2305843009213693952) %17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %18) #28
          to label %panic.i.i39.cont unwind label %cleanup2

panic.i.i39.cont:                                 ; preds = %panic.i.i39.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit43": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit29"
  %_6.i26 = load ptr, ptr %5, align 8, !alias.scope !1699, !noalias !1702, !nonnull !15, !noundef !15
  %_0.i.i27 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %iter1.sroa.0.074
  %19 = load i32, ptr %_0.i.i27, align 4, !noundef !15
  %_0.i.i41 = getelementptr inbounds nuw i32, ptr %_6.i26, i64 %_48
  %_45 = load i32, ptr %_0.i.i41, align 4, !noundef !15
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %19, i32 %_45)
  store i32 %_0.sroa.0.0.i, ptr %_0.i.i27, align 4
  br label %bb35

bb35:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit43", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit36", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit"
  %back_up.sroa.0.1 = phi i32 [ %back_up.sroa.0.075, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hbaf11ea0e1cd69dcE.exit" ], [ %temp, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit36" ], [ %19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h3b8e08f56f529132E.exit43" ]
  %_0.i.i.i = icmp ult i64 %spec.select76, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select76, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb13, label %bb5.loopexit, !llvm.loop !1704

terminate:                                        ; preds = %cleanup2, %bb40
  %20 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
