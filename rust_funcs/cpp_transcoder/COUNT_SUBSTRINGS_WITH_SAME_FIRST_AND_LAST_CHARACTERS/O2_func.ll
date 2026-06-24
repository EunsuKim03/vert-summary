define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %n = load i64, ptr %0, align 8, !noundef !23
  %_14 = icmp sgt i64 %n, -1
  tail call void @llvm.assume(i1 %_14)
  %_1550.not = icmp eq i64 %n, 0
  br i1 %_1550.not, label %bb10, label %bb9.lr.ph

bb9.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_27 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  br label %bb9

bb1.loopexit:                                     ; preds = %bb15.i22
  %data.i2661 = getelementptr inbounds nuw i8, ptr %_27, i64 %iter1.sroa.0.048
  %lhsc62 = load i8, ptr %5, align 1
  %rhsc63 = load i8, ptr %data.i2661, align 1
  %_764 = icmp eq i8 %lhsc62, %rhsc63
  %2 = zext i1 %_764 to i32
  %spec.select65 = add i32 %result.sroa.0.149, %2
  %exitcond.not = icmp eq i64 %4, %n
  br i1 %exitcond.not, label %bb10, label %bb9

bb10:                                             ; preds = %bb1.loopexit, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %spec.select65, %bb1.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1046, !alias.scope !1047, !noalias !1050, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h928a35790b52e802E.exit", label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %bb10
  %3 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i = load ptr, ptr %3, align 8, !alias.scope !1047, !noalias !1050, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1052
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h928a35790b52e802E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h928a35790b52e802E.exit": ; preds = %bb10, %bb2.i.i.i3.i.i
  ret i32 %result.sroa.0.0.lcssa

bb9:                                              ; preds = %bb9.lr.ph, %bb1.loopexit
  %result.sroa.0.052 = phi i32 [ 0, %bb9.lr.ph ], [ %spec.select65, %bb1.loopexit ]
  %iter.sroa.0.051 = phi i64 [ 0, %bb9.lr.ph ], [ %4, %bb1.loopexit ]
  %4 = add nuw nsw i64 %iter.sroa.0.051, 1
  %_11.i = icmp eq i64 %iter.sroa.0.051, 0
  %5 = getelementptr inbounds nuw i8, ptr %_27, i64 %iter.sroa.0.051
  %_19.not.i = icmp samesign ult i64 %4, %n
  %6 = getelementptr inbounds nuw i8, ptr %_27, i64 %4
  br label %bb11

bb11:                                             ; preds = %bb5, %bb9
  %result.sroa.0.149 = phi i32 [ %result.sroa.0.052, %bb9 ], [ %spec.select, %bb5 ]
  %iter1.sroa.0.048 = phi i64 [ %iter.sroa.0.051, %bb9 ], [ %7, %bb5 ]
  %7 = add nuw nsw i64 %iter1.sroa.0.048, 1
  br i1 %_11.i, label %bb15.i, label %bb13.i

bb13.i:                                           ; preds = %bb11
  %self.i = load i8, ptr %5, align 1, !alias.scope !1053, !noundef !23
  %8 = icmp sgt i8 %self.i, -65
  br i1 %8, label %bb15.i, label %bb17.invoke

bb15.i:                                           ; preds = %bb13.i, %bb11
  br i1 %_19.not.i, label %bb19.i, label %bb15

bb19.i:                                           ; preds = %bb15.i
  %self2.i = load i8, ptr %6, align 1, !alias.scope !1053, !noundef !23
  %9 = icmp sgt i8 %self2.i, -65
  br i1 %9, label %bb15, label %bb17.invoke

cleanup:                                          ; preds = %bb17.invoke
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %self1.i.i.i.i1.i.i11 = load i64, ptr %s, align 8, !range !1046, !alias.scope !1071, !noalias !1074, !noundef !23
  %_6.i.i.i.i2.i.i12 = icmp eq i64 %self1.i.i.i.i1.i.i11, 0
  br i1 %_6.i.i.i.i2.i.i12, label %bb8, label %bb2.i.i.i3.i.i13

bb2.i.i.i3.i.i13:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_27, i64 noundef %self1.i.i.i.i1.i.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1076
  br label %bb8

bb15:                                             ; preds = %bb15.i, %bb19.i
  %_11.i16 = icmp eq i64 %iter1.sroa.0.048, 0
  br i1 %_11.i16, label %bb15.i22, label %bb13.i29

bb13.i29:                                         ; preds = %bb15
  %11 = getelementptr inbounds nuw i8, ptr %_27, i64 %iter1.sroa.0.048
  %self.i30 = load i8, ptr %11, align 1, !alias.scope !1077, !noundef !23
  %12 = icmp sgt i8 %self.i30, -65
  br i1 %12, label %bb15.i22, label %bb17.invoke

bb15.i22:                                         ; preds = %bb13.i29, %bb15
  %_19.not.i23 = icmp samesign ult i64 %7, %n
  br i1 %_19.not.i23, label %bb19.i27, label %bb1.loopexit

bb19.i27:                                         ; preds = %bb15.i22
  %13 = getelementptr inbounds nuw i8, ptr %_27, i64 %7
  %self2.i28 = load i8, ptr %13, align 1, !alias.scope !1077, !noundef !23
  %14 = icmp sgt i8 %self2.i28, -65
  br i1 %14, label %bb5, label %bb17.invoke

bb17.invoke:                                      ; preds = %bb13.i29, %bb19.i27, %bb13.i, %bb19.i
  %15 = phi i64 [ %iter.sroa.0.051, %bb19.i ], [ %iter.sroa.0.051, %bb13.i ], [ %iter1.sroa.0.048, %bb19.i27 ], [ %iter1.sroa.0.048, %bb13.i29 ]
  %16 = phi i64 [ %4, %bb19.i ], [ %4, %bb13.i ], [ %7, %bb19.i27 ], [ %7, %bb13.i29 ]
  %17 = phi ptr [ @alloc_14a7387d30e9abb0ad6712e3f36724b8, %bb19.i ], [ @alloc_14a7387d30e9abb0ad6712e3f36724b8, %bb13.i ], [ @alloc_298ce3af6bd84e2d4444a31b53f3dca8, %bb19.i27 ], [ @alloc_298ce3af6bd84e2d4444a31b53f3dca8, %bb13.i29 ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_27, i64 noundef %n, i64 noundef %15, i64 noundef %16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #19
          to label %bb17.cont unwind label %cleanup

bb17.cont:                                        ; preds = %bb17.invoke
  unreachable

bb5:                                              ; preds = %bb19.i27
  %data.i26 = getelementptr inbounds nuw i8, ptr %_27, i64 %iter1.sroa.0.048
  %lhsc = load i8, ptr %5, align 1
  %rhsc = load i8, ptr %data.i26, align 1
  %_7 = icmp eq i8 %lhsc, %rhsc
  %18 = zext i1 %_7 to i32
  %spec.select = add i32 %result.sroa.0.149, %18
  br label %bb11

bb8:                                              ; preds = %bb2.i.i.i3.i.i13, %cleanup
  resume { ptr, i32 } %10
}
