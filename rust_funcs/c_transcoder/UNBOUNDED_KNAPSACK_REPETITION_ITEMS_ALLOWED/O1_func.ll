define noundef i32 @f_gold(i32 noundef %W, i32 noundef %n, i64 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca [24 x i8], align 8
  %dp = alloca [24 x i8], align 8
  %wt = alloca [8 x i8], align 8
  %val = alloca [8 x i8], align 8
  store i64 %0, ptr %val, align 8
  store i64 %1, ptr %wt, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dp)
  %_7 = sext i32 %W to i64
  %_6 = add nsw i64 %_7, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_16.i.i, i64 noundef %_6, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !1644
  %_17.i.i = load i64, ptr %_16.i.i, align 8, !range !1031, !noalias !1644, !noundef !37
  %2 = trunc nuw i64 %_17.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 8
  %err.0.i.i = load i64, ptr %3, align 8, !range !1032, !noalias !1644, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %_16.i.i, i64 16
  br i1 %2, label %bb14.i.i, label %_ZN5alloc3vec9from_elem17hf420e5ce25a6cd21E.exit, !prof !1033

bb14.i.i:                                         ; preds = %start
  %err.1.i.i = load i64, ptr %4, align 8, !noalias !1644
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i, i64 %err.1.i.i) #26, !noalias !1644
  unreachable

_ZN5alloc3vec9from_elem17hf420e5ce25a6cd21E.exit: ; preds = %start
  %res.1.i.i = load ptr, ptr %4, align 8, !noalias !1644, !nonnull !37, !noundef !37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_16.i.i), !noalias !1644
  store i64 %err.0.i.i, ptr %dp, align 8, !alias.scope !1644
  %5 = getelementptr inbounds nuw i8, ptr %dp, i64 8
  store ptr %res.1.i.i, ptr %5, align 8, !alias.scope !1644
  %6 = getelementptr inbounds nuw i8, ptr %dp, i64 16
  store i64 %_6, ptr %6, align 8, !alias.scope !1644
  %_0.i.i.i40 = icmp sgt i32 %n, 0
  %7 = zext i1 %_0.i.i.i40 to i32
  %_0.i.not.i.i55 = icmp slt i32 %W, 0
  br i1 %_0.i.not.i.i55, label %bb8, label %bb10.preheader.lr.ph

bb10.preheader.lr.ph:                             ; preds = %_ZN5alloc3vec9from_elem17hf420e5ce25a6cd21E.exit
  %.not = icmp eq i32 %W, 0
  %iter.sroa.7.160 = zext i1 %.not to i8
  %_0.i3.i.i56 = icmp ne i32 %W, 0
  %spec.select3459 = zext i1 %_0.i3.i.i56 to i32
  br label %bb10.preheader

cleanup:                                          ; preds = %panic.i.i22.invoke, %panic
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
          to label %bb26 unwind label %terminate

bb4.loopexit:                                     ; preds = %bb22, %bb10.preheader
  %_10.i.i = trunc nuw i8 %iter.sroa.7.162 to i1
  %_0.i.not.i.i = icmp sgt i32 %iter.sroa.0.161, %W
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp slt i32 %iter.sroa.0.161, %W
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select34 = zext i1 %narrow to i32
  %iter.sroa.0.1 = add nuw nsw i32 %iter.sroa.0.161, %spec.select34
  %9 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %9, i8 %iter.sroa.7.162, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i32 undef, i32 %iter.sroa.0.161
  br i1 %or.cond, label %bb8, label %bb10.preheader

bb10.preheader:                                   ; preds = %bb10.preheader.lr.ph, %bb4.loopexit
  %_0.sroa.3.0.i.i63 = phi i32 [ 0, %bb10.preheader.lr.ph ], [ %_0.sroa.3.0.i.i, %bb4.loopexit ]
  %iter.sroa.7.162 = phi i8 [ %iter.sroa.7.160, %bb10.preheader.lr.ph ], [ %iter.sroa.7.1, %bb4.loopexit ]
  %iter.sroa.0.161 = phi i32 [ %spec.select3459, %bb10.preheader.lr.ph ], [ %iter.sroa.0.1, %bb4.loopexit ]
  br i1 %_0.i.i.i40, label %bb12.lr.ph, label %bb4.loopexit

bb12.lr.ph:                                       ; preds = %bb10.preheader
  %_30 = sext i32 %_0.sroa.3.0.i.i63 to i64
  br label %bb12

bb8:                                              ; preds = %bb4.loopexit, %_ZN5alloc3vec9from_elem17hf420e5ce25a6cd21E.exit
  %len.i = load i64, ptr %6, align 8, !alias.scope !1645, !noalias !1648, !noundef !37
  %_4.i.i = icmp ugt i64 %len.i, %_7
  br i1 %_4.i.i, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit", label %panic.i.i22.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit": ; preds = %bb8
  %_6.i = load ptr, ptr %5, align 8, !alias.scope !1645, !noalias !1648, !nonnull !37, !noundef !37
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_7
  %_0 = load i32, ptr %_0.i.i, align 4, !noundef !37
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %dp, i64 noundef 4, i64 noundef 4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dp)
  ret i32 %_0

bb12:                                             ; preds = %bb12.lr.ph, %bb22
  %spec.select42 = phi i32 [ %7, %bb12.lr.ph ], [ %spec.select, %bb22 ]
  %iter1.sroa.0.041 = phi i32 [ 0, %bb12.lr.ph ], [ %spec.select42, %bb22 ]
  %_24 = zext nneg i32 %iter1.sroa.0.041 to i64
  %_25 = icmp samesign ult i32 %iter1.sroa.0.041, 2
  br i1 %_25, label %bb14, label %panic

bb14:                                             ; preds = %bb12
  %10 = getelementptr inbounds nuw i32, ptr %wt, i64 %_24
  %_23 = load i32, ptr %10, align 4, !noundef !37
  %_22.not = icmp sgt i32 %_23, %_0.sroa.3.0.i.i63
  br i1 %_22.not, label %bb22, label %bb15

panic:                                            ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_24, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_07920c76a589c9a658065d174f84d27e) #26
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %panic
  unreachable

bb22:                                             ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit26", %bb14
  %_0.i.i.i = icmp slt i32 %spec.select42, %n
  %11 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select42, %11
  br i1 %_0.i.i.i, label %bb12, label %bb4.loopexit

bb15:                                             ; preds = %bb14
  %len.i13 = load i64, ptr %6, align 8, !alias.scope !1650, !noalias !1653, !noundef !37
  %_4.i.i14 = icmp ugt i64 %len.i13, %_30
  br i1 %_4.i.i14, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit19", label %panic.i.i22.invoke

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit19": ; preds = %bb15
  %_36 = sub i32 %_0.sroa.3.0.i.i63, %_23
  %_35 = sext i32 %_36 to i64
  %_4.i.i21 = icmp ugt i64 %len.i13, %_35
  br i1 %_4.i.i21, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit26", label %panic.i.i22.invoke

panic.i.i22.invoke:                               ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit19", %bb15, %bb8
  %12 = phi i64 [ %_7, %bb8 ], [ %_35, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit19" ], [ %_30, %bb15 ]
  %13 = phi i64 [ %len.i, %bb8 ], [ %len.i13, %bb15 ], [ %len.i13, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit19" ]
  %14 = phi ptr [ @alloc_ae2e40f600ba41e76725c33e606c7b42, %bb8 ], [ @alloc_f012d88844128352c32bf4b42595e02d, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit19" ], [ @alloc_a577d4d519c28f33df5a2146cf756167, %bb15 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %12, i64 noundef range(i64 0, 2305843009213693952) %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #25
          to label %panic.i.i22.cont unwind label %cleanup

panic.i.i22.cont:                                 ; preds = %panic.i.i22.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit26": ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h373387ec00cca46aE.exit19"
  %_6.i16 = load ptr, ptr %5, align 8, !alias.scope !1650, !noalias !1653, !nonnull !37, !noundef !37
  %_0.i.i17 = getelementptr inbounds nuw i32, ptr %_6.i16, i64 %_30
  %_27 = load i32, ptr %_0.i.i17, align 4, !noundef !37
  %_0.i.i24 = getelementptr inbounds nuw i32, ptr %_6.i16, i64 %_35
  %_32 = load i32, ptr %_0.i.i24, align 4, !noundef !37
  %15 = getelementptr inbounds nuw i32, ptr %val, i64 %_24
  %_37 = load i32, ptr %15, align 4, !noundef !37
  %_31 = add i32 %_37, %_32
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %_31, i32 %_27)
  store i32 %_0.sroa.0.0.i, ptr %_0.i.i17, align 4
  br label %bb22

terminate:                                        ; preds = %cleanup
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb26:                                             ; preds = %cleanup
  resume { ptr, i32 } %8
}
