define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %arr, i32 noundef %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_1315 = icmp sgt i32 %n, 0
  br i1 %_1315, label %bb7.lr.ph, label %bb8

bb7.lr.ph:                                        ; preds = %start
  %0 = getelementptr inbounds nuw i8, ptr %arr, i64 16
  %_28 = load i64, ptr %0, align 8, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %_29 = load ptr, ptr %1, align 8, !nonnull !23
  %wide.trip.count23 = zext nneg i32 %n to i64
  br label %bb7

bb1.loopexit:                                     ; preds = %bb16
  %exitcond24.not = icmp eq i64 %indvars.iv.next, %wide.trip.count23
  br i1 %exitcond24.not, label %bb8, label %bb7

bb8:                                              ; preds = %bb1.loopexit, %start
  %ans.sroa.0.0.lcssa = phi i32 [ -2147483648, %start ], [ %_0.sroa.0.0.i, %bb1.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %self1.i.i.i.i1.i = load i64, ptr %arr, align 8, !range !1043, !alias.scope !1044, !noalias !1047, !noundef !23
  %_6.i.i.i.i2.i = icmp eq i64 %self1.i.i.i.i1.i, 0
  br i1 %_6.i.i.i.i2.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hadf3bda983ce0be9E.exit", label %bb2.i.i.i3.i

bb2.i.i.i3.i:                                     ; preds = %bb8
  %2 = shl nuw i64 %self1.i.i.i.i1.i, 2
  %3 = getelementptr inbounds nuw i8, ptr %arr, i64 8
  %self3.i.i.i.i4.i = load ptr, ptr %3, align 8, !alias.scope !1044, !noalias !1047, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1049
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hadf3bda983ce0be9E.exit"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17hadf3bda983ce0be9E.exit": ; preds = %bb8, %bb2.i.i.i3.i
  ret i32 %ans.sroa.0.0.lcssa

bb7:                                              ; preds = %bb7.lr.ph, %bb1.loopexit
  %indvars.iv = phi i64 [ 0, %bb7.lr.ph ], [ %indvars.iv.next, %bb1.loopexit ]
  %ans.sroa.0.017 = phi i32 [ -2147483648, %bb7.lr.ph ], [ %_0.sroa.0.0.i, %bb1.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb12

bb12:                                             ; preds = %bb7, %bb16
  %indvars.iv19 = phi i64 [ %indvars.iv, %bb7 ], [ %indvars.iv.next20, %bb16 ]
  %ans.sroa.0.114 = phi i32 [ %ans.sroa.0.017, %bb7 ], [ %_0.sroa.0.0.i, %bb16 ]
  %curr_xor.sroa.0.012 = phi i32 [ 0, %bb7 ], [ %4, %bb16 ]
  %_31 = icmp ugt i64 %_28, %indvars.iv19
  br i1 %_31, label %bb16, label %panic

bb16:                                             ; preds = %bb12
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %_9 = getelementptr inbounds nuw i32, ptr %_29, i64 %indvars.iv19
  %_8 = load i32, ptr %_9, align 4, !noundef !23
  %4 = xor i32 %_8, %curr_xor.sroa.0.012
  %_0.sroa.0.0.i = tail call noundef i32 @llvm.smax.i32(i32 %4, i32 %ans.sroa.0.114)
  %exitcond.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count23
  br i1 %exitcond.not, label %bb1.loopexit, label %bb12

panic:                                            ; preds = %bb12
; invoke core::panicking::panic_bounds_check
  invoke void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %indvars.iv19, i64 noundef %_28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_47fee60c467417a7fec941affa8cc501) #20
          to label %unreachable unwind label %cleanup

cleanup:                                          ; preds = %panic
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  %self1.i.i.i.i1.i5 = load i64, ptr %arr, align 8, !range !1043, !alias.scope !1062, !noalias !1065, !noundef !23
  %_6.i.i.i.i2.i6 = icmp eq i64 %self1.i.i.i.i1.i5, 0
  br i1 %_6.i.i.i.i2.i6, label %bb6, label %bb2.i.i.i3.i7

bb2.i.i.i3.i7:                                    ; preds = %cleanup
  %6 = shl nuw i64 %self1.i.i.i.i1.i5, 2
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_29, i64 noundef %6, i64 noundef range(i64 1, -9223372036854775807) 4) #19, !noalias !1067
  br label %bb6

unreachable:                                      ; preds = %panic
  unreachable

bb6:                                              ; preds = %bb2.i.i.i3.i7, %cleanup
  resume { ptr, i32 } %5
}
