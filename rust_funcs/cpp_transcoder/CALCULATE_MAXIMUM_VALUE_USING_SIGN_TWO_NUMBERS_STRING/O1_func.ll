define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_47 = alloca [16 x i8], align 8
  %_39 = alloca [16 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %_22 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %0, align 8, !alias.scope !1661, !nonnull !15, !noundef !15
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !1661, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  %_7.i.i.i.i = icmp samesign ne i64 %len.i.i, 0
  %_6.sroa.0.0.idx = zext i1 %_7.i.i.i.i to i64
  %_6.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_6.sroa.0.0.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb3

cleanup:                                          ; preds = %bb2.i18.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57be46e53aa0f35aE.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup
  %3 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %4 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57be46e53aa0f35aE.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate

bb14.i.i.i:                                       ; preds = %start
  %x.i.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1666, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %5 = icmp ne i64 %len.i.i, 1
  tail call void @llvm.assume(i1 %5)
  %y.i.i.i = load i8, ptr %_6.sroa.0.0, align 1, !noalias !1666, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %6 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb3

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb3

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_6.sroa.0.0, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1666, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %7 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb3

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_6.sroa.0.0, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1666, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %8 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb3

bb3:                                              ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %start
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %start ], [ %8, %bb8.i.i.i ], [ %7, %bb6.i.i.i ], [ %6, %bb4.i.i.i ]
  %.not.i17 = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i17, label %bb2.i18.invoke, label %bb4, !prof !1064

bb2.i18.invoke:                                   ; preds = %bb25, %bb30, %bb17, %bb10, %bb3
  %9 = phi ptr [ @alloc_a1f4cf1a4601c43c42884e5f56939aa3, %bb3 ], [ @alloc_aed007ffc700f8b0e545c3d92234d7e0, %bb25 ], [ @alloc_89528d77aa8a40e36e9d6d0db8889e7a, %bb30 ], [ @alloc_86b98c8458b33feca5b61b5f6460e1c8, %bb17 ], [ @alloc_c5d461147459f590a67461437081ad1d, %bb10 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #25
          to label %bb2.i18.cont unwind label %cleanup

bb2.i18.cont:                                     ; preds = %bb2.i18.invoke
  unreachable

bb4:                                              ; preds = %bb3
  %10 = add nsw i32 %_0.sroa.0.0.i, -48
  %_2.i = icmp sgt i64 %len.i.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i44 = icmp samesign ugt i64 %len.i.i, 1
  br i1 %_0.i.i.i44, label %bb10.lr.ph, label %bb11

bb10.lr.ph:                                       ; preds = %bb4
  %11 = getelementptr inbounds nuw i8, ptr %_22, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %_29, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %_47, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  br label %bb10

bb10:                                             ; preds = %bb10.lr.ph, %bb35
  %spec.select49 = phi i64 [ 2, %bb10.lr.ph ], [ %spec.select, %bb35 ]
  %res.sroa.0.048 = phi i32 [ %10, %bb10.lr.ph ], [ %res.sroa.0.1, %bb35 ]
  %iter.sroa.0.047 = phi i64 [ 1, %bb10.lr.ph ], [ %spec.select49, %bb35 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_22)
  store ptr %_6.i.i, ptr %_22, align 8
  store ptr %_7.i, ptr %11, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_20 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0220c03172024189E(ptr noalias noundef align 8 dereferenceable(16) %_22, i64 noundef %iter.sroa.0.047)
  switch i32 %_20, label %bb17 [
    i32 1114112, label %bb2.i18.invoke
    i32 48, label %bb16
  ], !prof !1673

bb11:                                             ; preds = %bb35, %bb4
  %res.sroa.0.0.lcssa = phi i32 [ %10, %bb4 ], [ %res.sroa.0.1, %bb35 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h091d5e48454b3247E.exit28" unwind label %cleanup.i.i24

cleanup.i.i24:                                    ; preds = %bb11
  %15 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i25

terminate.i.i25:                                  ; preds = %cleanup.i.i24
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57be46e53aa0f35aE.exit.i", %cleanup.i.i24
  %common.resume.op = phi { ptr, i32 } [ %15, %cleanup.i.i24 ], [ %2, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57be46e53aa0f35aE.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h091d5e48454b3247E.exit28": ; preds = %bb11
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %res.sroa.0.0.lcssa

bb17:                                             ; preds = %bb10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_29)
  store ptr %_6.i.i, ptr %_29, align 8
  store ptr %_7.i, ptr %12, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_27 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0220c03172024189E(ptr noalias noundef align 8 dereferenceable(16) %_29, i64 noundef %iter.sroa.0.047)
  switch i32 %_27, label %bb23 [
    i32 1114112, label %bb2.i18.invoke
    i32 49, label %bb22
  ], !prof !1673

bb16:                                             ; preds = %bb10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  br label %bb25

bb23:                                             ; preds = %bb17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_29)
  %_32 = icmp slt i32 %res.sroa.0.048, 2
  br i1 %_32, label %bb25, label %bb30

bb22:                                             ; preds = %bb17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_29)
  br label %bb25

bb30:                                             ; preds = %bb23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_47)
  store ptr %_6.i.i, ptr %_47, align 8
  store ptr %_7.i, ptr %13, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_45 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0220c03172024189E(ptr noalias noundef align 8 dereferenceable(16) %_47, i64 noundef %iter.sroa.0.047)
  %.not.i5 = icmp eq i32 %_45, 1114112
  br i1 %.not.i5, label %bb2.i18.invoke, label %bb34, !prof !1064

bb34:                                             ; preds = %bb30
  %_42 = add nsw i32 %_45, -48
  %17 = mul i32 %_42, %res.sroa.0.048
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_47)
  br label %bb35

bb35:                                             ; preds = %bb29, %bb34
  %res.sroa.0.1 = phi i32 [ %18, %bb29 ], [ %17, %bb34 ]
  %_0.i.i.i = icmp ult i64 %spec.select49, %len.i.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select49, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb10, label %bb11

bb25:                                             ; preds = %bb23, %bb16, %bb22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_39)
  store ptr %_6.i.i, ptr %_39, align 8
  store ptr %_7.i, ptr %14, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_37 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h0220c03172024189E(ptr noalias noundef align 8 dereferenceable(16) %_39, i64 noundef %iter.sroa.0.047)
  %.not.i = icmp eq i32 %_37, 1114112
  br i1 %.not.i, label %bb2.i18.invoke, label %bb29, !prof !1064

bb29:                                             ; preds = %bb25
  %_34 = add i32 %res.sroa.0.048, -48
  %18 = add i32 %_34, %_37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  br label %bb35

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h57be46e53aa0f35aE.exit.i"
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
