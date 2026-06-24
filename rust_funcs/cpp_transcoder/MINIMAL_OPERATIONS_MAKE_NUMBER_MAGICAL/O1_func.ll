define noundef range(i32 0, 7) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_6.i.i = load ptr, ptr %0, align 8, !nonnull !37
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %len.i.i = load i64, ptr %1, align 8
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  %_7.i.i.i.i = icmp samesign ne i64 %len.i.i, 0
  %_50.sroa.0.0.idx = zext i1 %_7.i.i.i.i to i64
  %_50.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_50.sroa.0.0.idx
  %2 = icmp ne i64 %len.i.i, 1
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_50.sroa.0.0, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_50.sroa.0.0, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  %_41.not.i.i = icmp samesign eq i64 %len.i.i, 0
  %_41.not.i.i138 = icmp samesign eq i64 %len.i.i, 0
  %_41.not.i.i202 = icmp samesign eq i64 %len.i.i, 0
  %_41.not.i.i266 = icmp samesign eq i64 %len.i.i, 0
  %_41.not.i.i330 = icmp samesign eq i64 %len.i.i, 0
  br label %bb8.preheader

cleanup:                                          ; preds = %bb2.i37.invoke
  %3 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h3e22b32b0a9502f3E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h3e22b32b0a9502f3E.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate

bb2.loopexit:                                     ; preds = %bb8.loopexit
  %_0.i.i.i = icmp samesign ult i32 %spec.select386466, 10
  %6 = zext i1 %_0.i.i.i to i32
  %spec.select386 = add nuw nsw i32 %spec.select386466, %6
  br i1 %_0.i.i.i, label %bb8.preheader, label %bb6

bb8.preheader:                                    ; preds = %start, %bb2.loopexit
  %spec.select386466 = phi i32 [ 1, %start ], [ %spec.select386, %bb2.loopexit ]
  %ans.sroa.0.0465 = phi i32 [ 6, %start ], [ %ans.sroa.0.6, %bb2.loopexit ]
  %iter.sroa.0.0464 = phi i32 [ 0, %start ], [ %spec.select386466, %bb2.loopexit ]
  br label %bb13.preheader

bb6:                                              ; preds = %bb2.loopexit
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h57bc81a81808f801E.exit45" unwind label %cleanup.i.i41

cleanup.i.i41:                                    ; preds = %bb6
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i42

terminate.i.i42:                                  ; preds = %cleanup.i.i41
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h3e22b32b0a9502f3E.exit.i", %cleanup.i.i41
  %common.resume.op = phi { ptr, i32 } [ %7, %cleanup.i.i41 ], [ %3, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h3e22b32b0a9502f3E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h57bc81a81808f801E.exit45": ; preds = %bb6
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %ans.sroa.0.6

bb8.loopexit:                                     ; preds = %bb13.loopexit
  %_0.i.i.i49 = icmp samesign ult i32 %spec.select388463, 10
  %9 = zext i1 %_0.i.i.i49 to i32
  %spec.select388 = add nuw nsw i32 %spec.select388463, %9
  br i1 %_0.i.i.i49, label %bb13.preheader, label %bb2.loopexit

bb13.preheader:                                   ; preds = %bb8.preheader, %bb8.loopexit
  %spec.select388463 = phi i32 [ 1, %bb8.preheader ], [ %spec.select388, %bb8.loopexit ]
  %ans.sroa.0.1462 = phi i32 [ %ans.sroa.0.0465, %bb8.preheader ], [ %ans.sroa.0.6, %bb8.loopexit ]
  %iter1.sroa.0.0461 = phi i32 [ 0, %bb8.preheader ], [ %spec.select388463, %bb8.loopexit ]
  %_40 = add nuw nsw i32 %iter1.sroa.0.0461, %iter.sroa.0.0464
  br label %bb18.preheader

bb13.loopexit:                                    ; preds = %bb18.loopexit
  %_0.i.i.i56 = icmp samesign ult i32 %spec.select390460, 10
  %10 = zext i1 %_0.i.i.i56 to i32
  %spec.select390 = add nuw nsw i32 %spec.select390460, %10
  br i1 %_0.i.i.i56, label %bb18.preheader, label %bb8.loopexit

bb18.preheader:                                   ; preds = %bb13.preheader, %bb13.loopexit
  %spec.select390460 = phi i32 [ 1, %bb13.preheader ], [ %spec.select390, %bb13.loopexit ]
  %ans.sroa.0.2459 = phi i32 [ %ans.sroa.0.1462, %bb13.preheader ], [ %ans.sroa.0.6, %bb13.loopexit ]
  %iter2.sroa.0.0458 = phi i32 [ 0, %bb13.preheader ], [ %spec.select390460, %bb13.loopexit ]
  %_39 = add nuw nsw i32 %_40, %iter2.sroa.0.0458
  br label %bb23.preheader

bb18.loopexit:                                    ; preds = %bb23.loopexit
  %_0.i.i.i63 = icmp samesign ult i32 %spec.select392457, 10
  %11 = zext i1 %_0.i.i.i63 to i32
  %spec.select392 = add nuw nsw i32 %spec.select392457, %11
  br i1 %_0.i.i.i63, label %bb23.preheader, label %bb13.loopexit

bb23.preheader:                                   ; preds = %bb18.preheader, %bb18.loopexit
  %spec.select392457 = phi i32 [ 1, %bb18.preheader ], [ %spec.select392, %bb18.loopexit ]
  %ans.sroa.0.3456 = phi i32 [ %ans.sroa.0.2459, %bb18.preheader ], [ %ans.sroa.0.6, %bb18.loopexit ]
  %iter3.sroa.0.0455 = phi i32 [ 0, %bb18.preheader ], [ %spec.select392457, %bb18.loopexit ]
  br label %bb28.preheader

bb23.loopexit:                                    ; preds = %bb79
  %_0.i.i.i70 = icmp samesign ult i32 %spec.select394454, 10
  %12 = zext i1 %_0.i.i.i70 to i32
  %spec.select394 = add nuw nsw i32 %spec.select394454, %12
  br i1 %_0.i.i.i70, label %bb28.preheader, label %bb18.loopexit

bb28.preheader:                                   ; preds = %bb23.preheader, %bb23.loopexit
  %spec.select394454 = phi i32 [ 1, %bb23.preheader ], [ %spec.select394, %bb23.loopexit ]
  %ans.sroa.0.4453 = phi i32 [ %ans.sroa.0.3456, %bb23.preheader ], [ %ans.sroa.0.6, %bb23.loopexit ]
  %iter4.sroa.0.0452 = phi i32 [ 0, %bb23.preheader ], [ %spec.select394454, %bb23.loopexit ]
  %_42 = add nuw nsw i32 %iter4.sroa.0.0452, %iter3.sroa.0.0455
  br label %bb30

bb30:                                             ; preds = %bb28.preheader, %bb79
  %spec.select396451 = phi i32 [ 1, %bb28.preheader ], [ %spec.select396, %bb79 ]
  %ans.sroa.0.5450 = phi i32 [ %ans.sroa.0.4453, %bb28.preheader ], [ %ans.sroa.0.6, %bb79 ]
  %iter5.sroa.0.0449 = phi i32 [ 0, %bb28.preheader ], [ %spec.select396451, %bb79 ]
  %_41 = add nuw nsw i32 %_42, %iter5.sroa.0.0449
  %_38 = icmp eq i32 %_39, %_41
  br i1 %_38, label %bb32, label %bb79

bb32:                                             ; preds = %bb30
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb35

bb79:                                             ; preds = %bb71, %bb30
  %ans.sroa.0.6 = phi i32 [ %ans.sroa.0.5450, %bb30 ], [ %spec.select, %bb71 ]
  %_0.i.i.i77 = icmp samesign ult i32 %spec.select396451, 10
  %13 = zext i1 %_0.i.i.i77 to i32
  %spec.select396 = add nuw nsw i32 %spec.select396451, %13
  br i1 %_0.i.i.i77, label %bb30, label %bb23.loopexit

bb14.i.i.i:                                       ; preds = %bb32
  %x.i.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1630, !noundef !37
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  tail call void @llvm.assume(i1 %2)
  %y.i.i.i = load i8, ptr %_50.sroa.0.0, align 1, !noalias !1630, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %14 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb35

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb35

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1630, !noundef !37
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %15 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb35

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1630, !noundef !37
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %16 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb35

bb35:                                             ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %bb32
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %bb32 ], [ %16, %bb8.i.i.i ], [ %15, %bb6.i.i.i ], [ %14, %bb4.i.i.i ]
  %.not.i36 = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i36, label %bb2.i37.invoke, label %bb36, !prof !1033

bb2.i37.invoke:                                   ; preds = %bb70, %bb63, %bb56, %bb49, %bb42, %bb35
  %17 = phi ptr [ @alloc_5d720ddc212ec709992fdde3e458e7cd, %bb35 ], [ @alloc_69d61d2f8ab9d9293adeec17fc477d79, %bb42 ], [ @alloc_4aed0aaaa669fa15106df367ddb70a1e, %bb49 ], [ @alloc_65f7c902417ba190630bd60004763944, %bb56 ], [ @alloc_cdfc0eaeea3f758a16a25076d45405b5, %bb63 ], [ @alloc_c9fcc62b8fa1fb0279b975fd078c3abd, %bb70 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %17) #23
          to label %bb2.i37.cont unwind label %cleanup

bb2.i37.cont:                                     ; preds = %bb2.i37.invoke
  unreachable

bb36:                                             ; preds = %bb35
  %_45 = add nsw i32 %_0.sroa.0.0.i, -48
  %_44.not = icmp ne i32 %_45, %iter.sroa.0.0464
  %. = zext i1 %_44.not to i32
  br i1 %_41.not.i.i, label %bb42, label %bb28.i.i

bb28.i.i:                                         ; preds = %bb36
  %b15.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1637, !noundef !37
  %_130.i.i = zext i8 %b15.i.i to i64
  %18 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %18, align 1, !noalias !1637, !noundef !37
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %slurp.i.i
  %.not.i.i = icmp uge i64 %len.i.i, %slurp.i.i
  tail call void @llvm.assume(i1 %.not.i.i)
  %_7.i.i.i.i86 = icmp samesign ne i64 %len.i.i, %slurp.i.i
  %spec.select398.idx = zext i1 %_7.i.i.i.i86 to i64
  %spec.select398 = getelementptr inbounds nuw i8, ptr %_19.i.i.i, i64 %spec.select398.idx
  br i1 %_7.i.i.i.i86, label %bb14.i.i.i92, label %bb42

bb14.i.i.i92:                                     ; preds = %bb28.i.i
  %x.i.i.i93 = load i8, ptr %_19.i.i.i, align 1, !noalias !1642, !noundef !37
  %_6.i.i.i94 = icmp sgt i8 %x.i.i.i93, -1
  br i1 %_6.i.i.i94, label %bb3.i.i.i127, label %bb4.i.i.i95

bb4.i.i.i95:                                      ; preds = %bb14.i.i.i92
  %_30.i.i.i96 = and i8 %x.i.i.i93, 31
  %init.i.i.i97 = zext nneg i8 %_30.i.i.i96 to i32
  %_7.i10.i.i.i99 = icmp ne ptr %spec.select398, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i99)
  %y.i.i.i101 = load i8, ptr %spec.select398, align 1, !noalias !1642, !noundef !37
  %_34.i.i.i102 = shl nuw nsw i32 %init.i.i.i97, 6
  %_36.i.i.i103 = and i8 %y.i.i.i101, 63
  %_35.i.i.i104 = zext nneg i8 %_36.i.i.i103 to i32
  %19 = or disjoint i32 %_34.i.i.i102, %_35.i.i.i104
  %_13.i.i.i105 = icmp ugt i8 %x.i.i.i93, -33
  br i1 %_13.i.i.i105, label %bb6.i.i.i107, label %bb42

bb3.i.i.i127:                                     ; preds = %bb14.i.i.i92
  %_7.i.i.i128 = zext nneg i8 %x.i.i.i93 to i32
  br label %bb42

bb6.i.i.i107:                                     ; preds = %bb4.i.i.i95
  %_18.i12.i.i.i100 = getelementptr inbounds nuw i8, ptr %spec.select398, i64 1
  %_7.i17.i.i.i108 = icmp ne ptr %_18.i12.i.i.i100, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i108)
  %z.i.i.i110 = load i8, ptr %_18.i12.i.i.i100, align 1, !noalias !1642, !noundef !37
  %_40.i.i.i111 = shl nuw nsw i32 %_35.i.i.i104, 6
  %_42.i.i.i112 = and i8 %z.i.i.i110, 63
  %_41.i.i.i113 = zext nneg i8 %_42.i.i.i112 to i32
  %y_z.i.i.i114 = or disjoint i32 %_40.i.i.i111, %_41.i.i.i113
  %_20.i.i.i115 = shl nuw nsw i32 %init.i.i.i97, 12
  %20 = or disjoint i32 %y_z.i.i.i114, %_20.i.i.i115
  %_21.i.i.i116 = icmp ugt i8 %x.i.i.i93, -17
  br i1 %_21.i.i.i116, label %bb8.i.i.i117, label %bb42

bb8.i.i.i117:                                     ; preds = %bb6.i.i.i107
  %_18.i19.i.i.i109 = getelementptr inbounds nuw i8, ptr %spec.select398, i64 2
  %_7.i24.i.i.i118 = icmp ne ptr %_18.i19.i.i.i109, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i118)
  %w.i.i.i120 = load i8, ptr %_18.i19.i.i.i109, align 1, !noalias !1642, !noundef !37
  %_26.i.i.i121 = shl nuw nsw i32 %init.i.i.i97, 18
  %_25.i.i.i122 = and i32 %_26.i.i.i121, 1835008
  %_46.i.i.i123 = shl nuw nsw i32 %y_z.i.i.i114, 6
  %_48.i.i.i124 = and i8 %w.i.i.i120, 63
  %_47.i.i.i125 = zext nneg i8 %_48.i.i.i124 to i32
  %_27.i.i.i126 = or disjoint i32 %_46.i.i.i123, %_47.i.i.i125
  %21 = or disjoint i32 %_27.i.i.i126, %_25.i.i.i122
  br label %bb42

bb42:                                             ; preds = %bb36, %bb8.i.i.i117, %bb6.i.i.i107, %bb3.i.i.i127, %bb4.i.i.i95, %bb28.i.i
  %_0.sroa.0.0.i106 = phi i32 [ %_7.i.i.i128, %bb3.i.i.i127 ], [ 1114112, %bb28.i.i ], [ %21, %bb8.i.i.i117 ], [ %20, %bb6.i.i.i107 ], [ %19, %bb4.i.i.i95 ], [ 1114112, %bb36 ]
  %.not.i32 = icmp eq i32 %_0.sroa.0.0.i106, 1114112
  br i1 %.not.i32, label %bb2.i37.invoke, label %bb43, !prof !1033

bb43:                                             ; preds = %bb42
  %_54 = add nsw i32 %_0.sroa.0.0.i106, -48
  %_53.not = icmp eq i32 %_54, %iter1.sroa.0.0461
  %22 = select i1 %_44.not, i32 2, i32 1
  %c.sroa.0.1 = select i1 %_53.not, i32 %., i32 %22
  br i1 %_41.not.i.i138, label %bb49, label %bb28.i.i139

bb28.i.i139:                                      ; preds = %bb43
  %b15.i.i140 = load i8, ptr %_6.i.i, align 1, !noalias !1647, !noundef !37
  %_130.i.i141 = zext i8 %b15.i.i140 to i64
  %23 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i141
  %_128.i.i142 = load i8, ptr %23, align 1, !noalias !1647, !noundef !37
  %slurp.i.i143 = zext i8 %_128.i.i142 to i64
  %.not.i.i145 = icmp uge i64 %len.i.i, %slurp.i.i143
  tail call void @llvm.assume(i1 %.not.i.i145)
  %_41.not.i.i138.1 = icmp samesign eq i64 %len.i.i, %slurp.i.i143
  br i1 %_41.not.i.i138.1, label %bb49, label %bb28.i.i139.1

bb28.i.i139.1:                                    ; preds = %bb28.i.i139
  %_19.i.i.i144 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %slurp.i.i143
  %gepdiff = sub nuw nsw i64 %len.i.i, %slurp.i.i143
  %b15.i.i140.1 = load i8, ptr %_19.i.i.i144, align 1, !noalias !1647, !noundef !37
  %_130.i.i141.1 = zext i8 %b15.i.i140.1 to i64
  %24 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i141.1
  %_128.i.i142.1 = load i8, ptr %24, align 1, !noalias !1647, !noundef !37
  %slurp.i.i143.1 = zext i8 %_128.i.i142.1 to i64
  %_19.i.i.i144.1 = getelementptr inbounds nuw i8, ptr %_19.i.i.i144, i64 %slurp.i.i143.1
  %.not.i.i145.1 = icmp uge i64 %gepdiff, %slurp.i.i143.1
  tail call void @llvm.assume(i1 %.not.i.i145.1)
  %_7.i.i.i.i150 = icmp ne ptr %_19.i.i.i144.1, %_7.i
  %spec.select400.idx = zext i1 %_7.i.i.i.i150 to i64
  %spec.select400 = getelementptr inbounds nuw i8, ptr %_19.i.i.i144.1, i64 %spec.select400.idx
  br i1 %_7.i.i.i.i150, label %bb14.i.i.i156, label %bb49

bb14.i.i.i156:                                    ; preds = %bb28.i.i139.1
  %x.i.i.i157 = load i8, ptr %_19.i.i.i144.1, align 1, !noalias !1652, !noundef !37
  %_6.i.i.i158 = icmp sgt i8 %x.i.i.i157, -1
  br i1 %_6.i.i.i158, label %bb3.i.i.i191, label %bb4.i.i.i159

bb4.i.i.i159:                                     ; preds = %bb14.i.i.i156
  %_30.i.i.i160 = and i8 %x.i.i.i157, 31
  %init.i.i.i161 = zext nneg i8 %_30.i.i.i160 to i32
  %_7.i10.i.i.i163 = icmp ne ptr %spec.select400, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i163)
  %y.i.i.i165 = load i8, ptr %spec.select400, align 1, !noalias !1652, !noundef !37
  %_34.i.i.i166 = shl nuw nsw i32 %init.i.i.i161, 6
  %_36.i.i.i167 = and i8 %y.i.i.i165, 63
  %_35.i.i.i168 = zext nneg i8 %_36.i.i.i167 to i32
  %25 = or disjoint i32 %_34.i.i.i166, %_35.i.i.i168
  %_13.i.i.i169 = icmp ugt i8 %x.i.i.i157, -33
  br i1 %_13.i.i.i169, label %bb6.i.i.i171, label %bb49

bb3.i.i.i191:                                     ; preds = %bb14.i.i.i156
  %_7.i.i.i192 = zext nneg i8 %x.i.i.i157 to i32
  br label %bb49

bb6.i.i.i171:                                     ; preds = %bb4.i.i.i159
  %_18.i12.i.i.i164 = getelementptr inbounds nuw i8, ptr %spec.select400, i64 1
  %_7.i17.i.i.i172 = icmp ne ptr %_18.i12.i.i.i164, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i172)
  %z.i.i.i174 = load i8, ptr %_18.i12.i.i.i164, align 1, !noalias !1652, !noundef !37
  %_40.i.i.i175 = shl nuw nsw i32 %_35.i.i.i168, 6
  %_42.i.i.i176 = and i8 %z.i.i.i174, 63
  %_41.i.i.i177 = zext nneg i8 %_42.i.i.i176 to i32
  %y_z.i.i.i178 = or disjoint i32 %_40.i.i.i175, %_41.i.i.i177
  %_20.i.i.i179 = shl nuw nsw i32 %init.i.i.i161, 12
  %26 = or disjoint i32 %y_z.i.i.i178, %_20.i.i.i179
  %_21.i.i.i180 = icmp ugt i8 %x.i.i.i157, -17
  br i1 %_21.i.i.i180, label %bb8.i.i.i181, label %bb49

bb8.i.i.i181:                                     ; preds = %bb6.i.i.i171
  %_18.i19.i.i.i173 = getelementptr inbounds nuw i8, ptr %spec.select400, i64 2
  %_7.i24.i.i.i182 = icmp ne ptr %_18.i19.i.i.i173, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i182)
  %w.i.i.i184 = load i8, ptr %_18.i19.i.i.i173, align 1, !noalias !1652, !noundef !37
  %_26.i.i.i185 = shl nuw nsw i32 %init.i.i.i161, 18
  %_25.i.i.i186 = and i32 %_26.i.i.i185, 1835008
  %_46.i.i.i187 = shl nuw nsw i32 %y_z.i.i.i178, 6
  %_48.i.i.i188 = and i8 %w.i.i.i184, 63
  %_47.i.i.i189 = zext nneg i8 %_48.i.i.i188 to i32
  %_27.i.i.i190 = or disjoint i32 %_46.i.i.i187, %_47.i.i.i189
  %27 = or disjoint i32 %_27.i.i.i190, %_25.i.i.i186
  br label %bb49

bb49:                                             ; preds = %bb43, %bb28.i.i139, %bb8.i.i.i181, %bb6.i.i.i171, %bb3.i.i.i191, %bb4.i.i.i159, %bb28.i.i139.1
  %_0.sroa.0.0.i170 = phi i32 [ %_7.i.i.i192, %bb3.i.i.i191 ], [ 1114112, %bb28.i.i139.1 ], [ %27, %bb8.i.i.i181 ], [ %26, %bb6.i.i.i171 ], [ %25, %bb4.i.i.i159 ], [ 1114112, %bb28.i.i139 ], [ 1114112, %bb43 ]
  %.not.i28 = icmp eq i32 %_0.sroa.0.0.i170, 1114112
  br i1 %.not.i28, label %bb2.i37.invoke, label %bb50, !prof !1033

bb50:                                             ; preds = %bb49
  %_63 = add nsw i32 %_0.sroa.0.0.i170, -48
  %_62.not = icmp ne i32 %_63, %iter2.sroa.0.0458
  %28 = zext i1 %_62.not to i32
  %c.sroa.0.2 = add nuw nsw i32 %c.sroa.0.1, %28
  br i1 %_41.not.i.i202, label %bb56, label %bb28.i.i203

bb28.i.i203:                                      ; preds = %bb50
  %b15.i.i204 = load i8, ptr %_6.i.i, align 1, !noalias !1657, !noundef !37
  %_130.i.i205 = zext i8 %b15.i.i204 to i64
  %29 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i205
  %_128.i.i206 = load i8, ptr %29, align 1, !noalias !1657, !noundef !37
  %slurp.i.i207 = zext i8 %_128.i.i206 to i64
  %.not.i.i209 = icmp uge i64 %len.i.i, %slurp.i.i207
  tail call void @llvm.assume(i1 %.not.i.i209)
  %_41.not.i.i202.1 = icmp samesign eq i64 %len.i.i, %slurp.i.i207
  br i1 %_41.not.i.i202.1, label %bb56, label %bb28.i.i203.1

bb28.i.i203.1:                                    ; preds = %bb28.i.i203
  %_19.i.i.i208 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %slurp.i.i207
  %gepdiff467 = sub nuw nsw i64 %len.i.i, %slurp.i.i207
  %b15.i.i204.1 = load i8, ptr %_19.i.i.i208, align 1, !noalias !1657, !noundef !37
  %_130.i.i205.1 = zext i8 %b15.i.i204.1 to i64
  %30 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i205.1
  %_128.i.i206.1 = load i8, ptr %30, align 1, !noalias !1657, !noundef !37
  %slurp.i.i207.1 = zext i8 %_128.i.i206.1 to i64
  %_19.i.i.i208.1 = getelementptr inbounds nuw i8, ptr %_19.i.i.i208, i64 %slurp.i.i207.1
  %.not.i.i209.1 = icmp uge i64 %gepdiff467, %slurp.i.i207.1
  tail call void @llvm.assume(i1 %.not.i.i209.1)
  %_41.not.i.i202.2 = icmp eq ptr %_7.i, %_19.i.i.i208.1
  br i1 %_41.not.i.i202.2, label %bb56, label %bb28.i.i203.2

bb28.i.i203.2:                                    ; preds = %bb28.i.i203.1
  %31 = add nuw nsw i64 %slurp.i.i207, %slurp.i.i207.1
  %gepdiff468 = sub nuw nsw i64 %len.i.i, %31
  %b15.i.i204.2 = load i8, ptr %_19.i.i.i208.1, align 1, !noalias !1657, !noundef !37
  %_130.i.i205.2 = zext i8 %b15.i.i204.2 to i64
  %32 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i205.2
  %_128.i.i206.2 = load i8, ptr %32, align 1, !noalias !1657, !noundef !37
  %slurp.i.i207.2 = zext i8 %_128.i.i206.2 to i64
  %_19.i.i.i208.2 = getelementptr inbounds nuw i8, ptr %_19.i.i.i208.1, i64 %slurp.i.i207.2
  %.not.i.i209.2 = icmp uge i64 %gepdiff468, %slurp.i.i207.2
  tail call void @llvm.assume(i1 %.not.i.i209.2)
  %_7.i.i.i.i214 = icmp ne ptr %_19.i.i.i208.2, %_7.i
  %spec.select402.idx = zext i1 %_7.i.i.i.i214 to i64
  %spec.select402 = getelementptr inbounds nuw i8, ptr %_19.i.i.i208.2, i64 %spec.select402.idx
  br i1 %_7.i.i.i.i214, label %bb14.i.i.i220, label %bb56

bb14.i.i.i220:                                    ; preds = %bb28.i.i203.2
  %x.i.i.i221 = load i8, ptr %_19.i.i.i208.2, align 1, !noalias !1662, !noundef !37
  %_6.i.i.i222 = icmp sgt i8 %x.i.i.i221, -1
  br i1 %_6.i.i.i222, label %bb3.i.i.i255, label %bb4.i.i.i223

bb4.i.i.i223:                                     ; preds = %bb14.i.i.i220
  %_30.i.i.i224 = and i8 %x.i.i.i221, 31
  %init.i.i.i225 = zext nneg i8 %_30.i.i.i224 to i32
  %_7.i10.i.i.i227 = icmp ne ptr %spec.select402, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i227)
  %y.i.i.i229 = load i8, ptr %spec.select402, align 1, !noalias !1662, !noundef !37
  %_34.i.i.i230 = shl nuw nsw i32 %init.i.i.i225, 6
  %_36.i.i.i231 = and i8 %y.i.i.i229, 63
  %_35.i.i.i232 = zext nneg i8 %_36.i.i.i231 to i32
  %33 = or disjoint i32 %_34.i.i.i230, %_35.i.i.i232
  %_13.i.i.i233 = icmp ugt i8 %x.i.i.i221, -33
  br i1 %_13.i.i.i233, label %bb6.i.i.i235, label %bb56

bb3.i.i.i255:                                     ; preds = %bb14.i.i.i220
  %_7.i.i.i256 = zext nneg i8 %x.i.i.i221 to i32
  br label %bb56

bb6.i.i.i235:                                     ; preds = %bb4.i.i.i223
  %_18.i12.i.i.i228 = getelementptr inbounds nuw i8, ptr %spec.select402, i64 1
  %_7.i17.i.i.i236 = icmp ne ptr %_18.i12.i.i.i228, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i236)
  %z.i.i.i238 = load i8, ptr %_18.i12.i.i.i228, align 1, !noalias !1662, !noundef !37
  %_40.i.i.i239 = shl nuw nsw i32 %_35.i.i.i232, 6
  %_42.i.i.i240 = and i8 %z.i.i.i238, 63
  %_41.i.i.i241 = zext nneg i8 %_42.i.i.i240 to i32
  %y_z.i.i.i242 = or disjoint i32 %_40.i.i.i239, %_41.i.i.i241
  %_20.i.i.i243 = shl nuw nsw i32 %init.i.i.i225, 12
  %34 = or disjoint i32 %y_z.i.i.i242, %_20.i.i.i243
  %_21.i.i.i244 = icmp ugt i8 %x.i.i.i221, -17
  br i1 %_21.i.i.i244, label %bb8.i.i.i245, label %bb56

bb8.i.i.i245:                                     ; preds = %bb6.i.i.i235
  %_18.i19.i.i.i237 = getelementptr inbounds nuw i8, ptr %spec.select402, i64 2
  %_7.i24.i.i.i246 = icmp ne ptr %_18.i19.i.i.i237, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i246)
  %w.i.i.i248 = load i8, ptr %_18.i19.i.i.i237, align 1, !noalias !1662, !noundef !37
  %_26.i.i.i249 = shl nuw nsw i32 %init.i.i.i225, 18
  %_25.i.i.i250 = and i32 %_26.i.i.i249, 1835008
  %_46.i.i.i251 = shl nuw nsw i32 %y_z.i.i.i242, 6
  %_48.i.i.i252 = and i8 %w.i.i.i248, 63
  %_47.i.i.i253 = zext nneg i8 %_48.i.i.i252 to i32
  %_27.i.i.i254 = or disjoint i32 %_46.i.i.i251, %_47.i.i.i253
  %35 = or disjoint i32 %_27.i.i.i254, %_25.i.i.i250
  br label %bb56

bb56:                                             ; preds = %bb50, %bb28.i.i203, %bb28.i.i203.1, %bb8.i.i.i245, %bb6.i.i.i235, %bb3.i.i.i255, %bb4.i.i.i223, %bb28.i.i203.2
  %_0.sroa.0.0.i234 = phi i32 [ %_7.i.i.i256, %bb3.i.i.i255 ], [ 1114112, %bb28.i.i203.2 ], [ %35, %bb8.i.i.i245 ], [ %34, %bb6.i.i.i235 ], [ %33, %bb4.i.i.i223 ], [ 1114112, %bb28.i.i203.1 ], [ 1114112, %bb28.i.i203 ], [ 1114112, %bb50 ]
  %.not.i24 = icmp eq i32 %_0.sroa.0.0.i234, 1114112
  br i1 %.not.i24, label %bb2.i37.invoke, label %bb57, !prof !1033

bb57:                                             ; preds = %bb56
  %_72 = add nsw i32 %_0.sroa.0.0.i234, -48
  %_71.not = icmp ne i32 %_72, %iter3.sroa.0.0455
  %36 = zext i1 %_71.not to i32
  %c.sroa.0.3 = add nuw nsw i32 %c.sroa.0.2, %36
  br i1 %_41.not.i.i266, label %bb63, label %bb28.i.i267

bb28.i.i267:                                      ; preds = %bb57
  %b15.i.i268 = load i8, ptr %_6.i.i, align 1, !noalias !1667, !noundef !37
  %_130.i.i269 = zext i8 %b15.i.i268 to i64
  %37 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i269
  %_128.i.i270 = load i8, ptr %37, align 1, !noalias !1667, !noundef !37
  %slurp.i.i271 = zext i8 %_128.i.i270 to i64
  %.not.i.i273 = icmp uge i64 %len.i.i, %slurp.i.i271
  tail call void @llvm.assume(i1 %.not.i.i273)
  %_41.not.i.i266.1 = icmp samesign eq i64 %len.i.i, %slurp.i.i271
  br i1 %_41.not.i.i266.1, label %bb63, label %bb28.i.i267.1

bb28.i.i267.1:                                    ; preds = %bb28.i.i267
  %_19.i.i.i272 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %slurp.i.i271
  %gepdiff469 = sub nuw nsw i64 %len.i.i, %slurp.i.i271
  %b15.i.i268.1 = load i8, ptr %_19.i.i.i272, align 1, !noalias !1667, !noundef !37
  %_130.i.i269.1 = zext i8 %b15.i.i268.1 to i64
  %38 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i269.1
  %_128.i.i270.1 = load i8, ptr %38, align 1, !noalias !1667, !noundef !37
  %slurp.i.i271.1 = zext i8 %_128.i.i270.1 to i64
  %_19.i.i.i272.1 = getelementptr inbounds nuw i8, ptr %_19.i.i.i272, i64 %slurp.i.i271.1
  %.not.i.i273.1 = icmp uge i64 %gepdiff469, %slurp.i.i271.1
  tail call void @llvm.assume(i1 %.not.i.i273.1)
  %_41.not.i.i266.2 = icmp eq ptr %_7.i, %_19.i.i.i272.1
  br i1 %_41.not.i.i266.2, label %bb63, label %bb28.i.i267.2

bb28.i.i267.2:                                    ; preds = %bb28.i.i267.1
  %39 = add nuw nsw i64 %slurp.i.i271, %slurp.i.i271.1
  %gepdiff470 = sub nuw nsw i64 %len.i.i, %39
  %b15.i.i268.2 = load i8, ptr %_19.i.i.i272.1, align 1, !noalias !1667, !noundef !37
  %_130.i.i269.2 = zext i8 %b15.i.i268.2 to i64
  %40 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i269.2
  %_128.i.i270.2 = load i8, ptr %40, align 1, !noalias !1667, !noundef !37
  %slurp.i.i271.2 = zext i8 %_128.i.i270.2 to i64
  %_19.i.i.i272.2 = getelementptr inbounds nuw i8, ptr %_19.i.i.i272.1, i64 %slurp.i.i271.2
  %.not.i.i273.2 = icmp uge i64 %gepdiff470, %slurp.i.i271.2
  tail call void @llvm.assume(i1 %.not.i.i273.2)
  %_41.not.i.i266.3 = icmp eq ptr %_7.i, %_19.i.i.i272.2
  br i1 %_41.not.i.i266.3, label %bb63, label %bb28.i.i267.3

bb28.i.i267.3:                                    ; preds = %bb28.i.i267.2
  %41 = add nuw nsw i64 %slurp.i.i271, %slurp.i.i271.1
  %42 = add nuw nsw i64 %41, %slurp.i.i271.2
  %gepdiff471 = sub nuw nsw i64 %len.i.i, %42
  %b15.i.i268.3 = load i8, ptr %_19.i.i.i272.2, align 1, !noalias !1667, !noundef !37
  %_130.i.i269.3 = zext i8 %b15.i.i268.3 to i64
  %43 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i269.3
  %_128.i.i270.3 = load i8, ptr %43, align 1, !noalias !1667, !noundef !37
  %slurp.i.i271.3 = zext i8 %_128.i.i270.3 to i64
  %_19.i.i.i272.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.i272.2, i64 %slurp.i.i271.3
  %.not.i.i273.3 = icmp uge i64 %gepdiff471, %slurp.i.i271.3
  tail call void @llvm.assume(i1 %.not.i.i273.3)
  %_7.i.i.i.i278 = icmp ne ptr %_19.i.i.i272.3, %_7.i
  %spec.select404.idx = zext i1 %_7.i.i.i.i278 to i64
  %spec.select404 = getelementptr inbounds nuw i8, ptr %_19.i.i.i272.3, i64 %spec.select404.idx
  br i1 %_7.i.i.i.i278, label %bb14.i.i.i284, label %bb63

bb14.i.i.i284:                                    ; preds = %bb28.i.i267.3
  %x.i.i.i285 = load i8, ptr %_19.i.i.i272.3, align 1, !noalias !1672, !noundef !37
  %_6.i.i.i286 = icmp sgt i8 %x.i.i.i285, -1
  br i1 %_6.i.i.i286, label %bb3.i.i.i319, label %bb4.i.i.i287

bb4.i.i.i287:                                     ; preds = %bb14.i.i.i284
  %_30.i.i.i288 = and i8 %x.i.i.i285, 31
  %init.i.i.i289 = zext nneg i8 %_30.i.i.i288 to i32
  %_7.i10.i.i.i291 = icmp ne ptr %spec.select404, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i291)
  %y.i.i.i293 = load i8, ptr %spec.select404, align 1, !noalias !1672, !noundef !37
  %_34.i.i.i294 = shl nuw nsw i32 %init.i.i.i289, 6
  %_36.i.i.i295 = and i8 %y.i.i.i293, 63
  %_35.i.i.i296 = zext nneg i8 %_36.i.i.i295 to i32
  %44 = or disjoint i32 %_34.i.i.i294, %_35.i.i.i296
  %_13.i.i.i297 = icmp ugt i8 %x.i.i.i285, -33
  br i1 %_13.i.i.i297, label %bb6.i.i.i299, label %bb63

bb3.i.i.i319:                                     ; preds = %bb14.i.i.i284
  %_7.i.i.i320 = zext nneg i8 %x.i.i.i285 to i32
  br label %bb63

bb6.i.i.i299:                                     ; preds = %bb4.i.i.i287
  %_18.i12.i.i.i292 = getelementptr inbounds nuw i8, ptr %spec.select404, i64 1
  %_7.i17.i.i.i300 = icmp ne ptr %_18.i12.i.i.i292, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i300)
  %z.i.i.i302 = load i8, ptr %_18.i12.i.i.i292, align 1, !noalias !1672, !noundef !37
  %_40.i.i.i303 = shl nuw nsw i32 %_35.i.i.i296, 6
  %_42.i.i.i304 = and i8 %z.i.i.i302, 63
  %_41.i.i.i305 = zext nneg i8 %_42.i.i.i304 to i32
  %y_z.i.i.i306 = or disjoint i32 %_40.i.i.i303, %_41.i.i.i305
  %_20.i.i.i307 = shl nuw nsw i32 %init.i.i.i289, 12
  %45 = or disjoint i32 %y_z.i.i.i306, %_20.i.i.i307
  %_21.i.i.i308 = icmp ugt i8 %x.i.i.i285, -17
  br i1 %_21.i.i.i308, label %bb8.i.i.i309, label %bb63

bb8.i.i.i309:                                     ; preds = %bb6.i.i.i299
  %_18.i19.i.i.i301 = getelementptr inbounds nuw i8, ptr %spec.select404, i64 2
  %_7.i24.i.i.i310 = icmp ne ptr %_18.i19.i.i.i301, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i310)
  %w.i.i.i312 = load i8, ptr %_18.i19.i.i.i301, align 1, !noalias !1672, !noundef !37
  %_26.i.i.i313 = shl nuw nsw i32 %init.i.i.i289, 18
  %_25.i.i.i314 = and i32 %_26.i.i.i313, 1835008
  %_46.i.i.i315 = shl nuw nsw i32 %y_z.i.i.i306, 6
  %_48.i.i.i316 = and i8 %w.i.i.i312, 63
  %_47.i.i.i317 = zext nneg i8 %_48.i.i.i316 to i32
  %_27.i.i.i318 = or disjoint i32 %_46.i.i.i315, %_47.i.i.i317
  %46 = or disjoint i32 %_27.i.i.i318, %_25.i.i.i314
  br label %bb63

bb63:                                             ; preds = %bb57, %bb28.i.i267, %bb28.i.i267.1, %bb28.i.i267.2, %bb8.i.i.i309, %bb6.i.i.i299, %bb3.i.i.i319, %bb4.i.i.i287, %bb28.i.i267.3
  %_0.sroa.0.0.i298 = phi i32 [ %_7.i.i.i320, %bb3.i.i.i319 ], [ 1114112, %bb28.i.i267.3 ], [ %46, %bb8.i.i.i309 ], [ %45, %bb6.i.i.i299 ], [ %44, %bb4.i.i.i287 ], [ 1114112, %bb28.i.i267.2 ], [ 1114112, %bb28.i.i267.1 ], [ 1114112, %bb28.i.i267 ], [ 1114112, %bb57 ]
  %.not.i20 = icmp eq i32 %_0.sroa.0.0.i298, 1114112
  br i1 %.not.i20, label %bb2.i37.invoke, label %bb64, !prof !1033

bb64:                                             ; preds = %bb63
  %_81 = add nsw i32 %_0.sroa.0.0.i298, -48
  %_80.not = icmp ne i32 %_81, %iter4.sroa.0.0452
  %47 = zext i1 %_80.not to i32
  %c.sroa.0.4 = add nuw nsw i32 %c.sroa.0.3, %47
  br i1 %_41.not.i.i330, label %bb70, label %bb28.i.i331

bb28.i.i331:                                      ; preds = %bb64
  %b15.i.i332 = load i8, ptr %_6.i.i, align 1, !noalias !1677, !noundef !37
  %_130.i.i333 = zext i8 %b15.i.i332 to i64
  %48 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i333
  %_128.i.i334 = load i8, ptr %48, align 1, !noalias !1677, !noundef !37
  %slurp.i.i335 = zext i8 %_128.i.i334 to i64
  %.not.i.i337 = icmp uge i64 %len.i.i, %slurp.i.i335
  tail call void @llvm.assume(i1 %.not.i.i337)
  %_41.not.i.i330.1 = icmp samesign eq i64 %len.i.i, %slurp.i.i335
  br i1 %_41.not.i.i330.1, label %bb70, label %bb28.i.i331.1

bb28.i.i331.1:                                    ; preds = %bb28.i.i331
  %_19.i.i.i336 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %slurp.i.i335
  %gepdiff472 = sub nuw nsw i64 %len.i.i, %slurp.i.i335
  %b15.i.i332.1 = load i8, ptr %_19.i.i.i336, align 1, !noalias !1677, !noundef !37
  %_130.i.i333.1 = zext i8 %b15.i.i332.1 to i64
  %49 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i333.1
  %_128.i.i334.1 = load i8, ptr %49, align 1, !noalias !1677, !noundef !37
  %slurp.i.i335.1 = zext i8 %_128.i.i334.1 to i64
  %_19.i.i.i336.1 = getelementptr inbounds nuw i8, ptr %_19.i.i.i336, i64 %slurp.i.i335.1
  %.not.i.i337.1 = icmp uge i64 %gepdiff472, %slurp.i.i335.1
  tail call void @llvm.assume(i1 %.not.i.i337.1)
  %_41.not.i.i330.2 = icmp eq ptr %_7.i, %_19.i.i.i336.1
  br i1 %_41.not.i.i330.2, label %bb70, label %bb28.i.i331.2

bb28.i.i331.2:                                    ; preds = %bb28.i.i331.1
  %50 = add nuw nsw i64 %slurp.i.i335, %slurp.i.i335.1
  %gepdiff473 = sub nuw nsw i64 %len.i.i, %50
  %b15.i.i332.2 = load i8, ptr %_19.i.i.i336.1, align 1, !noalias !1677, !noundef !37
  %_130.i.i333.2 = zext i8 %b15.i.i332.2 to i64
  %51 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i333.2
  %_128.i.i334.2 = load i8, ptr %51, align 1, !noalias !1677, !noundef !37
  %slurp.i.i335.2 = zext i8 %_128.i.i334.2 to i64
  %_19.i.i.i336.2 = getelementptr inbounds nuw i8, ptr %_19.i.i.i336.1, i64 %slurp.i.i335.2
  %.not.i.i337.2 = icmp uge i64 %gepdiff473, %slurp.i.i335.2
  tail call void @llvm.assume(i1 %.not.i.i337.2)
  %_41.not.i.i330.3 = icmp eq ptr %_7.i, %_19.i.i.i336.2
  br i1 %_41.not.i.i330.3, label %bb70, label %bb28.i.i331.3

bb28.i.i331.3:                                    ; preds = %bb28.i.i331.2
  %52 = add nuw nsw i64 %slurp.i.i335, %slurp.i.i335.1
  %53 = add nuw nsw i64 %52, %slurp.i.i335.2
  %gepdiff474 = sub nuw nsw i64 %len.i.i, %53
  %b15.i.i332.3 = load i8, ptr %_19.i.i.i336.2, align 1, !noalias !1677, !noundef !37
  %_130.i.i333.3 = zext i8 %b15.i.i332.3 to i64
  %54 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i333.3
  %_128.i.i334.3 = load i8, ptr %54, align 1, !noalias !1677, !noundef !37
  %slurp.i.i335.3 = zext i8 %_128.i.i334.3 to i64
  %_19.i.i.i336.3 = getelementptr inbounds nuw i8, ptr %_19.i.i.i336.2, i64 %slurp.i.i335.3
  %.not.i.i337.3 = icmp uge i64 %gepdiff474, %slurp.i.i335.3
  tail call void @llvm.assume(i1 %.not.i.i337.3)
  %_41.not.i.i330.4 = icmp eq ptr %_7.i, %_19.i.i.i336.3
  br i1 %_41.not.i.i330.4, label %bb70, label %bb28.i.i331.4

bb28.i.i331.4:                                    ; preds = %bb28.i.i331.3
  %55 = add nuw nsw i64 %slurp.i.i335, %slurp.i.i335.1
  %56 = add nuw nsw i64 %55, %slurp.i.i335.2
  %57 = add nuw nsw i64 %56, %slurp.i.i335.3
  %gepdiff475 = sub nuw nsw i64 %len.i.i, %57
  %b15.i.i332.4 = load i8, ptr %_19.i.i.i336.3, align 1, !noalias !1677, !noundef !37
  %_130.i.i333.4 = zext i8 %b15.i.i332.4 to i64
  %58 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i333.4
  %_128.i.i334.4 = load i8, ptr %58, align 1, !noalias !1677, !noundef !37
  %slurp.i.i335.4 = zext i8 %_128.i.i334.4 to i64
  %_19.i.i.i336.4 = getelementptr inbounds nuw i8, ptr %_19.i.i.i336.3, i64 %slurp.i.i335.4
  %.not.i.i337.4 = icmp uge i64 %gepdiff475, %slurp.i.i335.4
  tail call void @llvm.assume(i1 %.not.i.i337.4)
  %_7.i.i.i.i342 = icmp ne ptr %_19.i.i.i336.4, %_7.i
  %spec.select406.idx = zext i1 %_7.i.i.i.i342 to i64
  %spec.select406 = getelementptr inbounds nuw i8, ptr %_19.i.i.i336.4, i64 %spec.select406.idx
  br i1 %_7.i.i.i.i342, label %bb14.i.i.i348, label %bb70

bb14.i.i.i348:                                    ; preds = %bb28.i.i331.4
  %x.i.i.i349 = load i8, ptr %_19.i.i.i336.4, align 1, !noalias !1682, !noundef !37
  %_6.i.i.i350 = icmp sgt i8 %x.i.i.i349, -1
  br i1 %_6.i.i.i350, label %bb3.i.i.i383, label %bb4.i.i.i351

bb4.i.i.i351:                                     ; preds = %bb14.i.i.i348
  %_30.i.i.i352 = and i8 %x.i.i.i349, 31
  %init.i.i.i353 = zext nneg i8 %_30.i.i.i352 to i32
  %_7.i10.i.i.i355 = icmp ne ptr %spec.select406, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i355)
  %y.i.i.i357 = load i8, ptr %spec.select406, align 1, !noalias !1682, !noundef !37
  %_34.i.i.i358 = shl nuw nsw i32 %init.i.i.i353, 6
  %_36.i.i.i359 = and i8 %y.i.i.i357, 63
  %_35.i.i.i360 = zext nneg i8 %_36.i.i.i359 to i32
  %59 = or disjoint i32 %_34.i.i.i358, %_35.i.i.i360
  %_13.i.i.i361 = icmp ugt i8 %x.i.i.i349, -33
  br i1 %_13.i.i.i361, label %bb6.i.i.i363, label %bb70

bb3.i.i.i383:                                     ; preds = %bb14.i.i.i348
  %_7.i.i.i384 = zext nneg i8 %x.i.i.i349 to i32
  br label %bb70

bb6.i.i.i363:                                     ; preds = %bb4.i.i.i351
  %_18.i12.i.i.i356 = getelementptr inbounds nuw i8, ptr %spec.select406, i64 1
  %_7.i17.i.i.i364 = icmp ne ptr %_18.i12.i.i.i356, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i364)
  %z.i.i.i366 = load i8, ptr %_18.i12.i.i.i356, align 1, !noalias !1682, !noundef !37
  %_40.i.i.i367 = shl nuw nsw i32 %_35.i.i.i360, 6
  %_42.i.i.i368 = and i8 %z.i.i.i366, 63
  %_41.i.i.i369 = zext nneg i8 %_42.i.i.i368 to i32
  %y_z.i.i.i370 = or disjoint i32 %_40.i.i.i367, %_41.i.i.i369
  %_20.i.i.i371 = shl nuw nsw i32 %init.i.i.i353, 12
  %60 = or disjoint i32 %y_z.i.i.i370, %_20.i.i.i371
  %_21.i.i.i372 = icmp ugt i8 %x.i.i.i349, -17
  br i1 %_21.i.i.i372, label %bb8.i.i.i373, label %bb70

bb8.i.i.i373:                                     ; preds = %bb6.i.i.i363
  %_18.i19.i.i.i365 = getelementptr inbounds nuw i8, ptr %spec.select406, i64 2
  %_7.i24.i.i.i374 = icmp ne ptr %_18.i19.i.i.i365, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i374)
  %w.i.i.i376 = load i8, ptr %_18.i19.i.i.i365, align 1, !noalias !1682, !noundef !37
  %_26.i.i.i377 = shl nuw nsw i32 %init.i.i.i353, 18
  %_25.i.i.i378 = and i32 %_26.i.i.i377, 1835008
  %_46.i.i.i379 = shl nuw nsw i32 %y_z.i.i.i370, 6
  %_48.i.i.i380 = and i8 %w.i.i.i376, 63
  %_47.i.i.i381 = zext nneg i8 %_48.i.i.i380 to i32
  %_27.i.i.i382 = or disjoint i32 %_46.i.i.i379, %_47.i.i.i381
  %61 = or disjoint i32 %_27.i.i.i382, %_25.i.i.i378
  br label %bb70

bb70:                                             ; preds = %bb64, %bb28.i.i331, %bb28.i.i331.1, %bb28.i.i331.2, %bb28.i.i331.3, %bb8.i.i.i373, %bb6.i.i.i363, %bb3.i.i.i383, %bb4.i.i.i351, %bb28.i.i331.4
  %_0.sroa.0.0.i362 = phi i32 [ %_7.i.i.i384, %bb3.i.i.i383 ], [ 1114112, %bb28.i.i331.4 ], [ %61, %bb8.i.i.i373 ], [ %60, %bb6.i.i.i363 ], [ %59, %bb4.i.i.i351 ], [ 1114112, %bb28.i.i331.3 ], [ 1114112, %bb28.i.i331.2 ], [ 1114112, %bb28.i.i331.1 ], [ 1114112, %bb28.i.i331 ], [ 1114112, %bb64 ]
  %.not.i = icmp eq i32 %_0.sroa.0.0.i362, 1114112
  br i1 %.not.i, label %bb2.i37.invoke, label %bb71, !prof !1033

bb71:                                             ; preds = %bb70
  %_90 = add nsw i32 %_0.sroa.0.0.i362, -48
  %_89.not = icmp ne i32 %_90, %iter5.sroa.0.0449
  %62 = zext i1 %_89.not to i32
  %c.sroa.0.5 = add nuw nsw i32 %c.sroa.0.4, %62
  %spec.select = tail call i32 @llvm.smin.i32(i32 %c.sroa.0.5, i32 %ans.sroa.0.5450)
  br label %bb79

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h3e22b32b0a9502f3E.exit.i"
  %63 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable
}
