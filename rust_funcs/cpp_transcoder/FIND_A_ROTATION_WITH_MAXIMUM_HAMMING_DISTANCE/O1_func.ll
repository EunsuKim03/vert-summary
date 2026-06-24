define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %arr.0, i64 noundef range(i64 0, 2305843009213693952) %arr.1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %brr = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %brr)
  %_6 = shl i32 %n, 1
  %0 = or disjoint i32 %_6, 1
  %_4 = sext i32 %0 to i64
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
  br i1 %1, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %3, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %3, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %brr, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %brr, i64 8
  store ptr %res.1.i.i, ptr %4, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %brr, i64 16
  store i64 %_4, ptr %5, align 8, !alias.scope !1644
  %_9 = sext i32 %n to i64
  %cond = icmp eq i32 %n, 0
  br i1 %cond, label %bb18.preheader, label %bb6

cleanup:                                          ; preds = %panic7.invoke, %panic.i.i50.invoke
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %brr, i64 noundef 4, i64 noundef 4)
          to label %bb39 unwind label %terminate

bb6:                                              ; preds = %_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit54"
  %spec.select5579 = phi i64 [ %spec.select55, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit54" ], [ 1, %_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit ]
  %iter.sroa.0.078 = phi i64 [ %spec.select5579, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit54" ], [ 0, %_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit ]
  %_17 = icmp ult i64 %iter.sroa.0.078, %arr.1
  br i1 %_17, label %bb8, label %panic7.invoke

bb18.preheader:                                   ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit", %_ZN5alloc3vec9from_elem17h32ccf98f8eb2787aE.exit
  %_0.i.i.i2890 = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i2890, label %bb20.lr.ph, label %bb37

bb20.lr.ph:                                       ; preds = %bb18.preheader
  %len.i = load i64, ptr %5, align 8
  %_6.i = load ptr, ptr %4, align 8, !nonnull !37
  br label %bb20

bb13:                                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit54", %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit"
  %spec.select5783 = phi i64 [ %spec.select57, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit" ], [ 1, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit54" ]
  %iter1.sroa.0.082 = phi i64 [ %spec.select5783, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit" ], [ 0, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit54" ]
  %_28 = icmp ult i64 %iter1.sroa.0.082, %arr.1
  br i1 %_28, label %bb15, label %panic7.invoke

bb20:                                             ; preds = %bb20.lr.ph, %bb33
  %spec.select5995 = phi i64 [ 2, %bb20.lr.ph ], [ %spec.select59, %bb33 ]
  %max_ham.sroa.0.094 = phi i32 [ 0, %bb20.lr.ph ], [ %_0.sroa.0.0.i, %bb33 ]
  %iter2.sroa.0.093 = phi i64 [ 1, %bb20.lr.ph ], [ %spec.select5995, %bb33 ]
  %_42 = add i64 %iter2.sroa.0.093, %_9
  %_0.i.i.i3684 = icmp ult i64 %iter2.sroa.0.093, %_42
  br i1 %_0.i.i.i3684, label %bb25.preheader, label %bb26

bb25.preheader:                                   ; preds = %bb20
  %spec.select6186 = add nuw i64 %iter2.sroa.0.093, 1
  br label %bb25

bb37:                                             ; preds = %bb33, %bb26, %bb18.preheader
  %max_ham.sroa.0.1 = phi i32 [ 0, %bb18.preheader ], [ %_0.sroa.0.0.i, %bb33 ], [ %n, %bb26 ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %brr, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %brr)
  ret i32 %max_ham.sroa.0.1

bb25:                                             ; preds = %bb25.preheader, %bb28
  %spec.select6189 = phi i64 [ %spec.select61, %bb28 ], [ %spec.select6186, %bb25.preheader ]
  %curr_ham.sroa.0.088 = phi i32 [ %spec.select, %bb28 ], [ 0, %bb25.preheader ]
  %iter3.sroa.0.087 = phi i64 [ %spec.select6189, %bb28 ], [ %iter2.sroa.0.093, %bb25.preheader ]
  %k = sub i64 %iter3.sroa.0.087, %iter2.sroa.0.093
  %_4.i.i41 = icmp ult i64 %iter3.sroa.0.087, %len.i
  br i1 %_4.i.i41, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit", label %panic.i.i50.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit": ; preds = %bb25
  %_55 = icmp ult i64 %k, %arr.1
  br i1 %_55, label %bb28, label %panic7.invoke

bb26:                                             ; preds = %bb28, %bb20
  %curr_ham.sroa.0.0.lcssa = phi i32 [ 0, %bb20 ], [ %spec.select, %bb28 ]
  %_56 = icmp eq i32 %curr_ham.sroa.0.0.lcssa, %n
  br i1 %_56, label %bb37, label %bb33

bb33:                                             ; preds = %bb26
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %curr_ham.sroa.0.0.lcssa, i32 %max_ham.sroa.0.094)
  %_0.i.i.i28 = icmp ult i64 %spec.select5995, %_9
  %_0.i1.i.i31 = zext i1 %_0.i.i.i28 to i64
  %spec.select59 = add nuw i64 %spec.select5995, %_0.i1.i.i31
  br i1 %_0.i.i.i28, label %bb20, label %bb37

bb28:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit"
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %iter3.sroa.0.087
  %_50 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %7 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %k
  %_53 = load i32, ptr %7, align 4, !noundef !37
  %_49.not = icmp ne i32 %_50, %_53
  %8 = zext i1 %_49.not to i32
  %spec.select = add i32 %curr_ham.sroa.0.088, %8
  %_0.i.i.i36 = icmp ult i64 %spec.select6189, %_42
  %_0.i1.i.i39 = zext i1 %_0.i.i.i36 to i64
  %spec.select61 = add nuw i64 %spec.select6189, %_0.i1.i.i39
  br i1 %_0.i.i.i36, label %bb25, label %bb26

bb15:                                             ; preds = %bb13
  %_31 = add nsw i64 %iter1.sroa.0.082, %_9
  %len.i42 = load i64, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i43 = icmp ult i64 %_31, %len.i42
  br i1 %_4.i.i43, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit", label %panic.i.i50.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit": ; preds = %bb15
  %9 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %iter1.sroa.0.082
  %_26 = load i32, ptr %9, align 4, !noundef !37
  %_6.i45 = load ptr, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i46 = getelementptr inbounds nuw i32, ptr %_6.i45, i64 %_31
  store i32 %_26, ptr %_0.i.i46, align 4
  %_0.i.i.i20 = icmp ult i64 %spec.select5783, %_9
  %_0.i1.i.i23 = zext i1 %_0.i.i.i20 to i64
  %spec.select57 = add nuw i64 %spec.select5783, %_0.i1.i.i23
  br i1 %_0.i.i.i20, label %bb13, label %bb18.preheader

bb8:                                              ; preds = %bb6
  %len.i48 = load i64, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i49 = icmp ult i64 %iter.sroa.0.078, %len.i48
  br i1 %_4.i.i49, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit54", label %panic.i.i50.invoke

panic.i.i50.invoke:                               ; preds = %bb8, %bb15, %bb25
  %10 = phi i64 [ %iter3.sroa.0.087, %bb25 ], [ %_31, %bb15 ], [ %iter.sroa.0.078, %bb8 ]
  %11 = phi i64 [ %len.i, %bb25 ], [ %len.i42, %bb15 ], [ %len.i48, %bb8 ]
  %12 = phi ptr [ @alloc_7fc9389e7984de8e277fc364fc48bf1c, %bb25 ], [ @alloc_7355eb00d5e8fac351bf3ff76c1ceb71, %bb15 ], [ @alloc_fb14040e3f6c6995a6345b54a8ac6143, %bb8 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %10, i64 noundef range(i64 0, 2305843009213693952) %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #25
          to label %panic.i.i50.cont unwind label %cleanup

panic.i.i50.cont:                                 ; preds = %panic.i.i50.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17hd48539691cb02f44E.exit54": ; preds = %bb8
  %13 = getelementptr inbounds nuw i32, ptr %arr.0, i64 %iter.sroa.0.078
  %_15 = load i32, ptr %13, align 4, !noundef !37
  %_6.i51 = load ptr, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i52 = getelementptr inbounds nuw i32, ptr %_6.i51, i64 %iter.sroa.0.078
  store i32 %_15, ptr %_0.i.i52, align 4
  %_0.i.i.i = icmp ult i64 %spec.select5579, %_9
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select55 = add nuw i64 %spec.select5579, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb13

panic7.invoke:                                    ; preds = %bb6, %bb13, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit"
  %14 = phi i64 [ %k, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit" ], [ %iter1.sroa.0.082, %bb13 ], [ %iter.sroa.0.078, %bb6 ]
  %15 = phi ptr [ @alloc_2ef02cee9352d1f821538e610316e778, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h04117241cc840211E.exit" ], [ @alloc_3be35fd55d4c93b07c002f779121ba47, %bb13 ], [ @alloc_a78bb4f53a9170f41079207610e3f956, %bb6 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %14, i64 noundef %arr.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #26
          to label %panic7.cont unwind label %cleanup

panic7.cont:                                      ; preds = %panic7.invoke
  unreachable

terminate:                                        ; preds = %cleanup
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb39:                                             ; preds = %cleanup
  resume { ptr, i32 } %6
}
