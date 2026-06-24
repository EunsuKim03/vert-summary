define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_34 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i29.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i29.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_25, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  br label %bb6

cleanup:                                          ; preds = %bb2.i10.invoke
  %5 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2c33c9608bc41f93E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2c33c9608bc41f93E.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate

bb6:                                              ; preds = %bb6.lr.ph, %bb28
  %spec.select35 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb28 ]
  %c_count.sroa.0.034 = phi i32 [ 0, %bb6.lr.ph ], [ %c_count.sroa.0.1, %bb28 ]
  %a_count.sroa.0.033 = phi i32 [ 0, %bb6.lr.ph ], [ %a_count.sroa.0.1, %bb28 ]
  %b_count.sroa.0.032 = phi i32 [ 0, %bb6.lr.ph ], [ %b_count.sroa.0.1, %bb28 ]
  %iter.sroa.0.031 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select35, %bb28 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %_6.i.i, ptr %_17, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h483cd3066047d990E(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %iter.sroa.0.031)
  switch i32 %_15, label %bb13 [
    i32 1114112, label %bb2.i10.invoke
    i32 97, label %bb12
  ], !prof !1669

bb7:                                              ; preds = %bb28, %start
  %c_count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c_count.sroa.0.1, %bb28 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0f892c979e9018e3E.exit18" unwind label %cleanup.i.i14

cleanup.i.i14:                                    ; preds = %bb7
  %8 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i15

terminate.i.i15:                                  ; preds = %cleanup.i.i14
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2c33c9608bc41f93E.exit.i", %cleanup.i.i14
  %common.resume.op = phi { ptr, i32 } [ %8, %cleanup.i.i14 ], [ %5, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2c33c9608bc41f93E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0f892c979e9018e3E.exit18": ; preds = %bb7
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %c_count.sroa.0.0.lcssa

bb2.i10.invoke:                                   ; preds = %bb19, %bb13, %bb6
  %10 = phi ptr [ @alloc_8f866e941862a0c3a2ebf49fb6f30524, %bb6 ], [ @alloc_667cfcb48a43f6ddee90546590ad557f, %bb13 ], [ @alloc_63139f9ff2eac1c6b684ed220fa47460, %bb19 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %10) #25
          to label %bb2.i10.cont unwind label %cleanup

bb2.i10.cont:                                     ; preds = %bb2.i10.invoke
  unreachable

bb13:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_25)
  store ptr %_6.i.i, ptr %_25, align 8
  store ptr %_7.i, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_23 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h483cd3066047d990E(ptr noalias noundef align 8 dereferenceable(16) %_25, i64 noundef %iter.sroa.0.031)
  switch i32 %_23, label %bb19 [
    i32 1114112, label %bb2.i10.invoke
    i32 98, label %bb18
  ], !prof !1669

bb12:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  %_20 = shl i32 %a_count.sroa.0.033, 1
  %11 = or disjoint i32 %_20, 1
  br label %bb28

bb19:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %_6.i.i, ptr %_34, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_32 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h483cd3066047d990E(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %iter.sroa.0.031)
  switch i32 %_32, label %bb25 [
    i32 1114112, label %bb2.i10.invoke
    i32 99, label %bb24
  ], !prof !1669

bb18:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25)
  %_29 = shl i32 %b_count.sroa.0.032, 1
  %12 = add i32 %a_count.sroa.0.033, %_29
  br label %bb28

bb25:                                             ; preds = %bb19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  br label %bb28

bb24:                                             ; preds = %bb19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  %_38 = shl i32 %c_count.sroa.0.034, 1
  %13 = add i32 %_38, %b_count.sroa.0.032
  br label %bb28

bb28:                                             ; preds = %bb18, %bb24, %bb25, %bb12
  %b_count.sroa.0.1 = phi i32 [ %b_count.sroa.0.032, %bb12 ], [ %12, %bb18 ], [ %b_count.sroa.0.032, %bb24 ], [ %b_count.sroa.0.032, %bb25 ]
  %a_count.sroa.0.1 = phi i32 [ %11, %bb12 ], [ %a_count.sroa.0.033, %bb18 ], [ %a_count.sroa.0.033, %bb24 ], [ %a_count.sroa.0.033, %bb25 ]
  %c_count.sroa.0.1 = phi i32 [ %c_count.sroa.0.034, %bb12 ], [ %c_count.sroa.0.034, %bb18 ], [ %13, %bb24 ], [ %c_count.sroa.0.034, %bb25 ]
  %_0.i.i.i = icmp ult i64 %spec.select35, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select35, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2c33c9608bc41f93E.exit.i"
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
