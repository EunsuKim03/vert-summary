define noundef i32 @f_gold(i32 noundef %dist) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4 = sext i32 %dist to i64
  %_3 = add nsw i64 %_4, 1
  %_21.0.i.i.i.i = shl nsw i64 %_3, 2
  %_21.1.i.i.i.i = icmp ugt i64 %_3, 4611686018427387903
  %_26.i.i.i.i = icmp ugt i64 %_21.0.i.i.i.i, 9223372036854775804
  %or.cond.i.i.i.i = or i1 %_21.1.i.i.i.i, %_26.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !339

bb17.i.i.i:                                       ; preds = %start
  %_8.i.i.i = icmp eq i64 %_3, 0
  br i1 %_8.i.i.i, label %panic, label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1031
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haad45e67eb17ffa0E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i, %start
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i.i) #20, !noalias !1036
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haad45e67eb17ffa0E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %dist, 0
  br i1 %_2415.i.not.i, label %panic1, label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haad45e67eb17ffa0E.exit.i.i"
  %min.iters.check = icmp ult i32 %dist, 8
  br i1 %min.iters.check, label %bb3.i3.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %_4, -8
  %2 = shl nsw i64 %n.vec, 2
  %3 = getelementptr i8, ptr %0, i64 %2
  %4 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx
  %5 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !1037
  store <4 x i32> splat (i32 1), ptr %5, align 4, !noalias !1037
  %index.next = add nuw i64 %index, 8
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %_4
  br i1 %cmp.n, label %bb10, label %bb3.i3.i.preheader74

bb3.i3.i.preheader74:                             ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %0, %bb3.i3.i.preheader ], [ %3, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %4, %middle.block ]
  br label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader74, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader74 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader74 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1037
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.017.i.i, %_4
  br i1 %exitcond.not.i.i, label %bb10, label %bb3.i3.i, !llvm.loop !1041

panic:                                            ; preds = %bb17.i.i.i
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_a9055964c0dc76bdbc9f31c5f47fadbf) #20
  unreachable

bb2.i.i.i3.i:                                     ; preds = %panic7.invoke, %panic2, %panic1
  %_4.sroa.4.0.i18.i23.ph = phi i64 [ 1, %panic1 ], [ 2, %panic2 ], [ %_3, %panic7.invoke ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %7 = shl nuw nsw i64 %_4.sroa.4.0.i18.i23.ph, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %7, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1042
  resume { ptr, i32 } %lpad.thr_comm

unreachable:                                      ; preds = %panic2, %panic1
  unreachable

bb10:                                             ; preds = %bb3.i3.i, %middle.block
  %_15.i.i.lcssa = phi ptr [ %3, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %_15.i.i.lcssa, align 4, !noalias !1037
  store i32 1, ptr %0, align 4
  %_6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_6, align 4
  %_47 = icmp samesign ugt i64 %_3, 2
  br i1 %_47, label %bb11, label %panic2

panic1:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17haad45e67eb17ffa0E.exit.i.i"
  store i32 1, ptr %0, align 4
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 1, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d281e09a5d92d3d51a9d62fb9a5090a6) #20
          to label %unreachable unwind label %bb2.i.i.i3.i

bb11:                                             ; preds = %bb10
  %_7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %_7, align 4
  %_0.i.not.i49 = icmp slt i32 %dist, 3
  br i1 %_0.i.not.i49, label %bb4, label %bb2.i

panic2:                                           ; preds = %bb10
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9d760bb5332ae279a7fcc04c73c3ab59) #20
          to label %unreachable unwind label %bb2.i.i.i3.i

bb2.i:                                            ; preds = %bb11, %bb17
  %iter.sroa.0.050 = phi i32 [ %spec.select, %bb17 ], [ 3, %bb11 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.050, %dist
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %8 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.050, %8
  %_18 = add nsw i32 %iter.sroa.0.050, -1
  %_17 = sext i32 %_18 to i64
  %_52 = icmp ugt i64 %_3, %_17
  br i1 %_52, label %bb13, label %panic7.invoke

bb4:                                              ; preds = %bb17, %bb11
  %_57.not = icmp eq i32 %dist, -1
  br i1 %_57.not, label %panic7.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h75cffa468c071cc0E.exit14"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h75cffa468c071cc0E.exit14": ; preds = %bb4
  %_29 = getelementptr inbounds nuw i32, ptr %0, i64 %_4
  %_0 = load i32, ptr %_29, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1051
  ret i32 %_0

bb13:                                             ; preds = %bb2.i
  %_22 = add nsw i32 %iter.sroa.0.050, -2
  %_21 = sext i32 %_22 to i64
  %_62 = icmp ugt i64 %_3, %_21
  br i1 %_62, label %bb15, label %panic7.invoke

bb15:                                             ; preds = %bb13
  %_16 = getelementptr inbounds nuw i32, ptr %0, i64 %_17
  %_15 = load i32, ptr %_16, align 4, !noundef !23
  %_20 = getelementptr inbounds nuw i32, ptr %0, i64 %_21
  %_19 = load i32, ptr %_20, align 4, !noundef !23
  %_14 = add i32 %_19, %_15
  %_26 = add nsw i32 %iter.sroa.0.050, -3
  %_25 = sext i32 %_26 to i64
  %_67 = icmp ugt i64 %_3, %_25
  br i1 %_67, label %bb16, label %panic7.invoke

bb16:                                             ; preds = %bb15
  %_28 = zext nneg i32 %iter.sroa.0.050 to i64
  %_73 = icmp ugt i64 %_3, %_28
  br i1 %_73, label %bb17, label %panic7.invoke

bb17:                                             ; preds = %bb16
  %_24 = getelementptr inbounds nuw i32, ptr %0, i64 %_25
  %_23 = load i32, ptr %_24, align 4, !noundef !23
  %_27 = getelementptr inbounds nuw i32, ptr %0, i64 %_28
  %9 = add i32 %_14, %_23
  store i32 %9, ptr %_27, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %dist
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

panic7.invoke:                                    ; preds = %bb16, %bb15, %bb13, %bb2.i, %bb4
  %10 = phi i64 [ %_4, %bb4 ], [ %_17, %bb2.i ], [ %_21, %bb13 ], [ %_25, %bb15 ], [ %_28, %bb16 ]
  %11 = phi ptr [ @alloc_ae0436a8a03dba606f6a948305022b70, %bb4 ], [ @alloc_af1cb943c84e539b189e3e216142db84, %bb2.i ], [ @alloc_687943ff8a4efddeeedbbcccc7f4697f, %bb13 ], [ @alloc_b42a0850d058b893e991cd82ce90aebe, %bb15 ], [ @alloc_e14f4e5232a6b2544ab73ca9418b6225, %bb16 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %10, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %11) #20
          to label %panic7.cont unwind label %bb2.i.i.i3.i

panic7.cont:                                      ; preds = %panic7.invoke
  unreachable
}
