define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %BT = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %BT)
  %_4 = sext i32 %n to i64
  %_3 = add nsw i64 %_4, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_3, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %0 = trunc nuw i64 %_17.i.i to i1
  %1 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %1, align 8, !range !1032, !noalias !1644, !noundef !37
  %2 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %0, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17h8f9eba1a2d38bc40E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %2, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17h8f9eba1a2d38bc40E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %2, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %BT, align 8, !alias.scope !1644
  %3 = getelementptr inbounds nuw i8, ptr %BT, i64 8
  store ptr %res.1.i.i, ptr %3, align 8, !alias.scope !1644
  %4 = getelementptr inbounds nuw i8, ptr %BT, i64 16
  store i64 %_3, ptr %4, align 8, !alias.scope !1644
  %_4.i.i.not = icmp eq i64 %_3, 0
  br i1 %_4.i.i.not, label %panic.i.i38.invoke, label %bb2

cleanup:                                          ; preds = %panic.i.i38.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %BT, i64 noundef 4, i64 noundef 4)
          to label %bb22 unwind label %terminate

bb2:                                              ; preds = %_ZN5alloc3vec9from_elem17h8f9eba1a2d38bc40E.exit
  store i32 1, ptr %res.1.i.i, align 4
  %len.i5 = load i64, ptr %4, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i6 = icmp ugt i64 %len.i5, 1
  br i1 %_4.i.i6, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE.exit10", label %panic.i.i38.invoke

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE.exit10": ; preds = %bb2
  %_6.i8 = load ptr, ptr %3, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i8, ptr %_6.i8, i64 4
  store i32 1, ptr %_0.i.i, align 4
  %_0.i.not.i.i79 = icmp slt i32 %n, 2
  br i1 %_0.i.not.i.i79, label %bb10, label %bb12.preheader.lr.ph

bb12.preheader.lr.ph:                             ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE.exit10"
  %.not = icmp eq i32 %n, 2
  %iter.sroa.7.185 = zext i1 %.not to i8
  %_0.i3.i.i80.not = icmp eq i32 %n, 2
  %iter.sroa.0.184 = select i1 %_0.i3.i.i80.not, i32 2, i32 3
  br label %bb14.lr.ph

bb6.loopexit:                                     ; preds = %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE.exit42"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.187 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.186, %n
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.186, %n
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select44 = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.186, %spec.select44
  %6 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %6, i8 %iter.sroa.7.187, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.186
  br i1 %or.cond, label %bb10, label %bb14.lr.ph

bb14.lr.ph:                                       ; preds = %bb6.loopexit, %bb12.preheader.lr.ph
  %_0.sroa.3.0.i.i88 = phi i32 [ 2, %bb12.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb6.loopexit ]
  %iter.sroa.7.187 = phi i8 [ %iter.sroa.7.185, %bb12.preheader.lr.ph ], [ %iter.sroa.7.1, %bb6.loopexit ]
  %iter.sroa.0.186 = phi i32 [ %iter.sroa.0.184, %bb12.preheader.lr.ph ], [ %iter.sroa.0.1, %bb6.loopexit ]
  %_33 = zext nneg i32 %_0.sroa.3.0.i.i88 to i64
  %wide.trip.count = zext nneg i32 %_0.sroa.3.0.i.i88 to i64
  br label %bb14

bb10:                                             ; preds = %bb6.loopexit, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE.exit10"
  %len.i11 = load i64, ptr %4, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i12 = icmp ugt i64 %len.i11, %_4
  br i1 %_4.i.i12, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit": ; preds = %bb10
  %_6.i14 = load ptr, ptr %3, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i15 = getelementptr inbounds nuw i32, ptr %_6.i14, i64 %_4
  %_0 = load i32, ptr %_0.i.i15, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %BT, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %BT)
  ret i32 %_0

bb14:                                             ; preds = %bb14.lr.ph, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE.exit42"
  %indvars.iv65 = phi i64 [ 0, %bb14.lr.ph ], [ %indvars.iv.next66, %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE.exit42" ]
  %len.i22 = load i64, ptr %4, align 8, !alias.scope !1655, !noalias !1658, !noundef !37
  %_4.i.i23 = icmp ugt i64 %len.i22, %indvars.iv65
  br i1 %_4.i.i23, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit28", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit28": ; preds = %bb14
  %_6.i25 = load ptr, ptr %3, align 8, !alias.scope !1655, !noalias !1658, !nonnull !37, !noundef !37
  %_0.i.i26 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %indvars.iv65
  %_24 = load i32, ptr %_0.i.i26, align 4, !noundef !37
  %7 = xor i64 %indvars.iv65, -1
  %_31 = add nsw i64 %7, %_33
  %_4.i.i30 = icmp ult i64 %_31, %len.i22
  br i1 %_4.i.i30, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit35", label %panic.i.i38.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit35": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit28"
  %_4.i.i37 = icmp ugt i64 %len.i22, %_33
  br i1 %_4.i.i37, label %"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE.exit42", label %panic.i.i38.invoke

panic.i.i38.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit35", %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit28", %bb14, %_ZN5alloc3vec9from_elem17h8f9eba1a2d38bc40E.exit, %bb10, %bb2
  %8 = phi i64 [ 1, %bb2 ], [ %_4, %bb10 ], [ 0, %_ZN5alloc3vec9from_elem17h8f9eba1a2d38bc40E.exit ], [ %_33, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit35" ], [ %_31, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit28" ], [ %indvars.iv65, %bb14 ]
  %9 = phi i64 [ %len.i5, %bb2 ], [ %len.i11, %bb10 ], [ %_3, %_ZN5alloc3vec9from_elem17h8f9eba1a2d38bc40E.exit ], [ %len.i22, %bb14 ], [ %len.i22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit28" ], [ %len.i22, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit35" ]
  %10 = phi ptr [ @alloc_deffb33e00b87e8c9a9d2a89c55e01b5, %bb2 ], [ @alloc_b6f92e3e43da0384fd587c273fd4e93a, %bb10 ], [ @alloc_4b18375d5ace3c8d932d674a74210703, %_ZN5alloc3vec9from_elem17h8f9eba1a2d38bc40E.exit ], [ @alloc_f7f9488adfa6d6d8641d1c4f6d79fe35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit35" ], [ @alloc_effbd9c5313ba2b316a5391c47e61ea7, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit28" ], [ @alloc_c16ceaf2aba213a69df6c31a75b394f1, %bb14 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -4294967296, 4294967295) %8, i64 noundef range(i64 0, 2305843009213693952) %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %panic.i.i38.cont unwind label %cleanup

panic.i.i38.cont:                                 ; preds = %panic.i.i38.invoke
  unreachable

"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h3062522edc0853aaE.exit42": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he40baf76e3cb9f29E.exit35"
  %_0.i.i33 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_31
  %_28 = load i32, ptr %_0.i.i33, align 4, !noundef !37
  %_0.i.i40 = getelementptr inbounds nuw i32, ptr %_6.i25, i64 %_33
  %_23 = mul i32 %_28, %_24
  %11 = load i32, ptr %_0.i.i40, align 4, !noundef !37
  %12 = add i32 %11, %_23
  store i32 %12, ptr %_0.i.i40, align 4
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count
  br i1 %exitcond.not, label %bb6.loopexit, label %bb14

terminate:                                        ; preds = %cleanup
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb22:                                             ; preds = %cleanup
  resume { ptr, i32 } %5
}
