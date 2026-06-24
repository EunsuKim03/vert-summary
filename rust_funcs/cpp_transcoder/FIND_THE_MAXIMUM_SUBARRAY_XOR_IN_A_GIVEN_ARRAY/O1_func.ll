define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %arr, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %_0.i.i.i24 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i24, label %bb8.preheader.lr.ph, label %bb6

bb8.preheader.lr.ph:                              ; preds = %start
  %0 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %len.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_6.i = load ptr, ptr %1, align 8, !nonnull !37
  %wide.trip.count37 = zext nneg i32 %n to i64
  %wide.trip.count = zext nneg i32 %n to i64
  br label %bb8.preheader

cleanup:                                          ; preds = %panic.i.i
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke alloc::raw_vec::RawVecInner<A>::deallocate
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 4, i64 noundef 4)
          to label %bb16 unwind label %terminate

bb2.loopexit:                                     ; preds = %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f899ed4f08464f9E.exit"
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count37
  br i1 %exitcond38.not, label %bb6, label %bb8.preheader

bb8.preheader:                                    ; preds = %bb8.preheader.lr.ph, %bb2.loopexit
  %indvars.iv31 = phi i64 [ 0, %bb8.preheader.lr.ph ], [ %indvars.iv.next32, %bb2.loopexit ]
  %ans.sroa.0.026 = phi i32 [ -2147483648, %bb8.preheader.lr.ph ], [ %_0.sroa.0.0.i, %bb2.loopexit ]
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %ans.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb2.loopexit ]
; call alloc::raw_vec::RawVecInner<A>::deallocate
  tail call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h6ddf8733b0451bb9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %arr, i64 noundef 4, i64 noundef 4)
  ret i32 %ans.sroa.0.0.lcssa

bb10:                                             ; preds = %bb8.preheader, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f899ed4f08464f9E.exit"
  %indvars.iv33 = phi i64 [ %indvars.iv31, %bb8.preheader ], [ %indvars.iv.next34, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f899ed4f08464f9E.exit" ]
  %ans.sroa.0.122 = phi i32 [ %ans.sroa.0.026, %bb8.preheader ], [ %_0.sroa.0.0.i, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f899ed4f08464f9E.exit" ]
  %curr_xor.sroa.0.021 = phi i32 [ 0, %bb8.preheader ], [ %3, %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f899ed4f08464f9E.exit" ]
  %_4.i.i13 = icmp ugt i64 %len.i, %indvars.iv33
  br i1 %_4.i.i13, label %"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f899ed4f08464f9E.exit", label %panic.i.i

panic.i.i:                                        ; preds = %bb10
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef range(i64 -2147483648, 2147483648) %indvars.iv33, i64 noundef range(i64 0, 2305843009213693952) %len.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_47fee60c467417a7fec941affa8cc501) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %panic.i.i
  unreachable

"_ZN81_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h2f899ed4f08464f9E.exit": ; preds = %bb10
  %_0.i.i = getelementptr inbounds nuw i32, ptr %_6.i, i64 %indvars.iv33
  %_19 = load i32, ptr %_0.i.i, align 4, !noundef !37
  %3 = xor i32 %_19, %curr_xor.sroa.0.021
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %3, i32 %ans.sroa.0.122)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond.not, label %bb2.loopexit, label %bb10

terminate:                                        ; preds = %cleanup
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

bb16:                                             ; preds = %cleanup
  resume { ptr, i32 } %2
}
