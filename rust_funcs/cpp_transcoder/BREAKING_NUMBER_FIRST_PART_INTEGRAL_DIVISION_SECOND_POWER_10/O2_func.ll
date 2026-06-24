define noundef i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %N) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %N, i64 16
  %len = load i64, ptr %0, align 8, !noundef !23
  %_19 = icmp sgt i64 %len, -1
  tail call void @llvm.assume(i1 %_19)
  %l7 = lshr i64 %len, 1
  %_0.i.not.i8589 = icmp samesign ult i64 %len, 2
  br i1 %_0.i.not.i8589, label %bb4, label %bb2.i.lr.ph.lr.ph

bb2.i.lr.ph.lr.ph:                                ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %N, i64 8
  %_24 = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  br label %bb2.i.lr.ph

bb2.i.lr.ph:                                      ; preds = %bb2.i.lr.ph.lr.ph, %bb8
  %count.sroa.0.0.ph91 = phi i32 [ 0, %bb2.i.lr.ph.lr.ph ], [ %spec.select, %bb8 ]
  %iter.sroa.0.0.ph90 = phi i64 [ 1, %bb2.i.lr.ph.lr.ph ], [ %spec.select63, %bb8 ]
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i.lr.ph, %bb9
  %iter.sroa.0.087 = phi i64 [ %iter.sroa.0.0.ph90, %bb2.i.lr.ph ], [ %spec.select63, %bb9 ]
  %_0.i3.i = icmp uge i64 %iter.sroa.0.087, %l7
  %not._0.i3.i = xor i1 %_0.i3.i, true
  %_0.i4.i = zext i1 %not._0.i3.i to i64
  %spec.select63 = add nuw i64 %iter.sroa.0.087, %_0.i4.i
  %_8.i = icmp eq i64 %iter.sroa.0.087, 0
  br i1 %_8.i, label %bb8, label %bb5.i

cleanup:                                          ; preds = %bb18.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %self1.i.i.i.i1.i.i = load i64, ptr %N, align 8, !range !1046, !alias.scope !1047, !noalias !1050, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb12, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_24, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1052
  br label %bb12

bb5.i:                                            ; preds = %bb2.i
  %_9.not.i = icmp ult i64 %iter.sroa.0.087, %len
  br i1 %_9.not.i, label %bb9.i, label %bb6.i9

bb6.i9:                                           ; preds = %bb5.i
  %3 = icmp eq i64 %iter.sroa.0.087, %len
  br i1 %3, label %bb10.i17, label %bb18.invoke

bb9.i:                                            ; preds = %bb5.i
  %4 = getelementptr inbounds nuw i8, ptr %_24, i64 %iter.sroa.0.087
  %self1.i = load i8, ptr %4, align 1, !alias.scope !1053, !noundef !23
  %5 = icmp sgt i8 %self1.i, -65
  br i1 %5, label %bb13.i, label %bb18.invoke

bb4:                                              ; preds = %bb8, %bb9, %start
  %count.sroa.0.0.ph.lcssa84 = phi i32 [ 0, %start ], [ %count.sroa.0.0.ph91, %bb9 ], [ %spec.select, %bb8 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  %self1.i.i.i.i1.i.i11 = load i64, ptr %N, align 8, !range !1046, !alias.scope !1071, !noalias !1074, !noundef !23
  %_6.i.i.i.i2.i.i12 = icmp eq i64 %self1.i.i.i.i1.i.i11, 0
  br i1 %_6.i.i.i.i2.i.i12, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E.exit15", label %bb2.i.i.i3.i.i13

bb2.i.i.i3.i.i13:                                 ; preds = %bb4
  %6 = getelementptr inbounds nuw i8, ptr %N, i64 8
  %self3.i.i.i.i4.i.i14 = load ptr, ptr %6, align 8, !alias.scope !1071, !noalias !1074, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i14, i64 noundef %self1.i.i.i.i1.i.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1076
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E.exit15"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E.exit15": ; preds = %bb4, %bb2.i.i.i3.i.i13
  ret i32 %count.sroa.0.0.ph.lcssa84

bb10.i17:                                         ; preds = %bb6.i9
  %_15 = shl nuw i64 %iter.sroa.0.087, 1
  br label %bb15.i

bb13.i:                                           ; preds = %bb9.i
  %_15114 = shl nuw i64 %iter.sroa.0.087, 1
  %7 = getelementptr inbounds nuw i8, ptr %_24, i64 %iter.sroa.0.087
  %self.i = load i8, ptr %7, align 1, !alias.scope !1077, !noundef !23
  %8 = icmp sgt i8 %self.i, -65
  br i1 %8, label %bb15.i, label %bb18.invoke

bb15.i:                                           ; preds = %bb10.i17, %bb13.i
  %_15115 = phi i64 [ %_15, %bb10.i17 ], [ %_15114, %bb13.i ]
  %_19.not.i = icmp ult i64 %_15115, %len
  br i1 %_19.not.i, label %bb19.i, label %bb16.i

bb16.i:                                           ; preds = %bb15.i
  %9 = icmp eq i64 %_15115, %len
  br i1 %9, label %bb20, label %bb18.invoke

bb19.i:                                           ; preds = %bb15.i
  %10 = getelementptr inbounds nuw i8, ptr %_24, i64 %_15115
  %self2.i = load i8, ptr %10, align 1, !alias.scope !1077, !noundef !23
  %11 = icmp sgt i8 %self2.i, -65
  br i1 %11, label %bb20, label %bb18.invoke

bb18.invoke:                                      ; preds = %bb16.i, %bb13.i, %bb19.i, %bb6.i9, %bb9.i
  %12 = phi i64 [ 0, %bb9.i ], [ 0, %bb6.i9 ], [ %iter.sroa.0.087, %bb19.i ], [ %iter.sroa.0.087, %bb13.i ], [ %iter.sroa.0.087, %bb16.i ]
  %13 = phi i64 [ %iter.sroa.0.087, %bb9.i ], [ %iter.sroa.0.087, %bb6.i9 ], [ %_15115, %bb19.i ], [ %_15114, %bb13.i ], [ %_15115, %bb16.i ]
  %14 = phi ptr [ @alloc_4589facc9212bd32fc6a75ca289ca8b8, %bb9.i ], [ @alloc_4589facc9212bd32fc6a75ca289ca8b8, %bb6.i9 ], [ @alloc_1ffb130ac39c8ca8f51bcb2b0095d451, %bb19.i ], [ @alloc_1ffb130ac39c8ca8f51bcb2b0095d451, %bb13.i ], [ @alloc_1ffb130ac39c8ca8f51bcb2b0095d451, %bb16.i ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_24, i64 noundef %len, i64 noundef %12, i64 noundef %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #20
          to label %bb18.cont unwind label %cleanup

bb18.cont:                                        ; preds = %bb18.invoke
  unreachable

bb20:                                             ; preds = %bb16.i, %bb19.i
  %rhsc.i = load i8, ptr %_24, align 1, !alias.scope !1080, !noalias !1083
  %15 = icmp eq i8 %rhsc.i, 48
  br i1 %15, label %bb9, label %bb23

bb9:                                              ; preds = %bb23, %bb20
  %_0.i.not.i = icmp ugt i64 %spec.select63, %l7
  %or.cond = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i
  br i1 %or.cond, label %bb4, label %bb2.i

bb23:                                             ; preds = %bb20
  %data.i = getelementptr inbounds nuw i8, ptr %_24, i64 %iter.sroa.0.087
  %rhsc.i26 = load i8, ptr %data.i, align 1, !alias.scope !1085, !noalias !1088
  %16 = icmp eq i8 %rhsc.i26, 48
  br i1 %16, label %bb9, label %bb8.split.loop.exit

bb8.split.loop.exit:                              ; preds = %bb23
  %data.i.le = getelementptr inbounds nuw i8, ptr %_24, i64 %iter.sroa.0.087
  br label %bb8

bb8:                                              ; preds = %bb2.i, %bb8.split.loop.exit
  %data.i53565861 = phi ptr [ %data.i.le, %bb8.split.loop.exit ], [ %_24, %bb2.i ]
  %bcmp = tail call i32 @bcmp(ptr nonnull %_24, ptr nonnull %data.i53565861, i64 %iter.sroa.0.087)
  %_18 = icmp eq i32 %bcmp, 0
  %17 = zext i1 %_18 to i32
  %spec.select = add i32 %count.sroa.0.0.ph91, %17
  %_0.i.not.i85 = icmp ugt i64 %spec.select63, %l7
  %or.cond86 = select i1 %_0.i3.i, i1 true, i1 %_0.i.not.i85
  br i1 %or.cond86, label %bb4, label %bb2.i.lr.ph

bb12:                                             ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %2
}
