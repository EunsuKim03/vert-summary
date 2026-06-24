define noundef i32 @f_gold(i32 noundef %m, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_5 = sext i32 %n to i64
  %_4 = add nsw i64 %_5, 1
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp ugt i64 %_4, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i, label %bb23, label %bb3.i4.i

bb3.i4.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb3.i.i.i

bb14.i:                                           ; preds = %bb3.i4.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i4.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb3.i.i.i:                                        ; preds = %bb3.i4.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1037
; call __rustc::__rust_alloc
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc12___rust_alloc(i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb3.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbb7c10415443ed18E.exit.i.i"

bb3.i.i:                                          ; preds = %bb3.i.i.i
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21
          to label %.noexc unwind label %bb20.thread

.noexc:                                           ; preds = %bb3.i.i
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbb7c10415443ed18E.exit.i.i": ; preds = %bb3.i.i.i
  %_2415.i.not.i = icmp eq i32 %n, 0
  br i1 %_2415.i.not.i, label %bb4.i.i, label %bb3.i3.i.preheader

bb3.i3.i.preheader:                               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbb7c10415443ed18E.exit.i.i"
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %bb3.i3.i.preheader135, label %vector.ph

vector.ph:                                        ; preds = %bb3.i3.i.preheader
  %n.vec = and i64 %_5, -8
  %4 = shl nsw i64 %n.vec, 2
  %5 = getelementptr i8, ptr %2, i64 %4
  %6 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx
  %7 = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !1042
  store <4 x i32> splat (i32 1), ptr %7, align 4, !noalias !1042
  %index.next = add nuw i64 %index, 8
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !1045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %_5
  br i1 %cmp.n, label %bb4.i.i, label %bb3.i3.i.preheader135

bb3.i3.i.preheader135:                            ; preds = %bb3.i3.i.preheader, %middle.block
  %ptr.sroa.0.018.i.i.ph = phi ptr [ %2, %bb3.i3.i.preheader ], [ %5, %middle.block ]
  %iter.sroa.0.017.i.i.ph = phi i64 [ 1, %bb3.i3.i.preheader ], [ %6, %middle.block ]
  br label %bb3.i3.i

bb4.i.i:                                          ; preds = %bb3.i3.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbb7c10415443ed18E.exit.i.i"
  %ptr.sroa.0.0.lcssa.i12.i = phi ptr [ %2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbb7c10415443ed18E.exit.i.i" ], [ %5, %middle.block ], [ %_15.i.i, %bb3.i3.i ]
  store i32 1, ptr %ptr.sroa.0.0.lcssa.i12.i, align 4, !noalias !1042
  br label %bb23

bb3.i3.i:                                         ; preds = %bb3.i3.i.preheader135, %bb3.i3.i
  %ptr.sroa.0.018.i.i = phi ptr [ %_15.i.i, %bb3.i3.i ], [ %ptr.sroa.0.018.i.i.ph, %bb3.i3.i.preheader135 ]
  %iter.sroa.0.017.i.i = phi i64 [ %_28.i.i, %bb3.i3.i ], [ %iter.sroa.0.017.i.i.ph, %bb3.i3.i.preheader135 ]
  %_28.i.i = add nuw i64 %iter.sroa.0.017.i.i, 1
  store i32 1, ptr %ptr.sroa.0.018.i.i, align 4, !noalias !1042
  %_15.i.i = getelementptr inbounds nuw i8, ptr %ptr.sroa.0.018.i.i, i64 4
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.017.i.i, %_5
  br i1 %exitcond.not.i.i, label %bb4.i.i, label %bb3.i3.i, !llvm.loop !1046

bb20:                                             ; preds = %bb2.i.i.i3.i23, %cleanup3
  br i1 %_8.i.i, label %bb21, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb20.thread, %bb20
  %.pn72 = phi { ptr, i32 } [ %10, %bb20.thread ], [ %13, %bb20 ]
  %9 = phi ptr [ %0, %bb20.thread ], [ %11, %bb20 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %9, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1047
  br label %bb21

bb20.thread:                                      ; preds = %bb3.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb23:                                             ; preds = %bb17.i.i, %bb4.i.i
  %11 = phi ptr [ %0, %bb4.i.i ], [ inttoptr (i64 4 to ptr), %bb17.i.i ]
  %.sink.i = phi ptr [ %2, %bb4.i.i ], [ inttoptr (i64 4 to ptr), %bb17.i.i ]
  %_0.i.not.i107 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i107, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb23, %bb10
  %iter.sroa.0.0108 = phi i32 [ %spec.select, %bb10 ], [ 2, %bb23 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0108, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %12 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0108, %12
  %_16 = zext nneg i32 %iter.sroa.0.0108 to i64
  %_47 = icmp ugt i64 %_4, %_16
  br i1 %_47, label %bb25, label %panic9.invoke

cleanup3:                                         ; preds = %panic9.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
  %_6.i.i.i.i2.i22 = icmp eq i64 %_4, 0
  br i1 %_6.i.i.i.i2.i22, label %bb20, label %bb2.i.i.i3.i23

bb2.i.i.i3.i23:                                   ; preds = %cleanup3
  %14 = shl nuw nsw i64 %_4, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i, i64 noundef %14, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1056
  br label %bb20

bb4:                                              ; preds = %bb10, %bb23
  %_29 = sext i32 %m to i64
  %_52 = icmp ugt i64 %_4, %_29
  br i1 %_52, label %bb26, label %panic9.invoke

bb26:                                             ; preds = %bb4
  %_0.i.not.i31109 = icmp sgt i32 %m, %n
  br i1 %_0.i.not.i31109, label %bb2.i.i.i3.i42, label %bb2.i32.preheader

bb2.i32.preheader:                                ; preds = %bb26
  %_28 = getelementptr inbounds nuw i32, ptr %11, i64 %_29
  %15 = load i32, ptr %_28, align 4, !noundef !23
  br label %bb2.i32

bb2.i32:                                          ; preds = %bb2.i32.preheader, %bb32
  %num.sroa.0.0112 = phi i32 [ %num.sroa.0.1, %bb32 ], [ %m, %bb2.i32.preheader ]
  %max.sroa.0.0111 = phi i32 [ %max.sroa.0.1, %bb32 ], [ %15, %bb2.i32.preheader ]
  %iter2.sroa.0.0110 = phi i32 [ %spec.select96, %bb32 ], [ %m, %bb2.i32.preheader ]
  %_39 = sext i32 %iter2.sroa.0.0110 to i64
  %_75 = icmp ugt i64 %_4, %_39
  br i1 %_75, label %bb32, label %panic9.invoke

bb2.i.i.i3.i42:                                   ; preds = %bb32, %bb26
  %num.sroa.0.0.lcssa = phi i32 [ %m, %bb26 ], [ %num.sroa.0.1, %bb32 ]
  %16 = shl nuw nsw i64 %_4, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i, i64 noundef %16, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1065
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %11, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1074
  ret i32 %num.sroa.0.0.lcssa

bb32:                                             ; preds = %bb2.i32
  %_0.i3.i33 = icmp sge i32 %iter2.sroa.0.0110, %n
  %not._0.i3.i33 = xor i1 %_0.i3.i33, true
  %17 = zext i1 %not._0.i3.i33 to i32
  %spec.select96 = add nsw i32 %iter2.sroa.0.0110, %17
  %_38 = getelementptr inbounds nuw i32, ptr %11, i64 %_39
  %_37 = load i32, ptr %_38, align 4, !noundef !23
  %_36 = icmp sgt i32 %_37, %max.sroa.0.0111
  %max.sroa.0.1 = tail call i32 @llvm.smax.i32(i32 %_37, i32 %max.sroa.0.0111)
  %num.sroa.0.1 = select i1 %_36, i32 %iter2.sroa.0.0110, i32 %num.sroa.0.0112
  %_0.i.not.i31 = icmp sgt i32 %spec.select96, %n
  %or.cond100 = select i1 %_0.i3.i33, i1 true, i1 %_0.i.not.i31
  br i1 %or.cond100, label %bb2.i.i.i3.i42, label %bb2.i32

bb25:                                             ; preds = %bb2.i
  %_15 = getelementptr inbounds nuw i32, ptr %.sink.i, i64 %_16
  %_14 = load i32, ptr %_15, align 4, !noundef !23
  %_13 = icmp eq i32 %_14, 1
  br i1 %_13, label %bb27, label %bb10

bb10:                                             ; preds = %bb29, %bb27, %bb25
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb27:                                             ; preds = %bb25
  %_17 = getelementptr inbounds nuw i32, ptr %11, i64 %_16
  store i32 1, ptr %_17, align 4
  %_19 = shl nuw i32 %iter.sroa.0.0108, 1
  %_0.i.not.i56105 = icmp sgt i32 %_19, %n
  br i1 %_0.i.not.i56105, label %bb10, label %bb2.i57

bb2.i57:                                          ; preds = %bb27, %bb29
  %iter1.sroa.0.0106 = phi i32 [ %spec.select98, %bb29 ], [ %_19, %bb27 ]
  %_26 = sext i32 %iter1.sroa.0.0106 to i64
  %_64 = icmp ugt i64 %_4, %_26
  br i1 %_64, label %bb29, label %panic9.invoke

bb29:                                             ; preds = %bb2.i57
  %_0.i3.i58 = icmp sge i32 %iter1.sroa.0.0106, %n
  %not._0.i3.i58 = xor i1 %_0.i3.i58, true
  %18 = zext i1 %not._0.i3.i58 to i32
  %spec.select98 = add nsw i32 %iter1.sroa.0.0106, %18
  %_25 = getelementptr inbounds nuw i32, ptr %11, i64 %_26
  %19 = load i32, ptr %_25, align 4, !noundef !23
  %20 = add i32 %19, 1
  store i32 %20, ptr %_25, align 4
  %_27 = getelementptr inbounds nuw i32, ptr %.sink.i, i64 %_26
  store i32 0, ptr %_27, align 4
  %_0.i.not.i56 = icmp sgt i32 %spec.select98, %n
  %or.cond101 = select i1 %_0.i3.i58, i1 true, i1 %_0.i.not.i56
  br i1 %or.cond101, label %bb10, label %bb2.i57

panic9.invoke:                                    ; preds = %bb2.i, %bb2.i57, %bb2.i32, %bb4
  %21 = phi i64 [ %_29, %bb4 ], [ %_39, %bb2.i32 ], [ %_26, %bb2.i57 ], [ %_16, %bb2.i ]
  %22 = phi ptr [ @alloc_5357896e48dc21afd5ab6a3d61a4e9cb, %bb4 ], [ @alloc_04ddb3480b23ec5c42eb071f20f87d55, %bb2.i32 ], [ @alloc_1c013262555e8f69e25bd91aa1d1a3f2, %bb2.i57 ], [ @alloc_e00afdeb8a0613c643c7084163b3ce95, %bb2.i ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %21, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %22) #21
          to label %panic9.cont unwind label %cleanup3

panic9.cont:                                      ; preds = %panic9.invoke
  unreachable

bb21:                                             ; preds = %bb2.i.i.i3.i, %bb20
  %.pn73 = phi { ptr, i32 } [ %13, %bb20 ], [ %.pn72, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %.pn73
}
