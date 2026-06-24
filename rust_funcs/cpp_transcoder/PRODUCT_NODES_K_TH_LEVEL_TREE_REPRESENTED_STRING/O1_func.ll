define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %tree, i32 noundef %k) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_34 = alloca [16 x i8], align 8
  %_24 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %tree, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i29.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i29.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %tree, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  br label %bb6

cleanup:                                          ; preds = %bb2.i10.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tree)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he8f6da036b3c653fE.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tree)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he8f6da036b3c653fE.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tree)
          to label %common.resume unwind label %terminate

bb6:                                              ; preds = %bb6.lr.ph, %bb28
  %spec.select34 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb28 ]
  %product.sroa.0.033 = phi i32 [ 1, %bb6.lr.ph ], [ %product.sroa.0.1, %bb28 ]
  %level.sroa.0.032 = phi i32 [ -1, %bb6.lr.ph ], [ %level.sroa.0.1, %bb28 ]
  %iter.sroa.0.031 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select34, %bb28 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %_6.i.i, ptr %_17, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3306aedea86c400cE(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %iter.sroa.0.031)
  switch i32 %_15, label %bb13 [
    i32 1114112, label %bb2.i10.invoke
    i32 40, label %bb12
  ], !prof !1669

bb7:                                              ; preds = %bb28, %start
  %product.sroa.0.0.lcssa = phi i32 [ 1, %start ], [ %product.sroa.0.1, %bb28 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tree)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc5c36170f2a88c07E.exit18" unwind label %cleanup.i.i14

cleanup.i.i14:                                    ; preds = %bb7
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tree)
          to label %common.resume unwind label %terminate.i.i15

terminate.i.i15:                                  ; preds = %cleanup.i.i14
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he8f6da036b3c653fE.exit.i", %cleanup.i.i14
  %common.resume.op = phi { ptr, i32 } [ %8, %cleanup.i.i14 ], [ %5, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he8f6da036b3c653fE.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc5c36170f2a88c07E.exit18": ; preds = %bb7
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tree)
  ret i32 %product.sroa.0.0.lcssa

bb2.i10.invoke:                                   ; preds = %bb20, %bb13, %bb6
  %10 = phi ptr [ @alloc_cfd6c70a4bc94e8bb74a454cfcf1bb8f, %bb6 ], [ @alloc_0cd69928fbbbd19a9ce65c428ca6845a, %bb13 ], [ @alloc_7ef6eddf608573174b1daf6e58d8c4a5, %bb20 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %bb2.i10.cont unwind label %cleanup

bb2.i10.cont:                                     ; preds = %bb2.i10.invoke
  unreachable

bb13:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24)
  store ptr %_6.i.i, ptr %_24, align 8
  store ptr %_7.i, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_22 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3306aedea86c400cE(ptr noalias noundef align 8 dereferenceable(16) %_24, i64 noundef %iter.sroa.0.031)
  switch i32 %_22, label %bb19 [
    i32 1114112, label %bb2.i10.invoke
    i32 41, label %bb18
  ], !prof !1669

bb12:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  %11 = add i32 %level.sroa.0.032, 1
  br label %bb28

bb19:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  %_27 = icmp eq i32 %level.sroa.0.032, %k
  br i1 %_27, label %bb20, label %bb28

bb18:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  %12 = add i32 %level.sroa.0.032, -1
  br label %bb28

bb20:                                             ; preds = %bb19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %_6.i.i, ptr %_34, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_32 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h3306aedea86c400cE(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %iter.sroa.0.031)
  %.not.i = icmp eq i32 %_32, 1114112
  br i1 %.not.i, label %bb2.i10.invoke, label %bb24, !prof !1064

bb24:                                             ; preds = %bb20
  %_29 = add nsw i32 %_32, -48
  %13 = mul i32 %_29, %product.sroa.0.033
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  br label %bb28

bb28:                                             ; preds = %bb18, %bb19, %bb24, %bb12
  %level.sroa.0.1 = phi i32 [ %11, %bb12 ], [ %12, %bb18 ], [ %level.sroa.0.032, %bb24 ], [ %level.sroa.0.032, %bb19 ]
  %product.sroa.0.1 = phi i32 [ %product.sroa.0.033, %bb12 ], [ %product.sroa.0.033, %bb18 ], [ %13, %bb24 ], [ %product.sroa.0.033, %bb19 ]
  %_0.i.i.i = icmp ult i64 %spec.select34, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select34, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17he8f6da036b3c653fE.exit.i"
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
