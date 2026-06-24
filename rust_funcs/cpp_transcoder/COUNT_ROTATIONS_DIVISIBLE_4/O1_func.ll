define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %n) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_50 = alloca [16 x i8], align 8
  %_38 = alloca [16 x i8], align 8
  %_30 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %n, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_4 = icmp eq i64 %_0.i, 1
  br i1 %_4, label %bb14.i.i.i43, label %bb9

cleanup:                                          ; preds = %bb2.i19.invoke
  %1 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E"(ptr noalias noundef align 8 dereferenceable(24) %n) #29
          to label %common.resume unwind label %terminate

bb9:                                              ; preds = %start
  %_18 = add nsw i64 %_0.i, -1
  %_0.i.i.i89.not = icmp eq i64 %_18, 0
  br i1 %_0.i.i.i89.not, label %bb15, label %bb14.lr.ph

bb14.lr.ph:                                       ; preds = %bb9
  %2 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_6.i.i22 = load ptr, ptr %2, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i29 = getelementptr inbounds nuw i8, ptr %_6.i.i22, i64 %_0.i
  %3 = getelementptr inbounds nuw i8, ptr %_30, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_38, i64 8
  br label %bb14

bb14:                                             ; preds = %bb14.lr.ph, %bb23
  %spec.select8593 = phi i64 [ 1, %bb14.lr.ph ], [ %spec.select85, %bb23 ]
  %count.sroa.0.092 = phi i32 [ 0, %bb14.lr.ph ], [ %spec.select5, %bb23 ]
  %iter.sroa.0.091 = phi i64 [ 0, %bb14.lr.ph ], [ %spec.select8593, %bb23 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_30)
  store ptr %_6.i.i22, ptr %_30, align 8
  store ptr %_7.i29, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_28 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h93770aadddc04728E(ptr noalias noundef align 8 dereferenceable(16) %_30, i64 noundef %iter.sroa.0.091)
  %.not.i10 = icmp eq i32 %_28, 1114112
  br i1 %.not.i10, label %bb2.i19.invoke, label %bb19, !prof !1064

bb15:                                             ; preds = %bb23, %bb9
  %count.sroa.0.0.lcssa = phi i32 [ 0, %bb9 ], [ %spec.select5, %bb23 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_50)
  %5 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_6.i.i24 = load ptr, ptr %5, align 8, !alias.scope !1669, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i24, i64 %_0.i
  store ptr %_6.i.i24, ptr %_50, align 8
  %6 = getelementptr inbounds nuw i8, ptr %_50, i64 8
  store ptr %_7.i, ptr %6, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_48 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h93770aadddc04728E(ptr noalias noundef align 8 dereferenceable(16) %_50, i64 noundef %_18)
  %.not.i18 = icmp eq i32 %_48, 1114112
  br i1 %.not.i18, label %bb2.i19.invoke, label %bb30, !prof !1064

bb2.i19.invoke:                                   ; preds = %bb19, %bb14, %bb33, %bb15
  %7 = phi ptr [ @alloc_aa47e0f3d6fe611eb58e41fd2d239c8e, %bb15 ], [ @alloc_6d82530b4c881cf3502fabd8fbd0a004, %bb33 ], [ @alloc_24ca3aff66782af8ae34a27f69fdbcdb, %bb19 ], [ @alloc_0e23de349ccf4beb6e6def27f8a1a660, %bb14 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #26
          to label %bb2.i19.cont unwind label %cleanup

bb2.i19.cont:                                     ; preds = %bb2.i19.invoke
  unreachable

bb30:                                             ; preds = %bb15
  %8 = shl nuw nsw i32 %_48, 1
  %_7.i.i.i.i = icmp samesign ne i64 %_0.i, 0
  %_58.sroa.0.0.idx = zext i1 %_7.i.i.i.i to i64
  %_58.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i24, i64 %_58.sroa.0.0.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb33

bb14.i.i.i:                                       ; preds = %bb30
  %x.i.i.i = load i8, ptr %_6.i.i24, align 1, !noalias !1674, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %y.i.i.i = load i8, ptr %_58.sroa.0.0, align 1, !noalias !1674, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %9 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb33

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb33

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_58.sroa.0.0, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1674, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %10 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb33

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_58.sroa.0.0, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1674, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %11 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb33

bb33:                                             ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %bb30
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %bb30 ], [ %11, %bb8.i.i.i ], [ %10, %bb6.i.i.i ], [ %9, %bb4.i.i.i ]
  %.not.i14 = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i14, label %bb2.i19.invoke, label %bb34, !prof !1064

bb34:                                             ; preds = %bb33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_50)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb34
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i81, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %12, %cleanup.i.i ], [ %20, %cleanup.i.i81 ], [ %1, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E.exit": ; preds = %bb34
  %_53 = add nuw nsw i32 %_0.sroa.0.0.i, %8
  %14 = and i32 %_53, 3
  %_61 = icmp eq i32 %14, 0
  %15 = zext i1 %_61 to i32
  %spec.select = add i32 %count.sroa.0.0.lcssa, %15
  br label %bb39

bb39:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E.exit84", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E.exit"
  %count.sroa.0.2 = phi i32 [ %., %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E.exit84" ], [ %spec.select, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E.exit" ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
  ret i32 %count.sroa.0.2

bb19:                                             ; preds = %bb14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_38)
  store ptr %_6.i.i22, ptr %_38, align 8
  store ptr %_7.i29, ptr %4, align 8
  %_41 = add nuw i64 %iter.sroa.0.091, 1
; call core::iter::traits::iterator::Iterator::nth
  %_36 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h93770aadddc04728E(ptr noalias noundef align 8 dereferenceable(16) %_38, i64 noundef %_41)
  %.not.i6 = icmp eq i32 %_36, 1114112
  br i1 %.not.i6, label %bb2.i19.invoke, label %bb23, !prof !1064

bb23:                                             ; preds = %bb19
  %16 = shl nuw nsw i32 %_28, 1
  %_33 = add nuw nsw i32 %_36, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_38)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_30)
  %17 = and i32 %_33, 3
  %_42 = icmp eq i32 %17, 0
  %18 = zext i1 %_42 to i32
  %spec.select5 = add i32 %count.sroa.0.092, %18
  %_0.i.i.i = icmp ult i64 %spec.select8593, %_18
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select85 = add nuw i64 %spec.select8593, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb14, label %bb15

bb14.i.i.i43:                                     ; preds = %start
  %19 = getelementptr inbounds nuw i8, ptr %n, i64 8
  %_6.i.i = load ptr, ptr %19, align 8, !alias.scope !1681, !nonnull !15, !noundef !15
  %x.i.i.i44 = load i8, ptr %_6.i.i, align 1, !noalias !1686, !noundef !15
  %_6.i.i.i45 = icmp sgt i8 %x.i.i.i44, -1
  tail call void @llvm.assume(i1 %_6.i.i.i45)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E.exit84" unwind label %cleanup.i.i81

cleanup.i.i81:                                    ; preds = %bb14.i.i.i43
  %20 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %n)
          to label %common.resume unwind label %terminate.i.i82

terminate.i.i82:                                  ; preds = %cleanup.i.i81
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17heb038df17e571053E.exit84": ; preds = %bb14.i.i.i43
  %22 = and i8 %x.i.i.i44, 3
  %_13 = icmp eq i8 %22, 0
  %. = zext i1 %_13 to i32
  br label %bb39

terminate:                                        ; preds = %cleanup
  %23 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable
}
