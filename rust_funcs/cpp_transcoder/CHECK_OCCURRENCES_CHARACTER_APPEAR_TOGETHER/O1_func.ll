define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s, i32 noundef range(i32 0, 1114112) %c) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_24 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_728.not = icmp eq i64 %_0.i, 0
  br i1 %_728.not, label %bb23, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_24, i64 8
  br label %bb3

cleanup:                                          ; preds = %bb2.i7.invoke
  %4 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8a6040f3668483b7E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8a6040f3668483b7E.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate

bb23:                                             ; preds = %bb22, %start
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb24 unwind label %cleanup.i.i11

cleanup.i.i11:                                    ; preds = %bb23
  %7 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i12

terminate.i.i12:                                  ; preds = %cleanup.i.i11
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8a6040f3668483b7E.exit.i", %cleanup.i.i16, %cleanup.i.i11
  %common.resume.op = phi { ptr, i32 } [ %7, %cleanup.i.i11 ], [ %11, %cleanup.i.i16 ], [ %4, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8a6040f3668483b7E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

bb3:                                              ; preds = %bb3.lr.ph, %bb22
  %one_seen.sroa.0.030 = phi i32 [ 0, %bb3.lr.ph ], [ %one_seen.sroa.0.1, %bb22 ]
  %i.sroa.0.029 = phi i64 [ 0, %bb3.lr.ph ], [ %i.sroa.0.1, %bb22 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %_6.i.i, ptr %_13, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_11 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17he2b8805943b3a86dE(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %i.sroa.0.029)
  %.not.i6 = icmp eq i32 %_11, 1114112
  br i1 %.not.i6, label %bb2.i7.invoke, label %bb7, !prof !1064

bb24:                                             ; preds = %bb23, %bb9
  %_0.sroa.0.0 = phi i32 [ 0, %bb9 ], [ 1, %bb23 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %_0.sroa.0.0

bb2.i7.invoke:                                    ; preds = %bb3, %bb12
  %9 = phi ptr [ @alloc_aecda470804c2e4e7199fcb2c628395e, %bb12 ], [ @alloc_c8b2f52b66ad242467ff179b0c1e3a9e, %bb3 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #25
          to label %bb2.i7.cont unwind label %cleanup

bb2.i7.cont:                                      ; preds = %bb2.i7.invoke
  unreachable

bb7:                                              ; preds = %bb3
  %_9 = icmp eq i32 %_11, %c
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  br i1 %_9, label %bb8, label %bb21

bb21:                                             ; preds = %bb7
  %10 = add nuw nsw i64 %i.sroa.0.029, 1
  br label %bb22

bb8:                                              ; preds = %bb7
  %_17.not = icmp eq i32 %one_seen.sroa.0.030, 0
  br i1 %_17.not, label %bb11.preheader, label %bb9

bb11.preheader:                                   ; preds = %bb8
  %_1826 = icmp ult i64 %i.sroa.0.029, %_0.i
  br i1 %_1826, label %bb12, label %bb22

bb22:                                             ; preds = %bb16, %bb17, %bb11.preheader, %bb21
  %i.sroa.0.1 = phi i64 [ %10, %bb21 ], [ %i.sroa.0.029, %bb11.preheader ], [ %i.sroa.0.227, %bb16 ], [ %_0.i, %bb17 ]
  %one_seen.sroa.0.1 = phi i32 [ %one_seen.sroa.0.030, %bb21 ], [ 1, %bb11.preheader ], [ 1, %bb17 ], [ 1, %bb16 ]
  %_7 = icmp ult i64 %i.sroa.0.1, %_0.i
  br i1 %_7, label %bb3, label %bb23

bb9:                                              ; preds = %bb8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb24 unwind label %cleanup.i.i16

cleanup.i.i16:                                    ; preds = %bb9
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i17

terminate.i.i17:                                  ; preds = %cleanup.i.i16
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb12:                                             ; preds = %bb11.preheader, %bb17
  %i.sroa.0.227 = phi i64 [ %13, %bb17 ], [ %i.sroa.0.029, %bb11.preheader ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24)
  store ptr %_6.i.i, ptr %_24, align 8
  store ptr %_7.i, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_22 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17he2b8805943b3a86dE(ptr noalias noundef align 8 dereferenceable(16) %_24, i64 noundef %i.sroa.0.227)
  %.not.i = icmp eq i32 %_22, 1114112
  br i1 %.not.i, label %bb2.i7.invoke, label %bb16, !prof !1064

bb16:                                             ; preds = %bb12
  %_20 = icmp eq i32 %_22, %c
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24)
  br i1 %_20, label %bb17, label %bb22

bb17:                                             ; preds = %bb16
  %13 = add nuw nsw i64 %i.sroa.0.227, 1
  %exitcond.not = icmp eq i64 %13, %_0.i
  br i1 %exitcond.not, label %bb22, label %bb12

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8a6040f3668483b7E.exit.i"
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
