define noundef i32 @f_gold(i32 noundef %k, i64 %0, i64 %1, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %x.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %x.sroa.2.0.extract.shift = lshr i64 %0, 32
  %x.sroa.2.0.extract.trunc = trunc nuw i64 %x.sroa.2.0.extract.shift to i32
  %y.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %y.sroa.2.0.extract.shift = lshr i64 %1, 32
  %y.sroa.2.0.extract.trunc = trunc nuw i64 %y.sroa.2.0.extract.shift to i32
  %_6 = sext i32 %n to i64
  %_21.0.i.i.i = shl nsw i64 %_6, 2
  %_21.1.i.i.i = icmp slt i32 %n, 0
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !573

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i32 %n, 0
  br i1 %_8.i.i, label %bb6, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1817
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1817
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb11.preheader

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1822
  unreachable

bb11.preheader:                                   ; preds = %bb3.i3.i
  %_13 = mul i32 %y.sroa.0.0.extract.trunc, %y.sroa.0.0.extract.trunc
  %_9 = mul i32 %x.sroa.0.0.extract.trunc, %x.sroa.0.0.extract.trunc
  %4 = add i32 %_9, %_13
  store i32 %4, ptr %2, align 4
  %exitcond23.not = icmp eq i32 %n, 1
  br i1 %exitcond23.not, label %bb6, label %bb11.1

bb9.i.i:                                          ; preds = %bb11.1
  %tail.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1831)
  %_4.i.i.i.i.i.i = load i32, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1833, !noalias !1840, !noundef !18
  %_5.i.i.i.i.i.i = load i32, ptr %2, align 4, !alias.scope !1842, !noalias !1843, !noundef !18
  %_0.i.i.i.i.i = icmp slt i32 %_4.i.i.i.i.i.i, %_5.i.i.i.i.i.i
  br i1 %_0.i.i.i.i.i, label %bb4.i.i.i.i, label %bb6

bb4.i.i.i.i:                                      ; preds = %bb9.i.i
  store i32 %_5.i.i.i.i.i.i, ptr %tail.sroa.0.01.i.i.i, align 4, !alias.scope !1844, !noalias !1845
  store i32 %_4.i.i.i.i.i.i, ptr %2, align 4, !alias.scope !1844, !noalias !1846
  br label %bb6

cleanup:                                          ; preds = %panic
  %5 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb9, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread27, %cleanup
  %6 = phi { ptr, i32 } [ %10, %cleanup.thread27 ], [ %5, %cleanup ]
  %7 = phi ptr [ %2, %cleanup.thread27 ], [ %8, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1851
  br label %bb9

bb6:                                              ; preds = %bb4.i.i.i.i, %bb9.i.i, %bb11.preheader, %bb17.i.i
  %8 = phi ptr [ %2, %bb11.preheader ], [ inttoptr (i64 4 to ptr), %bb17.i.i ], [ %2, %bb9.i.i ], [ %2, %bb4.i.i.i.i ]
  %_20 = add i32 %k, -1
  %_19 = sext i32 %_20 to i64
  %_42 = icmp ugt i32 %n, %_20
  br i1 %_42, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E.exit14", label %panic

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h2a5deca2238eb3b2E.exit14": ; preds = %bb6
  %_18 = getelementptr inbounds nuw i32, ptr %8, i64 %_19
  %_0 = load i32, ptr %_18, align 4, !noundef !18
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %8, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1860
  ret i32 %_0

panic:                                            ; preds = %bb6
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_19, i64 noundef %_6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_6e4a969a3acafd8cb3137179735c0cc4) #21
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic1, %panic
  unreachable

bb11.1:                                           ; preds = %bb11.preheader
  %_13.1 = mul i32 %y.sroa.2.0.extract.trunc, %y.sroa.2.0.extract.trunc
  %_9.1 = mul i32 %x.sroa.2.0.extract.trunc, %x.sroa.2.0.extract.trunc
  %_15.1 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %9 = add i32 %_9.1, %_13.1
  store i32 %9, ptr %_15.1, align 4
  %exitcond23.1.not = icmp eq i32 %n, 2
  br i1 %exitcond23.1.not, label %bb9.i.i, label %panic1

panic1:                                           ; preds = %bb11.1
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_64f7432fe9076f50d6878448d2044e8d) #21
          to label %unreachable unwind label %cleanup.thread27

cleanup.thread27:                                 ; preds = %panic1
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb9:                                              ; preds = %bb2.i.i.i3.i, %cleanup
  %11 = phi { ptr, i32 } [ %5, %cleanup ], [ %6, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %11
}
