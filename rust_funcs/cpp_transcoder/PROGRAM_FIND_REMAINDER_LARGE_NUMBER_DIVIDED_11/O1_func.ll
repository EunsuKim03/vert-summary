define noundef range(i32 -10, 11) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %len = trunc i64 %_0.i to i32
  %_0.i.i.i8 = icmp sgt i32 %len, 0
  br i1 %_0.i.i.i8, label %bb7.lr.ph, label %bb8

bb7.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1633, !nonnull !37, !noundef !37
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = ptrtoint ptr %_7.i to i64
  %smax = tail call i32 @llvm.smin.i32(i32 %len, i32 11)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb7

cleanup:                                          ; preds = %bb2.i
  %3 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb437363126019f00E"(ptr noalias noundef align 8 dereferenceable(24) %str) #27
          to label %common.resume unwind label %terminate

bb7:                                              ; preds = %bb7.lr.ph, %bb12
  %indvars.iv12 = phi i64 [ 0, %bb7.lr.ph ], [ %indvars.iv.next13, %bb12 ]
  %rem.sroa.0.010 = phi i32 [ 0, %bb7.lr.ph ], [ %14, %bb12 ]
  %_14 = mul nsw i32 %rem.sroa.0.010, 10
  %_39.not57.i.i = icmp eq i64 %indvars.iv12, 0
  br i1 %_39.not57.i.i, label %bb5.critedge.i, label %bb27.i.i

bb8:                                              ; preds = %bb12, %start
  %rem.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %14, %bb12 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb437363126019f00E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb8
  %4 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %4, %cleanup.i.i ], [ %3, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb437363126019f00E.exit": ; preds = %bb8
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %rem.sroa.0.0.lcssa

bb27.i.i:                                         ; preds = %bb7, %bb28.i.i
  %remainder.sroa.0.259.i.i = phi i64 [ %8, %bb28.i.i ], [ %indvars.iv12, %bb7 ]
  %_19.i385658.i.i = phi ptr [ %_19.i38.i.i, %bb28.i.i ], [ %_6.i.i, %bb7 ]
  %_41.not.i.i = icmp eq ptr %_7.i, %_19.i385658.i.i
  br i1 %_41.not.i.i, label %bb11, label %bb28.i.i

bb28.i.i:                                         ; preds = %bb27.i.i
  %6 = ptrtoint ptr %_19.i385658.i.i to i64
  %7 = sub nuw i64 %2, %6
  %8 = add nsw i64 %remainder.sroa.0.259.i.i, -1
  %b15.i.i = load i8, ptr %_19.i385658.i.i, align 1, !noalias !1638, !noundef !37
  %_130.i.i = zext i8 %b15.i.i to i64
  %9 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %9, align 1, !noalias !1638, !noundef !37
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i.i, i64 %slurp.i.i
  %.not28.i.i = icmp uge i64 %7, %slurp.i.i
  tail call void @llvm.assume(i1 %.not28.i.i)
  %_39.not.i.i = icmp eq i64 %8, 0
  br i1 %_39.not.i.i, label %bb5.critedge.i, label %bb27.i.i

bb5.critedge.i:                                   ; preds = %bb28.i.i, %bb7
  %_20.sroa.0.1 = phi ptr [ %_6.i.i, %bb7 ], [ %_19.i38.i.i, %bb28.i.i ]
  %_7.i.i.i.i = icmp ne ptr %_20.sroa.0.1, %_7.i
  %spec.select5.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select5 = getelementptr inbounds nuw i8, ptr %_20.sroa.0.1, i64 %spec.select5.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb11

bb14.i.i.i:                                       ; preds = %bb5.critedge.i
  %x.i.i.i = load i8, ptr %_20.sroa.0.1, align 1, !noalias !1643, !noundef !37
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %spec.select5, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i)
  %y.i.i.i = load i8, ptr %spec.select5, align 1, !noalias !1643, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %10 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb11

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb11

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select5, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1643, !noundef !37
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %11 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb11

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select5, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1643, !noundef !37
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %12 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb11

bb11:                                             ; preds = %bb27.i.i, %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %bb5.critedge.i
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %bb5.critedge.i ], [ %12, %bb8.i.i.i ], [ %11, %bb6.i.i.i ], [ %10, %bb4.i.i.i ], [ 1114112, %bb27.i.i ]
  %.not.i = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i, label %bb2.i, label %bb12, !prof !1033

bb2.i:                                            ; preds = %bb11
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_e0b90d94706423d98f418d2e5899ab1c) #24
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

bb12:                                             ; preds = %bb11
  %_15 = add nsw i32 %_14, -48
  %13 = add nsw i32 %_15, %_0.sroa.0.0.i
  %14 = srem i32 %13, 11
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next13, %wide.trip.count
  br i1 %exitcond.not, label %bb8, label %bb7

terminate:                                        ; preds = %cleanup
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #23
  unreachable
}
