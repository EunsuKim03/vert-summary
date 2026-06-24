define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_4 = load i64, ptr %0, align 8, !noundef !23
  %_19 = icmp sgt i64 %_4, -1
  tail call void @llvm.assume(i1 %_19)
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_24 = load ptr, ptr %1, align 8, !nonnull !23
  %h.sroa.0.0.peel = add nsw i64 %_4, -1
  %_5.peel.not = icmp eq i64 %h.sroa.0.0.peel, 0
  br i1 %_5.peel.not, label %bb5, label %bb15.i.peel

bb15.i.peel:                                      ; preds = %start
  %_19.not.i.peel = icmp samesign ugt i64 %_4, 1
  br i1 %_19.not.i.peel, label %bb19.i.peel, label %bb16.i.peel

bb16.i.peel:                                      ; preds = %bb15.i.peel
  %2 = icmp eq i64 %_4, 1
  br i1 %2, label %bb13.i34.peel, label %bb14.invoke

bb19.i.peel:                                      ; preds = %bb15.i.peel
  %3 = getelementptr inbounds nuw i8, ptr %_24, i64 1
  %self2.i.peel = load i8, ptr %3, align 1, !alias.scope !1031, !noundef !23
  %4 = icmp sgt i8 %self2.i.peel, -65
  br i1 %4, label %bb13.i34.peel, label %bb14.invoke

bb13.i34.peel:                                    ; preds = %bb19.i.peel, %bb16.i.peel
  %5 = getelementptr inbounds nuw i8, ptr %_24, i64 %h.sroa.0.0.peel
  %self.i35.peel = load i8, ptr %5, align 1, !alias.scope !1034, !noundef !23
  %6 = icmp sgt i8 %self.i35.peel, -65
  br i1 %6, label %bb17.peel, label %bb14.invoke

bb17.peel:                                        ; preds = %bb13.i34.peel
  %data.i31.peel = getelementptr inbounds nuw i8, ptr %_24, i64 %h.sroa.0.0.peel
  %lhsc.peel = load i8, ptr %_24, align 1
  %rhsc.peel = load i8, ptr %data.i31.peel, align 1
  %_38.not.peel = icmp eq i8 %lhsc.peel, %rhsc.peel
  br i1 %_38.not.peel, label %bb1, label %bb3

bb1:                                              ; preds = %bb17.peel, %bb17
  %self2.i33 = phi i8 [ %lhsc, %bb17 ], [ %lhsc.peel, %bb17.peel ]
  %h.sroa.0.0.in = phi i64 [ %h.sroa.0.0, %bb17 ], [ %h.sroa.0.0.peel, %bb17.peel ]
  %l.sroa.0.0 = phi i64 [ %_12, %bb17 ], [ 1, %bb17.peel ]
  %h.sroa.0.0 = add nsw i64 %h.sroa.0.0.in, -1
  %_5 = icmp ugt i64 %h.sroa.0.0, %l.sroa.0.0
  br i1 %_5, label %bb9.i, label %bb5

bb5:                                              ; preds = %bb1, %start
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1037, !alias.scope !1038, !noalias !1051, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb6, label %bb6.sink.split

bb9.i:                                            ; preds = %bb1
  %_12 = add nuw i64 %l.sroa.0.0, 1
  %_12.not.i = icmp samesign ult i64 %l.sroa.0.0, %_4
  br i1 %_12.not.i, label %bb13.i, label %bb10.i

bb10.i:                                           ; preds = %bb9.i
  %7 = icmp eq i64 %l.sroa.0.0, %_4
  br i1 %7, label %bb15.i, label %bb14.invoke

bb13.i:                                           ; preds = %bb9.i
  %8 = getelementptr inbounds nuw i8, ptr %_24, i64 %l.sroa.0.0
  %self.i = load i8, ptr %8, align 1, !alias.scope !1031, !noundef !23
  %9 = icmp sgt i8 %self.i, -65
  br i1 %9, label %bb15.i, label %bb14.invoke

bb15.i:                                           ; preds = %bb10.i, %bb13.i
  %_19.not.i = icmp ult i64 %_12, %_4
  br i1 %_19.not.i, label %bb19.i, label %bb16.i

bb16.i:                                           ; preds = %bb15.i
  %10 = icmp eq i64 %_12, %_4
  br i1 %10, label %bb9.i20, label %bb14.invoke

bb19.i:                                           ; preds = %bb15.i
  %11 = getelementptr inbounds nuw i8, ptr %_24, i64 %_12
  %self2.i = load i8, ptr %11, align 1, !alias.scope !1031, !noundef !23
  %12 = icmp sgt i8 %self2.i, -65
  br i1 %12, label %bb9.i20, label %bb14.invoke

bb6.sink.split:                                   ; preds = %bb5, %bb3
  %self1.i.i.i.i1.i.i37.sink = phi i64 [ %self1.i.i.i.i1.i.i37, %bb3 ], [ %self1.i.i.i.i1.i.i, %bb5 ]
  %_0.sroa.0.0.ph = phi i32 [ 0, %bb3 ], [ 1, %bb5 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_24, i64 noundef %self1.i.i.i.i1.i.i37.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !23
  br label %bb6

bb6:                                              ; preds = %bb6.sink.split, %bb3, %bb5
  %_0.sroa.0.0 = phi i32 [ 1, %bb5 ], [ 0, %bb3 ], [ %_0.sroa.0.0.ph, %bb6.sink.split ]
  ret i32 %_0.sroa.0.0

cleanup:                                          ; preds = %bb14.invoke
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %self1.i.i.i.i1.i.i12 = load i64, ptr %str, align 8, !range !1037, !alias.scope !1068, !noalias !1071, !noundef !23
  %_6.i.i.i.i2.i.i13 = icmp eq i64 %self1.i.i.i.i1.i.i12, 0
  br i1 %_6.i.i.i.i2.i.i13, label %bb8, label %bb2.i.i.i3.i.i14

bb2.i.i.i3.i.i14:                                 ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_24, i64 noundef %self1.i.i.i.i1.i.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1073
  br label %bb8

bb9.i20:                                          ; preds = %bb16.i, %bb19.i
  %data.i = getelementptr inbounds nuw i8, ptr %_24, i64 %l.sroa.0.0
  %_12.not.i21 = icmp ult i64 %h.sroa.0.0, %_4
  br i1 %_12.not.i21, label %bb13.i34, label %bb14.invoke

bb13.i34:                                         ; preds = %bb9.i20
  %14 = getelementptr inbounds nuw i8, ptr %_24, i64 %h.sroa.0.0
  %self.i35 = load i8, ptr %14, align 1, !alias.scope !1034, !noundef !23
  %15 = icmp sgt i8 %self.i35, -65
  %_19.not.i28 = icmp samesign ult i64 %h.sroa.0.0.in, %_4
  %or.cond = select i1 %15, i1 %_19.not.i28, i1 false
  %16 = icmp sgt i8 %self2.i33, -65
  %or.cond85 = and i1 %or.cond, %16
  br i1 %or.cond85, label %bb17, label %bb14.invoke

bb14.invoke:                                      ; preds = %bb13.i34, %bb9.i20, %bb16.i, %bb10.i, %bb13.i, %bb19.i, %bb13.i34.peel, %bb16.i.peel, %bb19.i.peel
  %17 = phi i64 [ 0, %bb16.i.peel ], [ 0, %bb19.i.peel ], [ %h.sroa.0.0.peel, %bb13.i34.peel ], [ %l.sroa.0.0, %bb16.i ], [ %l.sroa.0.0, %bb10.i ], [ %l.sroa.0.0, %bb13.i ], [ %l.sroa.0.0, %bb19.i ], [ %h.sroa.0.0, %bb13.i34 ], [ %h.sroa.0.0, %bb9.i20 ]
  %18 = phi i64 [ 1, %bb16.i.peel ], [ 1, %bb19.i.peel ], [ %_4, %bb13.i34.peel ], [ %_12, %bb16.i ], [ %_12, %bb10.i ], [ %_12, %bb13.i ], [ %_12, %bb19.i ], [ %h.sroa.0.0.in, %bb13.i34 ], [ %h.sroa.0.0.in, %bb9.i20 ]
  %19 = phi ptr [ @alloc_be4ff25744a098ef6862f9b219d2b236, %bb16.i.peel ], [ @alloc_be4ff25744a098ef6862f9b219d2b236, %bb19.i.peel ], [ @alloc_28bf169b2b1ae354b308a2401d0a45e3, %bb13.i34.peel ], [ @alloc_be4ff25744a098ef6862f9b219d2b236, %bb16.i ], [ @alloc_be4ff25744a098ef6862f9b219d2b236, %bb10.i ], [ @alloc_be4ff25744a098ef6862f9b219d2b236, %bb13.i ], [ @alloc_be4ff25744a098ef6862f9b219d2b236, %bb19.i ], [ @alloc_28bf169b2b1ae354b308a2401d0a45e3, %bb13.i34 ], [ @alloc_28bf169b2b1ae354b308a2401d0a45e3, %bb9.i20 ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_24, i64 noundef %_4, i64 noundef %17, i64 noundef %18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %19) #19
          to label %bb14.cont unwind label %cleanup

bb14.cont:                                        ; preds = %bb14.invoke
  unreachable

bb17:                                             ; preds = %bb13.i34
  %data.i31 = getelementptr inbounds nuw i8, ptr %_24, i64 %h.sroa.0.0
  %lhsc = load i8, ptr %data.i, align 1
  %rhsc = load i8, ptr %data.i31, align 1
  %_38.not = icmp eq i8 %lhsc, %rhsc
  br i1 %_38.not, label %bb1, label %bb3, !llvm.loop !1074

bb3:                                              ; preds = %bb17, %bb17.peel
  %self1.i.i.i.i1.i.i37 = load i64, ptr %str, align 8, !range !1037, !alias.scope !1076, !noalias !1089, !noundef !23
  %_6.i.i.i.i2.i.i38 = icmp eq i64 %self1.i.i.i.i1.i.i37, 0
  br i1 %_6.i.i.i.i2.i.i38, label %bb6, label %bb6.sink.split

bb8:                                              ; preds = %bb2.i.i.i3.i.i14, %cleanup
  resume { ptr, i32 } %13
}
