define noundef range(i32 0, 1114112) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %buf.i = alloca [24 x i8], align 8
  %_11 = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_15 = load i64, ptr %0, align 8, !noundef !23
  %_16 = icmp sgt i64 %_15, -1
  tail call void @llvm.assume(i1 %_16)
  %_2 = icmp eq i64 %_15, 0
  br i1 %_2, label %bb6, label %bb2

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_20 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_27 = getelementptr inbounds nuw i8, ptr %_20, i64 %_15
  %x.i = load i8, ptr %_20, align 1, !noalias !1042, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb2
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_20, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp samesign ne i64 %_15, 1
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1042, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %2 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb13

bb3.i:                                            ; preds = %bb2
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb13

bb6.i:                                            ; preds = %bb4.i
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_20, i64 2
  %_7.i17.i = icmp samesign ne i64 %_15, 2
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1042, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %3 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb13

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_20, i64 3
  %_7.i24.i = icmp samesign ne i64 %_15, 3
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1042, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %4 = or disjoint i32 %_27.i, %_25.i
  br label %bb13

cleanup:                                          ; preds = %bb23, %bb17
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %cleanup.i, %bb2.i.i.i3.i.i.i, %cleanup
  %eh.lpad-body = phi { ptr, i32 } [ %5, %cleanup ], [ %lpad.phi.i, %bb2.i.i.i3.i.i.i ], [ %lpad.phi.i, %cleanup.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1031, !alias.scope !1060, !noalias !1063, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb9, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup.body
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_20, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1065
  br label %bb9

bb13:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %_0.sroa.4.0.i.ph = phi i32 [ %2, %bb4.i ], [ %3, %bb6.i ], [ %4, %bb8.i ], [ %_7.i, %bb3.i ]
  %6 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %6)
  %7 = add nsw i32 %_0.sroa.4.0.i.ph, -65
  %or.cond = icmp ult i32 %7, 26
  br i1 %or.cond, label %bb14.i7, label %bb14

bb14:                                             ; preds = %bb13
  %_39 = icmp samesign ugt i32 %_0.sroa.4.0.i.ph, 127
  br i1 %_39, label %bb17, label %bb4

bb17:                                             ; preds = %bb14
; invoke core::unicode::unicode_data::uppercase::lookup
  %_3 = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data9uppercase6lookup17h357c9c1057b36eafE(i32 noundef %_0.sroa.4.0.i.ph)
          to label %bb19 unwind label %cleanup

bb4:                                              ; preds = %bb14, %bb19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_11)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i), !noalias !1066
  store i64 0, ptr %buf.i, align 8, !noalias !1066
  %_5.sroa.4.0.buf.sroa_idx.i = getelementptr inbounds nuw i8, ptr %buf.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_5.sroa.4.0.buf.sroa_idx.i, align 8, !noalias !1066
  %_5.sroa.5.0.buf.sroa_idx.i = getelementptr inbounds nuw i8, ptr %buf.i, i64 16
  store i64 0, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !noalias !1066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %_7.i.i.not.not.i = icmp samesign ugt i64 %_15, 4
  br i1 %_7.i.i.not.not.i, label %bb1.i.i.i, label %bb25.i.i.i.i.i.i.thread, !prof !909

bb1.i.i.i:                                        ; preds = %bb4
  %8 = add nuw i64 %_15, 3
  %_4.sroa.0.0.i.i.i.i = lshr i64 %8, 2
  %9 = add nsw i64 %_4.sroa.0.0.i.i.i.i, -1
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h39d9e61268a66440E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %buf.i, i64 noundef 0, i64 noundef %9)
          to label %bb25.i.i.i.i.i.i.thread unwind label %cleanup.loopexit.split-lp.i

bb25.i.i.i.i.i.i.thread:                          ; preds = %bb1.i.i.i, %bb4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %_18.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_20, i64 1
  %x.i.i.i.i.i.i.i = load i8, ptr %_20, align 1, !noalias !1079, !noundef !23
  %_6.i.i.i.i.i.i.i = icmp sgt i8 %x.i.i.i.i.i.i.i, -1
  br i1 %_6.i.i.i.i.i.i.i, label %bb8.i.i.i.i, label %bb4.i.i.i.i.i.i.i

bb4.i.i.i.i.i.i.i:                                ; preds = %bb25.i.i.i.i.i.i.thread
  %init.i.i.i.i.i.i.i = zext i8 %x.i.i.i.i.i.i.i to i32
  %_7.i10.i.i.i.i.i.i.i = icmp samesign ne i64 %_15, 1
  tail call void @llvm.assume(i1 %_7.i10.i.i.i.i.i.i.i)
  %_18.i12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_20, i64 2
  %_13.i.i.i.i.i.i.i = icmp samesign ugt i8 %x.i.i.i.i.i.i.i, -33
  br i1 %_13.i.i.i.i.i.i.i, label %bb6.i.i.i.i.i.i.i, label %bb8.i.i.i.i

bb6.i.i.i.i.i.i.i:                                ; preds = %bb4.i.i.i.i.i.i.i
  %y.i.i.i.i.i.i.i = load i8, ptr %_18.i.i.i.i.i.i.i.i, align 1, !noalias !1079, !noundef !23
  %_7.i17.i.i.i.i.i.i.i = icmp samesign ne i64 %_15, 2
  tail call void @llvm.assume(i1 %_7.i17.i.i.i.i.i.i.i)
  %_18.i19.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_20, i64 3
  %_21.i.i.i.i.i.i.i = icmp samesign ugt i8 %x.i.i.i.i.i.i.i, -17
  br i1 %_21.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hb6784ca48a4db7beE.exit.i.i.i.i, label %bb8.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator3nth17hb6784ca48a4db7beE.exit.i.i.i.i: ; preds = %bb6.i.i.i.i.i.i.i
  %_36.i.i.i.i.i.i.i = and i8 %y.i.i.i.i.i.i.i, 63
  %_35.i.i.i.i.i.i.i = zext nneg i8 %_36.i.i.i.i.i.i.i to i32
  %z.i.i.i.i.i.i.i = load i8, ptr %_18.i12.i.i.i.i.i.i.i, align 1, !noalias !1079, !noundef !23
  %_42.i.i.i.i.i.i.i = and i8 %z.i.i.i.i.i.i.i, 63
  %_41.i.i.i.i.i.i.i = zext nneg i8 %_42.i.i.i.i.i.i.i to i32
  %_7.i24.i.i.i.i.i.i.i = icmp samesign ne i64 %_15, 3
  tail call void @llvm.assume(i1 %_7.i24.i.i.i.i.i.i.i)
  %_18.i26.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_20, i64 4
  %w.i.i.i.i.i.i.i = load i8, ptr %_18.i19.i.i.i.i.i.i.i, align 1, !noalias !1079, !noundef !23
  %_26.i.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i.i, 18
  %_25.i.i.i.i.i.i.i = and i32 %_26.i.i.i.i.i.i.i, 1835008
  %10 = shl nuw nsw i32 %_35.i.i.i.i.i.i.i, 12
  %11 = shl nuw nsw i32 %_41.i.i.i.i.i.i.i, 6
  %_46.i.i.i.i.i.i.i = or disjoint i32 %11, %10
  %_48.i.i.i.i.i.i.i = and i8 %w.i.i.i.i.i.i.i, 63
  %_47.i.i.i.i.i.i.i = zext nneg i8 %_48.i.i.i.i.i.i.i to i32
  %_27.i.i.i.i.i.i.i = or disjoint i32 %_46.i.i.i.i.i.i.i, %_47.i.i.i.i.i.i.i
  %12 = or disjoint i32 %_27.i.i.i.i.i.i.i, %_25.i.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i32 %12, 1114112
  br i1 %.not.i.i.i.i, label %bb23, label %bb8.i.i.i.i

bb8.i.i.i.i:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hb6784ca48a4db7beE.exit.i.i.i.i, %bb6.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i, %bb25.i.i.i.i.i.i.thread
  %_12.0.i.i.i.i = phi ptr [ %_18.i.i.i.i.i.i.i.i, %bb25.i.i.i.i.i.i.thread ], [ %_18.i12.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i ], [ %_18.i19.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i ], [ %_18.i26.i.i.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator3nth17hb6784ca48a4db7beE.exit.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %_7.i.i.not.i21.i.i.i.i.i = icmp eq ptr %_12.0.i.i.i.i, %_27
  br i1 %_7.i.i.not.i21.i.i.i.i.i, label %bb23, label %bb14.i.i.i1.i.i.i.i

bb14.i.i.i1.i.i.i.i:                              ; preds = %bb8.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hdf3c4adc25376f77E.exit.i.i.i.i.i"
  %self.sroa.0.022.i.i.i.i.i = phi ptr [ %self.sroa.0.1618.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hdf3c4adc25376f77E.exit.i.i.i.i.i" ], [ %_12.0.i.i.i.i, %bb8.i.i.i.i ]
  %_18.i.i.i.i2.i.i.i.i = getelementptr inbounds nuw i8, ptr %self.sroa.0.022.i.i.i.i.i, i64 1
  %x.i.i.i3.i.i.i.i = load i8, ptr %self.sroa.0.022.i.i.i.i.i, align 1, !noalias !1092, !noundef !23
  %_6.i.i.i4.i.i.i.i = icmp sgt i8 %x.i.i.i3.i.i.i.i, -1
  br i1 %_6.i.i.i4.i.i.i.i, label %bb3.thread.i.i.i.i.i, label %bb4.i.i.i5.i.i.i.i

bb4.i.i.i5.i.i.i.i:                               ; preds = %bb14.i.i.i1.i.i.i.i
  %_30.i.i.i6.i.i.i.i = and i8 %x.i.i.i3.i.i.i.i, 31
  %init.i.i.i7.i.i.i.i = zext nneg i8 %_30.i.i.i6.i.i.i.i to i32
  %_7.i10.i.i.i8.i.i.i.i = icmp ne ptr %_18.i.i.i.i2.i.i.i.i, %_27
  tail call void @llvm.assume(i1 %_7.i10.i.i.i8.i.i.i.i)
  %_18.i12.i.i.i9.i.i.i.i = getelementptr inbounds nuw i8, ptr %self.sroa.0.022.i.i.i.i.i, i64 2
  %y.i.i.i10.i.i.i.i = load i8, ptr %_18.i.i.i.i2.i.i.i.i, align 1, !noalias !1092, !noundef !23
  %_34.i.i.i11.i.i.i.i = shl nuw nsw i32 %init.i.i.i7.i.i.i.i, 6
  %_36.i.i.i12.i.i.i.i = and i8 %y.i.i.i10.i.i.i.i, 63
  %_35.i.i.i13.i.i.i.i = zext nneg i8 %_36.i.i.i12.i.i.i.i to i32
  %13 = or disjoint i32 %_34.i.i.i11.i.i.i.i, %_35.i.i.i13.i.i.i.i
  %_13.i.i.i14.i.i.i.i = icmp samesign ugt i8 %x.i.i.i3.i.i.i.i, -33
  br i1 %_13.i.i.i14.i.i.i.i, label %bb6.i.i.i17.i.i.i.i, label %bb3.i.i.i.i.i

bb3.thread.i.i.i.i.i:                             ; preds = %bb14.i.i.i1.i.i.i.i
  %_7.i.i.i36.i.i.i.i = zext nneg i8 %x.i.i.i3.i.i.i.i to i32
  %len.i.i.i14.i.i.i.i.i = load i64, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !alias.scope !1097, !noalias !1100, !noundef !23
  %_14.i.i.i15.i.i.i.i.i = icmp sgt i64 %len.i.i.i14.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %_14.i.i.i15.i.i.i.i.i)
  br label %bb2.i.i.i.i.i.i.i.i

bb6.i.i.i17.i.i.i.i:                              ; preds = %bb4.i.i.i5.i.i.i.i
  %_7.i17.i.i.i18.i.i.i.i = icmp ne ptr %_18.i12.i.i.i9.i.i.i.i, %_27
  tail call void @llvm.assume(i1 %_7.i17.i.i.i18.i.i.i.i)
  %_18.i19.i.i.i19.i.i.i.i = getelementptr inbounds nuw i8, ptr %self.sroa.0.022.i.i.i.i.i, i64 3
  %z.i.i.i20.i.i.i.i = load i8, ptr %_18.i12.i.i.i9.i.i.i.i, align 1, !noalias !1092, !noundef !23
  %_40.i.i.i21.i.i.i.i = shl nuw nsw i32 %_35.i.i.i13.i.i.i.i, 6
  %_42.i.i.i22.i.i.i.i = and i8 %z.i.i.i20.i.i.i.i, 63
  %_41.i.i.i23.i.i.i.i = zext nneg i8 %_42.i.i.i22.i.i.i.i to i32
  %y_z.i.i.i24.i.i.i.i = or disjoint i32 %_40.i.i.i21.i.i.i.i, %_41.i.i.i23.i.i.i.i
  %_20.i.i.i25.i.i.i.i = shl nuw nsw i32 %init.i.i.i7.i.i.i.i, 12
  %14 = or disjoint i32 %y_z.i.i.i24.i.i.i.i, %_20.i.i.i25.i.i.i.i
  %_21.i.i.i26.i.i.i.i = icmp samesign ugt i8 %x.i.i.i3.i.i.i.i, -17
  br i1 %_21.i.i.i26.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i.i.i.i.i", label %bb3.i.i.i.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i.i.i.i.i": ; preds = %bb6.i.i.i17.i.i.i.i
  %_7.i24.i.i.i27.i.i.i.i = icmp ne ptr %_18.i19.i.i.i19.i.i.i.i, %_27
  tail call void @llvm.assume(i1 %_7.i24.i.i.i27.i.i.i.i)
  %_18.i26.i.i.i28.i.i.i.i = getelementptr inbounds nuw i8, ptr %self.sroa.0.022.i.i.i.i.i, i64 4
  %w.i.i.i29.i.i.i.i = load i8, ptr %_18.i19.i.i.i19.i.i.i.i, align 1, !noalias !1092, !noundef !23
  %_26.i.i.i30.i.i.i.i = shl nuw nsw i32 %init.i.i.i7.i.i.i.i, 18
  %_25.i.i.i31.i.i.i.i = and i32 %_26.i.i.i30.i.i.i.i, 1835008
  %_46.i.i.i32.i.i.i.i = shl nuw nsw i32 %y_z.i.i.i24.i.i.i.i, 6
  %_48.i.i.i33.i.i.i.i = and i8 %w.i.i.i29.i.i.i.i, 63
  %_47.i.i.i34.i.i.i.i = zext nneg i8 %_48.i.i.i33.i.i.i.i to i32
  %_27.i.i.i35.i.i.i.i = or disjoint i32 %_46.i.i.i32.i.i.i.i, %_47.i.i.i34.i.i.i.i
  %15 = or disjoint i32 %_27.i.i.i35.i.i.i.i, %_25.i.i.i31.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %15, 1114112
  br i1 %.not.i.i.i.i.i, label %bb23, label %bb3.i.i.i.i.i

bb3.i.i.i.i.i:                                    ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i.i.i.i.i", %bb6.i.i.i17.i.i.i.i, %bb4.i.i.i5.i.i.i.i
  %spec.select.i7.i.i.i.i.i = phi i32 [ %15, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i.i.i.i.i" ], [ %13, %bb4.i.i.i5.i.i.i.i ], [ %14, %bb6.i.i.i17.i.i.i.i ]
  %self.sroa.0.16.i.i.i.i.i = phi ptr [ %_18.i26.i.i.i28.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i.i.i.i.i" ], [ %_18.i12.i.i.i9.i.i.i.i, %bb4.i.i.i5.i.i.i.i ], [ %_18.i19.i.i.i19.i.i.i.i, %bb6.i.i.i17.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %len.i.i.i.i.i.i.i.i = load i64, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !alias.scope !1107, !noalias !1108, !noundef !23
  %_14.i.i.i.i.i.i.i.i = icmp sgt i64 %len.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %_14.i.i.i.i.i.i.i.i)
  %_16.i.i.i.i.i.i.i.i = icmp samesign ult i32 %spec.select.i7.i.i.i.i.i, 128
  br i1 %_16.i.i.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i, label %bb3.i.i.i.i.i.i.i.i

bb3.i.i.i.i.i.i.i.i:                              ; preds = %bb3.i.i.i.i.i
  %_17.i.i.i.i.i.i.i.i = icmp samesign ult i32 %spec.select.i7.i.i.i.i.i, 2048
  br i1 %_17.i.i.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i.i

bb4.i.i.i.i.i.i.i.i:                              ; preds = %bb3.i.i.i.i.i.i.i.i
  %_18.i.i.i2.i.i.i.i.i = icmp samesign ult i32 %spec.select.i7.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i.i = select i1 %_18.i.i.i2.i.i.i.i.i, i64 3, i64 4
  br label %bb2.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i:                              ; preds = %bb4.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i, %bb3.thread.i.i.i.i.i
  %_16.i.i.i20.i.i.i.i.i = phi i1 [ true, %bb3.i.i.i.i.i ], [ false, %bb4.i.i.i.i.i.i.i.i ], [ false, %bb3.i.i.i.i.i.i.i.i ], [ true, %bb3.thread.i.i.i.i.i ]
  %len.i.i.i19.i.i.i.i.i = phi i64 [ %len.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i ], [ %len.i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i ], [ %len.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i ], [ %len.i.i.i14.i.i.i.i.i, %bb3.thread.i.i.i.i.i ]
  %self.sroa.0.1618.i.i.i.i.i = phi ptr [ %self.sroa.0.16.i.i.i.i.i, %bb3.i.i.i.i.i ], [ %self.sroa.0.16.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i ], [ %self.sroa.0.16.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i ], [ %_18.i.i.i.i2.i.i.i.i, %bb3.thread.i.i.i.i.i ]
  %spec.select.i717.i.i.i.i.i = phi i32 [ %spec.select.i7.i.i.i.i.i, %bb3.i.i.i.i.i ], [ %spec.select.i7.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i ], [ %spec.select.i7.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i ], [ %_7.i.i.i36.i.i.i.i, %bb3.thread.i.i.i.i.i ]
  %ch_len.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb3.i.i.i.i.i ], [ %..i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i ], [ 2, %bb3.i.i.i.i.i.i.i.i ], [ 1, %bb3.thread.i.i.i.i.i ]
  %self2.i.i.i.i.i.i.i.i.i = load i64, ptr %buf.i, align 8, !range !1031, !alias.scope !1111, !noalias !1108, !noundef !23
  %_9.i.i.i.i.i.i.i.i.i = sub nsw i64 %self2.i.i.i.i.i.i.i.i.i, %len.i.i.i19.i.i.i.i.i
  %_7.i.i.i.i.i.i.i.i.i = icmp ugt i64 %ch_len.sroa.0.0.i.i.i.i.i.i.i.i, %_9.i.i.i.i.i.i.i.i.i
  br i1 %_7.i.i.i.i.i.i.i.i.i, label %bb1.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hedf0743834c1edbbE.exit.i.i.i.i.i.i.i.i", !prof !909

bb1.i.i.i.i.i.i.i.i.i:                            ; preds = %bb2.i.i.i.i.i.i.i.i
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h39d9e61268a66440E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %buf.i, i64 noundef %len.i.i.i19.i.i.i.i.i, i64 noundef %ch_len.sroa.0.0.i.i.i.i.i.i.i.i)
          to label %.noexc1.i unwind label %cleanup.loopexit.i

.noexc1.i:                                        ; preds = %bb1.i.i.i.i.i.i.i.i.i
  %count.pre.i.i.i.i.i.i.i.i = load i64, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !alias.scope !1107, !noalias !1108
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hedf0743834c1edbbE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hedf0743834c1edbbE.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc1.i, %bb2.i.i.i.i.i.i.i.i
  %count.i.i.i.i.i.i.i.i = phi i64 [ %len.i.i.i19.i.i.i.i.i, %bb2.i.i.i.i.i.i.i.i ], [ %count.pre.i.i.i.i.i.i.i.i, %.noexc1.i ]
  %_20.i.i.i.i.i.i.i.i = load ptr, ptr %_5.sroa.4.0.buf.sroa_idx.i, align 8, !alias.scope !1107, !noalias !1108, !nonnull !23, !noundef !23
  %_21.i.i.i.i.i.i.i.i = icmp sgt i64 %count.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %_21.i.i.i.i.i.i.i.i)
  %_8.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_20.i.i.i.i.i.i.i.i, i64 %count.i.i.i.i.i.i.i.i
  br i1 %_16.i.i.i20.i.i.i.i.i, label %bb12.i.i.i.i.i.i.i.i.i, label %bb7.i.i.i.i.i.i.i.i.i

bb7.i.i.i.i.i.i.i.i.i:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hedf0743834c1edbbE.exit.i.i.i.i.i.i.i.i"
  %_29.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %spec.select.i717.i.i.i.i.i, 2048
  %16 = trunc i32 %spec.select.i717.i.i.i.i.i to i8
  %_5.i.i.i.i.i.i.i.i.i = and i8 %16, 63
  %last1.i.i.i.i.i.i.i.i.i = or disjoint i8 %_5.i.i.i.i.i.i.i.i.i, -128
  %_10.i.i.i.i.i.i.i.i.i = lshr i32 %spec.select.i717.i.i.i.i.i, 6
  %17 = trunc i32 %_10.i.i.i.i.i.i.i.i.i to i8
  %_8.i.i.i.i.i.i.i.i.i = and i8 %17, 63
  %last2.i.i.i.i.i.i.i.i.i = or disjoint i8 %_8.i.i.i.i.i.i.i.i.i, -128
  %_14.i.i.i.i.i.i.i.i.i = lshr i32 %spec.select.i717.i.i.i.i.i, 12
  %18 = trunc i32 %_14.i.i.i.i.i.i.i.i.i to i8
  %_12.i.i.i.i.i.i.i.i.i = and i8 %18, 63
  %last3.i.i.i.i.i.i.i.i.i = or disjoint i8 %_12.i.i.i.i.i.i.i.i.i, -128
  %_18.i.i.i.i.i.i.i.i.i = lshr i32 %spec.select.i717.i.i.i.i.i, 18
  %_16.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %_18.i.i.i.i.i.i.i.i.i to i8
  %last4.i.i.i.i.i.i.i.i.i = or disjoint i8 %_16.i.i.i.i.i.i.i.i.i, -16
  br i1 %_29.i.i.i.i.i.i.i.i.i, label %bb1.i2.i.i.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i.i

bb12.i.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hedf0743834c1edbbE.exit.i.i.i.i.i.i.i.i"
  %19 = trunc nuw nsw i32 %spec.select.i717.i.i.i.i.i to i8
  store i8 %19, ptr %_8.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hdf3c4adc25376f77E.exit.i.i.i.i.i"

bb2.i.i.i.i.i.i.i.i.i:                            ; preds = %bb7.i.i.i.i.i.i.i.i.i
  %_30.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %spec.select.i717.i.i.i.i.i, 65536
  br i1 %_30.i.i.i.i.i.i.i.i.i, label %bb3.i.i.i.i.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i.i.i

bb1.i2.i.i.i.i.i.i.i.i:                           ; preds = %bb7.i.i.i.i.i.i.i.i.i
  %20 = or disjoint i8 %17, -64
  store i8 %20, ptr %_8.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  %_21.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 1
  store i8 %last1.i.i.i.i.i.i.i.i.i, ptr %_21.i.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hdf3c4adc25376f77E.exit.i.i.i.i.i"

bb4.i.i.i.i.i.i.i.i.i:                            ; preds = %bb2.i.i.i.i.i.i.i.i.i
  store i8 %last4.i.i.i.i.i.i.i.i.i, ptr %_8.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  %_25.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 1
  store i8 %last3.i.i.i.i.i.i.i.i.i, ptr %_25.i.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  %_26.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 2
  store i8 %last2.i.i.i.i.i.i.i.i.i, ptr %_26.i.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  %_27.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 3
  store i8 %last1.i.i.i.i.i.i.i.i.i, ptr %_27.i.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hdf3c4adc25376f77E.exit.i.i.i.i.i"

bb3.i.i.i.i.i.i.i.i.i:                            ; preds = %bb2.i.i.i.i.i.i.i.i.i
  %21 = or disjoint i8 %18, -32
  store i8 %21, ptr %_8.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  %_23.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 1
  store i8 %last2.i.i.i.i.i.i.i.i.i, ptr %_23.i.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  %_24.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i.i.i.i.i.i.i.i, i64 2
  store i8 %last1.i.i.i.i.i.i.i.i.i, ptr %_24.i.i.i.i.i.i.i.i.i, align 1, !noalias !1114
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hdf3c4adc25376f77E.exit.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hdf3c4adc25376f77E.exit.i.i.i.i.i": ; preds = %bb3.i.i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i.i, %bb1.i2.i.i.i.i.i.i.i.i, %bb12.i.i.i.i.i.i.i.i.i
  %new_len.i.i.i.i.i.i.i.i = add nuw i64 %ch_len.sroa.0.0.i.i.i.i.i.i.i.i, %len.i.i.i19.i.i.i.i.i
  store i64 %new_len.i.i.i.i.i.i.i.i, ptr %_5.sroa.5.0.buf.sroa_idx.i, align 8, !alias.scope !1107, !noalias !1108
  %_7.i.i.not.i.i15.i.i.i.i = icmp eq ptr %self.sroa.0.1618.i.i.i.i.i, %_27
  br i1 %_7.i.i.not.i.i15.i.i.i.i, label %bb23, label %bb14.i.i.i1.i.i.i.i

cleanup.loopexit.i:                               ; preds = %bb1.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i

cleanup.loopexit.split-lp.i:                      ; preds = %bb1.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.loopexit.split-lp.i, %cleanup.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %cleanup.loopexit.i ], [ %lpad.loopexit.split-lp.i, %cleanup.loopexit.split-lp.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %self1.i.i.i.i1.i.i.i = load i64, ptr %buf.i, align 8, !range !1031, !alias.scope !1130, !noalias !1133, !noundef !23
  %_6.i.i.i.i2.i.i.i = icmp eq i64 %self1.i.i.i.i1.i.i.i, 0
  br i1 %_6.i.i.i.i2.i.i.i, label %cleanup.body, label %bb2.i.i.i3.i.i.i

bb2.i.i.i3.i.i.i:                                 ; preds = %cleanup.i
  %self3.i.i.i.i4.i.i.i = load ptr, ptr %_5.sroa.4.0.buf.sroa_idx.i, align 8, !alias.scope !1130, !noalias !1133, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i.i, i64 noundef %self1.i.i.i.i1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1135
  br label %cleanup.body

bb19:                                             ; preds = %bb17
  br i1 %_3, label %bb19.bb14.i7_crit_edge, label %bb4

bb19.bb14.i7_crit_edge:                           ; preds = %bb19
  %x.i9.pre = load i8, ptr %_20, align 1, !noalias !1136
  br label %bb14.i7

bb14.i7:                                          ; preds = %bb19.bb14.i7_crit_edge, %bb13
  %x.i9 = phi i8 [ %x.i9.pre, %bb19.bb14.i7_crit_edge ], [ %x.i, %bb13 ]
  %_6.i10 = icmp sgt i8 %x.i9, -1
  br i1 %_6.i10, label %bb3.i43, label %bb4.i11

bb4.i11:                                          ; preds = %bb14.i7
  %_18.i.i8 = getelementptr inbounds nuw i8, ptr %_20, i64 1
  %_30.i12 = and i8 %x.i9, 31
  %init.i13 = zext nneg i8 %_30.i12 to i32
  %_7.i10.i14 = icmp samesign ne i64 %_15, 1
  tail call void @llvm.assume(i1 %_7.i10.i14)
  %y.i16 = load i8, ptr %_18.i.i8, align 1, !noalias !1136, !noundef !23
  %_34.i17 = shl nuw nsw i32 %init.i13, 6
  %_36.i18 = and i8 %y.i16, 63
  %_35.i19 = zext nneg i8 %_36.i18 to i32
  %22 = or disjoint i32 %_34.i17, %_35.i19
  %_13.i20 = icmp samesign ugt i8 %x.i9, -33
  br i1 %_13.i20, label %bb6.i23, label %bb22

bb3.i43:                                          ; preds = %bb14.i7
  %_7.i44 = zext nneg i8 %x.i9 to i32
  br label %bb22

bb6.i23:                                          ; preds = %bb4.i11
  %_18.i12.i15 = getelementptr inbounds nuw i8, ptr %_20, i64 2
  %_7.i17.i24 = icmp samesign ne i64 %_15, 2
  tail call void @llvm.assume(i1 %_7.i17.i24)
  %z.i26 = load i8, ptr %_18.i12.i15, align 1, !noalias !1136, !noundef !23
  %_40.i27 = shl nuw nsw i32 %_35.i19, 6
  %_42.i28 = and i8 %z.i26, 63
  %_41.i29 = zext nneg i8 %_42.i28 to i32
  %y_z.i30 = or disjoint i32 %_40.i27, %_41.i29
  %_20.i31 = shl nuw nsw i32 %init.i13, 12
  %23 = or disjoint i32 %y_z.i30, %_20.i31
  %_21.i32 = icmp samesign ugt i8 %x.i9, -17
  br i1 %_21.i32, label %bb8.i33, label %bb22

bb8.i33:                                          ; preds = %bb6.i23
  %_18.i19.i25 = getelementptr inbounds nuw i8, ptr %_20, i64 3
  %_7.i24.i34 = icmp samesign ne i64 %_15, 3
  tail call void @llvm.assume(i1 %_7.i24.i34)
  %w.i36 = load i8, ptr %_18.i19.i25, align 1, !noalias !1136, !noundef !23
  %_26.i37 = shl nuw nsw i32 %init.i13, 18
  %_25.i38 = and i32 %_26.i37, 1835008
  %_46.i39 = shl nuw nsw i32 %y_z.i30, 6
  %_48.i40 = and i8 %w.i36, 63
  %_47.i41 = zext nneg i8 %_48.i40 to i32
  %_27.i42 = or disjoint i32 %_46.i39, %_47.i41
  %24 = or disjoint i32 %_27.i42, %_25.i38
  br label %bb22

bb23:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hdf3c4adc25376f77E.exit.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb982107525a3c91E.exit.i.i.i.i.i", %bb8.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator3nth17hb6784ca48a4db7beE.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_11, ptr noundef nonnull align 8 dereferenceable(24) %buf.i, i64 24, i1 false), !noalias !1139
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i), !noalias !1066
  %25 = invoke noundef i32 @f_gold(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %_11)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %self1.i.i.i.i1.i.i46 = load i64, ptr %str, align 8, !range !1031, !alias.scope !1155, !noalias !1158, !noundef !23
  %_6.i.i.i.i2.i.i47 = icmp eq i64 %self1.i.i.i.i1.i.i46, 0
  br i1 %_6.i.i.i.i2.i.i47, label %bb7, label %bb2.i.i.i3.i.i48

bb2.i.i.i3.i.i48:                                 ; preds = %bb5
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_20, i64 noundef %self1.i.i.i.i1.i.i46, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1160
  br label %bb7

bb7:                                              ; preds = %bb2.i.i.i3.i.i53, %bb6, %bb2.i.i.i3.i.i48, %bb5
  %_0.sroa.0.0 = phi i32 [ %25, %bb5 ], [ %25, %bb2.i.i.i3.i.i48 ], [ %_0.sroa.0.1, %bb6 ], [ %_0.sroa.0.1, %bb2.i.i.i3.i.i53 ]
  ret i32 %_0.sroa.0.0

bb22:                                             ; preds = %bb4.i11, %bb3.i43, %bb6.i23, %bb8.i33
  %_0.sroa.4.0.i21 = phi i32 [ %_7.i44, %bb3.i43 ], [ %24, %bb8.i33 ], [ %23, %bb6.i23 ], [ %22, %bb4.i11 ]
  %26 = icmp samesign ult i32 %_0.sroa.4.0.i21, 1114112
  tail call void @llvm.assume(i1 %26)
  br label %bb6

bb6:                                              ; preds = %start, %bb22
  %_0.sroa.0.1 = phi i32 [ %_0.sroa.4.0.i21, %bb22 ], [ 0, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %self1.i.i.i.i1.i.i51 = load i64, ptr %str, align 8, !range !1031, !alias.scope !1176, !noalias !1179, !noundef !23
  %_6.i.i.i.i2.i.i52 = icmp eq i64 %self1.i.i.i.i1.i.i51, 0
  br i1 %_6.i.i.i.i2.i.i52, label %bb7, label %bb2.i.i.i3.i.i53

bb2.i.i.i3.i.i53:                                 ; preds = %bb6
  %27 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i54 = load ptr, ptr %27, align 8, !alias.scope !1176, !noalias !1179, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i54, i64 noundef %self1.i.i.i.i1.i.i51, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1181
  br label %bb7

bb9:                                              ; preds = %bb2.i.i.i3.i.i, %cleanup.body
  resume { ptr, i32 } %eh.lpad-body
}
