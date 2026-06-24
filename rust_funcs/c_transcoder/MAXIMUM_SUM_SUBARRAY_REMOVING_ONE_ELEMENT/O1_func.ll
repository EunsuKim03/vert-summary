define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i26 = alloca [24 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %bw = alloca [24 x i8], align 8
  %fw = alloca [24 x i8], align 8
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fw)
  %_4 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %fw, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %fw, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %fw, i64 16
  store i64 %_4, ptr %5, align 8, !alias.scope !1644
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i26), !noalias !1651
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i26, i64 noundef %_4, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit
  %_17.i.i27 = load i64, ptr %_16.i.i26, align 8, !range !1031, !noalias !1651, !noundef !37
  %6 = trunc nuw i64 %_17.i.i27 to i1
  %7 = getelementptr inbounds nuw i8, ptr %_16.i.i26, i64 8
  %err.0.i.i31 = load i64, ptr %7, align 8, !range !1032, !noalias !1651, !noundef !37
  %8 = getelementptr inbounds nuw i8, ptr %_16.i.i26, i64 16
  br i1 %6, label %bb14.i.i30, label %_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit34, !prof !1033

bb14.i.i30:                                       ; preds = %.noexc
  %err.1.i.i32 = load i64, ptr %8, align 8, !noalias !1651
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i31, i64 %err.1.i.i32) #26
          to label %.noexc33 unwind label %cleanup

.noexc33:                                         ; preds = %bb14.i.i30
  unreachable

_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit34: ; preds = %.noexc
  %res.1.i.i29 = load ptr, ptr %8, align 8, !noalias !1651, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i26), !noalias !1651
  store i64 %err.0.i.i31, ptr %bw, align 8, !alias.scope !1651
  %9 = getelementptr inbounds nuw i8, ptr %bw, i64 8
  store ptr %res.1.i.i29, ptr %9, align 8, !alias.scope !1651
  %10 = getelementptr inbounds nuw i8, ptr %bw, i64 16
  store i64 %_4, ptr %10, align 8, !alias.scope !1651
  %len.i = load i64, ptr %5, align 8, !alias.scope !1652, !noalias !1655, !noundef !37
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i83.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit"

bb39:                                             ; preds = %cleanup3, %cleanup
  %.pn = phi { ptr, i32 } [ %11, %cleanup ], [ %13, %cleanup3 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %fw, i64 noundef 4, i64 noundef 4)
          to label %bb40 unwind label %terminate

cleanup:                                          ; preds = %bb32, %bb14.i.i30, %_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb39

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit": ; preds = %_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit34
  %12 = load i32, ptr %arr, align 8, !noundef !37
  %_6.i = load ptr, ptr %4, align 8, !alias.scope !1652, !noalias !1655, !nonnull !37, !noundef !37
  store i32 %12, ptr %_6.i, align 4
  %_0.i.i.i103 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i103, label %bb10, label %bb9

cleanup3:                                         ; preds = %panic8.invoke, %panic.i.i83.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %bw, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %terminate

bb9:                                              ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit87", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit"
  %max_so_far.sroa.0.0.lcssa = phi i32 [ %12, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit" ], [ %x.y.i80, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit87" ]
  %_25 = add nsw i64 %_4, -1
  %_26 = icmp ult i64 %_25, 2
  br i1 %_26, label %bb15, label %panic8.invoke

bb15:                                             ; preds = %bb9
  %len.i40 = load i64, ptr %10, align 8, !alias.scope !1657, !noalias !1660, !noundef !37
  %_4.i.i41 = icmp samesign ult i64 %_25, %len.i40
  br i1 %_4.i.i41, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit45", label %panic.i.i83.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit45": ; preds = %bb15
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_25
  %_24 = load i32, ptr %14, align 4, !noundef !37
  %_6.i43 = load ptr, ptr %9, align 8, !alias.scope !1657, !noalias !1660, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i43, i64 %_25
  store i32 %_24, ptr %_0.i.i, align 4
  %_0.i.i.i.i.not.not110 = icmp eq i64 %_25, 0
  br i1 %_0.i.i.i.i.not.not110, label %bb32, label %bb21.preheader

bb21.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit45"
  %iter1.sroa.4.1112 = add nsw i64 %_4, -2
  %_0.i1.i.i.i111 = add nsw i64 %_4, -2
  br label %bb21

bb21:                                             ; preds = %bb21.preheader, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78"
  %iter1.sroa.4.1117 = phi i64 [ %iter1.sroa.4.1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78" ], [ %iter1.sroa.4.1112, %bb21.preheader ]
  %_0.i1.i.i.i116 = phi i64 [ %_0.i1.i.i.i, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78" ], [ %_0.i1.i.i.i111, %bb21.preheader ]
  %max_so_far.sroa.0.1115 = phi i32 [ %x.y.i71, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78" ], [ %max_so_far.sroa.0.0.lcssa, %bb21.preheader ]
  %cur_max.sroa.0.1114 = phi i32 [ %x.y.i70, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78" ], [ %max_so_far.sroa.0.0.lcssa, %bb21.preheader ]
  %iter1.sroa.4.0113 = phi i64 [ %iter1.sroa.4.1117, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78" ], [ %_25, %bb21.preheader ]
  %_39 = icmp ult i64 %iter1.sroa.4.0113, 3
  br i1 %_39, label %bb23, label %panic8.invoke

bb32:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit45"
  %max_so_far.sroa.0.1.lcssa = phi i32 [ %max_so_far.sroa.0.0.lcssa, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit45" ], [ %x.y.i71, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78" ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %bw, i64 noundef 4, i64 noundef 4)
          to label %bb36 unwind label %cleanup

bb36:                                             ; preds = %bb32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bw)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %fw, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fw)
  ret i32 %max_so_far.sroa.0.1.lcssa

bb23:                                             ; preds = %bb21
  %len.i72 = load i64, ptr %10, align 8, !alias.scope !1662, !noalias !1665, !noundef !37
  %_4.i.i73 = icmp samesign ult i64 %_0.i1.i.i.i116, %len.i72
  br i1 %_4.i.i73, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78", label %panic.i.i83.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit78": ; preds = %bb23
  %15 = getelementptr inbounds nuw i32, ptr %arr, i64 %_0.i1.i.i.i116
  %_38 = load i32, ptr %15, align 4, !noundef !37
  %_40 = add i32 %_38, %cur_max.sroa.0.1114
  %x.y.i70 = tail call noundef i32 @llvm.smax.i32(i32 %_38, i32 %_40)
  %x.y.i71 = tail call noundef i32 @llvm.smax.i32(i32 %max_so_far.sroa.0.1115, i32 %x.y.i70)
  %_6.i75 = load ptr, ptr %9, align 8, !alias.scope !1662, !noalias !1665, !nonnull !37, !noundef !37
  %_0.i.i76 = getelementptr inbounds nuw i32, ptr %_6.i75, i64 %_0.i1.i.i.i116
  store i32 %x.y.i70, ptr %_0.i.i76, align 4
  %_0.i.i.i.i.not.not = icmp eq i64 %iter1.sroa.4.1117, 0
  %_0.i1.i.i.i = add nsw i64 %iter1.sroa.4.1117, -1
  %iter1.sroa.4.1 = tail call i64 @llvm.usub.sat.i64(i64 %iter1.sroa.4.1117, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb32, label %bb21

bb10:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit"
  %len.i81 = load i64, ptr %5, align 8, !alias.scope !1667, !noalias !1670, !noundef !37
  %_4.i.i82 = icmp samesign ugt i64 %len.i81, 1
  br i1 %_4.i.i82, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit87", label %panic.i.i83.invoke

panic8.invoke:                                    ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit87", %bb21, %bb9
  %16 = phi i64 [ %_25, %bb9 ], [ %_0.i1.i.i.i116, %bb21 ], [ 2, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit87" ]
  %17 = phi ptr [ @alloc_c8b6938b2664bfe7f29701e9828cca4f, %bb9 ], [ @alloc_e175502f438f7f9901862b6ae3985e81, %bb21 ], [ @alloc_735b14aff704636fdb9148ed047c609b, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit87" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %16, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #26
          to label %panic8.cont unwind label %cleanup3

panic8.cont:                                      ; preds = %panic8.invoke
  unreachable

panic.i.i83.invoke:                               ; preds = %bb10, %bb23, %_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit34, %bb15
  %18 = phi i64 [ %_25, %bb15 ], [ 0, %_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit34 ], [ %_0.i1.i.i.i116, %bb23 ], [ 1, %bb10 ]
  %19 = phi i64 [ %len.i40, %bb15 ], [ %len.i, %_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit34 ], [ %len.i72, %bb23 ], [ %len.i81, %bb10 ]
  %20 = phi ptr [ @alloc_f2d847fe1a2be999980fa7ef23bc85c6, %bb15 ], [ @alloc_f316587cd457ae6447420db737fdde00, %_ZN5alloc3vec9from_elem17h0a6f5b7ef6f5f0edE.exit34 ], [ @alloc_8b0cfbe4c82c8877974daeb90fda143e, %bb23 ], [ @alloc_6ee9dddbfafb43511fdfcbd0992f416a, %bb10 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 0, 2) %18, i64 noundef range(i64 0, 2305843009213693952) %19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %20) #25
          to label %panic.i.i83.cont unwind label %cleanup3

panic.i.i83.cont:                                 ; preds = %panic.i.i83.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3c4aa52d848bc3f8E.exit87": ; preds = %bb10
  %21 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_16 = load i32, ptr %21, align 4, !noundef !37
  %_18 = add i32 %_16, %12
  %x.y.i79 = tail call noundef i32 @llvm.smax.i32(i32 %_16, i32 %_18)
  %x.y.i80 = tail call noundef i32 @llvm.smax.i32(i32 %12, i32 %x.y.i79)
  %_6.i84 = load ptr, ptr %4, align 8, !alias.scope !1667, !noalias !1670, !nonnull !37, !noundef !37
  %_0.i.i85 = getelementptr inbounds nuw i8, ptr %_6.i84, i64 4
  store i32 %x.y.i79, ptr %_0.i.i85, align 4
  %_0.i.i.i.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i.not, label %bb9, label %panic8.invoke

terminate:                                        ; preds = %cleanup3, %bb39
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb40:                                             ; preds = %bb39
  resume { ptr, i32 } %.pn
}
