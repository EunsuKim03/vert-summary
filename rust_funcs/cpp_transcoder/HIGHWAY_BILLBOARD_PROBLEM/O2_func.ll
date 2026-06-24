define noundef i32 @f_gold(i32 noundef %m, i64 %0, i64 %1, i32 noundef %n, i32 noundef %t) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %revenue = alloca [8 x i8], align 8
  %x = alloca [8 x i8], align 8
  store i64 %0, ptr %x, align 8
  store i64 %1, ptr %revenue, align 8
  %_8 = sext i32 %m to i64
  %_7 = add nsw i64 %_8, 1
  %_21.0.i.i.i = shl nsw i64 %_7, 2
  %_21.1.i.i.i = icmp ugt i64 %_7, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_7, 0
  br i1 %_8.i.i, label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h54b3495de4f326aaE.exit", label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb10.i.i

bb10.i.i:                                         ; preds = %bb3.i3.i
  %4 = ptrtoint ptr %2 to i64
  br label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h54b3495de4f326aaE.exit"

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h54b3495de4f326aaE.exit": ; preds = %bb17.i.i, %bb10.i.i
  %_16.sroa.10.0.i = phi i64 [ %4, %bb10.i.i ], [ 4, %bb17.i.i ]
  %5 = inttoptr i64 %_16.sroa.10.0.i to ptr
  %_0.i.not.i59 = icmp slt i32 %m, 1
  br i1 %_0.i.not.i59, label %bb4, label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h54b3495de4f326aaE.exit"
  %6 = xor i32 %t, -1
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb18
  %nxtbb.sroa.0.061 = phi i32 [ 0, %bb2.i.lr.ph ], [ %nxtbb.sroa.0.1, %bb18 ]
  %iter.sroa.0.060 = phi i32 [ 1, %bb2.i.lr.ph ], [ %spec.select, %bb18 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.060, %m
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %7 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.060, %7
  %_16 = icmp slt i32 %nxtbb.sroa.0.061, %n
  br i1 %_16, label %bb5, label %bb17

cleanup.thread:                                   ; preds = %panic12.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

cleanup:                                          ; preds = %panic11.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %_8.i.i, label %bb21, label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %cleanup.thread, %cleanup
  %lpad.phi36 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup.thread ], [ %lpad.thr_comm.split-lp, %cleanup ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb21

bb4:                                              ; preds = %bb18, %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h54b3495de4f326aaE.exit"
  %_69.not = icmp eq i32 %m, -1
  br i1 %_69.not, label %panic11.invoke, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb25f0935414a1de3E.exit26"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hb25f0935414a1de3E.exit26": ; preds = %bb4
  %_64 = getelementptr inbounds nuw i32, ptr %5, i64 %_8
  %_0 = load i32, ptr %_64, align 4, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  ret i32 %_0

bb17:                                             ; preds = %bb2.i
  %_61 = add nsw i32 %iter.sroa.0.060, -1
  %_60 = sext i32 %_61 to i64
  %_112 = icmp ugt i64 %_7, %_60
  br i1 %_112, label %bb32, label %panic11.invoke

bb5:                                              ; preds = %bb2.i
  %_20 = sext i32 %nxtbb.sroa.0.061 to i64
  %_22 = icmp ult i32 %nxtbb.sroa.0.061, 2
  br i1 %_22, label %bb6, label %panic11.invoke

bb32:                                             ; preds = %bb17
  %_63 = zext nneg i32 %iter.sroa.0.060 to i64
  %_118 = icmp ugt i64 %_7, %_63
  br i1 %_118, label %bb33, label %panic12.invoke

bb33:                                             ; preds = %bb32
  %_59 = getelementptr inbounds nuw i32, ptr %5, i64 %_60
  %_58 = load i32, ptr %_59, align 4, !noundef !23
  %_62 = getelementptr inbounds nuw i32, ptr %5, i64 %_63
  store i32 %_58, ptr %_62, align 4
  br label %bb18

bb18:                                             ; preds = %bb15, %bb26, %bb33
  %nxtbb.sroa.0.1 = phi i32 [ %nxtbb.sroa.0.061, %bb26 ], [ %10, %bb15 ], [ %nxtbb.sroa.0.061, %bb33 ]
  %_0.i.not.i = icmp sgt i32 %spec.select, %m
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb6:                                              ; preds = %bb5
  %8 = getelementptr inbounds nuw i32, ptr %x, i64 %_20
  %_19 = load i32, ptr %8, align 4, !noundef !23
  %_18.not = icmp eq i32 %_19, %iter.sroa.0.060
  br i1 %_18.not, label %bb8, label %bb7

bb8:                                              ; preds = %bb6
  %_29.not = icmp sgt i32 %iter.sroa.0.060, %t
  br i1 %_29.not, label %bb12, label %bb9

bb7:                                              ; preds = %bb6
  %_26 = add nsw i32 %iter.sroa.0.060, -1
  %_25 = sext i32 %_26 to i64
  %_74 = icmp ugt i64 %_7, %_25
  br i1 %_74, label %bb25, label %panic11.invoke

bb12:                                             ; preds = %bb8
  %_46 = add i32 %iter.sroa.0.060, %6
  %_45 = sext i32 %_46 to i64
  %_96 = icmp ugt i64 %_7, %_45
  br i1 %_96, label %bb13, label %panic11.invoke

bb9:                                              ; preds = %bb8
  %_34 = add nsw i32 %iter.sroa.0.060, -1
  %_33 = sext i32 %_34 to i64
  %_85 = icmp ugt i64 %_7, %_33
  br i1 %_85, label %bb11, label %panic11.invoke

bb13:                                             ; preds = %bb12
  %_55 = add nsw i32 %iter.sroa.0.060, -1
  %_54 = sext i32 %_55 to i64
  %_101 = icmp ugt i64 %_7, %_54
  br i1 %_101, label %bb14, label %panic12.invoke

bb14:                                             ; preds = %bb13
  %_57 = zext nneg i32 %iter.sroa.0.060 to i64
  %_107 = icmp ugt i64 %_7, %_57
  br i1 %_107, label %bb31, label %panic12.invoke

bb31:                                             ; preds = %bb14
  %_44 = getelementptr inbounds nuw i32, ptr %5, i64 %_45
  %_43 = load i32, ptr %_44, align 4, !noundef !23
  %9 = getelementptr inbounds nuw i32, ptr %revenue, i64 %_20
  %_48 = load i32, ptr %9, align 4, !noundef !23
  %_42 = add i32 %_48, %_43
  %_53 = getelementptr inbounds nuw i32, ptr %5, i64 %_54
  %_52 = load i32, ptr %_53, align 4, !noundef !23
  %x.y.i = tail call noundef i32 @llvm.smax.i32(i32 %_42, i32 %_52)
  br label %bb15

bb15:                                             ; preds = %bb28, %bb31
  %_40.sink = phi i64 [ %_40, %bb28 ], [ %_57, %bb31 ]
  %x.y.i27.sink = phi i32 [ %x.y.i27, %bb28 ], [ %x.y.i, %bb31 ]
  %_39 = getelementptr inbounds nuw i32, ptr %5, i64 %_40.sink
  store i32 %x.y.i27.sink, ptr %_39, align 4
  %10 = add nuw nsw i32 %nxtbb.sroa.0.061, 1
  br label %bb18

bb11:                                             ; preds = %bb9
  %_40 = zext nneg i32 %iter.sroa.0.060 to i64
  %_91 = icmp ugt i64 %_7, %_40
  br i1 %_91, label %bb28, label %panic12.invoke

bb28:                                             ; preds = %bb11
  %_32 = getelementptr inbounds nuw i32, ptr %5, i64 %_33
  %_31 = load i32, ptr %_32, align 4, !noundef !23
  %11 = getelementptr inbounds nuw i32, ptr %revenue, i64 %_20
  %_35 = load i32, ptr %11, align 4, !noundef !23
  %x.y.i27 = tail call noundef i32 @llvm.smax.i32(i32 %_31, i32 %_35)
  br label %bb15

bb25:                                             ; preds = %bb7
  %_28 = zext nneg i32 %iter.sroa.0.060 to i64
  %_80 = icmp ugt i64 %_7, %_28
  br i1 %_80, label %bb26, label %panic12.invoke

panic11.invoke:                                   ; preds = %bb7, %bb9, %bb12, %bb5, %bb17, %bb4
  %12 = phi i64 [ %_8, %bb4 ], [ %_60, %bb17 ], [ %_20, %bb5 ], [ %_45, %bb12 ], [ %_33, %bb9 ], [ %_25, %bb7 ]
  %13 = phi i64 [ %_7, %bb4 ], [ %_7, %bb17 ], [ 2, %bb5 ], [ %_7, %bb12 ], [ %_7, %bb9 ], [ %_7, %bb7 ]
  %14 = phi ptr [ @alloc_e905cd9cf2f6ea3ef6e01fc8d93c96cb, %bb4 ], [ @alloc_7b159c33c2e94a597a22c3cb0cf394a8, %bb17 ], [ @alloc_715c5b63f7be27a8280b635ba289bbab, %bb5 ], [ @alloc_ae4449848aa5f741f92e8b18de7a4df7, %bb12 ], [ @alloc_e54864c329e5803eb72e16fed52fd097, %bb9 ], [ @alloc_e816a0cd402cca6ca0544ab61e00b9ea, %bb7 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %12, i64 noundef %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #21
          to label %panic11.cont unwind label %cleanup

panic11.cont:                                     ; preds = %panic11.invoke
  unreachable

bb26:                                             ; preds = %bb25
  %_24 = getelementptr inbounds nuw i32, ptr %5, i64 %_25
  %_23 = load i32, ptr %_24, align 4, !noundef !23
  %_27 = getelementptr inbounds nuw i32, ptr %5, i64 %_28
  store i32 %_23, ptr %_27, align 4
  br label %bb18

panic12.invoke:                                   ; preds = %bb25, %bb11, %bb14, %bb13, %bb32
  %15 = phi i64 [ %_63, %bb32 ], [ %_54, %bb13 ], [ %_57, %bb14 ], [ %_40, %bb11 ], [ %_28, %bb25 ]
  %16 = phi ptr [ @alloc_10871d23aef8ecdaf9b1f155b10148ff, %bb32 ], [ @alloc_85b5048475d5138a769bb49c99994e41, %bb13 ], [ @alloc_09627b1f7f5f6de490b95de6a5523bcd, %bb14 ], [ @alloc_0c9667e486f4134f19127ffbfcc0fd43, %bb11 ], [ @alloc_ed078af97d30e535c09b62bdd74b1c5a, %bb25 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %15, i64 noundef %_7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %16) #21
          to label %panic12.cont unwind label %cleanup.thread

panic12.cont:                                     ; preds = %panic12.invoke
  unreachable

bb21:                                             ; preds = %bb2.i.i.i3.i, %cleanup
  %lpad.phi37 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %cleanup ], [ %lpad.phi36, %bb2.i.i.i3.i ]
  resume { ptr, i32 } %lpad.phi37
}
