define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_51 = alloca [16 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_2 = load i64, ptr %0, align 8, !noundef !23
  %_80 = icmp sgt i64 %_2, -1
  tail call void @llvm.assume(i1 %_80)
  %1 = trunc i64 %_2 to i32
  %sext = shl i64 %_2, 32
  %_5 = ashr exact i64 %sext, 32
  %_4 = add nsw i64 %_5, 1
  %_21.0.i.i.i = shl nsw i64 %_4, 2
  %_21.1.i.i.i = icmp ugt i64 %_4, 4611686018427387903
  %_26.i.i.i = icmp ugt i64 %_21.0.i.i.i, 9223372036854775804
  %or.cond.i.i.i = or i1 %_21.1.i.i.i, %_26.i.i.i
  br i1 %or.cond.i.i.i, label %bb14.i, label %bb17.i.i, !prof !339

bb17.i.i:                                         ; preds = %start
  %_8.i.i = icmp eq i64 %_4, 0
  br i1 %_8.i.i, label %panic, label %bb3.i3.i

bb3.i3.i:                                         ; preds = %bb17.i.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1040
; call __rustc::__rust_alloc_zeroed
  %2 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1040
  %3 = icmp eq ptr %2, null
  br i1 %3, label %bb14.i, label %bb3.i3.i58

bb14.i:                                           ; preds = %bb3.i3.i, %start
  %_16.sroa.4.0.ph.i = phi i64 [ 4, %bb3.i3.i ], [ 0, %start ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %_16.sroa.4.0.ph.i, i64 %_21.0.i.i.i) #22
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb14.i
  unreachable

bb36:                                             ; preds = %bb2.i.i.i3.i, %cleanup4.thread240, %cleanup
  %.pn.pn = phi { ptr, i32 } [ %5, %cleanup ], [ %.pn233, %bb2.i.i.i3.i ], [ %lpad.thr_comm.split-lp243, %cleanup4.thread240 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1060, !alias.scope !1061, !noalias !1064, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb37, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb36
  %4 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %4, align 8, !alias.scope !1061, !noalias !1064, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1066
  br label %bb37

cleanup:                                          ; preds = %bb14.i
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb36

bb3.i3.i58:                                       ; preds = %bb3.i3.i
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1067
; call __rustc::__rust_alloc_zeroed
  %6 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1067
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb14.i61, label %bb40

bb14.i61:                                         ; preds = %bb3.i3.i58
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #22
          to label %.noexc63 unwind label %bb35.thread

.noexc63:                                         ; preds = %bb14.i61
  unreachable

bb35:                                             ; preds = %cleanup4, %cleanup4.thread
  %lpad.phi239 = phi { ptr, i32 } [ %lpad.thr_comm, %cleanup4.thread ], [ %lpad.thr_comm.split-lp, %cleanup4 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1072
  br label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb35, %bb35.thread
  %.pn233 = phi { ptr, i32 } [ %8, %bb35.thread ], [ %lpad.phi239, %bb35 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1081
  br label %bb36

bb35.thread:                                      ; preds = %bb14.i61
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb2.i.i.i3.i

bb40:                                             ; preds = %bb3.i3.i58
  store i32 0, ptr %2, align 4
  %_92.not = icmp eq i64 %sext, -4294967296
  br i1 %_92.not, label %panic21.invoke, label %bb45

panic:                                            ; preds = %bb17.i.i
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_df8a023a655685e9fd0008fb80e57673) #22
          to label %unreachable unwind label %cleanup4.thread240

cleanup4.thread240:                               ; preds = %panic
  %lpad.thr_comm.split-lp243 = landingpad { ptr, i32 }
          cleanup
  br label %bb36

cleanup4.thread:                                  ; preds = %bb77.invoke, %panic21.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb35

cleanup4:                                         ; preds = %panic18.invoke
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb35

unreachable:                                      ; preds = %panic
  unreachable

bb45:                                             ; preds = %bb40
  %_9 = getelementptr inbounds nuw i32, ptr %6, i64 %_5
  store i32 0, ptr %_9, align 4
  %9 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_96 = load ptr, ptr %9, align 8, !nonnull !23, !noundef !23
  %_103 = getelementptr inbounds nuw i8, ptr %_96, i64 %_2
  %_7.i.i = icmp samesign eq i64 %_2, 0
  br i1 %_7.i.i, label %bb77.invoke, label %bb14.i70

bb14.i70:                                         ; preds = %bb45
  %x.i = load i8, ptr %_96, align 1, !noalias !1090, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i70
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_96, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %_2, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1090, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %10 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb43

bb3.i:                                            ; preds = %bb14.i70
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb43

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_96, i64 2
  %_7.i17.i = icmp samesign ne i64 %_2, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1090, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %11 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb43

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_96, i64 3
  %_7.i24.i = icmp samesign ne i64 %_2, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1090, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %12 = or disjoint i32 %_27.i, %_25.i
  br label %bb43

bb43:                                             ; preds = %bb4.i, %bb3.i, %bb6.i, %bb8.i
  %_0.sroa.4.0.i = phi i32 [ %_7.i, %bb3.i ], [ %12, %bb8.i ], [ %11, %bb6.i ], [ %10, %bb4.i ]
  switch i32 %_0.sroa.4.0.i, label %bb3 [
    i32 1114112, label %bb77.invoke
    i32 40, label %bb1
  ], !prof !1093

bb1:                                              ; preds = %bb43
  %_121.not = icmp eq i64 %sext, 0
  br i1 %_121.not, label %panic21.invoke, label %bb52

bb3:                                              ; preds = %bb43, %bb52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_21)
  store ptr %_96, ptr %_21, align 8
  %13 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  store ptr %_103, ptr %13, align 8
  %_23 = add nsw i64 %_5, -1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_136 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_21, i64 noundef %_23)
  %.not41 = icmp eq i64 %_136, 0
  br i1 %.not41, label %bb56, label %bb77.invoke

bb52:                                             ; preds = %bb1
  %_16 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %_16, align 4
  br label %bb3

bb56:                                             ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %ptr.i.i71 = load ptr, ptr %_21, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %end_or_len.i.i72 = load ptr, ptr %13, align 8, !alias.scope !1097, !nonnull !23, !noundef !23
  %_7.i.i73 = icmp eq ptr %ptr.i.i71, %end_or_len.i.i72
  br i1 %_7.i.i73, label %bb77.invoke, label %bb14.i74

bb14.i74:                                         ; preds = %bb56
  %x.i76 = load i8, ptr %ptr.i.i71, align 1, !noalias !1094, !noundef !23
  %_6.i77 = icmp sgt i8 %x.i76, -1
  br i1 %_6.i77, label %bb3.i110, label %bb4.i78

bb4.i78:                                          ; preds = %bb14.i74
  %_18.i.i75 = getelementptr inbounds nuw i8, ptr %ptr.i.i71, i64 1
  %_30.i79 = and i8 %x.i76, 31
  %init.i80 = zext nneg i8 %_30.i79 to i32
  %_7.i10.i81 = icmp ne ptr %_18.i.i75, %end_or_len.i.i72
  tail call void @llvm.assume(i1 %_7.i10.i81)
  %y.i83 = load i8, ptr %_18.i.i75, align 1, !noalias !1094, !noundef !23
  %_34.i84 = shl nuw nsw i32 %init.i80, 6
  %_36.i85 = and i8 %y.i83, 63
  %_35.i86 = zext nneg i8 %_36.i85 to i32
  %14 = or disjoint i32 %_34.i84, %_35.i86
  %_13.i87 = icmp samesign ugt i8 %x.i76, -33
  br i1 %_13.i87, label %bb6.i90, label %bb54

bb3.i110:                                         ; preds = %bb14.i74
  %_7.i111 = zext nneg i8 %x.i76 to i32
  br label %bb54

bb6.i90:                                          ; preds = %bb4.i78
  %_18.i12.i82 = getelementptr inbounds nuw i8, ptr %ptr.i.i71, i64 2
  %_7.i17.i91 = icmp ne ptr %_18.i12.i82, %end_or_len.i.i72
  tail call void @llvm.assume(i1 %_7.i17.i91)
  %z.i93 = load i8, ptr %_18.i12.i82, align 1, !noalias !1094, !noundef !23
  %_40.i94 = shl nuw nsw i32 %_35.i86, 6
  %_42.i95 = and i8 %z.i93, 63
  %_41.i96 = zext nneg i8 %_42.i95 to i32
  %y_z.i97 = or disjoint i32 %_40.i94, %_41.i96
  %_20.i98 = shl nuw nsw i32 %init.i80, 12
  %15 = or disjoint i32 %y_z.i97, %_20.i98
  %_21.i99 = icmp samesign ugt i8 %x.i76, -17
  br i1 %_21.i99, label %bb8.i100, label %bb54

bb8.i100:                                         ; preds = %bb6.i90
  %_18.i19.i92 = getelementptr inbounds nuw i8, ptr %ptr.i.i71, i64 3
  %_7.i24.i101 = icmp ne ptr %_18.i19.i92, %end_or_len.i.i72
  tail call void @llvm.assume(i1 %_7.i24.i101)
  %w.i103 = load i8, ptr %_18.i19.i92, align 1, !noalias !1094, !noundef !23
  %_26.i104 = shl nuw nsw i32 %init.i80, 18
  %_25.i105 = and i32 %_26.i104, 1835008
  %_46.i106 = shl nuw nsw i32 %y_z.i97, 6
  %_48.i107 = and i8 %w.i103, 63
  %_47.i108 = zext nneg i8 %_48.i107 to i32
  %_27.i109 = or disjoint i32 %_46.i106, %_47.i108
  %16 = or disjoint i32 %_27.i109, %_25.i105
  br label %bb54

bb54:                                             ; preds = %bb3.i110, %bb8.i100, %bb6.i90, %bb4.i78
  %_0.sroa.4.0.i88.ph = phi i32 [ %14, %bb4.i78 ], [ %15, %bb6.i90 ], [ %16, %bb8.i100 ], [ %_7.i111, %bb3.i110 ]
  switch i32 %_0.sroa.4.0.i88.ph, label %bb5 [
    i32 1114112, label %bb77.invoke
    i32 41, label %bb4
  ], !prof !1093

bb5:                                              ; preds = %bb54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  br label %bb6

bb4:                                              ; preds = %bb54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_21)
  %_150 = icmp ult i64 %_23, %_4
  br i1 %_150, label %bb63, label %panic21.invoke

bb6:                                              ; preds = %bb63, %bb5
  %_151274 = icmp sgt i32 %1, 1
  br i1 %_151274, label %bb9.lr.ph, label %bb10

bb9.lr.ph:                                        ; preds = %bb6
  %17 = getelementptr inbounds nuw i8, ptr %_32, i64 8
  %wide.trip.count = and i64 %_2, 2147483647
  br label %bb9

bb63:                                             ; preds = %bb4
  %_24 = getelementptr inbounds nuw i32, ptr %6, i64 %_23
  store i32 1, ptr %_24, align 4
  br label %bb6

bb9:                                              ; preds = %bb9.lr.ph, %bb13
  %indvars.iv283 = phi i64 [ 1, %bb9.lr.ph ], [ %indvars.iv.next284.pre-phi, %bb13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_32)
  store ptr %_96, ptr %_32, align 8
  store ptr %_103, ptr %17, align 8
  %_34 = add nsw i64 %indvars.iv283, -1
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_172 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_32, i64 noundef %_34)
  %.not45 = icmp eq i64 %_172, 0
  br i1 %.not45, label %bb72, label %bb77.invoke

bb10:                                             ; preds = %bb13, %bb6
  %18 = add i32 %1, -1
  %_203276 = icmp sgt i32 %18, 0
  br i1 %_203276, label %bb15.lr.ph, label %bb88

bb15.lr.ph:                                       ; preds = %bb10
  %19 = add nuw i64 %_2, 4294967294
  %20 = getelementptr inbounds nuw i8, ptr %_51, i64 8
  %21 = and i64 %19, 4294967295
  %22 = zext nneg i32 %18 to i64
  br label %bb15

bb15:                                             ; preds = %bb15.lr.ph, %bb19
  %indvars.iv288 = phi i64 [ %22, %bb15.lr.ph ], [ %indvars.iv.next289, %bb19 ]
  %indvars.iv = phi i64 [ %21, %bb15.lr.ph ], [ %indvars.iv.next, %bb19 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_51)
  store ptr %_96, ptr %_51, align 8
  store ptr %_103, ptr %20, align 8
; call <core::str::iter::Chars as core::iter::traits::iterator::Iterator>::advance_by
  %_229 = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E"(ptr noalias noundef align 8 dereferenceable(16) %_51, i64 noundef %indvars.iv)
  %.not43 = icmp eq i64 %_229, 0
  br i1 %.not43, label %bb92, label %bb77.invoke

bb88:                                             ; preds = %bb19, %bb10
  %_64 = getelementptr inbounds nuw i32, ptr %2, i64 %_5
  %_63 = load i32, ptr %_64, align 4, !noundef !23
  %_62 = icmp eq i32 %_63, 0
  br i1 %_62, label %bb32, label %bb103

bb103:                                            ; preds = %bb88
  %_66 = load i32, ptr %6, align 4, !noundef !23
  %_65 = icmp eq i32 %_66, 0
  br i1 %_65, label %bb32, label %bb24

bb24:                                             ; preds = %bb103, %bb106
  %iter.sroa.0.0 = phi i32 [ %spec.select, %bb106 ], [ 0, %bb103 ]
  %iter.sroa.7.0 = phi i1 [ %_0.i3.i, %bb106 ], [ false, %bb103 ]
  %_0.i.not.i = icmp sgt i32 %iter.sroa.0.0, %1
  %or.cond = select i1 %iter.sroa.7.0, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb32, label %bb2.i

bb2.i:                                            ; preds = %bb24
  %_77 = zext nneg i32 %iter.sroa.0.0 to i64
  %_269 = icmp ugt i64 %_4, %_77
  br i1 %_269, label %bb106, label %panic18.invoke

bb106:                                            ; preds = %bb2.i
  %_0.i3.i = icmp sge i32 %iter.sroa.0.0, %1
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %23 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.0, %23
  %_76 = getelementptr inbounds nuw i32, ptr %2, i64 %_77
  %_75 = load i32, ptr %_76, align 4, !noundef !23
  %_79 = getelementptr inbounds nuw i32, ptr %6, i64 %_77
  %_78 = load i32, ptr %_79, align 4, !noundef !23
  %_74 = icmp eq i32 %_75, %_78
  br i1 %_74, label %bb32, label %bb24

bb32:                                             ; preds = %bb24, %bb106, %bb103, %bb88
  %len.sroa.0.0 = phi i32 [ %1, %bb88 ], [ 0, %bb103 ], [ -1, %bb24 ], [ %iter.sroa.0.0, %bb106 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1100
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #21, !noalias !1109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %self1.i.i.i.i1.i.i130 = load i64, ptr %str, align 8, !range !1060, !alias.scope !1133, !noalias !1136, !noundef !23
  %_6.i.i.i.i2.i.i131 = icmp eq i64 %self1.i.i.i.i1.i.i130, 0
  br i1 %_6.i.i.i.i2.i.i131, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371fff1e478da1e2E.exit134", label %bb2.i.i.i3.i.i132

bb2.i.i.i3.i.i132:                                ; preds = %bb32
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_96, i64 noundef %self1.i.i.i.i1.i.i130, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1138
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371fff1e478da1e2E.exit134"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h371fff1e478da1e2E.exit134": ; preds = %bb32, %bb2.i.i.i3.i.i132
  ret i32 %len.sroa.0.0

bb92:                                             ; preds = %bb15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %ptr.i.i135 = load ptr, ptr %_51, align 8, !alias.scope !1142, !nonnull !23, !noundef !23
  %end_or_len.i.i136 = load ptr, ptr %20, align 8, !alias.scope !1142, !nonnull !23, !noundef !23
  %_7.i.i137 = icmp eq ptr %ptr.i.i135, %end_or_len.i.i136
  br i1 %_7.i.i137, label %bb77.invoke, label %bb14.i138

bb14.i138:                                        ; preds = %bb92
  %x.i140 = load i8, ptr %ptr.i.i135, align 1, !noalias !1139, !noundef !23
  %_6.i141 = icmp sgt i8 %x.i140, -1
  br i1 %_6.i141, label %bb3.i174, label %bb4.i142

bb4.i142:                                         ; preds = %bb14.i138
  %_18.i.i139 = getelementptr inbounds nuw i8, ptr %ptr.i.i135, i64 1
  %_30.i143 = and i8 %x.i140, 31
  %init.i144 = zext nneg i8 %_30.i143 to i32
  %_7.i10.i145 = icmp ne ptr %_18.i.i139, %end_or_len.i.i136
  tail call void @llvm.assume(i1 %_7.i10.i145)
  %y.i147 = load i8, ptr %_18.i.i139, align 1, !noalias !1139, !noundef !23
  %_34.i148 = shl nuw nsw i32 %init.i144, 6
  %_36.i149 = and i8 %y.i147, 63
  %_35.i150 = zext nneg i8 %_36.i149 to i32
  %24 = or disjoint i32 %_34.i148, %_35.i150
  %_13.i151 = icmp samesign ugt i8 %x.i140, -33
  br i1 %_13.i151, label %bb6.i154, label %bb90

bb3.i174:                                         ; preds = %bb14.i138
  %_7.i175 = zext nneg i8 %x.i140 to i32
  br label %bb90

bb6.i154:                                         ; preds = %bb4.i142
  %_18.i12.i146 = getelementptr inbounds nuw i8, ptr %ptr.i.i135, i64 2
  %_7.i17.i155 = icmp ne ptr %_18.i12.i146, %end_or_len.i.i136
  tail call void @llvm.assume(i1 %_7.i17.i155)
  %z.i157 = load i8, ptr %_18.i12.i146, align 1, !noalias !1139, !noundef !23
  %_40.i158 = shl nuw nsw i32 %_35.i150, 6
  %_42.i159 = and i8 %z.i157, 63
  %_41.i160 = zext nneg i8 %_42.i159 to i32
  %y_z.i161 = or disjoint i32 %_40.i158, %_41.i160
  %_20.i162 = shl nuw nsw i32 %init.i144, 12
  %25 = or disjoint i32 %y_z.i161, %_20.i162
  %_21.i163 = icmp samesign ugt i8 %x.i140, -17
  br i1 %_21.i163, label %bb8.i164, label %bb90

bb8.i164:                                         ; preds = %bb6.i154
  %_18.i19.i156 = getelementptr inbounds nuw i8, ptr %ptr.i.i135, i64 3
  %_7.i24.i165 = icmp ne ptr %_18.i19.i156, %end_or_len.i.i136
  tail call void @llvm.assume(i1 %_7.i24.i165)
  %w.i167 = load i8, ptr %_18.i19.i156, align 1, !noalias !1139, !noundef !23
  %_26.i168 = shl nuw nsw i32 %init.i144, 18
  %_25.i169 = and i32 %_26.i168, 1835008
  %_46.i170 = shl nuw nsw i32 %y_z.i161, 6
  %_48.i171 = and i8 %w.i167, 63
  %_47.i172 = zext nneg i8 %_48.i171 to i32
  %_27.i173 = or disjoint i32 %_46.i170, %_47.i172
  %26 = or disjoint i32 %_27.i173, %_25.i169
  br label %bb90

bb90:                                             ; preds = %bb3.i174, %bb8.i164, %bb6.i154, %bb4.i142
  %_0.sroa.4.0.i152.ph = phi i32 [ %24, %bb4.i142 ], [ %25, %bb6.i154 ], [ %26, %bb8.i164 ], [ %_7.i175, %bb3.i174 ]
  switch i32 %_0.sroa.4.0.i152.ph, label %bb18 [
    i32 1114112, label %bb77.invoke
    i32 41, label %bb17
  ], !prof !1093

bb18:                                             ; preds = %bb90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_51)
  %_253 = icmp ugt i64 %_4, %indvars.iv288
  br i1 %_253, label %bb102, label %panic18.invoke

bb17:                                             ; preds = %bb90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_51)
  %_242 = icmp ugt i64 %_4, %indvars.iv288
  br i1 %_242, label %bb100, label %panic21.invoke

bb102:                                            ; preds = %bb18
  %_59 = getelementptr inbounds nuw i32, ptr %6, i64 %indvars.iv288
  %_58 = load i32, ptr %_59, align 4, !noundef !23
  %_61 = getelementptr inbounds nuw i32, ptr %6, i64 %indvars.iv
  store i32 %_58, ptr %_61, align 4
  br label %bb19

bb19:                                             ; preds = %bb100, %bb102
  %_203 = icmp sgt i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next289 = add nsw i64 %indvars.iv288, -1
  br i1 %_203, label %bb15, label %bb88

bb100:                                            ; preds = %bb17
  %_55 = getelementptr inbounds nuw i32, ptr %6, i64 %indvars.iv288
  %_54 = load i32, ptr %_55, align 4, !noundef !23
  %_57 = getelementptr inbounds nuw i32, ptr %6, i64 %indvars.iv
  %27 = add i32 %_54, 1
  store i32 %27, ptr %_57, align 4
  br label %bb19

bb72:                                             ; preds = %bb9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %ptr.i.i177 = load ptr, ptr %_32, align 8, !alias.scope !1148, !nonnull !23, !noundef !23
  %end_or_len.i.i178 = load ptr, ptr %17, align 8, !alias.scope !1148, !nonnull !23, !noundef !23
  %_7.i.i179 = icmp eq ptr %ptr.i.i177, %end_or_len.i.i178
  br i1 %_7.i.i179, label %bb77.invoke, label %bb14.i180

bb14.i180:                                        ; preds = %bb72
  %x.i182 = load i8, ptr %ptr.i.i177, align 1, !noalias !1145, !noundef !23
  %_6.i183 = icmp sgt i8 %x.i182, -1
  br i1 %_6.i183, label %bb3.i216, label %bb4.i184

bb4.i184:                                         ; preds = %bb14.i180
  %_18.i.i181 = getelementptr inbounds nuw i8, ptr %ptr.i.i177, i64 1
  %_30.i185 = and i8 %x.i182, 31
  %init.i186 = zext nneg i8 %_30.i185 to i32
  %_7.i10.i187 = icmp ne ptr %_18.i.i181, %end_or_len.i.i178
  tail call void @llvm.assume(i1 %_7.i10.i187)
  %y.i189 = load i8, ptr %_18.i.i181, align 1, !noalias !1145, !noundef !23
  %_34.i190 = shl nuw nsw i32 %init.i186, 6
  %_36.i191 = and i8 %y.i189, 63
  %_35.i192 = zext nneg i8 %_36.i191 to i32
  %28 = or disjoint i32 %_34.i190, %_35.i192
  %_13.i193 = icmp samesign ugt i8 %x.i182, -33
  br i1 %_13.i193, label %bb6.i196, label %bb70

bb3.i216:                                         ; preds = %bb14.i180
  %_7.i217 = zext nneg i8 %x.i182 to i32
  br label %bb70

bb6.i196:                                         ; preds = %bb4.i184
  %_18.i12.i188 = getelementptr inbounds nuw i8, ptr %ptr.i.i177, i64 2
  %_7.i17.i197 = icmp ne ptr %_18.i12.i188, %end_or_len.i.i178
  tail call void @llvm.assume(i1 %_7.i17.i197)
  %z.i199 = load i8, ptr %_18.i12.i188, align 1, !noalias !1145, !noundef !23
  %_40.i200 = shl nuw nsw i32 %_35.i192, 6
  %_42.i201 = and i8 %z.i199, 63
  %_41.i202 = zext nneg i8 %_42.i201 to i32
  %y_z.i203 = or disjoint i32 %_40.i200, %_41.i202
  %_20.i204 = shl nuw nsw i32 %init.i186, 12
  %29 = or disjoint i32 %y_z.i203, %_20.i204
  %_21.i205 = icmp samesign ugt i8 %x.i182, -17
  br i1 %_21.i205, label %bb8.i206, label %bb70

bb8.i206:                                         ; preds = %bb6.i196
  %_18.i19.i198 = getelementptr inbounds nuw i8, ptr %ptr.i.i177, i64 3
  %_7.i24.i207 = icmp ne ptr %_18.i19.i198, %end_or_len.i.i178
  tail call void @llvm.assume(i1 %_7.i24.i207)
  %w.i209 = load i8, ptr %_18.i19.i198, align 1, !noalias !1145, !noundef !23
  %_26.i210 = shl nuw nsw i32 %init.i186, 18
  %_25.i211 = and i32 %_26.i210, 1835008
  %_46.i212 = shl nuw nsw i32 %y_z.i203, 6
  %_48.i213 = and i8 %w.i209, 63
  %_47.i214 = zext nneg i8 %_48.i213 to i32
  %_27.i215 = or disjoint i32 %_46.i212, %_47.i214
  %30 = or disjoint i32 %_27.i215, %_25.i211
  br label %bb70

bb70:                                             ; preds = %bb3.i216, %bb8.i206, %bb6.i196, %bb4.i184
  %_0.sroa.4.0.i194.ph = phi i32 [ %28, %bb4.i184 ], [ %29, %bb6.i196 ], [ %30, %bb8.i206 ], [ %_7.i217, %bb3.i216 ]
  switch i32 %_0.sroa.4.0.i194.ph, label %bb12 [
    i32 1114112, label %bb77.invoke
    i32 40, label %bb11
  ], !prof !1093

bb77.invoke:                                      ; preds = %bb70, %bb9, %bb72, %bb90, %bb15, %bb92, %bb54, %bb3, %bb56, %bb43, %bb45
  %31 = phi ptr [ @alloc_0f3090e147c0e9e1a80ee84b90461e0e, %bb45 ], [ @alloc_0f3090e147c0e9e1a80ee84b90461e0e, %bb43 ], [ @alloc_3afafe37ce08cf88086ed43a42e27b3f, %bb56 ], [ @alloc_3afafe37ce08cf88086ed43a42e27b3f, %bb3 ], [ @alloc_3afafe37ce08cf88086ed43a42e27b3f, %bb54 ], [ @alloc_167656e27831988d0da901f5a5e99792, %bb92 ], [ @alloc_167656e27831988d0da901f5a5e99792, %bb15 ], [ @alloc_167656e27831988d0da901f5a5e99792, %bb90 ], [ @alloc_4bc4b0a3e868e7ef6c4ee48e4a8370b7, %bb72 ], [ @alloc_4bc4b0a3e868e7ef6c4ee48e4a8370b7, %bb9 ], [ @alloc_4bc4b0a3e868e7ef6c4ee48e4a8370b7, %bb70 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %31) #22
          to label %bb77.cont unwind label %cleanup4.thread

bb77.cont:                                        ; preds = %bb77.invoke
  unreachable

bb12:                                             ; preds = %bb70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_32)
  %_196 = icmp ugt i64 %_4, %indvars.iv283
  br i1 %_196, label %bb81, label %panic18.invoke

bb11:                                             ; preds = %bb70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_32)
  %_185 = icmp ugt i64 %_4, %indvars.iv283
  br i1 %_185, label %bb79, label %panic21.invoke

bb81:                                             ; preds = %bb12
  %_43 = add nuw nsw i64 %indvars.iv283, 1
  %_202 = icmp ult i64 %_43, %_4
  br i1 %_202, label %bb82, label %panic21.invoke

panic18.invoke:                                   ; preds = %bb12, %bb18, %bb2.i
  %32 = phi i64 [ %_77, %bb2.i ], [ %indvars.iv288, %bb18 ], [ %indvars.iv283, %bb12 ]
  %33 = phi ptr [ @alloc_301d4e2663978e2850f50b82ba108207, %bb2.i ], [ @alloc_80e6a15270a8277f653acc37fcc03142, %bb18 ], [ @alloc_5a025afecf0ec93f385afbf7b6c2b834, %bb12 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %32, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %33) #22
          to label %panic18.cont unwind label %cleanup4

panic18.cont:                                     ; preds = %panic18.invoke
  unreachable

bb82:                                             ; preds = %bb81
  %_41 = getelementptr inbounds nuw i32, ptr %2, i64 %indvars.iv283
  %_40 = load i32, ptr %_41, align 4, !noundef !23
  %_42 = getelementptr inbounds nuw i32, ptr %2, i64 %_43
  store i32 %_40, ptr %_42, align 4
  br label %bb13

bb13:                                             ; preds = %bb80, %bb82
  %indvars.iv.next284.pre-phi = phi i64 [ %_39, %bb80 ], [ %_43, %bb82 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next284.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %bb10, label %bb9

bb79:                                             ; preds = %bb11
  %_39 = add nuw nsw i64 %indvars.iv283, 1
  %_191 = icmp ult i64 %_39, %_4
  br i1 %_191, label %bb80, label %panic21.invoke

bb80:                                             ; preds = %bb79
  %_37 = getelementptr inbounds nuw i32, ptr %2, i64 %indvars.iv283
  %_36 = load i32, ptr %_37, align 4, !noundef !23
  %_38 = getelementptr inbounds nuw i32, ptr %2, i64 %_39
  %34 = add i32 %_36, 1
  store i32 %34, ptr %_38, align 4
  br label %bb13

panic21.invoke:                                   ; preds = %bb79, %bb11, %bb81, %bb17, %bb4, %bb1, %bb40
  %35 = phi i64 [ %_5, %bb40 ], [ 1, %bb1 ], [ %_23, %bb4 ], [ %indvars.iv288, %bb17 ], [ %_43, %bb81 ], [ %indvars.iv283, %bb11 ], [ %_39, %bb79 ]
  %36 = phi ptr [ @alloc_643b4a7ec7340372f73d132d69c09f43, %bb40 ], [ @alloc_ecbdc10220ec3081f222b173cf06947e, %bb1 ], [ @alloc_401692266b3b2da5a6b98725de4236f5, %bb4 ], [ @alloc_ff6adf247f7228c209412bda815307d3, %bb17 ], [ @alloc_c8158441d4fee7340a9870987ce6ba61, %bb81 ], [ @alloc_295064cbd5ff84d9a463a8f6ed459015, %bb11 ], [ @alloc_6719a1b86bdb1dc54885f7db6d9c6092, %bb79 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %35, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %36) #22
          to label %panic21.cont unwind label %cleanup4.thread

panic21.cont:                                     ; preds = %panic21.invoke
  unreachable

bb37:                                             ; preds = %bb2.i.i.i3.i.i, %bb36
  resume { ptr, i32 } %.pn.pn
}
