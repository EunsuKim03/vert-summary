define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, i32 noundef %n, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %res = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res)
  store i64 0, ptr %res, align 8
  %_23.sroa.4.0.res.sroa_idx = getelementptr inbounds nuw i8, ptr %res, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_23.sroa.4.0.res.sroa_idx, align 8
  %_23.sroa.5.0.res.sroa_idx = getelementptr inbounds nuw i8, ptr %res, i64 16
  store i64 0, ptr %_23.sroa.5.0.res.sroa_idx, align 8
  %_2433 = icmp sgt i32 %k, 0
  br i1 %_2433, label %bb10, label %bb11

bb11:                                             ; preds = %bb2, %start
  %len.i843 = phi i64 [ 0, %start ], [ %new_len.i, %bb2 ]
  %iter2 = sub i32 %n, %k
  %_3135 = icmp sgt i32 %iter2, 0
  br i1 %_3135, label %bb15, label %bb16

bb10:                                             ; preds = %start, %bb2
  %_20.i40 = phi ptr [ %_20.i, %bb2 ], [ inttoptr (i64 1 to ptr), %start ]
  %len.i = phi i64 [ %new_len.i, %bb2 ], [ 0, %start ]
  %iter.sroa.0.034 = phi i32 [ %8, %bb2 ], [ 0, %start ]
  %_9 = add nuw i32 %iter.sroa.0.034, 97
  %_8 = and i32 %_9, 255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %_14.i = icmp sgt i64 %len.i, -1
  tail call void @llvm.assume(i1 %_14.i)
  %_16.i = icmp samesign ult i32 %_8, 128
  %ch_len.sroa.0.0.i = select i1 %_16.i, i64 1, i64 2
  %self2.i.i = load i64, ptr %res, align 8, !range !1031, !alias.scope !1045, !noundef !23
  %_9.i.i = sub nsw i64 %self2.i.i, %len.i
  %_7.i.i = icmp ugt i64 %ch_len.sroa.0.0.i, %_9.i.i
  br i1 %_7.i.i, label %bb1.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i", !prof !909

bb1.i.i:                                          ; preds = %bb10
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h054b7ef1bf3bb679E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef %len.i, i64 noundef range(i64 1, 3) %ch_len.sroa.0.0.i)
          to label %.noexc unwind label %cleanup.loopexit.split-lp

.noexc:                                           ; preds = %bb1.i.i
  %count.pre.i = load i64, ptr %_23.sroa.5.0.res.sroa_idx, align 8, !alias.scope !1042
  %_20.i.pre = load ptr, ptr %_23.sroa.4.0.res.sroa_idx, align 8, !alias.scope !1042
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i": ; preds = %.noexc, %bb10
  %_20.i = phi ptr [ %_20.i40, %bb10 ], [ %_20.i.pre, %.noexc ]
  %count.i = phi i64 [ %len.i, %bb10 ], [ %count.pre.i, %.noexc ]
  %_21.i = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i, i64 %count.i
  br i1 %_16.i, label %bb12.i.i, label %bb1.i2.i

bb12.i.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i"
  %0 = trunc i32 %_9 to i8
  br label %bb2

bb1.i2.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i"
  %_10.i.i = lshr i32 %_8, 6
  %_8.i.i = trunc nuw nsw i32 %_10.i.i to i8
  %1 = trunc i32 %_9 to i8
  %_5.i.i = and i8 %1, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %2 = or disjoint i8 %_8.i.i, -64
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1, !noalias !1042
  br label %bb2

bb16:                                             ; preds = %bb4, %bb11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %res, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res)
  ret void

bb15:                                             ; preds = %bb11, %bb4
  %len.i8 = phi i64 [ %new_len.i27, %bb4 ], [ %len.i843, %bb11 ]
  %iter1.sroa.0.037 = phi i32 [ %6, %bb4 ], [ 0, %bb11 ]
  %count.sroa.0.036 = phi i32 [ %spec.store.select, %bb4 ], [ 0, %bb11 ]
  %_18 = add i32 %count.sroa.0.036, 97
  %_17 = and i32 %_18, 255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  %_14.i9 = icmp sgt i64 %len.i8, -1
  tail call void @llvm.assume(i1 %_14.i9)
  %_16.i10 = icmp samesign ult i32 %_17, 128
  %ch_len.sroa.0.0.i11 = select i1 %_16.i10, i64 1, i64 2
  %self2.i.i12 = load i64, ptr %res, align 8, !range !1031, !alias.scope !1051, !noundef !23
  %_9.i.i13 = sub nsw i64 %self2.i.i12, %len.i8
  %_7.i.i14 = icmp ugt i64 %ch_len.sroa.0.0.i11, %_9.i.i13
  br i1 %_7.i.i14, label %bb1.i.i29, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i15", !prof !909

bb1.i.i29:                                        ; preds = %bb15
; invoke alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h054b7ef1bf3bb679E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %res, i64 noundef %len.i8, i64 noundef range(i64 1, 3) %ch_len.sroa.0.0.i11)
          to label %.noexc31 unwind label %cleanup.loopexit

.noexc31:                                         ; preds = %bb1.i.i29
  %count.pre.i30 = load i64, ptr %_23.sroa.5.0.res.sroa_idx, align 8, !alias.scope !1048
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i15"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i15": ; preds = %.noexc31, %bb15
  %count.i16 = phi i64 [ %len.i8, %bb15 ], [ %count.pre.i30, %.noexc31 ]
  %_20.i17 = load ptr, ptr %_23.sroa.4.0.res.sroa_idx, align 8, !alias.scope !1048, !nonnull !23, !noundef !23
  %_21.i18 = icmp sgt i64 %count.i16, -1
  tail call void @llvm.assume(i1 %_21.i18)
  %_8.i19 = getelementptr inbounds nuw i8, ptr %_20.i17, i64 %count.i16
  br i1 %_16.i10, label %bb12.i.i28, label %bb1.i2.i20

bb12.i.i28:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i15"
  %3 = trunc i32 %_18 to i8
  br label %bb4

bb1.i2.i20:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4ae411506dc97443E.exit.i15"
  %_10.i.i21 = lshr i32 %_17, 6
  %_8.i.i22 = trunc nuw nsw i32 %_10.i.i21 to i8
  %4 = trunc i32 %_18 to i8
  %_5.i.i23 = and i8 %4, 63
  %last1.i.i24 = or disjoint i8 %_5.i.i23, -128
  %5 = or disjoint i8 %_8.i.i22, -64
  %_21.i.i25 = getelementptr inbounds nuw i8, ptr %_8.i19, i64 1
  store i8 %last1.i.i24, ptr %_21.i.i25, align 1, !noalias !1048
  br label %bb4

cleanup.loopexit:                                 ; preds = %bb1.i.i29
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb1.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %self1.i.i.i.i1.i.i = load i64, ptr %res, align 8, !range !1031, !alias.scope !1069, !noalias !1072, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb9, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
  %self3.i.i.i.i4.i.i = load ptr, ptr %_23.sroa.4.0.res.sroa_idx, align 8, !alias.scope !1069, !noalias !1072, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1074
  br label %bb9

bb4:                                              ; preds = %bb1.i2.i20, %bb12.i.i28
  %.sink.i.i26 = phi i8 [ %3, %bb12.i.i28 ], [ %5, %bb1.i2.i20 ]
  store i8 %.sink.i.i26, ptr %_8.i19, align 1, !noalias !1048
  %new_len.i27 = add nuw i64 %len.i8, %ch_len.sroa.0.0.i11
  store i64 %new_len.i27, ptr %_23.sroa.5.0.res.sroa_idx, align 8, !alias.scope !1048
  %6 = add nuw nsw i32 %iter1.sroa.0.037, 1
  %7 = add i32 %count.sroa.0.036, 1
  %_21 = icmp eq i32 %7, %k
  %spec.store.select = select i1 %_21, i32 0, i32 %7
  %exitcond38.not = icmp eq i32 %6, %iter2
  br i1 %exitcond38.not, label %bb16, label %bb15

bb2:                                              ; preds = %bb1.i2.i, %bb12.i.i
  %.sink.i.i = phi i8 [ %0, %bb12.i.i ], [ %2, %bb1.i2.i ]
  store i8 %.sink.i.i, ptr %_8.i, align 1, !noalias !1042
  %new_len.i = add nuw i64 %len.i, %ch_len.sroa.0.0.i
  store i64 %new_len.i, ptr %_23.sroa.5.0.res.sroa_idx, align 8, !alias.scope !1042
  %8 = add nuw nsw i32 %iter.sroa.0.034, 1
  %exitcond.not = icmp eq i32 %8, %k
  br i1 %exitcond.not, label %bb11, label %bb10

bb9:                                              ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %lpad.phi
}
