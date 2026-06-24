define noundef range(i32 -10, 11) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_3 = load i64, ptr %0, align 8, !noundef !23
  %_17 = icmp sgt i64 %_3, -1
  tail call void @llvm.assume(i1 %_17)
  %len = trunc i64 %_3 to i32
  %_1826 = icmp sgt i32 %len, 0
  br i1 %_1826, label %bb7.lr.ph, label %bb8

bb7.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_28 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %_35 = getelementptr inbounds nuw i8, ptr %_28, i64 %_3
  %2 = ptrtoint ptr %_35 to i64
  %3 = tail call i32 @llvm.umin.i32(i32 %len, i32 11)
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb7

cleanup:                                          ; preds = %bb17
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1046, !alias.scope !1047, !noalias !1050, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb6, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_28, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1052
  br label %bb6

bb8:                                              ; preds = %bb16, %start
  %rem.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %15, %bb16 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %self1.i.i.i.i1.i.i5 = load i64, ptr %str, align 8, !range !1046, !alias.scope !1068, !noalias !1071, !noundef !23
  %_6.i.i.i.i2.i.i6 = icmp eq i64 %self1.i.i.i.i1.i.i5, 0
  br i1 %_6.i.i.i.i2.i.i6, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb437363126019f00E.exit9", label %bb2.i.i.i3.i.i7

bb2.i.i.i3.i.i7:                                  ; preds = %bb8
  %5 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %self3.i.i.i.i4.i.i8 = load ptr, ptr %5, align 8, !alias.scope !1068, !noalias !1071, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i8, i64 noundef %self1.i.i.i.i1.i.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1073
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb437363126019f00E.exit9"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb437363126019f00E.exit9": ; preds = %bb8, %bb2.i.i.i3.i.i7
  ret i32 %rem.sroa.0.0.lcssa

bb7:                                              ; preds = %bb7.lr.ph, %bb16
  %indvars.iv = phi i64 [ 0, %bb7.lr.ph ], [ %indvars.iv.next, %bb16 ]
  %rem.sroa.0.028 = phi i32 [ 0, %bb7.lr.ph ], [ %15, %bb16 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %_8 = mul nsw i32 %rem.sroa.0.028, 10
  %_39.not57.i = icmp eq i64 %indvars.iv, 0
  br i1 %_39.not57.i, label %bb13, label %bb27.i

bb27.i:                                           ; preds = %bb7, %bb62.i
  %_14.sroa.0.1 = phi ptr [ %_19.i38.i, %bb62.i ], [ %_28, %bb7 ]
  %remainder.sroa.0.259.i = phi i64 [ %8, %bb62.i ], [ %indvars.iv, %bb7 ]
  %_41.not.i = icmp eq ptr %_35, %_14.sroa.0.1
  br i1 %_41.not.i, label %bb17, label %bb62.i

bb62.i:                                           ; preds = %bb27.i
  %6 = ptrtoint ptr %_14.sroa.0.1 to i64
  %7 = sub nuw i64 %2, %6
  %8 = add nsw i64 %remainder.sroa.0.259.i, -1
  %b15.i = load i8, ptr %_14.sroa.0.1, align 1, !noalias !1074, !noundef !23
  %_130.i = zext i8 %b15.i to i64
  %9 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i
  %_128.i = load i8, ptr %9, align 1, !noalias !1074, !noundef !23
  %slurp.i = zext i8 %_128.i to i64
  %_19.i38.i = getelementptr inbounds nuw i8, ptr %_14.sroa.0.1, i64 %slurp.i
  %.not28.i = icmp uge i64 %7, %slurp.i
  tail call void @llvm.assume(i1 %.not28.i)
  %_39.not.i = icmp eq i64 %8, 0
  br i1 %_39.not.i, label %bb13, label %bb27.i

bb13:                                             ; preds = %bb62.i, %bb7
  %_14.sroa.0.3.ph = phi ptr [ %_28, %bb7 ], [ %_19.i38.i, %bb62.i ]
  %_7.i.i = icmp eq ptr %_14.sroa.0.3.ph, %_35
  br i1 %_7.i.i, label %bb17, label %bb14.i10

bb14.i10:                                         ; preds = %bb13
  %x.i = load i8, ptr %_14.sroa.0.3.ph, align 1, !noalias !1077, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i11

bb4.i11:                                          ; preds = %bb14.i10
  %_18.i.i = getelementptr inbounds nuw i8, ptr %_14.sroa.0.3.ph, i64 1
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_35
  tail call void @llvm.assume(i1 %_7.i10.i)
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1077, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i12 = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i12 to i32
  %10 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb16

bb3.i:                                            ; preds = %bb14.i10
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb16

bb6.i:                                            ; preds = %bb4.i11
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %_14.sroa.0.3.ph, i64 2
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_35
  tail call void @llvm.assume(i1 %_7.i17.i)
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1077, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %11 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb16

bb8.i:                                            ; preds = %bb6.i
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %_14.sroa.0.3.ph, i64 3
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_35
  tail call void @llvm.assume(i1 %_7.i24.i)
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1077, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i13 = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %12 = or disjoint i32 %_27.i, %_25.i13
  br label %bb16

bb16:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i11
  %_0.sroa.4.0.i.ph = phi i32 [ %10, %bb4.i11 ], [ %11, %bb6.i ], [ %12, %bb8.i ], [ %_7.i, %bb3.i ]
  %13 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %13)
  %_9 = add nsw i32 %_8, -48
  %14 = add nsw i32 %_9, %_0.sroa.4.0.i.ph
  %15 = srem i32 %14, 11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb8, label %bb7

bb17:                                             ; preds = %bb13, %bb27.i
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e0b90d94706423d98f418d2e5899ab1c) #19
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb17
  unreachable

bb6:                                              ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %4
}
