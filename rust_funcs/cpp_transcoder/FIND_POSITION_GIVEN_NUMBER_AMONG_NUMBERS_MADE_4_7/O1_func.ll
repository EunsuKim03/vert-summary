define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %n) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_13 = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_6.i.i = load ptr, ptr %0, align 8, !alias.scope !1661, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %n, i64 16
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !1661, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  %2 = getelementptr inbounds nuw i8, ptr %_7, i64 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7)
  store ptr %_6.i.i, ptr %_7, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %3 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha18065dfa8ab1866E(ptr noalias noundef align 8 dereferenceable(16) %_7, i64 noundef 0)
  %.not.i.i.not9 = icmp eq i32 %3, 1114112
  br i1 %.not.i.i.not9, label %bb14, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %4 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  br label %bb6

bb14:                                             ; preds = %bb13, %start
  %pos.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %pos.sroa.0.1, %bb13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h59a3c95e9111bc67E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb14
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %bb1.i.i unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb1.i.i:                                          ; preds = %cleanup.i.i
  resume { ptr, i32 } %5

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h59a3c95e9111bc67E.exit": ; preds = %bb14
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
  ret i32 %pos.sroa.0.0.lcssa

bb6:                                              ; preds = %bb6.lr.ph, %bb13
  %pos.sroa.0.011 = phi i32 [ 0, %bb6.lr.ph ], [ %pos.sroa.0.1, %bb13 ]
  %i.sroa.0.010 = phi i64 [ 0, %bb6.lr.ph ], [ %8, %bb13 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %_6.i.i, ptr %_13, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %7 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha18065dfa8ab1866E(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %i.sroa.0.010)
  switch i32 %7, label %bb13 [
    i32 55, label %bb11
    i32 52, label %bb12
  ]

bb13:                                             ; preds = %bb6, %bb11, %bb12
  %pos.sroa.0.1 = phi i32 [ %10, %bb12 ], [ %11, %bb11 ], [ %pos.sroa.0.011, %bb6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  %8 = add i64 %i.sroa.0.010, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7)
  store ptr %_6.i.i, ptr %_7, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %9 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha18065dfa8ab1866E(ptr noalias noundef align 8 dereferenceable(16) %_7, i64 noundef %8)
  %.not.i.i.not = icmp eq i32 %9, 1114112
  br i1 %.not.i.i.not, label %bb14, label %bb6

bb12:                                             ; preds = %bb6
  %_18 = shl i32 %pos.sroa.0.011, 1
  %10 = or disjoint i32 %_18, 1
  br label %bb13

bb11:                                             ; preds = %bb6
  %_19 = shl i32 %pos.sroa.0.011, 1
  %11 = add i32 %_19, 2
  br label %bb13
}
