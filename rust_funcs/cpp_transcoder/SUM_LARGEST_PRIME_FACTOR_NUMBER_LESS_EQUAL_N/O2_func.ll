define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  %_21.0.i.i.i = shl nsw i64 %_3, 2
  %_21.1.i.i.i = icmp ugt i64 %_3, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_3, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h24cae975d81aec11E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %2 = ptrtoint ptr %0 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h24cae975d81aec11E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h24cae975d81aec11E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %2, %bb10.i.i ], [ 4, %bb17.i.i ]
  %3 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %max = sdiv i32 %n, 2
  %_0.i.not.i80 = icmp slt i32 %n, 4
  br i1 %_0.i.not.i80, label %bb11.preheader, label %bb2.i

bb11.preheader:                                   ; preds = %bb10, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h24cae975d81aec11E.exit"
  %_0.i.not.i1882 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i1882, label %bb13, label %bb2.i19

bb2.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h24cae975d81aec11E.exit", %bb10
  %iter.sroa.0.081 = phi i32 [ %spec.select69, %bb10 ], [ 2, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h24cae975d81aec11E.exit" ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.081, %max
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %4 = zext i1 %not._0.i3.i to i32
  %spec.select69 = add nuw nsw i32 %iter.sroa.0.081, %4
  %_15 = zext nneg i32 %iter.sroa.0.081 to i64
  %_41 = icmp ugt i64 %_3, %_15
  br i1 %_41, label %bb22, label %panic5.invoke

cleanup:                                          ; preds = %panic5.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb19, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %6 = phi { ptr, i32 } [ %11, %cleanup.thread ], [ %5, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb19

bb2.i19:                                          ; preds = %bb11.preheader, %bb26
  %sum.sroa.0.084 = phi i32 [ %sum.sroa.0.1, %bb26 ], [ 0, %bb11.preheader ]
  %iter2.sroa.0.083 = phi i32 [ %spec.select70, %bb26 ], [ 2, %bb11.preheader ]
  %_34 = zext nneg i32 %iter2.sroa.0.083 to i64
  %_52 = icmp ugt i64 %_3, %_34
  br i1 %_52, label %bb26, label %panic5.invoke

bb13:                                             ; preds = %bb11.preheader
  br i1 %_8.i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h05f8a4e368c8d820E.exit31", label %bb2.i.i.i3.i29

bb2.i.i.i3.i29:                                   ; preds = %bb26, %bb13
  %sum.sroa.0.0.lcssa91 = phi i32 [ 0, %bb13 ], [ %sum.sroa.0.1, %bb26 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h05f8a4e368c8d820E.exit31"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h05f8a4e368c8d820E.exit31": ; preds = %bb13, %bb2.i.i.i3.i29
  %sum.sroa.0.0.lcssa92 = phi i32 [ 0, %bb13 ], [ %sum.sroa.0.0.lcssa91, %bb2.i.i.i3.i29 ]
  ret i32 %sum.sroa.0.0.lcssa92

bb26:                                             ; preds = %bb2.i19
  %_0.i3.i20 = icmp sge i32 %iter2.sroa.0.083, %n
  %not._0.i3.i20 = xor i1 %_0.i3.i20, true
  %7 = zext i1 %not._0.i3.i20 to i32
  %spec.select70 = add nuw nsw i32 %iter2.sroa.0.083, %7
  %_33 = getelementptr inbounds nuw i32, ptr %3, i64 %_34
  %_32 = load i32, ptr %_33, align 4, !noundef !23
  %_31.not = icmp eq i32 %_32, 0
  %_32.pn = select i1 %_31.not, i32 %iter2.sroa.0.083, i32 %_32
  %sum.sroa.0.1 = add i32 %_32.pn, %sum.sroa.0.084
  %_0.i.not.i18 = icmp sgt i32 %spec.select70, %n
  %or.cond74 = select i1 %_0.i3.i20, i1 true, i1 %_0.i.not.i18
  br i1 %or.cond74, label %bb2.i.i.i3.i29, label %bb2.i19

unreachable:                                      ; preds = %panic6
  unreachable

bb22:                                             ; preds = %bb2.i
  %_14 = getelementptr inbounds nuw i32, ptr %3, i64 %_15
  %_13 = load i32, ptr %_14, align 4, !noundef !23
  %_12 = icmp ne i32 %_13, 0
  %_17 = shl nuw i32 %iter.sroa.0.081, 1
  %_0.i.not.i3778 = icmp sgt i32 %_17, %n
  %or.cond85 = select i1 %_12, i1 true, i1 %_0.i.not.i3778
  br i1 %or.cond85, label %bb10, label %bb2.i38

panic5.invoke:                                    ; preds = %bb2.i, %bb2.i19
  %8 = phi i64 [ %_34, %bb2.i19 ], [ %_15, %bb2.i ]
  %9 = phi ptr [ @alloc_f9eb23606bccd922d2aae6db5e516343, %bb2.i19 ], [ @alloc_537ab966641e442f0f61b6a54ddeb176, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %8, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #21
          to label %panic5.cont unwind label %cleanup

panic5.cont:                                      ; preds = %panic5.invoke
  unreachable

bb10:                                             ; preds = %bb24, %bb22
  %_0.i.not.i = icmp sgt i32 %spec.select69, %max
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb11.preheader, label %bb2.i

bb2.i38:                                          ; preds = %bb22, %bb24
  %iter1.sroa.0.079 = phi i32 [ %spec.select72, %bb24 ], [ %_17, %bb22 ]
  %_24 = sext i32 %iter1.sroa.0.079 to i64
  %_47 = icmp ugt i64 %_3, %_24
  br i1 %_47, label %bb24, label %panic6

bb24:                                             ; preds = %bb2.i38
  %_0.i3.i39 = icmp sge i32 %iter1.sroa.0.079, %n
  %not._0.i3.i39 = xor i1 %_0.i3.i39, true
  %10 = zext i1 %not._0.i3.i39 to i32
  %spec.select72 = add nsw i32 %iter1.sroa.0.079, %10
  %_23 = getelementptr inbounds nuw i32, ptr %3, i64 %_24
  store i32 %iter.sroa.0.081, ptr %_23, align 4
  %_0.i.not.i37 = icmp sgt i32 %spec.select72, %n
  %or.cond75 = select i1 %_0.i3.i39, i1 true, i1 %_0.i.not.i37
  br i1 %or.cond75, label %bb10, label %bb2.i38

panic6:                                           ; preds = %bb2.i38
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_24, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c7c5f8f8f3fd94668b1aee72a5b7699b) #21
          to label %unreachable unwind label %cleanup.thread

cleanup.thread:                                   ; preds = %panic6
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb19:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %12 = phi { ptr, i32 } [ %5, %cleanup ], [ %6, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %12
}
