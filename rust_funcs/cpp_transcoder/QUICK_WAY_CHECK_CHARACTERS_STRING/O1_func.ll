define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_16 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i6 = icmp samesign ugt i64 %_0.i, 1
  br i1 %_0.i.i.i6, label %bb6.lr.ph, label %bb19

bb6.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %_18.i.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 1
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 2
  %_7.i17.i.i.i = icmp samesign ne i64 %_0.i, 2
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 3
  %_7.i24.i.i.i = icmp samesign ne i64 %_0.i, 3
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb15
  %spec.select10 = phi i64 [ 2, %bb6.lr.ph ], [ %spec.select, %bb15 ]
  %iter.sroa.0.09 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select10, %bb15 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %_6.i.i, ptr %_16, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %3 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb78251e4c10cf625E(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.09)
  %x.i.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1669, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb19:                                             ; preds = %bb12, %bb15, %start
  %_0.sroa.0.0 = phi i32 [ 1, %start ], [ 0, %bb12 ], [ 1, %bb15 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd0e57e876de3babeE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb19
  %4 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb1.i.i unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb1.i.i:                                          ; preds = %cleanup.i.i
  resume { ptr, i32 } %4

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd0e57e876de3babeE.exit": ; preds = %bb19
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %_0.sroa.0.0

bb4.i.i.i:                                        ; preds = %bb6
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %y.i.i.i = load i8, ptr %_18.i.i.i.i, align 1, !noalias !1669, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %6 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb12

bb3.i.i.i:                                        ; preds = %bb6
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb12

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1669, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %7 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb12

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1669, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %8 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb12

bb12:                                             ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ %8, %bb8.i.i.i ], [ %7, %bb6.i.i.i ], [ %6, %bb4.i.i.i ]
  %_0.sroa.0.0.shrunk.i.i.not = icmp eq i32 %_0.sroa.0.0.i, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  br i1 %_0.sroa.0.0.shrunk.i.i.not, label %bb15, label %bb19

bb15:                                             ; preds = %bb12
  %_0.i.i.i = icmp ult i64 %spec.select10, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select10, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb19
}
