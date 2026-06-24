define noundef i32 @f_gold(i64 %0, i32 noundef %m, i32 noundef %V) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %coins.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %coins.sroa.2.0.extract.shift = lshr i64 %0, 32
  %coins.sroa.2.0.extract.trunc = trunc nuw i64 %coins.sroa.2.0.extract.shift to i32
  %_6 = sext i32 %V to i64
  %_5 = add nsw i64 %_6, 1
  %_21.0.i.i.i = shl nsw i64 %_5, 2
  %_21.1.i.i.i = icmp ugt i64 %_5, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_5, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67b03a1d9c9a3e31E.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %1 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %2 = icmp eq ptr %1, null
  br i1 %2, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %3 = ptrtoint ptr %1 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67b03a1d9c9a3e31E.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67b03a1d9c9a3e31E.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %3, %bb10.i.i ], [ 4, %bb17.i.i ]
  %4 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_0.i.not.i58 = icmp slt i32 %V, 1
  br i1 %_0.i.not.i58, label %bb7, label %bb2.i

bb2.i24.lr.ph:                                    ; preds = %bb22
  %_4960 = icmp sgt i32 %m, 0
  %exitcond72.not = icmp eq i32 %m, 1
  %exitcond72.1.not = icmp eq i32 %m, 2
  br label %bb2.i24

bb2.i:                                            ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67b03a1d9c9a3e31E.exit", %bb22
  %iter.sroa.0.059 = phi i32 [ %spec.select, %bb22 ], [ 1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67b03a1d9c9a3e31E.exit" ]
  %_14 = zext nneg i32 %iter.sroa.0.059 to i64
  %_43 = icmp ugt i64 %_5, %_14
  br i1 %_43, label %bb22, label %panic9.invoke

cleanup:                                          ; preds = %panic9.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb19, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %6 = phi { ptr, i32 } [ %8, %cleanup.thread ], [ %5, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb19

bb5.loopexit:                                     ; preds = %bb16, %bb16.1, %bb2.i24
  %_0.i.not.i23 = icmp sgt i32 %spec.select52, %V
  %or.cond54 = select i1 %_0.i3.i25, i1 true, i1 %_0.i.not.i23
  br i1 %or.cond54, label %bb7, label %bb2.i24

bb2.i24:                                          ; preds = %bb2.i24.lr.ph, %bb5.loopexit
  %iter1.sroa.0.063 = phi i32 [ 1, %bb2.i24.lr.ph ], [ %spec.select52, %bb5.loopexit ]
  %_0.i3.i25 = icmp sge i32 %iter1.sroa.0.063, %V
  %not._0.i3.i25 = xor i1 %_0.i3.i25, true
  %7 = zext i1 %not._0.i3.i25 to i32
  %spec.select52 = add nuw nsw i32 %iter1.sroa.0.063, %7
  br i1 %_4960, label %bb25.lr.ph, label %bb5.loopexit

bb25.lr.ph:                                       ; preds = %bb2.i24
  %_35 = zext nneg i32 %iter1.sroa.0.063 to i64
  %_65 = icmp ugt i64 %_5, %_35
  %_34 = getelementptr inbounds nuw i32, ptr %4, i64 %_35
  %_22.not = icmp slt i32 %iter1.sroa.0.063, %coins.sroa.0.0.extract.trunc
  br i1 %_22.not, label %bb16, label %bb11

bb7:                                              ; preds = %bb5.loopexit, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67b03a1d9c9a3e31E.exit"
  %_48.not = icmp eq i32 %V, -1
  br i1 %_48.not, label %panic9.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12ec525ad2a5c06fE.exit36"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h12ec525ad2a5c06fE.exit36": ; preds = %bb7
  %_37 = getelementptr inbounds nuw i32, ptr %4, i64 %_6
  %_0 = load i32, ptr %_37, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %4, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

unreachable:                                      ; preds = %panic6
  unreachable

bb16:                                             ; preds = %bb30, %bb29, %bb31, %bb25.lr.ph
  br i1 %exitcond72.not, label %bb5.loopexit, label %bb25.1

bb25.1:                                           ; preds = %bb16
  %_22.not.1 = icmp slt i32 %iter1.sroa.0.063, %coins.sroa.2.0.extract.trunc
  br i1 %_22.not.1, label %bb16.1, label %bb11.1

bb11.1:                                           ; preds = %bb25.1
  %_29.1 = sub i32 %iter1.sroa.0.063, %coins.sroa.2.0.extract.trunc
  %_28.1 = sext i32 %_29.1 to i64
  %_60.1 = icmp ugt i64 %_5, %_28.1
  br i1 %_60.1, label %bb29.1, label %panic9.invoke

bb29.1:                                           ; preds = %bb11.1
  %_27.1 = getelementptr inbounds nuw i32, ptr %4, i64 %_28.1
  %sub_res.1 = load i32, ptr %_27.1, align 4, !noundef !23
  %_30.not.1 = icmp eq i32 %sub_res.1, 2147483647
  br i1 %_30.not.1, label %bb16.1, label %bb12.1

bb12.1:                                           ; preds = %bb29.1
  %_32.1 = add nsw i32 %sub_res.1, 1
  br i1 %_65, label %bb30.1, label %panic6

bb30.1:                                           ; preds = %bb12.1
  %_33.1 = load i32, ptr %_34, align 4, !noundef !23
  %_31.1 = icmp slt i32 %_32.1, %_33.1
  br i1 %_31.1, label %bb31.1, label %bb16.1

bb31.1:                                           ; preds = %bb30.1
  store i32 %_32.1, ptr %_34, align 4
  br label %bb16.1

bb16.1:                                           ; preds = %bb31.1, %bb30.1, %bb29.1, %bb25.1
  br i1 %exitcond72.1.not, label %bb5.loopexit, label %panic9.invoke

bb11:                                             ; preds = %bb25.lr.ph
  %_29 = sub i32 %iter1.sroa.0.063, %coins.sroa.0.0.extract.trunc
  %_28 = sext i32 %_29 to i64
  %_60 = icmp ugt i64 %_5, %_28
  br i1 %_60, label %bb29, label %panic9.invoke

bb29:                                             ; preds = %bb11
  %_27 = getelementptr inbounds nuw i32, ptr %4, i64 %_28
  %sub_res = load i32, ptr %_27, align 4, !noundef !23
  %_30.not = icmp eq i32 %sub_res, 2147483647
  br i1 %_30.not, label %bb16, label %bb12

bb12:                                             ; preds = %bb29
  %_32 = add nsw i32 %sub_res, 1
  br i1 %_65, label %bb30, label %panic6

bb30:                                             ; preds = %bb12
  %_33 = load i32, ptr %_34, align 4, !noundef !23
  %_31 = icmp slt i32 %_32, %_33
  br i1 %_31, label %bb31, label %bb16

panic6:                                           ; preds = %bb12.1, %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_35, i64 noundef %_5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_3f2a7a31242289df329ab03812116e3a) #21
          to label %unreachable unwind label %cleanup.thread

cleanup.thread:                                   ; preds = %panic6
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb31:                                             ; preds = %bb30
  store i32 %_32, ptr %_34, align 4
  br label %bb16

bb22:                                             ; preds = %bb2.i
  %_0.i3.i = icmp sge i32 %iter.sroa.0.059, %V
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %9 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.059, %9
  %_13 = getelementptr inbounds nuw i32, ptr %4, i64 %_14
  store i32 2147483647, ptr %_13, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %V
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb2.i24.lr.ph, label %bb2.i

panic9.invoke:                                    ; preds = %bb2.i, %bb11, %bb11.1, %bb16.1, %bb7
  %10 = phi i64 [ %_6, %bb7 ], [ 2, %bb16.1 ], [ %_28.1, %bb11.1 ], [ %_28, %bb11 ], [ %_14, %bb2.i ]
  %11 = phi i64 [ %_5, %bb7 ], [ 2, %bb16.1 ], [ %_5, %bb11.1 ], [ %_5, %bb11 ], [ %_5, %bb2.i ]
  %12 = phi ptr [ @alloc_372043b5cee3f701ede4145d47485e3e, %bb7 ], [ @alloc_f2e0c50ab9832192ea971ef5c9e41fc2, %bb16.1 ], [ @alloc_65966f449f657e9a4223d92de39f8cfe, %bb11.1 ], [ @alloc_65966f449f657e9a4223d92de39f8cfe, %bb11 ], [ @alloc_a41cd73a6564fe7c72b585cd9d86b5a8, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %10, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #21
          to label %panic9.cont unwind label %cleanup

panic9.cont:                                      ; preds = %panic9.invoke
  unreachable

bb19:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %13 = phi { ptr, i32 } [ %5, %cleanup ], [ %6, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %13
}
