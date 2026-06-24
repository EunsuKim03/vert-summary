define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef readonly align 8 captures(none) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_15 = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_14 = load i64, ptr %1, align 8, !noundef !23
  %_22 = getelementptr inbounds nuw i8, ptr %_15, i64 %_14
  %_7.i.i14 = icmp samesign eq i64 %_14, 0
  br i1 %_7.i.i14, label %bb15, label %bb14.i

bb14.i:                                           ; preds = %start, %bb16
  %zeros.sroa.0.017 = phi i32 [ %zeros.sroa.0.1, %bb16 ], [ 0, %start ]
  %ones.sroa.0.016 = phi i32 [ %ones.sroa.0.1, %bb16 ], [ 0, %start ]
  %iter.sroa.0.015 = phi ptr [ %iter.sroa.0.1.ph, %bb16 ], [ %_15, %start ]
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.015, i64 1
  %x.i = load i8, ptr %iter.sroa.0.015, align 1, !noalias !1031, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_22
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.015, i64 2
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1031, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %2 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb16

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb16

bb6.i:                                            ; preds = %bb4.i
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_22
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.015, i64 3
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1031, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %3 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb16

bb8.i:                                            ; preds = %bb6.i
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_22
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.015, i64 4
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1031, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %4 = or disjoint i32 %_27.i, %_25.i
  br label %bb16

bb16:                                             ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i, %bb4.i ], [ %_18.i19.i, %bb6.i ], [ %_18.i26.i, %bb8.i ], [ %_18.i.i, %bb3.i ]
  %_0.sroa.4.0.i.ph = phi i32 [ %2, %bb4.i ], [ %3, %bb6.i ], [ %4, %bb8.i ], [ %_7.i, %bb3.i ]
  %5 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %5)
  %_9 = icmp ne i32 %_0.sroa.4.0.i.ph, 48
  %6 = zext i1 %_9 to i32
  %ones.sroa.0.1 = add i32 %ones.sroa.0.016, %6
  %not._9 = xor i1 %_9, true
  %7 = zext i1 %not._9 to i32
  %zeros.sroa.0.1 = add i32 %zeros.sroa.0.017, %7
  %_7.i.i = icmp eq ptr %iter.sroa.0.1.ph, %_22
  br i1 %_7.i.i, label %bb15.loopexit, label %bb14.i

bb15.loopexit:                                    ; preds = %bb16
  %8 = icmp eq i32 %zeros.sroa.0.1, 1
  %9 = icmp eq i32 %ones.sroa.0.1, 1
  %10 = select i1 %8, i1 true, i1 %9
  %11 = zext i1 %10 to i32
  br label %bb15

bb15:                                             ; preds = %bb15.loopexit, %start
  %zeros.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %11, %bb15.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %self1.i.i.i.i1.i.i4 = load i64, ptr %str, align 8, !range !1049, !alias.scope !1050, !noalias !1053, !noundef !23
  %_6.i.i.i.i2.i.i5 = icmp eq i64 %self1.i.i.i.i1.i.i4, 0
  br i1 %_6.i.i.i.i2.i.i5, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2364c0932dab03abE.exit8", label %bb2.i.i.i3.i.i6

bb2.i.i.i3.i.i6:                                  ; preds = %bb15
; call __rustc::__rust_dealloc
  tail call void @_RNvCsdBezzDwma51_7___rustc14___rust_dealloc(ptr noundef nonnull %_15, i64 noundef %self1.i.i.i.i1.i.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !1055
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2364c0932dab03abE.exit8"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2364c0932dab03abE.exit8": ; preds = %bb15, %bb2.i.i.i3.i.i6
  ret i32 %zeros.sroa.0.0.lcssa
}
