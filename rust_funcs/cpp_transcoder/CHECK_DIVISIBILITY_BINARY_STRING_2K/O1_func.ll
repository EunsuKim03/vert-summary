define noundef range(i32 0, 2) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address) %str.0, i64 noundef %str.1, i32 noundef %k) unnamed_addr #12 {
start:
  %_0.i.i.i8 = icmp sgt i32 %k, 0
  br i1 %_0.i.i.i8, label %bb6.lr.ph, label %bb7

bb6.lr.ph:                                        ; preds = %start
  %_7.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %str.1
  %wide.trip.count = zext nneg i32 %k to i64
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit"
  %indvars.iv13 = phi i64 [ 0, %bb6.lr.ph ], [ %indvars.iv.next14, %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit" ]
  %c.sroa.0.010 = phi i32 [ 0, %bb6.lr.ph ], [ %c.sroa.0.1, %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit" ]
  %_126.not.i.i.i = icmp eq i64 %indvars.iv13, 0
  br i1 %_126.not.i.i.i, label %bb3.i.i, label %bb9.i.i.i

bb9.i.i.i:                                        ; preds = %bb6, %bb6.i.i.i
  %_24.i25.i.i8.i.i.i = phi ptr [ %_24.i25.i.i9.i.i.i, %bb6.i.i.i ], [ %_7.i, %bb6 ]
  %iter.sroa.0.07.i.i.i = phi i64 [ %_16.i.i.i, %bb6.i.i.i ], [ 0, %bb6 ]
  %0 = icmp eq ptr %str.0, %_24.i25.i.i8.i.i.i
  %_24.i.i.i.i.i.i = getelementptr inbounds i8, ptr %_24.i25.i.i8.i.i.i, i64 -1
  %_24.i25.i.i10.i.i.i = select i1 %0, ptr %_24.i25.i.i8.i.i.i, ptr %_24.i.i.i.i.i.i
  br i1 %0, label %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit", label %bb17.i.i.i.i.i

bb17.i.i.i.i.i:                                   ; preds = %bb9.i.i.i
  %w.i.i.i.i.i = load i8, ptr %_24.i.i.i.i.i.i, align 1, !noalias !1630, !noundef !37
  %_6.i.i.i.i.i = icmp sgt i8 %w.i.i.i.i.i, -1
  br i1 %_6.i.i.i.i.i, label %bb6.i.i.i, label %bb4.i.i.i.i.i

bb4.i.i.i.i.i:                                    ; preds = %bb17.i.i.i.i.i
  %1 = icmp ne ptr %str.0, %_24.i25.i.i10.i.i.i
  tail call void @llvm.assume(i1 %1)
  %_24.i13.i.i.i.i.i = getelementptr inbounds i8, ptr %_24.i25.i.i10.i.i.i, i64 -1
  %z.i.i.i.i.i = load i8, ptr %_24.i13.i.i.i.i.i, align 1, !noalias !1630, !noundef !37
  %_26.i.i.i.i.i = and i8 %z.i.i.i.i.i, 31
  %2 = zext nneg i8 %_26.i.i.i.i.i to i32
  %_12.i.i.i.i.i = icmp slt i8 %z.i.i.i.i.i, -64
  br i1 %_12.i.i.i.i.i, label %bb6.i.i.i.i.i, label %bb13.i.i.i.i.i

bb6.i.i.i.i.i:                                    ; preds = %bb4.i.i.i.i.i
  %3 = icmp ne ptr %str.0, %_24.i13.i.i.i.i.i
  tail call void @llvm.assume(i1 %3)
  %_24.i19.i.i.i.i.i = getelementptr inbounds i8, ptr %_24.i25.i.i10.i.i.i, i64 -2
  %y.i.i.i.i.i = load i8, ptr %_24.i19.i.i.i.i.i, align 1, !noalias !1630, !noundef !37
  %_31.i.i.i.i.i = and i8 %y.i.i.i.i.i, 15
  %4 = zext nneg i8 %_31.i.i.i.i.i to i32
  %_16.i.i.i.i.i = icmp slt i8 %y.i.i.i.i.i, -64
  br i1 %_16.i.i.i.i.i, label %bb8.i.i.i.i.i, label %bb11.i.i.i.i.i

bb13.i.i.i.i.i:                                   ; preds = %bb11.i.i.i.i.i, %bb4.i.i.i.i.i
  %_16.sroa.6.2 = phi ptr [ %_16.sroa.6.6, %bb11.i.i.i.i.i ], [ %_24.i13.i.i.i.i.i, %bb4.i.i.i.i.i ]
  %ch.sroa.0.0.i.i.i.i.i = phi i32 [ %10, %bb11.i.i.i.i.i ], [ %2, %bb4.i.i.i.i.i ]
  %_43.i.i.i.i.i = shl nuw nsw i32 %ch.sroa.0.0.i.i.i.i.i, 6
  %_45.i.i.i.i.i = and i8 %w.i.i.i.i.i, 63
  %_44.i.i.i.i.i = zext nneg i8 %_45.i.i.i.i.i to i32
  %5 = or disjoint i32 %_43.i.i.i.i.i, %_44.i.i.i.i.i
  %6 = icmp eq i32 %5, 1114112
  br i1 %6, label %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit", label %bb6.i.i.i

bb8.i.i.i.i.i:                                    ; preds = %bb6.i.i.i.i.i
  %7 = icmp ne ptr %str.0, %_24.i19.i.i.i.i.i
  tail call void @llvm.assume(i1 %7)
  %_24.i25.i.i.i.i.i = getelementptr inbounds i8, ptr %_24.i25.i.i10.i.i.i, i64 -3
  %x.i.i.i.i.i = load i8, ptr %_24.i25.i.i.i.i.i, align 1, !noalias !1630, !noundef !37
  %_36.i.i.i.i.i = and i8 %x.i.i.i.i.i, 7
  %8 = zext nneg i8 %_36.i.i.i.i.i to i32
  %_37.i.i.i.i.i = shl nuw nsw i32 %8, 6
  %_39.i.i.i.i.i = and i8 %y.i.i.i.i.i, 63
  %_38.i.i.i.i.i = zext nneg i8 %_39.i.i.i.i.i to i32
  %9 = or disjoint i32 %_37.i.i.i.i.i, %_38.i.i.i.i.i
  br label %bb11.i.i.i.i.i

bb11.i.i.i.i.i:                                   ; preds = %bb8.i.i.i.i.i, %bb6.i.i.i.i.i
  %_16.sroa.6.6 = phi ptr [ %_24.i25.i.i.i.i.i, %bb8.i.i.i.i.i ], [ %_24.i19.i.i.i.i.i, %bb6.i.i.i.i.i ]
  %ch.sroa.0.1.i.i.i.i.i = phi i32 [ %9, %bb8.i.i.i.i.i ], [ %4, %bb6.i.i.i.i.i ]
  %_40.i.i.i.i.i = shl nuw nsw i32 %ch.sroa.0.1.i.i.i.i.i, 6
  %_42.i.i.i.i.i = and i8 %z.i.i.i.i.i, 63
  %_41.i.i.i.i.i = zext nneg i8 %_42.i.i.i.i.i to i32
  %10 = or disjoint i32 %_40.i.i.i.i.i, %_41.i.i.i.i.i
  br label %bb13.i.i.i.i.i

bb6.i.i.i:                                        ; preds = %bb13.i.i.i.i.i, %bb17.i.i.i.i.i
  %_16.sroa.6.3 = phi ptr [ %_24.i.i.i.i.i.i, %bb17.i.i.i.i.i ], [ %_16.sroa.6.2, %bb13.i.i.i.i.i ]
  %_24.i25.i.i9.i.i.i = phi ptr [ %_24.i25.i.i10.i.i.i, %bb17.i.i.i.i.i ], [ %_16.sroa.6.2, %bb13.i.i.i.i.i ]
  %_16.i.i.i = add nuw nsw i64 %iter.sroa.0.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %_16.i.i.i, %indvars.iv13
  br i1 %exitcond.not.i.i.i, label %bb3.i.i, label %bb9.i.i.i

bb3.i.i:                                          ; preds = %bb6.i.i.i, %bb6
  %_16.sroa.6.4 = phi ptr [ %_7.i, %bb6 ], [ %_16.sroa.6.3, %bb6.i.i.i ]
  %11 = icmp eq ptr %str.0, %_16.sroa.6.4
  %_24.i.i.i.i.i = getelementptr inbounds i8, ptr %_16.sroa.6.4, i64 -1
  %spec.select5 = select i1 %11, ptr %_16.sroa.6.4, ptr %_24.i.i.i.i.i
  br i1 %11, label %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit", label %bb17.i.i.i.i

bb17.i.i.i.i:                                     ; preds = %bb3.i.i
  %w.i.i.i.i = load i8, ptr %_24.i.i.i.i.i, align 1, !noalias !1641, !noundef !37
  %_6.i.i.i.i = icmp sgt i8 %w.i.i.i.i, -1
  br i1 %_6.i.i.i.i, label %bb3.i.i.i.i, label %bb4.i.i.i.i

bb4.i.i.i.i:                                      ; preds = %bb17.i.i.i.i
  %12 = icmp ne ptr %str.0, %spec.select5
  tail call void @llvm.assume(i1 %12)
  %_24.i13.i.i.i.i = getelementptr inbounds i8, ptr %spec.select5, i64 -1
  %z.i.i.i.i = load i8, ptr %_24.i13.i.i.i.i, align 1, !noalias !1641, !noundef !37
  %_26.i.i.i.i = and i8 %z.i.i.i.i, 31
  %13 = zext nneg i8 %_26.i.i.i.i to i32
  %_12.i.i.i.i = icmp slt i8 %z.i.i.i.i, -64
  br i1 %_12.i.i.i.i, label %bb6.i.i.i.i, label %bb13.i.i.i.i

bb3.i.i.i.i:                                      ; preds = %bb17.i.i.i.i
  %_8.i.i.i.i = zext nneg i8 %w.i.i.i.i to i32
  br label %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit"

bb6.i.i.i.i:                                      ; preds = %bb4.i.i.i.i
  %14 = icmp ne ptr %str.0, %_24.i13.i.i.i.i
  tail call void @llvm.assume(i1 %14)
  %_24.i19.i.i.i.i = getelementptr inbounds i8, ptr %spec.select5, i64 -2
  %y.i.i.i.i = load i8, ptr %_24.i19.i.i.i.i, align 1, !noalias !1641, !noundef !37
  %_31.i.i.i.i = and i8 %y.i.i.i.i, 15
  %15 = zext nneg i8 %_31.i.i.i.i to i32
  %_16.i.i.i.i = icmp slt i8 %y.i.i.i.i, -64
  br i1 %_16.i.i.i.i, label %bb8.i.i.i.i, label %bb11.i.i.i.i

bb13.i.i.i.i:                                     ; preds = %bb11.i.i.i.i, %bb4.i.i.i.i
  %ch.sroa.0.0.i.i.i.i = phi i32 [ %20, %bb11.i.i.i.i ], [ %13, %bb4.i.i.i.i ]
  %_43.i.i.i.i = shl nuw nsw i32 %ch.sroa.0.0.i.i.i.i, 6
  %_45.i.i.i.i = and i8 %w.i.i.i.i, 63
  %_44.i.i.i.i = zext nneg i8 %_45.i.i.i.i to i32
  %16 = or disjoint i32 %_43.i.i.i.i, %_44.i.i.i.i
  br label %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit"

bb8.i.i.i.i:                                      ; preds = %bb6.i.i.i.i
  %17 = icmp ne ptr %str.0, %_24.i19.i.i.i.i
  tail call void @llvm.assume(i1 %17)
  %_24.i25.i.i.i.i = getelementptr inbounds i8, ptr %spec.select5, i64 -3
  %x.i.i.i.i = load i8, ptr %_24.i25.i.i.i.i, align 1, !noalias !1641, !noundef !37
  %_36.i.i.i.i = and i8 %x.i.i.i.i, 7
  %18 = zext nneg i8 %_36.i.i.i.i to i32
  %_37.i.i.i.i = shl nuw nsw i32 %18, 6
  %_39.i.i.i.i = and i8 %y.i.i.i.i, 63
  %_38.i.i.i.i = zext nneg i8 %_39.i.i.i.i to i32
  %19 = or disjoint i32 %_37.i.i.i.i, %_38.i.i.i.i
  br label %bb11.i.i.i.i

bb11.i.i.i.i:                                     ; preds = %bb8.i.i.i.i, %bb6.i.i.i.i
  %ch.sroa.0.1.i.i.i.i = phi i32 [ %19, %bb8.i.i.i.i ], [ %15, %bb6.i.i.i.i ]
  %_40.i.i.i.i = shl nuw nsw i32 %ch.sroa.0.1.i.i.i.i, 6
  %_42.i.i.i.i = and i8 %z.i.i.i.i, 63
  %_41.i.i.i.i = zext nneg i8 %_42.i.i.i.i to i32
  %20 = or disjoint i32 %_40.i.i.i.i, %_41.i.i.i.i
  br label %bb13.i.i.i.i

"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit": ; preds = %bb9.i.i.i, %bb13.i.i.i.i.i, %bb3.i.i, %bb3.i.i.i.i, %bb13.i.i.i.i
  %_0.sroa.0.0.i.i3 = phi i32 [ %16, %bb13.i.i.i.i ], [ %_8.i.i.i.i, %bb3.i.i.i.i ], [ 1114112, %bb3.i.i ], [ 1114112, %bb13.i.i.i.i.i ], [ 1114112, %bb9.i.i.i ]
  %_0.i.i = icmp eq i32 %_0.sroa.0.0.i.i3, 48
  %21 = zext i1 %_0.i.i to i32
  %c.sroa.0.1 = add i32 %c.sroa.0.010, %21
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next14, %wide.trip.count
  br i1 %exitcond.not, label %bb7, label %bb6

bb7:                                              ; preds = %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit", %start
  %c.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c.sroa.0.1, %"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h02fd0f851a082202E.exit" ]
  %_19 = icmp eq i32 %c.sroa.0.0.lcssa, %k
  %. = zext i1 %_19 to i32
  ret i32 %.
}
