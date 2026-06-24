define noundef range(i32 0, 256) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %strA.0, i64 noundef %strA.1, ptr noalias noundef nonnull readonly align 1 captures(address) %strB.0, i64 noundef %strB.1) unnamed_addr #4 {
start:
  %_20 = getelementptr inbounds nuw i8, ptr %strA.0, i64 %strA.1
  %_7.i.i59 = icmp samesign eq i64 %strA.1, 0
  br i1 %_7.i.i59, label %bb5, label %bb14.i

bb14.i:                                           ; preds = %start, %bb6
  %res.sroa.0.061 = phi i32 [ %4, %bb6 ], [ 0, %start ]
  %iter.sroa.0.060 = phi ptr [ %iter.sroa.0.1.ph, %bb6 ], [ %strA.0, %start ]
  %_18.i.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.060, i64 1
  %x.i = load i8, ptr %iter.sroa.0.060, align 1, !noalias !1031, !noundef !23
  %_6.i = icmp sgt i8 %x.i, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb14.i
  %_30.i = and i8 %x.i, 31
  %init.i = zext nneg i8 %_30.i to i32
  %_7.i10.i = icmp ne ptr %_18.i.i, %_20
  tail call void @llvm.assume(i1 %_7.i10.i)
  %_18.i12.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.060, i64 2
  %y.i = load i8, ptr %_18.i.i, align 1, !noalias !1031, !noundef !23
  %_34.i = shl nuw nsw i32 %init.i, 6
  %_36.i = and i8 %y.i, 63
  %_35.i = zext nneg i8 %_36.i to i32
  %0 = or disjoint i32 %_34.i, %_35.i
  %_13.i = icmp samesign ugt i8 %x.i, -33
  br i1 %_13.i, label %bb6.i, label %bb6

bb3.i:                                            ; preds = %bb14.i
  %_7.i = zext nneg i8 %x.i to i32
  br label %bb6

bb6.i:                                            ; preds = %bb4.i
  %_7.i17.i = icmp ne ptr %_18.i12.i, %_20
  tail call void @llvm.assume(i1 %_7.i17.i)
  %_18.i19.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.060, i64 3
  %z.i = load i8, ptr %_18.i12.i, align 1, !noalias !1031, !noundef !23
  %_40.i = shl nuw nsw i32 %_35.i, 6
  %_42.i = and i8 %z.i, 63
  %_41.i = zext nneg i8 %_42.i to i32
  %y_z.i = or disjoint i32 %_40.i, %_41.i
  %_20.i = shl nuw nsw i32 %init.i, 12
  %1 = or disjoint i32 %y_z.i, %_20.i
  %_21.i = icmp samesign ugt i8 %x.i, -17
  br i1 %_21.i, label %bb8.i, label %bb6

bb8.i:                                            ; preds = %bb6.i
  %_7.i24.i = icmp ne ptr %_18.i19.i, %_20
  tail call void @llvm.assume(i1 %_7.i24.i)
  %_18.i26.i = getelementptr inbounds nuw i8, ptr %iter.sroa.0.060, i64 4
  %w.i = load i8, ptr %_18.i19.i, align 1, !noalias !1031, !noundef !23
  %_26.i = shl nuw nsw i32 %init.i, 18
  %_25.i = and i32 %_26.i, 1835008
  %_46.i = shl nuw nsw i32 %y_z.i, 6
  %_48.i = and i8 %w.i, 63
  %_47.i = zext nneg i8 %_48.i to i32
  %_27.i = or disjoint i32 %_46.i, %_47.i
  %2 = or disjoint i32 %_27.i, %_25.i
  br label %bb6

bb6:                                              ; preds = %bb3.i, %bb8.i, %bb6.i, %bb4.i
  %iter.sroa.0.1.ph = phi ptr [ %_18.i12.i, %bb4.i ], [ %_18.i19.i, %bb6.i ], [ %_18.i26.i, %bb8.i ], [ %_18.i.i, %bb3.i ]
  %_0.sroa.4.0.i.ph = phi i32 [ %0, %bb4.i ], [ %1, %bb6.i ], [ %2, %bb8.i ], [ %_7.i, %bb3.i ]
  %3 = icmp samesign ult i32 %_0.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %3)
  %4 = xor i32 %_0.sroa.4.0.i.ph, %res.sroa.0.061
  %_7.i.i = icmp eq ptr %iter.sroa.0.1.ph, %_20
  br i1 %_7.i.i, label %bb5, label %bb14.i

bb5:                                              ; preds = %bb6, %start
  %res.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %4, %bb6 ]
  %_34 = getelementptr inbounds nuw i8, ptr %strB.0, i64 %strB.1
  %_7.i.i962 = icmp samesign eq i64 %strB.1, 0
  br i1 %_7.i.i962, label %bb8, label %bb14.i10

bb14.i10:                                         ; preds = %bb5, %bb9
  %res.sroa.0.164 = phi i32 [ %9, %bb9 ], [ %res.sroa.0.0.lcssa, %bb5 ]
  %iter1.sroa.0.063 = phi ptr [ %iter1.sroa.0.1.ph, %bb9 ], [ %strB.0, %bb5 ]
  %_18.i.i11 = getelementptr inbounds nuw i8, ptr %iter1.sroa.0.063, i64 1
  %x.i12 = load i8, ptr %iter1.sroa.0.063, align 1, !noalias !1034, !noundef !23
  %_6.i13 = icmp sgt i8 %x.i12, -1
  br i1 %_6.i13, label %bb3.i46, label %bb4.i14

bb4.i14:                                          ; preds = %bb14.i10
  %_30.i15 = and i8 %x.i12, 31
  %init.i16 = zext nneg i8 %_30.i15 to i32
  %_7.i10.i17 = icmp ne ptr %_18.i.i11, %_34
  tail call void @llvm.assume(i1 %_7.i10.i17)
  %_18.i12.i18 = getelementptr inbounds nuw i8, ptr %iter1.sroa.0.063, i64 2
  %y.i19 = load i8, ptr %_18.i.i11, align 1, !noalias !1034, !noundef !23
  %_34.i20 = shl nuw nsw i32 %init.i16, 6
  %_36.i21 = and i8 %y.i19, 63
  %_35.i22 = zext nneg i8 %_36.i21 to i32
  %5 = or disjoint i32 %_34.i20, %_35.i22
  %_13.i23 = icmp samesign ugt i8 %x.i12, -33
  br i1 %_13.i23, label %bb6.i26, label %bb9

bb3.i46:                                          ; preds = %bb14.i10
  %_7.i47 = zext nneg i8 %x.i12 to i32
  br label %bb9

bb6.i26:                                          ; preds = %bb4.i14
  %_7.i17.i27 = icmp ne ptr %_18.i12.i18, %_34
  tail call void @llvm.assume(i1 %_7.i17.i27)
  %_18.i19.i28 = getelementptr inbounds nuw i8, ptr %iter1.sroa.0.063, i64 3
  %z.i29 = load i8, ptr %_18.i12.i18, align 1, !noalias !1034, !noundef !23
  %_40.i30 = shl nuw nsw i32 %_35.i22, 6
  %_42.i31 = and i8 %z.i29, 63
  %_41.i32 = zext nneg i8 %_42.i31 to i32
  %y_z.i33 = or disjoint i32 %_40.i30, %_41.i32
  %_20.i34 = shl nuw nsw i32 %init.i16, 12
  %6 = or disjoint i32 %y_z.i33, %_20.i34
  %_21.i35 = icmp samesign ugt i8 %x.i12, -17
  br i1 %_21.i35, label %bb8.i36, label %bb9

bb8.i36:                                          ; preds = %bb6.i26
  %_7.i24.i37 = icmp ne ptr %_18.i19.i28, %_34
  tail call void @llvm.assume(i1 %_7.i24.i37)
  %_18.i26.i38 = getelementptr inbounds nuw i8, ptr %iter1.sroa.0.063, i64 4
  %w.i39 = load i8, ptr %_18.i19.i28, align 1, !noalias !1034, !noundef !23
  %_26.i40 = shl nuw nsw i32 %init.i16, 18
  %_25.i41 = and i32 %_26.i40, 1835008
  %_46.i42 = shl nuw nsw i32 %y_z.i33, 6
  %_48.i43 = and i8 %w.i39, 63
  %_47.i44 = zext nneg i8 %_48.i43 to i32
  %_27.i45 = or disjoint i32 %_46.i42, %_47.i44
  %7 = or disjoint i32 %_27.i45, %_25.i41
  br label %bb9

bb9:                                              ; preds = %bb3.i46, %bb8.i36, %bb6.i26, %bb4.i14
  %iter1.sroa.0.1.ph = phi ptr [ %_18.i12.i18, %bb4.i14 ], [ %_18.i19.i28, %bb6.i26 ], [ %_18.i26.i38, %bb8.i36 ], [ %_18.i.i11, %bb3.i46 ]
  %_0.sroa.4.0.i24.ph = phi i32 [ %5, %bb4.i14 ], [ %6, %bb6.i26 ], [ %7, %bb8.i36 ], [ %_7.i47, %bb3.i46 ]
  %8 = icmp samesign ult i32 %_0.sroa.4.0.i24.ph, 1114112
  tail call void @llvm.assume(i1 %8)
  %9 = xor i32 %_0.sroa.4.0.i24.ph, %res.sroa.0.164
  %_7.i.i9 = icmp eq ptr %iter1.sroa.0.1.ph, %_34
  br i1 %_7.i.i9, label %bb8, label %bb14.i10

bb8:                                              ; preds = %bb9, %bb5
  %res.sroa.0.1.lcssa = phi i32 [ %res.sroa.0.0.lcssa, %bb5 ], [ %9, %bb9 ]
  %_0 = and i32 %res.sroa.0.1.lcssa, 255
  ret i32 %_0
}
