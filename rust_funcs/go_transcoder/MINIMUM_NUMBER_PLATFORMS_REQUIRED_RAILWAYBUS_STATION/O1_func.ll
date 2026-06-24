define noundef i32 @f_gold(i64 %0, i64 %1, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %is_less.i.i32 = alloca [0 x i8], align 1
  %_4.i.i.i16 = alloca [24 x i8], align 8
  %_4.i.i.i = alloca [24 x i8], align 8
  %dep2 = alloca [24 x i8], align 8
  %arr1 = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arr1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2611
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef 2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2611
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1627, !noalias !2611, !noundef !27
  %2 = trunc nuw i64 %_5.i.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %3, align 8, !range !1628, !noalias !2611, !noundef !27
  %4 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %2, label %bb3.i.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E.exit", !prof !1629

bb3.i.i.i:                                        ; preds = %start
  %err.1.i.i.i = load i64, ptr %4, align 8, !noalias !2611
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i, i64 %err.1.i.i.i) #25, !noalias !2611
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E.exit": ; preds = %start
  %this.1.i.i.i = load ptr, ptr %4, align 8, !noalias !2611, !nonnull !27, !noundef !27
  %_7.i.i.i = icmp samesign ugt i64 %err.0.i.i.i, 1
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !2611
  store i64 %err.0.i.i.i, ptr %arr1, align 8, !alias.scope !2614, !noalias !2615
  %5 = getelementptr inbounds nuw i8, ptr %arr1, i64 8
  store ptr %this.1.i.i.i, ptr %5, align 8, !alias.scope !2614, !noalias !2615
  %6 = getelementptr inbounds nuw i8, ptr %arr1, i64 16
  store i64 0, ptr %6, align 8, !alias.scope !2614, !noalias !2615
  store i64 %0, ptr %this.1.i.i.i, align 4, !noalias !2611
  store i64 2, ptr %6, align 8, !alias.scope !2614, !noalias !2615
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dep2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i16), !noalias !2622
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i16, i64 noundef 2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E.exit"
  %_5.i.i.i17 = load i64, ptr %_4.i.i.i16, align 8, !range !1627, !noalias !2622, !noundef !27
  %7 = trunc nuw i64 %_5.i.i.i17 to i1
  %8 = getelementptr inbounds nuw i8, ptr %_4.i.i.i16, i64 8
  %err.0.i.i.i22 = load i64, ptr %8, align 8, !range !1628, !noalias !2622, !noundef !27
  %9 = getelementptr inbounds nuw i8, ptr %_4.i.i.i16, i64 16
  br i1 %7, label %bb3.i.i.i21, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E.exit25", !prof !1629

bb3.i.i.i21:                                      ; preds = %.noexc
  %err.1.i.i.i23 = load i64, ptr %9, align 8, !noalias !2622
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i22, i64 %err.1.i.i.i23) #25
          to label %.noexc24 unwind label %cleanup

.noexc24:                                         ; preds = %bb3.i.i.i21
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E.exit25": ; preds = %.noexc
  %this.1.i.i.i19 = load ptr, ptr %9, align 8, !noalias !2622, !nonnull !27, !noundef !27
  %_7.i.i.i20 = icmp samesign ugt i64 %err.0.i.i.i22, 1
  tail call void @llvm.assume(i1 %_7.i.i.i20)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i16), !noalias !2622
  store i64 %err.0.i.i.i22, ptr %dep2, align 8, !alias.scope !2625, !noalias !2626
  %10 = getelementptr inbounds nuw i8, ptr %dep2, i64 8
  store ptr %this.1.i.i.i19, ptr %10, align 8, !alias.scope !2625, !noalias !2626
  %11 = getelementptr inbounds nuw i8, ptr %dep2, i64 16
  store i64 0, ptr %11, align 8, !alias.scope !2625, !noalias !2626
  store i64 %1, ptr %this.1.i.i.i19, align 4, !noalias !2622
  store i64 2, ptr %11, align 8, !alias.scope !2625, !noalias !2626
  %_4.i.i = load ptr, ptr %5, align 8, !alias.scope !2627, !nonnull !27, !noundef !27
  %len.i.i = load i64, ptr %6, align 8, !alias.scope !2627, !noundef !27
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i32), !noalias !2632
  %b.i.i = icmp samesign ult i64 %len.i.i, 2
  br i1 %b.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit", label %bb7.i.i, !prof !2635

bb25:                                             ; preds = %cleanup3, %cleanup
  %.pn = phi { ptr, i32 } [ %12, %cleanup ], [ %13, %cleanup3 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr1, i64 noundef 4, i64 noundef 4)
          to label %bb26 unwind label %terminate

cleanup:                                          ; preds = %bb21, %bb3.i.i.i21, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E.exit"
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %bb25

cleanup3:                                         ; preds = %panic.i.i46.invoke, %bb10.i.i36, %bb10.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dep2, i64 noundef 4, i64 noundef 4)
          to label %bb25 unwind label %terminate

bb7.i.i:                                          ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E.exit25"
  %b1.i.i = icmp samesign ult i64 %len.i.i, 21
  br i1 %b1.i.i, label %bb9.i.i, label %bb10.i.i, !prof !2635

bb10.i.i:                                         ; preds = %bb7.i.i
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hfc969b57c31c8be9E(ptr noalias noundef nonnull align 4 %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, ptr noalias noundef nonnull align 1 %is_less.i.i32)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit" unwind label %cleanup3

bb9.i.i:                                          ; preds = %bb7.i.i
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  tail call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hdea3e7367ce10dd0E(ptr noalias noundef nonnull align 4 %_4.i.i, i64 noundef range(i64 0, 2305843009213693952) %len.i.i, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit": ; preds = %bb10.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h8748699ce1ea5dc9E.exit25", %bb9.i.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i32), !noalias !2632
  %_4.i.i30 = load ptr, ptr %10, align 8, !alias.scope !2636, !nonnull !27, !noundef !27
  %len.i.i31 = load i64, ptr %11, align 8, !alias.scope !2636, !noundef !27
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %is_less.i.i32), !noalias !2641
  %b.i.i33 = icmp samesign ult i64 %len.i.i31, 2
  br i1 %b.i.i33, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit39", label %bb7.i.i34, !prof !2635

bb7.i.i34:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit"
  %b1.i.i35 = icmp samesign ult i64 %len.i.i31, 21
  br i1 %b1.i.i35, label %bb9.i.i37, label %bb10.i.i36, !prof !2635

bb10.i.i36:                                       ; preds = %bb7.i.i34
; invoke core::slice::sort::stable::driftsort_main
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hfc969b57c31c8be9E(ptr noalias noundef nonnull align 4 %_4.i.i30, i64 noundef range(i64 0, 2305843009213693952) %len.i.i31, ptr noalias noundef nonnull align 1 %is_less.i.i32)
          to label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit39" unwind label %cleanup3

bb9.i.i37:                                        ; preds = %bb7.i.i34
; call core::slice::sort::shared::smallsort::insertion_sort_shift_left
  call void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hdea3e7367ce10dd0E(ptr noalias noundef nonnull align 4 %_4.i.i30, i64 noundef range(i64 0, 2305843009213693952) %len.i.i31, i64 noundef 1, ptr noalias nonnull align 1 poison)
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit39"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit39": ; preds = %bb10.i.i36, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit", %bb9.i.i37
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %is_less.i.i32), !noalias !2641
  %_21 = sext i32 %n to i64
  %_1963 = icmp ugt i32 %n, 1
  br i1 %_1963, label %bb9.lr.ph, label %bb21

bb9.lr.ph:                                        ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit39"
  %len.i = load i64, ptr %6, align 8, !alias.scope !2644, !noalias !2647, !noundef !27
  %len.i44 = load i64, ptr %11, align 8
  %_6.i = load ptr, ptr %5, align 8, !nonnull !27
  %_6.i47 = load ptr, ptr %10, align 8, !nonnull !27
  br label %bb9

bb21:                                             ; preds = %bb18, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit39"
  %result.sroa.0.0.lcssa = phi i32 [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4sort17h68229433ca5bb9b5E.exit39" ], [ %result.sroa.0.1, %bb18 ]
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dep2, i64 noundef 4, i64 noundef 4)
          to label %bb22 unwind label %cleanup

bb9:                                              ; preds = %bb9.lr.ph, %bb18
  %result.sroa.0.069 = phi i32 [ 1, %bb9.lr.ph ], [ %result.sroa.0.1, %bb18 ]
  %plat_needed.sroa.0.068 = phi i32 [ 1, %bb9.lr.ph ], [ %plat_needed.sroa.0.1, %bb18 ]
  %i.sroa.0.067 = phi i64 [ 1, %bb9.lr.ph ], [ %i.sroa.0.1, %bb18 ]
  %j.sroa.0.066 = phi i64 [ 0, %bb9.lr.ph ], [ %j.sroa.0.1, %bb18 ]
  %_4.i.i42 = icmp ult i64 %i.sroa.0.067, %len.i
  br i1 %_4.i.i42, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit", label %panic.i.i46.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit": ; preds = %bb9
  %_4.i.i45 = icmp ult i64 %j.sroa.0.066, %len.i44
  br i1 %_4.i.i45, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit50", label %panic.i.i46.invoke

bb22:                                             ; preds = %bb21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dep2)
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr1, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arr1)
  ret i32 %result.sroa.0.0.lcssa

panic.i.i46.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit", %bb9
  %14 = phi i64 [ %i.sroa.0.067, %bb9 ], [ %j.sroa.0.066, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit" ]
  %15 = phi i64 [ %len.i, %bb9 ], [ %len.i44, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit" ]
  %16 = phi ptr [ @alloc_6273f7bd87e9795e787608acb72171c7, %bb9 ], [ @alloc_1948009fd775a9fbe566a926c1297413, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit" ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 0, -1) %14, i64 noundef range(i64 0, 2305843009213693952) %15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %16) #24
          to label %panic.i.i46.cont unwind label %cleanup3

panic.i.i46.cont:                                 ; preds = %panic.i.i46.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit50": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit"
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %i.sroa.0.067
  %_0.i.i48 = getelementptr inbounds nuw i32, ptr %_6.i47, i64 %j.sroa.0.066
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  %_3.i = load i32, ptr %_0.i.i, align 4, !alias.scope !2649, !noalias !2652, !noundef !27
  %_4.i = load i32, ptr %_0.i.i48, align 4, !alias.scope !2652, !noalias !2649, !noundef !27
  %_0.i = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %_3.i, i32 %_4.i)
  switch i8 %_0.i, label %bb13 [
    i8 -1, label %bb16
    i8 0, label %bb14
    i8 1, label %bb15
  ]

bb13:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit50"
  unreachable

bb16:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit50"
  %17 = add i32 %plat_needed.sroa.0.068, 1
  %_0.sroa.0.0.i.i = call noundef i32 @llvm.smax.i32(i32 %17, i32 %result.sroa.0.069)
  %18 = add nuw i64 %i.sroa.0.067, 1
  br label %bb18

bb14:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit50"
  %19 = add nuw i64 %i.sroa.0.067, 1
  %20 = add nuw i64 %j.sroa.0.066, 1
  br label %bb18

bb15:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h76f8e6310cee7cc7E.exit50"
  %21 = add i32 %plat_needed.sroa.0.068, -1
  %22 = add nuw i64 %j.sroa.0.066, 1
  br label %bb18

bb18:                                             ; preds = %bb15, %bb14, %bb16
  %j.sroa.0.1 = phi i64 [ %j.sroa.0.066, %bb16 ], [ %20, %bb14 ], [ %22, %bb15 ]
  %i.sroa.0.1 = phi i64 [ %18, %bb16 ], [ %19, %bb14 ], [ %i.sroa.0.067, %bb15 ]
  %plat_needed.sroa.0.1 = phi i32 [ %17, %bb16 ], [ %plat_needed.sroa.0.068, %bb14 ], [ %21, %bb15 ]
  %result.sroa.0.1 = phi i32 [ %_0.sroa.0.0.i.i, %bb16 ], [ %result.sroa.0.069, %bb14 ], [ %result.sroa.0.069, %bb15 ]
  %_19 = icmp ult i64 %i.sroa.0.1, %_21
  %_22 = icmp ult i64 %j.sroa.0.1, %_21
  %or.cond = select i1 %_19, i1 %_22, i1 false
  br i1 %or.cond, label %bb9, label %bb21

terminate:                                        ; preds = %cleanup3, %bb25
  %23 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb26:                                             ; preds = %bb25
  resume { ptr, i32 } %.pn
}
