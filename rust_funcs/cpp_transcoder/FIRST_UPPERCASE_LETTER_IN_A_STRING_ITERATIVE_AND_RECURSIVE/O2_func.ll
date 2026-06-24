define noundef range(i32 0, 1114112) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_10 = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_9 = load i64, ptr %1, align 8, !noundef !23
  %_17 = getelementptr inbounds nuw i8, ptr %_10, i64 %_9
  %_7.i.i22 = icmp samesign eq i64 %_9, 0
  br i1 %_7.i.i22, label %bb9, label %bb14.i

bb14.i:                                           ; preds = %start, %bb4
  %iter.sroa.0.023 = phi ptr [ %iter.sroa.0.1.ph, %bb4 ], [ %_10, %start ]
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.023, i64 1
  %x.i = load i8, ptr %iter.sroa.0.023, align 1, !noalias !1031, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_17
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.023, i64 2
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1031, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %2 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb10

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb10

bb6.i:                                            ; preds = %bb4.i
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_17
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.023, i64 3
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1031, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %3 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb10

bb8.i:                                            ; preds = %bb6.i
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_17
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.023, i64 4
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1031, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %4 = or disjoint i32 %_27.i, %_25.i
  br label %bb10

cleanup:                                          ; preds = %bb14
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %self1.i.i.i.i1.i.i = load i64, ptr %str, align 8, !range !1049, !alias.scope !1050, !noalias !1053, !noundef !23
  %_6.i.i.i.i2.i.i = icmp eq i64 %self1.i.i.i.i1.i.i, 0
  br i1 %_6.i.i.i.i2.i.i, label %bb7, label %bb2.i.i.i3.i.i

bb2.i.i.i3.i.i:                                   ; preds = %cleanup
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10, i64 noundef %self1.i.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1055
  br label %bb7

bb10:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i, %bb4.i ], [ %_18.i19.i, %bb6.i ], [ %_18.i26.i, %bb8.i ], [ %_18.i.i, %bb3.i ]
  %_0.sroa.4.0.i.ph = phi i32 [ %2, %bb4.i ], [ %3, %bb6.i ], [ %4, %bb8.i ], [ %_7.i, %bb3.i ]
  %6 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %6)
  %7 = add nsw i32 %_0.sroa.4.0.i.ph, -65
  %or.cond = icmp ult i32 %7, 26
  br i1 %or.cond, label %bb3, label %bb11

bb9:                                              ; preds = %bb4, %start
  %self1.i.i.i.i1.i.i6 = load i64, ptr %str, align 8, !range !1049, !alias.scope !1056, !noalias !1069, !noundef !23
  %_6.i.i.i.i2.i.i7 = icmp eq i64 %self1.i.i.i.i1.i.i6, 0
  br i1 %_6.i.i.i.i2.i.i7, label %bb5, label %bb5.sink.split

bb5.sink.split:                                   ; preds = %bb9, %bb3
  %self1.i.i.i.i1.i.i11.sink = phi i64 [ %self1.i.i.i.i1.i.i11, %bb3 ], [ %self1.i.i.i.i1.i.i6, %bb9 ]
  %c.sroa.0.0.ph = phi i32 [ %_0.sroa.4.0.i.ph, %bb3 ], [ 0, %bb9 ]
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_10, i64 noundef %self1.i.i.i.i1.i.i11.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !23
  br label %bb5

bb5:                                              ; preds = %bb5.sink.split, %bb3, %bb9
  %c.sroa.0.0 = phi i32 [ 0, %bb9 ], [ %_0.sroa.4.0.i.ph, %bb3 ], [ %c.sroa.0.0.ph, %bb5.sink.split ]
  ret i32 %c.sroa.0.0

bb11:                                             ; preds = %bb10
  %_28 = icmp samesign ugt i32 %_0.sroa.4.0.i.ph, 127
  br i1 %_28, label %bb14, label %bb4

bb14:                                             ; preds = %bb11
; invoke core::unicode::unicode_data::uppercase::lookup
  %_6 = invoke noundef zeroext i1 @_ZN4core7unicode12unicode_data9uppercase6lookup17h357c9c1057b36eafE(i32 noundef %_0.sroa.4.0.i.ph)
          to label %bb16 unwind label %cleanup

bb4:                                              ; preds = %bb11, %bb16
  %_7.i.i = icmp eq ptr %iter.sroa.0.1.ph, %_17
  br i1 %_7.i.i, label %bb9, label %bb14.i

bb16:                                             ; preds = %bb14
  br i1 %_6, label %bb3, label %bb4

bb3:                                              ; preds = %bb10, %bb16
  %self1.i.i.i.i1.i.i11 = load i64, ptr %str, align 8, !range !1049, !alias.scope !1071, !noalias !1084, !noundef !23
  %_6.i.i.i.i2.i.i12 = icmp eq i64 %self1.i.i.i.i1.i.i11, 0
  br i1 %_6.i.i.i.i2.i.i12, label %bb5, label %bb5.sink.split

bb7:                                              ; preds = %bb2.i.i.i3.i.i, %cleanup
  resume { ptr, i32 } %5
}
