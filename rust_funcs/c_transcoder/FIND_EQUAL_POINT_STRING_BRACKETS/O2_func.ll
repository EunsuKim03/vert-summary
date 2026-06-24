define noundef i32 @f_gold(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_4 = load i64, ptr %0, align 8, !noundef !23
  %_71 = icmp ult i64 %_4, 2305843009213693952
  tail call void @llvm.assume(i1 %_71)
  %_3 = shl nuw nsw i64 %_4, 2
  %_21.0.i.i.i = add nuw i64 %_3, 4
  %_26.i.i.i = icmp eq i64 %_4, 2305843009213693951
  br i1 %_26.i.i.i, label %bb14.i, label %bb3.i3.i, !prof !339

bb3.i3.i:                                         ; preds = %start
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb3.i3.i39

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb3.i3.i39:                                       ; preds = %bb3.i3.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1037
; call __rustc::__rust_alloc_zeroed
  %3 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb14.i40, label %bb41

bb14.i40:                                         ; preds = %bb3.i3.i39
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i40
  unreachable

cleanup:                                          ; preds = %bb14.i40
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb37

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E.exit47": ; preds = %panic15.invoke
  %6 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1042
  br label %bb37

bb41:                                             ; preds = %bb3.i3.i39
  store i32 0, ptr %1, align 4
  %_9 = getelementptr inbounds nuw i32, ptr %3, i64 %_4
  store i32 0, ptr %_9, align 4
  %_90.not = icmp eq i64 %_4, 0
  br i1 %_90.not, label %panic15.invoke, label %bb42

bb42:                                             ; preds = %bb41
  %7 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_88 = load ptr, ptr %7, align 8, !nonnull !23, !noundef !23
  %_12 = load i32, ptr %_88, align 4, !range !1051, !noundef !23
  %_11 = icmp eq i32 %_12, 40
  br i1 %_11, label %bb43, label %bb44

bb43:                                             ; preds = %bb42
  %_14 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %_14, align 4
  br label %bb44

bb44:                                             ; preds = %bb43, %bb42
  %_18 = add nsw i64 %_4, -1
  %_17 = getelementptr inbounds nuw i32, ptr %_88, i64 %_18
  %_16 = load i32, ptr %_17, align 4, !range !1051, !noundef !23
  %_15 = icmp eq i32 %_16, 41
  br i1 %_15, label %bb45, label %bb6.split

bb6.split:                                        ; preds = %bb45, %bb44
  %_110103.not = icmp eq i64 %_4, 1
  br i1 %_110103.not, label %bb62, label %bb49.preheader

bb49.preheader:                                   ; preds = %bb6.split
  %scevgep = getelementptr i8, ptr %1, i64 4
  %load_initial = load i32, ptr %scevgep, align 4
  %8 = add nsw i64 %_4, -1
  %9 = add nsw i64 %_4, -2
  %xtraiter = and i64 %8, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %bb14.preheader.split.unr-lcssa, label %bb49.preheader.new

bb49.preheader.new:                               ; preds = %bb49.preheader
  %unroll_iter = and i64 %8, -2
  br label %bb49

bb45:                                             ; preds = %bb44
  %_20 = getelementptr inbounds nuw i32, ptr %3, i64 %_18
  store i32 1, ptr %_20, align 4
  br label %bb6.split

bb14.preheader.split.unr-lcssa:                   ; preds = %bb49, %bb49.preheader
  %store_forwarded.unr = phi i32 [ %load_initial, %bb49.preheader ], [ %_32.sink.1, %bb49 ]
  %.unr = phi i64 [ 2, %bb49.preheader ], [ %28, %bb49 ]
  %iter2.sroa.0.0104.unr = phi i64 [ 1, %bb49.preheader ], [ %25, %bb49 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb14.preheader.split, label %bb49.epil

bb49.epil:                                        ; preds = %bb14.preheader.split.unr-lcssa
  %_27.epil = getelementptr inbounds nuw i32, ptr %_88, i64 %iter2.sroa.0.0104.unr
  %_26.epil = load i32, ptr %_27.epil, align 4, !range !1051, !noundef !23
  %_25.epil = icmp eq i32 %_26.epil, 40
  %11 = zext i1 %_25.epil to i32
  %_32.sink.epil = add i32 %store_forwarded.unr, %11
  %12 = getelementptr inbounds nuw i32, ptr %1, i64 %.unr
  store i32 %_32.sink.epil, ptr %12, align 4
  br label %bb14.preheader.split

bb14.preheader.split:                             ; preds = %bb14.preheader.split.unr-lcssa, %bb49.epil
  %_142.not.not105 = icmp eq i64 %_18, 0
  br i1 %_142.not.not105, label %bb62, label %bb15.preheader

bb15.preheader:                                   ; preds = %bb14.preheader.split
  %_143106 = add nsw i64 %_4, -2
  %xtraiter117 = and i64 %8, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %bb57.prol.loopexit, label %bb57.prol

bb57.prol:                                        ; preds = %bb15.preheader
  %_43.prol = getelementptr inbounds nuw i32, ptr %_88, i64 %_143106
  %_42.prol = load i32, ptr %_43.prol, align 4, !range !1051, !noundef !23
  %_41.prol = icmp eq i32 %_42.prol, 41
  %_45.prol = getelementptr inbounds nuw i32, ptr %3, i64 %_18
  %_44.prol = load i32, ptr %_45.prol, align 4, !noundef !23
  %13 = zext i1 %_41.prol to i32
  %_48.sink.prol = add i32 %_44.prol, %13
  %14 = getelementptr inbounds nuw i32, ptr %3, i64 %_143106
  store i32 %_48.sink.prol, ptr %14, align 4
  %_143.prol = add nsw i64 %_4, -3
  br label %bb57.prol.loopexit

bb57.prol.loopexit:                               ; preds = %bb57.prol, %bb15.preheader
  %_143108.unr = phi i64 [ %_143106, %bb15.preheader ], [ %_143.prol, %bb57.prol ]
  %iter.sroa.0.0107.unr = phi i64 [ %_18, %bb15.preheader ], [ %_143106, %bb57.prol ]
  %15 = icmp eq i64 %9, 0
  br i1 %15, label %bb62, label %bb57

bb62:                                             ; preds = %bb57.prol.loopexit, %bb57, %bb6.split, %bb14.preheader.split
  %_54 = getelementptr inbounds nuw i32, ptr %1, i64 %_4
  %_53 = load i32, ptr %_54, align 4, !noundef !23
  %_52 = icmp eq i32 %_53, 0
  br i1 %_52, label %bb20, label %bb63

bb20:                                             ; preds = %bb62
  %16 = trunc i64 %_4 to i32
  br label %bb34

bb63:                                             ; preds = %bb62
  %_58 = load i32, ptr %3, align 4, !noundef !23
  %_57 = icmp eq i32 %_58, 0
  br i1 %_57, label %bb34, label %bb24

bb24:                                             ; preds = %bb63, %bb66
  %iter1.sroa.0.0 = phi i64 [ %spec.select, %bb66 ], [ 0, %bb63 ]
  %iter1.sroa.7.0 = phi i1 [ %_0.i3.i, %bb66 ], [ false, %bb63 ]
  %_0.i.not.i = icmp samesign ugt i64 %iter1.sroa.0.0, %_4
  %or.cond = select i1 %iter1.sroa.7.0, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb34, label %bb66

bb66:                                             ; preds = %bb24
  %_0.i3.i = icmp samesign uge i64 %iter1.sroa.0.0, %_4
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select = add nuw nsw i64 %iter1.sroa.0.0, %_0.i4.i
  %_68 = getelementptr inbounds nuw i32, ptr %1, i64 %iter1.sroa.0.0
  %_67 = load i32, ptr %_68, align 4, !noundef !23
  %_70 = getelementptr inbounds nuw i32, ptr %3, i64 %iter1.sroa.0.0
  %_69 = load i32, ptr %_70, align 4, !noundef !23
  %_66 = icmp eq i32 %_67, %_69
  br i1 %_66, label %bb26, label %bb24

bb26:                                             ; preds = %bb66
  %17 = trunc i64 %iter1.sroa.0.0 to i32
  br label %bb34

bb34:                                             ; preds = %bb24, %bb26, %bb63, %bb20
  %index.sroa.0.1 = phi i32 [ %16, %bb20 ], [ 0, %bb63 ], [ %17, %bb26 ], [ -1, %bb24 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !23
  ret i32 %index.sroa.0.1

bb57:                                             ; preds = %bb57.prol.loopexit, %bb57
  %_143108 = phi i64 [ %_143.1, %bb57 ], [ %_143108.unr, %bb57.prol.loopexit ]
  %iter.sroa.0.0107 = phi i64 [ %_143, %bb57 ], [ %iter.sroa.0.0107.unr, %bb57.prol.loopexit ]
  %_43 = getelementptr inbounds nuw i32, ptr %_88, i64 %_143108
  %_42 = load i32, ptr %_43, align 4, !range !1051, !noundef !23
  %_41 = icmp eq i32 %_42, 41
  %_45 = getelementptr inbounds nuw i32, ptr %3, i64 %iter.sroa.0.0107
  %_44 = load i32, ptr %_45, align 4, !noundef !23
  %18 = zext i1 %_41 to i32
  %_48.sink = add i32 %_44, %18
  %19 = getelementptr inbounds nuw i32, ptr %3, i64 %_143108
  store i32 %_48.sink, ptr %19, align 4
  %_143 = add i64 %_143108, -1
  %_43.1 = getelementptr inbounds nuw i32, ptr %_88, i64 %_143
  %_42.1 = load i32, ptr %_43.1, align 4, !range !1051, !noundef !23
  %_41.1 = icmp eq i32 %_42.1, 41
  %20 = zext i1 %_41.1 to i32
  %_48.sink.1 = add i32 %_48.sink, %20
  %21 = getelementptr inbounds nuw i32, ptr %3, i64 %_143
  store i32 %_48.sink.1, ptr %21, align 4
  %_142.not.not.1 = icmp eq i64 %_143, 0
  %_143.1 = add i64 %_143108, -2
  br i1 %_142.not.not.1, label %bb62, label %bb57

panic15.invoke:                                   ; preds = %bb41
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_7e970dd81f62319fed255317e74a2708) #21
          to label %panic15.cont unwind label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E.exit47"

panic15.cont:                                     ; preds = %panic15.invoke
  unreachable

bb49:                                             ; preds = %bb49, %bb49.preheader.new
  %store_forwarded = phi i32 [ %load_initial, %bb49.preheader.new ], [ %_32.sink.1, %bb49 ]
  %22 = phi i64 [ 2, %bb49.preheader.new ], [ %28, %bb49 ]
  %iter2.sroa.0.0104 = phi i64 [ 1, %bb49.preheader.new ], [ %25, %bb49 ]
  %niter = phi i64 [ 0, %bb49.preheader.new ], [ %niter.next.1, %bb49 ]
  %_27 = getelementptr inbounds nuw i32, ptr %_88, i64 %iter2.sroa.0.0104
  %_26 = load i32, ptr %_27, align 4, !range !1051, !noundef !23
  %_25 = icmp eq i32 %_26, 40
  %23 = zext i1 %_25 to i32
  %_32.sink = add i32 %store_forwarded, %23
  %24 = getelementptr inbounds nuw i32, ptr %1, i64 %22
  store i32 %_32.sink, ptr %24, align 4
  %25 = or disjoint i64 %22, 1
  %_27.1 = getelementptr inbounds nuw i32, ptr %_88, i64 %22
  %_26.1 = load i32, ptr %_27.1, align 4, !range !1051, !noundef !23
  %_25.1 = icmp eq i32 %_26.1, 40
  %26 = zext i1 %_25.1 to i32
  %_32.sink.1 = add i32 %_32.sink, %26
  %27 = getelementptr inbounds nuw i32, ptr %1, i64 %25
  store i32 %_32.sink.1, ptr %27, align 4
  %28 = add nuw nsw i64 %22, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bb14.preheader.split.unr-lcssa, label %bb49

bb37:                                             ; preds = %cleanup, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E.exit47"
  %.pn = phi { ptr, i32 } [ %6, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h8733d215aa61edc4E.exit47" ], [ %5, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1052
  resume { ptr, i32 } %.pn
}
