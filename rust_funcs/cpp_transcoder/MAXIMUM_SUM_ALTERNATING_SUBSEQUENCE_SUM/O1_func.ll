define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i19 = alloca [24 x i8], align 8
  %_16.i.i = alloca [24 x i8], align 8
  %inc = alloca [24 x i8], align 8
  %dec = alloca [24 x i8], align 8
  %arr.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %arr.sroa.5.0.extract.shift = lshr i64 %0, 32
  %arr.sroa.5.0.extract.trunc = trunc nuw i64 %arr.sroa.5.0.extract.shift to i32
  %_3 = icmp eq i32 %n, 1
  br i1 %_3, label %bb50, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dec)
  %_5 = sext i32 %n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %1 = trunc nuw i64 %_17.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1644, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit, !prof !1033

bb14.i.i:                                         ; preds = %bb2
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit: ; preds = %bb2
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dec, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %dec, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %dec, i64 16
  store i64 %_5, ptr %5, align 8, !alias.scope !1644
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inc)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i19), !noalias !1651
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i19, i64 noundef %_5, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit
  %_17.i.i20 = load i64, ptr %_16.i.i19, align 8, !range !1031, !noalias !1651, !noundef !37
  %6 = trunc nuw i64 %_17.i.i20 to i1
  %7 = getelementptr inbounds nuw i8, ptr %_16.i.i19, i64 8
  %err.0.i.i24 = load i64, ptr %7, align 8, !range !1032, !noalias !1651, !noundef !37
  %8 = getelementptr inbounds nuw i8, ptr %_16.i.i19, i64 16
  br i1 %6, label %bb14.i.i23, label %_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit27, !prof !1033

bb14.i.i23:                                       ; preds = %.noexc
  %err.1.i.i25 = load i64, ptr %8, align 8, !noalias !1651
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i24, i64 %err.1.i.i25) #26
          to label %.noexc26 unwind label %cleanup

.noexc26:                                         ; preds = %bb14.i.i23
  unreachable

_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit27: ; preds = %.noexc
  %res.1.i.i22 = load ptr, ptr %8, align 8, !noalias !1651, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i19), !noalias !1651
  store i64 %err.0.i.i24, ptr %inc, align 8, !alias.scope !1651
  %9 = getelementptr inbounds nuw i8, ptr %inc, i64 8
  store ptr %res.1.i.i22, ptr %9, align 8, !alias.scope !1651
  %10 = getelementptr inbounds nuw i8, ptr %inc, i64 16
  store i64 %_5, ptr %10, align 8, !alias.scope !1651
  %len.i = load i64, ptr %5, align 8, !alias.scope !1652, !noalias !1655, !noundef !37
  %_4.i.i.not = icmp eq i64 %len.i, 0
  br i1 %_4.i.i.not, label %panic.i.i101.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit"

bb52:                                             ; preds = %cleanup3, %cleanup
  %.pn = phi { ptr, i32 } [ %11, %cleanup ], [ %12, %cleanup3 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dec, i64 noundef 4, i64 noundef 4)
          to label %bb53 unwind label %terminate

cleanup:                                          ; preds = %bb43, %bb14.i.i23, %_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb52

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit": ; preds = %_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit27
  %_6.i = load ptr, ptr %4, align 8, !alias.scope !1652, !noalias !1655, !nonnull !37, !noundef !37
  store i32 %arr.sroa.0.0.extract.trunc, ptr %_6.i, align 4
  %len.i32 = load i64, ptr %10, align 8, !alias.scope !1657, !noalias !1660, !noundef !37
  %_4.i.i33.not = icmp eq i64 %len.i32, 0
  br i1 %_4.i.i33.not, label %panic.i.i101.invoke, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit37"

cleanup3:                                         ; preds = %panic.i.i101.invoke, %bb14.preheader.1
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %inc, i64 noundef 4, i64 noundef 4)
          to label %bb52 unwind label %terminate

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit37": ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit"
  %_6.i35 = load ptr, ptr %9, align 8, !alias.scope !1657, !noalias !1660, !nonnull !37, !noundef !37
  store i32 %arr.sroa.0.0.extract.trunc, ptr %_6.i35, align 4
  %cond = icmp eq i32 %n, 0
  br i1 %cond, label %bb43, label %bb19

bb42.lr.ph:                                       ; preds = %bb38
  %len.i47 = load i64, ptr %10, align 8, !alias.scope !1662, !noalias !1665, !noundef !37
  %len.i54 = load i64, ptr %5, align 8
  %_6.i50 = load ptr, ptr %9, align 8, !nonnull !37
  %_6.i57 = load ptr, ptr %4, align 8, !nonnull !37
  br label %bb42

bb42:                                             ; preds = %bb42.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit60"
  %spec.select115157 = phi i64 [ 1, %bb42.lr.ph ], [ %spec.select115, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit60" ]
  %result.sroa.0.0156 = phi i32 [ -2147483648, %bb42.lr.ph ], [ %_0.sroa.0.0.i61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit60" ]
  %iter2.sroa.0.0155 = phi i64 [ 0, %bb42.lr.ph ], [ %spec.select115157, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit60" ]
  %_4.i.i48 = icmp ult i64 %iter2.sroa.0.0155, %len.i47
  br i1 %_4.i.i48, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit", label %panic.i.i101.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit": ; preds = %bb42
  %_4.i.i55 = icmp ult i64 %iter2.sroa.0.0155, %len.i54
  br i1 %_4.i.i55, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit60", label %panic.i.i101.invoke

bb43:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit60", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit37"
  %result.sroa.0.0.lcssa = phi i32 [ -2147483648, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit37" ], [ %_0.sroa.0.0.i61, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit60" ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %inc, i64 noundef 4, i64 noundef 4)
          to label %bb48 unwind label %cleanup

bb48:                                             ; preds = %bb43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inc)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dec, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dec)
  br label %bb50

bb50:                                             ; preds = %start, %bb48
  %result.sroa.0.1 = phi i32 [ %result.sroa.0.0.lcssa, %bb48 ], [ %arr.sroa.0.0.extract.trunc, %start ]
  ret i32 %result.sroa.0.1

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit60": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit"
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i50, i64 %iter2.sroa.0.0155
  %_63 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_63, i32 %result.sroa.0.0156)
  %_0.i.i58 = getelementptr inbounds nuw i32, ptr %_6.i57, i64 %iter2.sroa.0.0155
  %_67 = load i32, ptr %_0.i.i58, align 4, !noundef !37
  %_0.sroa.0.0.i61 = tail call noundef i32 @llvm.smax.i32(i32 %_67, i32 %_0.sroa.0.0.i)
  %_0.i.i.i42 = icmp ult i64 %spec.select115157, %_5
  %_0.i1.i.i45 = zext i1 %_0.i.i.i42 to i64
  %spec.select115 = add nuw i64 %spec.select115157, %_0.i1.i.i45
  br i1 %_0.i.i.i42, label %bb42, label %bb43

unreachable:                                      ; preds = %bb14.preheader.1
  unreachable

bb19:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit37"
  %_27 = icmp sgt i32 %arr.sroa.0.0.extract.trunc, %arr.sroa.5.0.extract.trunc
  br i1 %_27, label %bb20, label %bb38

bb20:                                             ; preds = %bb19
  %len.i70 = load i64, ptr %5, align 8, !alias.scope !1667, !noalias !1670, !noundef !37
  %_4.i.i71 = icmp ugt i64 %len.i70, 1
  br i1 %_4.i.i71, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit76", label %panic.i.i101.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit76": ; preds = %bb20
  %len.i99 = load i64, ptr %10, align 8, !alias.scope !1672, !noalias !1675, !noundef !37
  %_4.i.i100.not = icmp eq i64 %len.i99, 0
  br i1 %_4.i.i100.not, label %panic.i.i101.invoke, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit105"

bb38:                                             ; preds = %bb19, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit105"
  %_0.i.i.i = icmp ugt i32 %n, 2
  br i1 %_0.i.i.i, label %bb14.preheader.1, label %bb42.lr.ph

bb14.preheader.1:                                 ; preds = %bb38
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c609a9a9181cb83dbe241140f04b8756) #26
          to label %unreachable unwind label %cleanup3

panic.i.i101.invoke:                              ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit76", %bb20, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit", %bb42, %_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit27, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit"
  %13 = phi i64 [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit" ], [ 0, %_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit27 ], [ %iter2.sroa.0.0155, %bb42 ], [ %iter2.sroa.0.0155, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit" ], [ 0, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit76" ], [ 1, %bb20 ]
  %14 = phi i64 [ %len.i32, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit" ], [ %len.i, %_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit27 ], [ %len.i54, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit" ], [ %len.i47, %bb42 ], [ %len.i99, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit76" ], [ %len.i70, %bb20 ]
  %15 = phi ptr [ @alloc_0dee6530704d9b1eb982d0db393875ef, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h1e02dcc7dc35c42dE.exit" ], [ @alloc_f927c41fe8f8b3dab4b1762542c56bc2, %_ZN5alloc3vec9from_elem17h948f5cbe7c99a47aE.exit27 ], [ @alloc_54ad0db3f1e2695f9368c3e3f77196fb, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit" ], [ @alloc_9f45ea392b80732264ae8d129a5a2bb5, %bb42 ], [ @alloc_ea293eebf3043b17fffe9d6d48a077e7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit76" ], [ @alloc_6f9ffa4066e8c29eb59f0889f7b4e414, %bb20 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %13, i64 noundef range(i64 0, 2305843009213693952) %14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #25
          to label %panic.i.i101.cont unwind label %cleanup3

panic.i.i101.cont:                                ; preds = %panic.i.i101.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit105": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hc861ac931d1fac94E.exit76"
  %_6.i73 = load ptr, ptr %4, align 8, !alias.scope !1667, !noalias !1670, !nonnull !37, !noundef !37
  %_0.i.i74 = getelementptr inbounds nuw i8, ptr %_6.i73, i64 4
  %_33 = load i32, ptr %_0.i.i74, align 4, !noundef !37
  %_6.i102 = load ptr, ptr %9, align 8, !alias.scope !1672, !noalias !1675, !nonnull !37, !noundef !37
  %_37 = load i32, ptr %_6.i102, align 4, !noundef !37
  %_36 = add i32 %_37, %arr.sroa.5.0.extract.trunc
  %_0.sroa.0.0.i106 = tail call noundef i32 @llvm.smax.i32(i32 %_36, i32 %_33)
  store i32 %_0.sroa.0.0.i106, ptr %_0.i.i74, align 4
  br label %bb38

terminate:                                        ; preds = %cleanup3, %bb52
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb53:                                             ; preds = %bb52
  resume { ptr, i32 } %.pn
}
