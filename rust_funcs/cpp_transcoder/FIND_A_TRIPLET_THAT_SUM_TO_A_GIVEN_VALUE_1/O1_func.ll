define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 4 captures(none) %a.0, i64 noundef range(i64 0, 2305843009213693952) %a.1, i32 noundef %sum) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i = alloca [0 x i8], align 1
  %_4.i.i.i = alloca [24 x i8], align 8
  %a = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2611
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %a.1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2611
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1627, !noalias !2611, !noundef !37
  %0 = trunc nuw i64 %_5.i.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %1, align 8, !range !1628, !noalias !2611, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %0, label %bb3.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8f4bdb5267005f92E.exit", !prof !1629

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %2, align 8, !noalias !2611
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #25, !noalias !2611
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8f4bdb5267005f92E.exit": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %2, align 8, !noalias !2611, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp samesign ule i64 %a.1, %err.0.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2611
  store i64 %err.0.i.i.i, ptr %a, align 8, !alias.scope !2614, !noalias !2615
  %3 = getelementptr inbounds nuw i8, ptr %a, i64 8
  store ptr %this.1.i.i.i, ptr %3, align 8, !alias.scope !2614, !noalias !2615
  %4 = getelementptr inbounds nuw i8, ptr %a, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !2614, !noalias !2615
  %5 = shl nuw nsw i64 %a.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %this.1.i.i.i, ptr nonnull readonly align 4 %a.0, i64 %5, i1 false), !noalias !2614
  store i64 %a.1, ptr %4, align 8, !alias.scope !2614, !noalias !2615
  %_4.i.i = load ptr, ptr %3, align 8, !alias.scope !2616, !nonnull !37, !noundef !37
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2621
  %b.i.i = icmp samesign ult i64 %a.1, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hc42c1b1bb0caf1bdE.exit", label %bb7.i.i, !prof !2624

cleanup:                                          ; preds = %panic.i.i23.invoke, %bb10.i.i
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
          to label %bb30 unwind label %terminate

bb7.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8f4bdb5267005f92E.exit"
  %b1.i.i = icmp samesign ult i64 %a.1, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2624

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h8952dd31a0d5396eE(ptr noalias noundef nonnull align 4 %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) %a.1, ptr noalias noundef nonnull align 1 %is_less.i.i)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hc42c1b1bb0caf1bdE.exit" unwind label %cleanup

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17haaeb77db2eaf2fe5E(ptr noalias noundef nonnull align 4 %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) %a.1, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hc42c1b1bb0caf1bdE.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hc42c1b1bb0caf1bdE.exit": ; preds = %bb10.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8f4bdb5267005f92E.exit", %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i), !noalias !2621
  %_0.i = load i64, ptr %4, align 8, !alias.scope !2625, !noundef !37
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  call void @llvm.assume(i1 %_2.i)
  %_14 = add nsw i64 %_0.i, -2
  %_0.i.i.i66.not = icmp eq i64 %_14, 0
  br i1 %_0.i.i.i66.not, label %bb28, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hc42c1b1bb0caf1bdE.exit"
  %7 = add nsw i64 %_0.i, -1
  %_6.i = load ptr, ptr %3, align 8, !nonnull !37
  br label %bb12.preheader

bb7.loopexit:                                     ; preds = %bb18, %bb12.preheader
  %r.sroa.0.1.lcssa = phi i64 [ %r.sroa.0.069, %bb12.preheader ], [ %r.sroa.0.2, %bb18 ]
  %l.sroa.0.1.lcssa = phi i64 [ %l.sroa.0.070, %bb12.preheader ], [ %l.sroa.0.2, %bb18 ]
  %_0.i.i.i = icmp ult i64 %spec.select71, %_14
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select71, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb12.preheader, label %bb28

bb12.preheader:                                   ; preds = %bb12.preheader.lr.ph, %bb7.loopexit
  %spec.select71 = phi i64 [ 1, %bb12.preheader.lr.ph ], [ %spec.select, %bb7.loopexit ]
  %l.sroa.0.070 = phi i64 [ 0, %bb12.preheader.lr.ph ], [ %l.sroa.0.1.lcssa, %bb7.loopexit ]
  %r.sroa.0.069 = phi i64 [ %7, %bb12.preheader.lr.ph ], [ %r.sroa.0.1.lcssa, %bb7.loopexit ]
  %iter.sroa.0.068 = phi i64 [ 0, %bb12.preheader.lr.ph ], [ %spec.select71, %bb7.loopexit ]
  %_2262 = icmp ult i64 %l.sroa.0.070, %r.sroa.0.069
  br i1 %_2262, label %bb13.lr.ph, label %bb7.loopexit

bb13.lr.ph:                                       ; preds = %bb12.preheader
  %_4.i.i12 = icmp ult i64 %iter.sroa.0.068, %_0.i
  br i1 %_4.i.i12, label %bb13.lr.ph.split, label %panic.i.i23.invoke

bb13.lr.ph.split:                                 ; preds = %bb13.lr.ph
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %iter.sroa.0.068
  %_28 = load i32, ptr %_0.i.i, align 4, !noundef !37
  br label %bb13

bb28:                                             ; preds = %bb7.loopexit, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit27", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hc42c1b1bb0caf1bdE.exit"
  %_0.sroa.0.0 = phi i32 [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17hc42c1b1bb0caf1bdE.exit" ], [ 1, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit27" ], [ 0, %bb7.loopexit ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %a, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a)
  ret i32 %_0.sroa.0.0

bb13:                                             ; preds = %bb13.lr.ph.split, %bb18
  %l.sroa.0.164 = phi i64 [ %l.sroa.0.070, %bb13.lr.ph.split ], [ %l.sroa.0.2, %bb18 ]
  %r.sroa.0.163 = phi i64 [ %r.sroa.0.069, %bb13.lr.ph.split ], [ %r.sroa.0.2, %bb18 ]
  %_4.i.i15 = icmp ult i64 %l.sroa.0.164, %_0.i
  br i1 %_4.i.i15, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit20", label %panic.i.i23.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit20": ; preds = %bb13
  %_4.i.i22 = icmp ult i64 %r.sroa.0.163, %_0.i
  br i1 %_4.i.i22, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit27", label %panic.i.i23.invoke

panic.i.i23.invoke:                               ; preds = %bb13.lr.ph, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit20", %bb13
  %8 = phi i64 [ %r.sroa.0.163, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit20" ], [ %l.sroa.0.164, %bb13 ], [ %iter.sroa.0.068, %bb13.lr.ph ]
  %9 = phi ptr [ @alloc_6fc237616041e22d6261a134a0b03d73, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit20" ], [ @alloc_8b177e96656587c18cce724a38378d90, %bb13 ], [ @alloc_c9431082309d99eefb593527d435baa1, %bb13.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %8, i64 noundef range(i64 0, 2305843009213693952) %_0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #24
          to label %panic.i.i23.cont unwind label %cleanup

panic.i.i23.cont:                                 ; preds = %panic.i.i23.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit27": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit20"
  %_0.i.i18 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %l.sroa.0.164
  %_31 = load i32, ptr %_0.i.i18, align 4, !noundef !37
  %_0.i.i25 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %r.sroa.0.163
  %_27 = add i32 %_31, %_28
  %_35 = load i32, ptr %_0.i.i25, align 4, !noundef !37
  %_26 = add i32 %_27, %_35
  %_25 = icmp eq i32 %_26, %sum
  br i1 %_25, label %bb28, label %bb18

bb18:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h37d8242ff460d0b7E.exit27"
  %_39 = icmp sge i32 %_26, %sum
  %10 = sext i1 %_39 to i64
  %r.sroa.0.2 = add i64 %r.sroa.0.163, %10
  %not._39 = xor i1 %_39, true
  %11 = zext i1 %not._39 to i64
  %l.sroa.0.2 = add i64 %l.sroa.0.164, %11
  %_22 = icmp ult i64 %l.sroa.0.2, %r.sroa.0.2
  br i1 %_22, label %bb13, label %bb7.loopexit

terminate:                                        ; preds = %cleanup
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb30:                                             ; preds = %cleanup
  resume { ptr, i32 } %6
}
