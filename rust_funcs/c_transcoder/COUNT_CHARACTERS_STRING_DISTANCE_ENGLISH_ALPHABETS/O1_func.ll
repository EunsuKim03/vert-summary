define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp ult i64 %_0.i, 2305843009213693952
  tail call void @llvm.assume(i1 %_2.i)
  %n = trunc i64 %_0.i to i32
  %_0.i.i.i35 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i35, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i = load ptr, ptr %1, align 8, !nonnull !37
  %2 = add nuw i32 %n, 1
  %3 = and i64 %_0.i, 2147483647
  %wide.trip.count = and i64 %_0.i, 2147483647
  br label %bb6

cleanup:                                          ; preds = %panic.i.i15.invoke
  %4 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str, i64 noundef 4, i64 noundef 4)
          to label %bb22 unwind label %terminate

bb3.loopexit:                                     ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E.exit19", %bb6
  %result.sroa.0.1.lcssa = phi i32 [ %result.sroa.0.037, %bb6 ], [ %spec.select, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E.exit19" ]
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count
  br i1 %exitcond50.not, label %bb7, label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb3.loopexit
  %indvars.iv46 = phi i64 [ 0, %bb6.lr.ph ], [ %indvars.iv.next47, %bb3.loopexit ]
  %indvars.iv = phi i32 [ 2, %bb6.lr.ph ], [ %indvars.iv.next, %bb3.loopexit ]
  %result.sroa.0.037 = phi i32 [ 0, %bb6.lr.ph ], [ %result.sroa.0.1.lcssa, %bb3.loopexit ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %_0.i.i.i830 = icmp samesign ult i64 %indvars.iv.next47, %3
  br i1 %_0.i.i.i830, label %bb11.lr.ph, label %bb3.loopexit

bb11.lr.ph:                                       ; preds = %bb6
  %_4.i.i12 = icmp samesign ugt i64 %_0.i, %indvars.iv46
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %indvars.iv46
  br i1 %_4.i.i12, label %bb11.preheader, label %panic.i.i15.invoke

bb11.preheader:                                   ; preds = %bb11.lr.ph
  %5 = zext i32 %indvars.iv to i64
  %6 = trunc nuw nsw i64 %indvars.iv46 to i32
  br label %bb11

bb7:                                              ; preds = %bb3.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %result.sroa.0.1.lcssa, %bb3.loopexit ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str, i64 noundef 4, i64 noundef 4)
  ret i32 %result.sroa.0.0.lcssa

bb11:                                             ; preds = %bb11.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E.exit19"
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E.exit19" ], [ %5, %bb11.preheader ]
  %result.sroa.0.133 = phi i32 [ %spec.select, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E.exit19" ], [ %result.sroa.0.037, %bb11.preheader ]
  %iter1.sroa.0.032.in = phi i64 [ %indvars.iv42, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E.exit19" ], [ %indvars.iv.next47, %bb11.preheader ]
  %sext = shl i64 %iter1.sroa.0.032.in, 32
  %_32 = ashr exact i64 %sext, 32
  %_4.i.i14 = icmp ugt i64 %_0.i, %_32
  br i1 %_4.i.i14, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E.exit19", label %panic.i.i15.invoke

panic.i.i15.invoke:                               ; preds = %bb11.lr.ph, %bb11
  %7 = phi i64 [ %_32, %bb11 ], [ %indvars.iv46, %bb11.lr.ph ]
  %8 = phi ptr [ @alloc_4fb60b8685540aeab7b0cf5408593823, %bb11 ], [ @alloc_c298baeed1e676452a2631d6d254e59e, %bb11.lr.ph ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %7, i64 noundef range(i64 0, 2305843009213693952) %_0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #24
          to label %panic.i.i15.cont unwind label %cleanup

panic.i.i15.cont:                                 ; preds = %panic.i.i15.invoke
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h5f74d2e98cd4eb38E.exit19": ; preds = %bb11
  %iter1.sroa.0.032 = trunc i64 %iter1.sroa.0.032.in to i32
  %_24 = load i32, ptr %_0.i.i, align 4, !range !1633, !noundef !37
  %_0.i.i17 = getelementptr inbounds nuw i32, ptr %_6.i, i64 %_32
  %_29 = load i32, ptr %_0.i.i17, align 4, !range !1633, !noundef !37
  %_22 = sub nsw i32 %_24, %_29
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_22, i1 false)
  %_34 = sub i32 %6, %iter1.sroa.0.032
  %_0.sroa.0.0.i20 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_34, i1 false)
  %_20 = icmp eq i32 %_0.sroa.0.0.i, %_0.sroa.0.0.i20
  %9 = zext i1 %_20 to i32
  %spec.select = add i32 %result.sroa.0.133, %9
  %indvars.iv.next43 = add i64 %indvars.iv42, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next43 to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %bb3.loopexit, label %bb11

terminate:                                        ; preds = %cleanup
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb22:                                             ; preds = %cleanup
  resume { ptr, i32 } %4
}
