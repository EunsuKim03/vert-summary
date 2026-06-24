define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %num) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_58 = alloca [16 x i8], align 8
  %_48 = alloca [16 x i8], align 8
  %_39 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_4 = icmp eq i64 %_0.i, 1
  br i1 %_4, label %bb14.i.i.i, label %bb10

cleanup:                                          ; preds = %bb2.i18.invoke, %bb14, %bb11
  %1 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5de5350f95e10520E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup
  %2 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %3 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5de5350f95e10520E.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %common.resume unwind label %terminate

bb10:                                             ; preds = %bb14.i.i.i, %start
  %_14 = urem i64 %_0.i, 3
  switch i64 %_14, label %bb18 [
    i64 1, label %bb11
    i64 2, label %bb14
  ]

bb14.i.i.i:                                       ; preds = %start
  %4 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_6.i.i = load ptr, ptr %4, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %x.i.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1669, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  tail call void @llvm.assume(i1 %_6.i.i.i)
  %cond = icmp eq i8 %x.i.i.i, 48
  br i1 %cond, label %bb41, label %bb10, !prof !1676

bb11:                                             ; preds = %bb10
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num, ptr noundef nonnull @alloc_31b87e4183ddea3ba6aff175b346d521, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @alloc_31b87e4183ddea3ba6aff175b346d521, i64 2))
          to label %bb12 unwind label %cleanup

bb14:                                             ; preds = %bb10
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num, i64 noundef 1)
          to label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit unwind label %cleanup

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb14
  %5 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_20.i = load ptr, ptr %5, align 8, !alias.scope !1677, !nonnull !15, !noundef !15
  %count.i = load i64, ptr %0, align 8, !alias.scope !1677, !noundef !15
  %_21.i = icmp sgt i64 %count.i, -1
  tail call void @llvm.assume(i1 %_21.i)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i, i64 %count.i
  store i8 48, ptr %_8.i, align 1
  %new_len.i = add nuw i64 %_0.i, 1
  store i64 %new_len.i, ptr %0, align 8, !alias.scope !1677
  br label %bb18

bb18:                                             ; preds = %bb10, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit, %bb12
  %length.sroa.0.0 = phi i64 [ %10, %bb12 ], [ %new_len.i, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit ], [ %_0.i, %bb10 ]
  %_0.i.i.i.i.not.not51 = icmp eq i64 %length.sroa.0.0, 0
  br i1 %_0.i.i.i.i.not.not51, label %bb25, label %bb24.lr.ph

bb24.lr.ph:                                       ; preds = %bb18
  %iter.sroa.4.152 = add i64 %length.sroa.0.0, -1
  %6 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_6.i.i28 = load ptr, ptr %6, align 8, !alias.scope !1680, !nonnull !15, !noundef !15
  %len.i.i29 = load i64, ptr %0, align 8, !alias.scope !1680, !noundef !15
  %_7.i41 = getelementptr inbounds nuw i8, ptr %_6.i.i28, i64 %len.i.i29
  %7 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %_48, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_58, i64 8
  br label %bb24

bb12:                                             ; preds = %bb11
  %10 = add nuw i64 %_0.i, 2
  br label %bb18

bb24:                                             ; preds = %bb24.lr.ph, %bb37
  %iter.sroa.4.156 = phi i64 [ %iter.sroa.4.152, %bb24.lr.ph ], [ %iter.sroa.4.1, %bb37 ]
  %sum.sroa.0.055 = phi i32 [ 0, %bb24.lr.ph ], [ %19, %bb37 ]
  %p.sroa.0.054 = phi i32 [ 1, %bb24.lr.ph ], [ %20, %bb37 ]
  %iter.sroa.4.053 = phi i64 [ %length.sroa.0.0, %bb24.lr.ph ], [ %iter.sroa.4.156, %bb37 ]
  %_0.i1.i.i.i = add i64 %iter.sroa.4.053, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_39)
  store ptr %_6.i.i28, ptr %_39, align 8
  store ptr %_7.i41, ptr %7, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_37 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h773036c3612144d0E(ptr noalias noundef align 8 dereferenceable(16) %_39, i64 noundef %_0.i1.i.i.i)
  %.not.i17 = icmp eq i32 %_37, 1114112
  br i1 %.not.i17, label %bb2.i18.invoke, label %bb29, !prof !1064

bb25:                                             ; preds = %bb37, %bb18
  %sum.sroa.0.0.lcssa = phi i32 [ 0, %bb18 ], [ %19, %bb37 ]
  %_0.sroa.0.0.i30 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %sum.sroa.0.0.lcssa, i1 false)
  %_67 = srem i32 %_0.sroa.0.0.i30, 13
  %_66 = icmp eq i32 %_67, 0
  br i1 %_66, label %bb41, label %bb40

bb40:                                             ; preds = %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %bb42 unwind label %cleanup.i.i31

cleanup.i.i31:                                    ; preds = %bb40
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %common.resume unwind label %terminate.i.i32

terminate.i.i32:                                  ; preds = %cleanup.i.i31
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5de5350f95e10520E.exit.i", %cleanup.i.i36, %cleanup.i.i31
  %common.resume.op = phi { ptr, i32 } [ %11, %cleanup.i.i31 ], [ %13, %cleanup.i.i36 ], [ %1, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5de5350f95e10520E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

bb42:                                             ; preds = %bb40, %bb41
  %_0.sroa.0.0 = phi i32 [ 1, %bb41 ], [ 0, %bb40 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
  ret i32 %_0.sroa.0.0

bb41:                                             ; preds = %bb14.i.i.i, %bb25
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %bb42 unwind label %cleanup.i.i36

cleanup.i.i36:                                    ; preds = %bb41
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %common.resume unwind label %terminate.i.i37

terminate.i.i37:                                  ; preds = %cleanup.i.i36
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb2.i18.invoke:                                   ; preds = %bb33, %bb29, %bb24
  %15 = phi ptr [ @alloc_6871ce8791b816da97cbbf20d9f8f173, %bb24 ], [ @alloc_2ba9c55dd474f682f66dab159bb81d88, %bb29 ], [ @alloc_a4ceec50903d3c1195516cf4fa2df2e0, %bb33 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %15) #25
          to label %bb2.i18.cont unwind label %cleanup

bb2.i18.cont:                                     ; preds = %bb2.i18.invoke
  unreachable

bb29:                                             ; preds = %bb24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_48)
  store ptr %_6.i.i28, ptr %_48, align 8
  store ptr %_7.i41, ptr %8, align 8
  %_51 = add i64 %iter.sroa.4.053, -2
; call core::iter::traits::iterator::Iterator::nth
  %_46 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h773036c3612144d0E(ptr noalias noundef align 8 dereferenceable(16) %_48, i64 noundef %_51)
  %.not.i13 = icmp eq i32 %_46, 1114112
  br i1 %.not.i13, label %bb2.i18.invoke, label %bb33, !prof !1064

bb33:                                             ; preds = %bb29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_58)
  store ptr %_6.i.i28, ptr %_58, align 8
  store ptr %_7.i41, ptr %9, align 8
  %_61 = add i64 %iter.sroa.4.053, -3
; call core::iter::traits::iterator::Iterator::nth
  %_56 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h773036c3612144d0E(ptr noalias noundef align 8 dereferenceable(16) %_58, i64 noundef %_61)
  %.not.i = icmp eq i32 %_56, 1114112
  br i1 %.not.i, label %bb2.i18.invoke, label %bb37, !prof !1064

bb37:                                             ; preds = %bb33
  %16 = mul nuw nsw i32 %_46, 10
  %17 = mul nuw nsw i32 %_56, 100
  %_42 = add nsw i32 %_37, -5328
  %_52 = add nsw i32 %_42, %16
  %18 = add nsw i32 %_52, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_58)
  %_63 = mul nsw i32 %18, %p.sroa.0.054
  %19 = add i32 %_63, %sum.sroa.0.055
  %20 = sub nsw i32 0, %p.sroa.0.054
  %_0.i.i.i.i.not.not = icmp eq i64 %iter.sroa.4.156, 0
  %iter.sroa.4.1 = tail call i64 @llvm.usub.sat.i64(i64 %iter.sroa.4.156, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb25, label %bb24

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5de5350f95e10520E.exit.i"
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
