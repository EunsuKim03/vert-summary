define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %s) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_3 = load i64, ptr %0, align 8, !noundef !23
  %_31 = icmp sgt i64 %_3, -1
  tail call void @llvm.assume(i1 %_31)
  %_2 = icmp samesign ugt i64 %_3, 9
  br i1 %_2, label %bb20, label %bb3.preheader

bb3.preheader:                                    ; preds = %start
  %_33169 = icmp samesign ugt i64 %_3, 1
  br i1 %_33169, label %bb7.preheader.lr.ph, label %bb6

bb7.preheader.lr.ph:                              ; preds = %bb3.preheader
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_51 = load ptr, ptr %1, align 8, !nonnull !23
  br label %bb7.preheader

bb3.loopexit:                                     ; preds = %bb7.loopexit, %bb7.preheader
  %_33 = icmp ult i64 %iter.sroa.0.1172, %_3
  %2 = add i64 %iter.sroa.0.1172, 1
  br i1 %_33, label %bb7.preheader, label %bb6

bb7.preheader:                                    ; preds = %bb7.preheader.lr.ph, %bb3.loopexit
  %iter.sroa.0.1172 = phi i64 [ 2, %bb7.preheader.lr.ph ], [ %2, %bb3.loopexit ]
  %iter.sroa.0.0171 = phi i64 [ 1, %bb7.preheader.lr.ph ], [ %iter.sroa.0.1172, %bb3.loopexit ]
  %_38165 = icmp ult i64 %iter.sroa.0.1172, %_3
  br i1 %_38165, label %bb10.preheader.lr.ph, label %bb3.loopexit

bb10.preheader.lr.ph:                             ; preds = %bb7.preheader
  %_18.i = icmp eq i64 %iter.sroa.0.0171, 0
  %3 = getelementptr inbounds nuw i8, ptr %_51, i64 %iter.sroa.0.0171
  br label %bb10.preheader

bb6:                                              ; preds = %bb3.loopexit, %bb3.preheader
  %self1.i.i.i.i1.i.i = load i64, ptr %s, align 8, !range !1031, !alias.scope !1032, !noalias !1045, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb21, label %bb21.sink.split

bb21.sink.split:                                  ; preds = %bb6, %bb20
  %self1.i.i.i.i1.i.i97.sink = phi i64 [ %self1.i.i.i.i1.i.i97, %bb20 ], [ %self1.i.i.i.i1.i.i, %bb6 ]
  %_0.sroa.0.0.ph = phi i32 [ 1, %bb20 ], [ 0, %bb6 ]
  %4 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %self3.i.i.i.i4.i.i100 = load ptr, ptr %4, align 8, !noalias !23, !nonnull !23, !noundef !23
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %self3.i.i.i.i4.i.i100, i64 noundef %self1.i.i.i.i1.i.i97.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !23
  br label %bb21

bb21:                                             ; preds = %bb21.sink.split, %bb20, %bb6
  %_0.sroa.0.0 = phi i32 [ 0, %bb6 ], [ 1, %bb20 ], [ %_0.sroa.0.0.ph, %bb21.sink.split ]
  ret i32 %_0.sroa.0.0

bb7.loopexit:                                     ; preds = %bb19, %bb10.preheader
  %_38 = icmp ult i64 %iter1.sroa.0.1168, %_3
  br i1 %_38, label %bb10.preheader, label %bb3.loopexit

bb10.preheader:                                   ; preds = %bb10.preheader.lr.ph, %bb7.loopexit
  %iter1.sroa.0.0167 = phi i64 [ %iter.sroa.0.1172, %bb10.preheader.lr.ph ], [ %iter1.sroa.0.1168, %bb7.loopexit ]
  %iter1.sroa.0.1168 = add i64 %iter1.sroa.0.0167, 1
  %_43163 = icmp ult i64 %iter1.sroa.0.1168, %_3
  br i1 %_43163, label %bb11.lr.ph, label %bb7.loopexit

bb11.lr.ph:                                       ; preds = %bb10.preheader
  %_3.not.i104 = icmp ugt i64 %iter.sroa.0.0171, %iter1.sroa.0.0167
  %_18.i47 = icmp eq i64 %iter1.sroa.0.0167, 0
  %5 = getelementptr inbounds nuw i8, ptr %_51, i64 %iter1.sroa.0.0167
  %new_len.i = sub nuw nsw i64 %iter1.sroa.0.0167, %iter.sroa.0.0171
  br label %bb11

bb11:                                             ; preds = %bb11.lr.ph, %bb19
  %iter2.sroa.0.0164 = phi i64 [ %iter1.sroa.0.1168, %bb11.lr.ph ], [ %6, %bb19 ]
  %6 = add i64 %iter2.sroa.0.0164, 1
  br i1 %_18.i, label %bb2.i, label %bb19.i

bb19.i:                                           ; preds = %bb11
  %self2.i = load i8, ptr %3, align 1, !alias.scope !1047, !noundef !23
  %7 = icmp slt i8 %self2.i, -64
  %brmerge = or i1 %7, %_3.not.i104
  br i1 %brmerge, label %bb40.invoke.split.loop.exit, label %bb19.i52

cleanup:                                          ; preds = %bb40.invoke
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %self1.i.i.i.i1.i.i40 = load i64, ptr %s, align 8, !range !1031, !alias.scope !1065, !noalias !1068, !noundef !23
  %_6.i.i.i.i2.i.i41 = icmp eq i64 %self1.i.i.i.i1.i.i40, 0
  br i1 %_6.i.i.i.i2.i.i41, label %bb23, label %bb2.i.i.i3.i.i42

bb2.i.i.i3.i.i42:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_51, i64 noundef %self1.i.i.i.i1.i.i40, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !1070
  br label %bb23

bb2.i:                                            ; preds = %bb11
  br i1 %_18.i47, label %bb2.i63, label %bb19.i52

bb19.i52:                                         ; preds = %bb19.i, %bb2.i
  %self2.i53 = load i8, ptr %5, align 1, !alias.scope !1071, !noundef !23
  %9 = icmp sgt i8 %self2.i53, -65
  br i1 %9, label %bb38, label %bb40.invoke

bb38:                                             ; preds = %bb19.i52
  %_3.not.i55 = icmp ugt i64 %iter1.sroa.0.0167, %iter2.sroa.0.0164
  br i1 %_3.not.i55, label %bb40.invoke, label %bb2.i63

bb2.i63:                                          ; preds = %bb38, %bb2.i
  %new_len.i112120 = phi i64 [ 0, %bb2.i ], [ %new_len.i, %bb38 ]
  %_18.i64 = icmp eq i64 %iter2.sroa.0.0164, 0
  br i1 %_18.i64, label %bb44, label %bb19.i71

bb19.i71:                                         ; preds = %bb2.i63
  %10 = getelementptr inbounds nuw i8, ptr %_51, i64 %iter2.sroa.0.0164
  %self2.i72 = load i8, ptr %10, align 1, !alias.scope !1074, !noundef !23
  %11 = icmp sgt i8 %self2.i72, -65
  br i1 %11, label %bb41, label %bb40.invoke

bb41:                                             ; preds = %bb19.i71
  %new_len.i69 = sub nuw nsw i64 %iter2.sroa.0.0164, %iter1.sroa.0.0167
  br label %bb44

bb40.invoke.split.loop.exit:                      ; preds = %bb19.i
  %.mux.le = select i1 %7, i64 0, i64 %iter.sroa.0.0171
  %iter.sroa.0.0171.mux.le = select i1 %7, i64 %iter.sroa.0.0171, i64 %iter1.sroa.0.0167
  %alloc_ab112f6bb78c713670e154c9f09efd29.mux.le = select i1 %7, ptr @alloc_ab112f6bb78c713670e154c9f09efd29, ptr @alloc_77249349fcd20cd8e1708e5536e781c6
  br label %bb40.invoke

bb40.invoke:                                      ; preds = %bb19.i52, %bb19.i71, %bb38, %bb40.invoke.split.loop.exit
  %12 = phi i64 [ %.mux.le, %bb40.invoke.split.loop.exit ], [ %iter1.sroa.0.0167, %bb38 ], [ %iter1.sroa.0.0167, %bb19.i71 ], [ %iter.sroa.0.0171, %bb19.i52 ]
  %13 = phi i64 [ %iter.sroa.0.0171.mux.le, %bb40.invoke.split.loop.exit ], [ %iter2.sroa.0.0164, %bb38 ], [ %iter2.sroa.0.0164, %bb19.i71 ], [ %iter1.sroa.0.0167, %bb19.i52 ]
  %14 = phi ptr [ %alloc_ab112f6bb78c713670e154c9f09efd29.mux.le, %bb40.invoke.split.loop.exit ], [ @alloc_b2ee79cacfe2ec25045bf0b72381bf4b, %bb38 ], [ @alloc_b2ee79cacfe2ec25045bf0b72381bf4b, %bb19.i71 ], [ @alloc_77249349fcd20cd8e1708e5536e781c6, %bb19.i52 ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_51, i64 noundef %_3, i64 noundef %12, i64 noundef %13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %14) #20
          to label %bb40.cont unwind label %cleanup

bb40.cont:                                        ; preds = %bb40.invoke
  unreachable

bb44:                                             ; preds = %bb41, %bb2.i63
  %new_len.i69129137 = phi i64 [ %new_len.i69, %bb41 ], [ 0, %bb2.i63 ]
  %new_len.i90 = sub nuw nsw i64 %_3, %iter2.sroa.0.0164
  %data.i91 = getelementptr inbounds nuw i8, ptr %_51, i64 %iter2.sroa.0.0164
  %_87.not = icmp eq i64 %iter.sroa.0.0171, %new_len.i112120
  br i1 %_87.not, label %bb46, label %bb13

bb46:                                             ; preds = %bb44
  %bcmp = tail call i32 @bcmp(ptr nonnull %_51, ptr nonnull %3, i64 %iter.sroa.0.0171)
  %_84.not = icmp eq i32 %bcmp, 0
  br i1 %_84.not, label %bb19, label %bb13

bb19:                                             ; preds = %bb66, %bb62, %bb58, %bb54, %bb50, %bb46
  %exitcond.not = icmp eq i64 %6, %_3
  br i1 %exitcond.not, label %bb7.loopexit, label %bb11

bb13:                                             ; preds = %bb44, %bb46
  %_99.not = icmp eq i64 %iter.sroa.0.0171, %new_len.i69129137
  br i1 %_99.not, label %bb50, label %bb14

bb50:                                             ; preds = %bb13
  %bcmp35 = tail call i32 @bcmp(ptr nonnull %_51, ptr nonnull %5, i64 %iter.sroa.0.0171)
  %_97.not = icmp eq i32 %bcmp35, 0
  br i1 %_97.not, label %bb19, label %bb14

bb14:                                             ; preds = %bb13, %bb50
  %_110.not = icmp eq i64 %iter.sroa.0.0171, %new_len.i90
  br i1 %_110.not, label %bb54, label %bb15

bb54:                                             ; preds = %bb14
  %bcmp36 = tail call i32 @bcmp(ptr nonnull %_51, ptr nonnull %data.i91, i64 %iter.sroa.0.0171)
  %_108.not = icmp eq i32 %bcmp36, 0
  br i1 %_108.not, label %bb19, label %bb15

bb15:                                             ; preds = %bb14, %bb54
  %_120.not = icmp eq i64 %new_len.i112120, %new_len.i69129137
  br i1 %_120.not, label %bb58, label %bb16

bb58:                                             ; preds = %bb15
  %bcmp37 = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %5, i64 %new_len.i112120)
  %_119.not = icmp eq i32 %bcmp37, 0
  br i1 %_119.not, label %bb19, label %bb16

bb16:                                             ; preds = %bb15, %bb58
  %_129.not = icmp eq i64 %new_len.i112120, %new_len.i90
  br i1 %_129.not, label %bb62, label %bb17

bb62:                                             ; preds = %bb16
  %bcmp38 = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %data.i91, i64 %new_len.i112120)
  %_128.not = icmp eq i32 %bcmp38, 0
  br i1 %_128.not, label %bb19, label %bb17

bb17:                                             ; preds = %bb16, %bb62
  %_138.not = icmp eq i64 %new_len.i69129137, %new_len.i90
  br i1 %_138.not, label %bb66, label %bb20

bb66:                                             ; preds = %bb17
  %bcmp39 = tail call i32 @bcmp(ptr nonnull %5, ptr nonnull %data.i91, i64 %new_len.i69129137)
  %_137.not = icmp eq i32 %bcmp39, 0
  br i1 %_137.not, label %bb19, label %bb20

bb20:                                             ; preds = %bb66, %bb17, %start
  %self1.i.i.i.i1.i.i97 = load i64, ptr %s, align 8, !range !1031, !alias.scope !1077, !noalias !1090, !noundef !23
  %_6.i.i.i.i2.i.i98 = icmp eq i64 %self1.i.i.i.i1.i.i97, 0
  br i1 %_6.i.i.i.i2.i.i98, label %bb21, label %bb21.sink.split

bb23:                                             ; preds = %bb2.i.i.i3.i.i42, %cleanup
  resume { ptr, i32 } %8
}
