define noundef i32 @f_gold(i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_2 = icmp slt i32 %n, 1
  br i1 %_2, label %bb8, label %bb2

bb2:                                              ; preds = %start
  %narrow = add nuw i32 %n, 1
  %_4 = zext i32 %narrow to i64
  %_21.0.i.i.i = shl nuw nsw i64 %_4, 2
; call __rustc::__rust_no_alloc_shim_is_unstable_v2
  tail call void @_RNvCsdBezzDwma51_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !1031
; call __rustc::__rust_alloc_zeroed
  %0 = tail call noundef align 4 ptr @_RNvCsdBezzDwma51_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1031
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb14.i, label %bb13

bb14.i:                                           ; preds = %bb2
; call alloc::raw_vec::handle_error
  tail call void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef 4, i64 %_21.0.i.i.i) #21, !noalias !1036
  unreachable

bb13:                                             ; preds = %bb2
  store i32 0, ptr %0, align 4
  %_7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %_7, align 4
  %_0.i.not.i35 = icmp eq i32 %n, 1
  br i1 %_0.i.not.i35, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70ef48ce4e7dd2f2E.exit15", label %bb2.i

bb2.i:                                            ; preds = %bb13, %bb20
  %sum.sroa.0.037 = phi i32 [ %6, %bb20 ], [ 1, %bb13 ]
  %iter.sroa.0.036 = phi i32 [ %spec.select, %bb20 ], [ 2, %bb13 ]
  %_0.i3.i = icmp sge i32 %iter.sroa.0.036, %n
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %2 = zext i1 %not._0.i3.i to i32
  %spec.select = add nuw nsw i32 %iter.sroa.0.036, %2
  %_21 = add nsw i32 %iter.sroa.0.036, -1
  %_20 = sext i32 %_21 to i64
  %_56 = icmp ugt i64 %_4, %_20
  br i1 %_56, label %bb17, label %panic4.invoke

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70ef48ce4e7dd2f2E.exit15": ; preds = %bb20, %bb13
  %sum.sroa.0.0.lcssa = phi i32 [ 1, %bb13 ], [ %6, %bb20 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1037
  br label %bb8

bb8:                                              ; preds = %start, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70ef48ce4e7dd2f2E.exit15"
  %sum.sroa.0.1 = phi i32 [ %sum.sroa.0.0.lcssa, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70ef48ce4e7dd2f2E.exit15" ], [ 0, %start ]
  ret i32 %sum.sroa.0.1

bb17:                                             ; preds = %bb2.i
  %_19 = getelementptr inbounds nuw i32, ptr %0, i64 %_20
  %_18 = load i32, ptr %_19, align 4, !noundef !23
  %_25 = add nsw i32 %iter.sroa.0.036, -2
  %_24 = sext i32 %_25 to i64
  %_61 = icmp ugt i64 %_4, %_24
  br i1 %_61, label %bb18, label %panic4.invoke

panic4.invoke:                                    ; preds = %bb18, %bb17, %bb2.i
  %3 = phi i64 [ %_20, %bb2.i ], [ %_24, %bb17 ], [ %_27, %bb18 ]
  %4 = phi ptr [ @alloc_2af4623e3420df37cb350b210573df7d, %bb2.i ], [ @alloc_a4fa71d21c3d6e58dc27797525e2ee60, %bb17 ], [ @alloc_bfadee939c0c39a4ad974d2e3686ae29, %bb18 ]
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %3, i64 noundef %_4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #21
          to label %panic4.cont unwind label %bb10

panic4.cont:                                      ; preds = %panic4.invoke
  unreachable

bb18:                                             ; preds = %bb17
  %_27 = zext nneg i32 %iter.sroa.0.036 to i64
  %_67.not = icmp ult i32 %n, %iter.sroa.0.036
  br i1 %_67.not, label %panic4.invoke, label %bb20

bb20:                                             ; preds = %bb18
  %_23 = getelementptr inbounds nuw i32, ptr %0, i64 %_24
  %_22 = load i32, ptr %_23, align 4, !noundef !23
  %_26 = getelementptr inbounds nuw i32, ptr %0, i64 %_27
  %5 = add i32 %_22, %_18
  store i32 %5, ptr %_26, align 4
  %6 = add i32 %5, %sum.sroa.0.037
  %_0.i.not.i = icmp sgt i32 %spec.select, %n
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h70ef48ce4e7dd2f2E.exit15", label %bb2.i

bb10:                                             ; preds = %panic4.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %_21.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #20, !noalias !1046
  resume { ptr, i32 } %7
}
