define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  %_0.i.i = icmp eq i32 %n, 0
  %_21.0.i.i.i = shl nsw i64 %_3, 2
  %_21.1.i.i.i = icmp ugt i64 %_3, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %_0.i.i, label %bb2.i, label %bb3.i

bb3.i:                                            ; preds = %start
  br i1 %or.cond.i.i.i, label %bb3.i.i, label %bb17.i.i.i, !prof !339

bb17.i.i.i:                                       ; preds = %bb3.i
  %_8.i.i.i = icmp eq i64 %_3, 0
  br i1 %_8.i.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h751051cd90c30cb1E.exit", label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb17.i.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb3.i.i, label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %bb3.i.i.i
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %bb3.i3.i.preheader107, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %_4, -8
  %2 = shl nsw i64 %n.vec, 2
  %3 = getelementptr i8, ptr %0, i64 %2
  %4 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %n, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx
  %5 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !noalias !1036
  store <4 x i32> %broadcast.splat, ptr %5, align 4, !noalias !1036
  %index.next = add nuw i64 %index, 8
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !1039

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %_4
  br i1 %cmp.n, label %bb4.i.i, label %bb3.i3.i.preheader107

bb3.i3.i.preheader107:                            ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %0, %bb3.i3.i.preheader ], [ %3, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %4, %middle.block ]
  br label %bb3.i3.i

bb3.i.i:                                          ; preds = %bb3.i.i.i, %bb3.i
  %_4.sroa.4.0.ph.i.i = phi i64 [ 4, %bb3.i.i.i ], [ 0, %bb3.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_4.sroa.4.0.ph.i.i, i64 %_21.0.i.i.i) #21, !noalias !1040
  unreachable

bb4.i.i:                                          ; preds = %bb3.i3.i, %middle.block
  %_15.i.i.lcssa = phi ptr [ %3, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 %n, ptr %_15.i.i.lcssa, align 4, !noalias !1036
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h751051cd90c30cb1E.exit"

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader107, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader107 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader107 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 %n, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1036
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.017.i.i, %_4
  br i1 %exitcond.not.i.i, label %bb4.i.i, label %bb3.i3.i, !llvm.loop !1041

bb2.i:                                            ; preds = %start
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb3.i4.i, !prof !339

bb3.i4.i:                                         ; preds = %bb2.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1042
; call __rustc::__rust_alloc_zeroed
  %7 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1042
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb14.i, label %bb7

bb14.i:                                           ; preds = %bb3.i4.i, %bb2.i
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i4.i ], [ 0, %bb2.i ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1040
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h751051cd90c30cb1E.exit": ; preds = %bb17.i.i.i, %bb4.i.i
  %.sink.i = phi ptr [ %0, %bb4.i.i ], [ inttoptr (i64 4 to ptr), %bb17.i.i.i ]
  %_0.i.not.i72 = icmp slt i32 %n, 1
  br i1 %_0.i.not.i72, label %bb7, label %bb2.i16

bb2.i16:                                          ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h751051cd90c30cb1E.exit", %bb21
  %iter.sroa.0.073 = phi i32 [ %spec.select, %bb21 ], [ 1, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h751051cd90c30cb1E.exit" ]
  %_12 = zext nneg i32 %iter.sroa.0.073 to i64
  %_46 = icmp ugt i64 %_3, %_12
  br i1 %_46, label %bb21, label %panic9

cleanup.thread:                                   ; preds = %panic5.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic9, %panic
  %.sink.i83.ph = phi ptr [ %.sink.i8288, %panic ], [ %.sink.i, %panic9 ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i = icmp eq i64 %_3, 0
  br i1 %_6.i.i.i.i2.i, label %bb18, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi101 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
  %.sink.i8399 = phi ptr [ %.sink.i, %cleanup.thread ], [ %.sink.i83.ph, %cleanup ]
  %9 = shl nuw nsw i64 %_3, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i8399, i64 noundef %9, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1045
  br label %bb18

bb2.i24:                                          ; preds = %bb21, %bb15
  %iter1.sroa.4.075 = phi i32 [ %10, %bb15 ], [ %n, %bb21 ]
  %_0.i3.i25 = icmp eq i32 %iter1.sroa.4.075, 1
  br i1 %_0.i3.i25, label %bb7, label %bb6

bb6:                                              ; preds = %bb2.i24
  %10 = add nsw i32 %iter1.sroa.4.075, -1
  %11 = and i32 %iter1.sroa.4.075, 1
  %_18 = icmp eq i32 %11, 0
  br i1 %_18, label %bb8, label %bb11

bb7:                                              ; preds = %bb2.i24, %bb15, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h751051cd90c30cb1E.exit", %bb3.i4.i
  %.sink.i8288 = phi ptr [ %7, %bb3.i4.i ], [ %.sink.i, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h751051cd90c30cb1E.exit" ], [ %.sink.i, %bb15 ], [ %.sink.i, %bb2.i24 ]
  %_52 = icmp ugt i64 %_3, 1
  br i1 %_52, label %bb23, label %panic

bb23:                                             ; preds = %bb7
  %_40 = getelementptr inbounds nuw i8, ptr %.sink.i8288, i64 4
  %_0 = load i32, ptr %_40, align 4, !noundef !23
  %12 = shl nuw nsw i64 %_3, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i8288, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1054
  ret i32 %_0

panic:                                            ; preds = %bb7
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 1, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d239e1cc66f8a03c032ab82ecf0773d2) #21
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic9, %panic
  unreachable

bb8:                                              ; preds = %bb6
  %_24 = zext nneg i32 %iter1.sroa.4.075 to i64
  %_57 = icmp ugt i64 %_3, %_24
  br i1 %_57, label %bb26, label %panic5.invoke

bb11:                                             ; preds = %bb6, %bb26
  %_3068 = urem i32 %iter1.sroa.4.075, 3
  %_3869 = udiv i32 %iter1.sroa.4.075, 3
  %_29 = icmp eq i32 %_3068, 0
  br i1 %_29, label %bb12, label %bb15

bb26:                                             ; preds = %bb8
  %_2715 = lshr exact i64 %_24, 1
  %_23 = getelementptr inbounds nuw i32, ptr %.sink.i, i64 %_24
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_21 = add i32 %_22, 1
  %_26 = getelementptr inbounds nuw i32, ptr %.sink.i, i64 %_2715
  %_25 = load i32, ptr %_26, align 4, !noundef !23
  %x.y.i = tail call noundef i32 @llvm.smin.i32(i32 %_21, i32 %_25)
  store i32 %x.y.i, ptr %_26, align 4
  br label %bb11

bb12:                                             ; preds = %bb11
  %_35 = zext nneg i32 %iter1.sroa.4.075 to i64
  %_73 = icmp ugt i64 %_3, %_35
  br i1 %_73, label %bb29, label %panic5.invoke

bb15:                                             ; preds = %bb11, %bb29
  %_0.i.not.i23 = icmp slt i32 %iter1.sroa.4.075, 2
  br i1 %_0.i.not.i23, label %bb7, label %bb2.i24

panic5.invoke:                                    ; preds = %bb12, %bb8
  %13 = phi i64 [ %_24, %bb8 ], [ %_35, %bb12 ]
  %14 = phi ptr [ @alloc_95022116ad3bd7736275701fb5c7a7e1, %bb8 ], [ @alloc_f7df775103ba7d826e7788a8362f710c, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %13, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #21
          to label %panic5.cont unwind label %cleanup.thread

panic5.cont:                                      ; preds = %panic5.invoke
  unreachable

bb29:                                             ; preds = %bb12
  %_38.zext = zext nneg i32 %_3869 to i64
  %_34 = getelementptr inbounds nuw i32, ptr %.sink.i, i64 %_35
  %_33 = load i32, ptr %_34, align 4, !noundef !23
  %_32 = add i32 %_33, 1
  %_37 = getelementptr inbounds nuw i32, ptr %.sink.i, i64 %_38.zext
  %_36 = load i32, ptr %_37, align 4, !noundef !23
  %x.y.i36 = tail call noundef i32 @llvm.smin.i32(i32 %_32, i32 %_36)
  store i32 %x.y.i36, ptr %_37, align 4
  br label %bb15

bb21:                                             ; preds = %bb2.i16
  %_0.i3.i = icmp sge i32 %iter.sroa.0.073, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %15 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.073, %15
  %_11 = getelementptr inbounds nuw i32, ptr %.sink.i, i64 %_12
  %16 = sub nsw i32 %n, %iter.sroa.0.073
  store i32 %16, ptr %_11, align 4
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb2.i24, label %bb2.i16

panic9:                                           ; preds = %bb2.i16
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef %_3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_1255b2f09a22a633bb178e46c4b0d9f9) #21
          to label %unreachable unwind label %cleanup

bb18:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi102 = phi { ptr, i32 } [ %lpad.phi101, %bb2.i.i.i3.i ], [ %lpad.thr_comm.split-lp, %cleanup ]
  resume { ptr, i32 } %lpad.phi102
}
