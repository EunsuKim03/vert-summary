define noundef range(i32 -2147483647, -2147483648) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %num, i32 noundef %a) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %iter1 = load i64, ptr %0, align 8, !noundef !23
  %_16 = icmp sgt i64 %iter1, -1
  tail call void @llvm.assume(i1 %_16)
  %_1713.not = icmp eq i64 %iter1, 0
  br i1 %_1713.not, label %bb9, label %bb2.lr.ph

bb2.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_23 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_12 = icmp eq i32 %a, 0
  %_13 = icmp eq i32 %a, -1
  br i1 %_12, label %panic2, label %bb2

bb9:                                              ; preds = %bb4, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %6, %bb4 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %self1.i.i.i.i1.i.i = load i64, ptr %num, align 8, !range !1046, !alias.scope !1047, !noalias !1050, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h12497b795d73a8abE.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb9
  %2 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %2, align 8, !alias.scope !1047, !noalias !1050, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1052
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h12497b795d73a8abE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h12497b795d73a8abE.exit": ; preds = %bb9, %bb2.i.i.i3.i.i
  ret i32 %res.sroa.0.0.lcssa

bb2:                                              ; preds = %bb2.lr.ph, %bb4
  %res.sroa.0.015 = phi i32 [ %6, %bb4 ], [ 0, %bb2.lr.ph ]
  %iter.sroa.0.014 = phi i64 [ %5, %bb4 ], [ 0, %bb2.lr.ph ]
  %_7 = mul i32 %res.sroa.0.015, 10
  %3 = getelementptr inbounds nuw i8, ptr %_23, i64 %iter.sroa.0.014
  %_10 = load i8, ptr %3, align 1, !noundef !23
  %_9 = add i8 %_10, -48
  %_8 = zext i8 %_9 to i32
  %_6 = add i32 %_7, %_8
  %_14 = icmp eq i32 %_6, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic3, label %bb4

cleanup:                                          ; preds = %panic3, %panic2
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %self1.i.i.i.i1.i.i6 = load i64, ptr %num, align 8, !range !1046, !alias.scope !1068, !noalias !1071, !noundef !23
  %_6.i.i.i.i2.i.i7 = icmp eq i64 %self1.i.i.i.i1.i.i6, 0
  br i1 %_6.i.i.i.i2.i.i7, label %bb7, label %bb2.i.i.i3.i.i8

bb2.i.i.i3.i.i8:                                  ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_23, i64 noundef %self1.i.i.i.i1.i.i6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1073
  br label %bb7

unreachable:                                      ; preds = %panic3, %panic2
  unreachable

panic2:                                           ; preds = %bb2.lr.ph
; invoke core::panicking::panic_const::panic_const_rem_by_zero
  invoke void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h68b8e0645961a790E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4516dc5e5d406b799b6cf624a2f4ca8f) #19
          to label %unreachable unwind label %cleanup

bb4:                                              ; preds = %bb2
  %5 = add nuw nsw i64 %iter.sroa.0.014, 1
  %6 = srem i32 %_6, %a
  %exitcond.not = icmp eq i64 %5, %iter1
  br i1 %exitcond.not, label %bb9, label %bb2

panic3:                                           ; preds = %bb2
; invoke core::panicking::panic_const::panic_const_rem_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h4aab8182a78c82f8E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4516dc5e5d406b799b6cf624a2f4ca8f) #19
          to label %unreachable unwind label %cleanup

bb7:                                              ; preds = %bb2.i.i.i3.i.i8, %cleanup
  resume { ptr, i32 } %4
}
