define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_49 = alloca [16 x i8], align 8
  %_42 = alloca [16 x i8], align 8
  %_33 = alloca [16 x i8], align 8
  %_25 = alloca [16 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i44.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i44.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_16, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_25, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_33, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_42, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_49, i64 8
  br label %bb6

cleanup:                                          ; preds = %bb2.i17.invoke
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17had371b94f47a1b85E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %9 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17had371b94f47a1b85E.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate

bb6:                                              ; preds = %bb6.lr.ph, %bb3.backedge
  %spec.select49 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb3.backedge ]
  %count.sroa.0.048 = phi i32 [ 0, %bb6.lr.ph ], [ %count.sroa.0.1, %bb3.backedge ]
  %one_seen.sroa.0.047 = phi i32 [ 0, %bb6.lr.ph ], [ %one_seen.sroa.0.0.be, %bb3.backedge ]
  %iter.sroa.0.046 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select49, %bb3.backedge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16)
  store ptr %_6.i.i, ptr %_16, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_14 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr noalias noundef align 8 dereferenceable(16) %_16, i64 noundef %iter.sroa.0.046)
  switch i32 %_14, label %bb22 [
    i32 1114112, label %bb2.i17.invoke
    i32 49, label %bb12
  ], !prof !1669

bb7:                                              ; preds = %bb3.backedge, %start
  %count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.1, %bb3.backedge ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hff350c673a32a625E.exit25" unwind label %cleanup.i.i21

cleanup.i.i21:                                    ; preds = %bb7
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i22

terminate.i.i22:                                  ; preds = %cleanup.i.i21
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17had371b94f47a1b85E.exit.i", %cleanup.i.i21
  %common.resume.op = phi { ptr, i32 } [ %10, %cleanup.i.i21 ], [ %7, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17had371b94f47a1b85E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hff350c673a32a625E.exit25": ; preds = %bb7
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %count.sroa.0.0.lcssa

bb2.i17.invoke:                                   ; preds = %bb37, %bb32, %bb23, %bb13, %bb6
  %12 = phi ptr [ @alloc_688d8caaad636dc803c1acd2d7a014ed, %bb6 ], [ @alloc_cb2cd9413476aa696aa8655e7f9d7e0b, %bb13 ], [ @alloc_eede39662f2173f116cbbbf30563cc8b, %bb23 ], [ @alloc_93d52e31445b8aa913756eedbf5fb849, %bb32 ], [ @alloc_100013cdb7d392daed1279cb07969aaa, %bb37 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %12) #25
          to label %bb2.i17.cont unwind label %cleanup

bb2.i17.cont:                                     ; preds = %bb2.i17.invoke
  unreachable

bb22:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  br label %bb23

bb12:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16)
  %_19 = icmp eq i32 %one_seen.sroa.0.047, 1
  br i1 %_19, label %bb13, label %bb23

bb23:                                             ; preds = %bb19, %bb18, %bb12, %bb22
  %count.sroa.0.1 = phi i32 [ %13, %bb18 ], [ %count.sroa.0.048, %bb19 ], [ %count.sroa.0.048, %bb12 ], [ %count.sroa.0.048, %bb22 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_33)
  store ptr %_6.i.i, ptr %_33, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_31 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr noalias noundef align 8 dereferenceable(16) %_33, i64 noundef %iter.sroa.0.046)
  switch i32 %_31, label %bb31 [
    i32 1114112, label %bb2.i17.invoke
    i32 49, label %bb28
  ], !prof !1669

bb13:                                             ; preds = %bb12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_25)
  store ptr %_6.i.i, ptr %_25, align 8
  store ptr %_7.i, ptr %3, align 8
  %_28 = add nsw i64 %iter.sroa.0.046, -1
; call core::iter::traits::iterator::Iterator::nth
  %_23 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr noalias noundef align 8 dereferenceable(16) %_25, i64 noundef %_28)
  switch i32 %_23, label %bb19 [
    i32 1114112, label %bb2.i17.invoke
    i32 48, label %bb18
  ], !prof !1669

bb19:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25)
  br label %bb23

bb18:                                             ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25)
  %13 = add i32 %count.sroa.0.048, 1
  br label %bb23

bb31:                                             ; preds = %bb23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  br label %bb32

bb28:                                             ; preds = %bb23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_33)
  %_36 = icmp eq i32 %one_seen.sroa.0.047, 0
  br i1 %_36, label %bb3.backedge, label %bb32

bb32:                                             ; preds = %bb28, %bb31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_42)
  store ptr %_6.i.i, ptr %_42, align 8
  store ptr %_7.i, ptr %5, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_40 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr noalias noundef align 8 dereferenceable(16) %_42, i64 noundef %iter.sroa.0.046)
  switch i32 %_40, label %bb37 [
    i32 1114112, label %bb2.i17.invoke
    i32 48, label %bb44
  ], !prof !1669

bb44:                                             ; preds = %bb32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_42)
  br label %bb3.backedge

bb37:                                             ; preds = %bb32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_42)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_49)
  store ptr %_6.i.i, ptr %_49, align 8
  store ptr %_7.i, ptr %6, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_47 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h33d1d34c9f02e5c5E(ptr noalias noundef align 8 dereferenceable(16) %_49, i64 noundef %iter.sroa.0.046)
  %.not.i = icmp eq i32 %_47, 1114112
  br i1 %.not.i, label %bb2.i17.invoke, label %bb41, !prof !1064

bb3.backedge:                                     ; preds = %bb44, %bb41, %bb28
  %one_seen.sroa.0.0.be = phi i32 [ 1, %bb28 ], [ %one_seen.sroa.0.047, %bb44 ], [ %one_seen.sroa.0.0., %bb41 ]
  %_0.i.i.i = icmp ult i64 %spec.select49, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select49, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

bb41:                                             ; preds = %bb37
  %_45.not = icmp eq i32 %_47, 49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_49)
  %one_seen.sroa.0.0. = select i1 %_45.not, i32 %one_seen.sroa.0.047, i32 0
  br label %bb3.backedge

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17had371b94f47a1b85E.exit.i"
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
