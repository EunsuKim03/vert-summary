define noundef range(i32 0, 1114112) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_38 = alloca [16 x i8], align 8
  %_29 = alloca [16 x i8], align 8
  %_23 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %_7.i.i.i.i = icmp samesign ne i64 %_0.i, 0
  %_7.sroa.0.0.idx = zext i1 %_7.i.i.i.i to i64
  %_7.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_7.sroa.0.0.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb4

cleanup:                                          ; preds = %bb2.i5.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h397c1ff7559d821bE"(ptr noalias noundef align 8 dereferenceable(24) %str) #29
          to label %common.resume unwind label %terminate

bb14.i.i.i:                                       ; preds = %start
  %x.i.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1669, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %3 = icmp ne i64 %_0.i, 1
  tail call void @llvm.assume(i1 %3)
  %y.i.i.i = load i8, ptr %_7.sroa.0.0, align 1, !noalias !1669, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %4 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb4

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb4

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_7.sroa.0.0, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1669, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %5 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb4

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_7.sroa.0.0, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1669, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %6 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb4

bb4:                                              ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %start
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %start ], [ %6, %bb8.i.i.i ], [ %5, %bb6.i.i.i ], [ %4, %bb4.i.i.i ]
  %.not.i4 = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i4, label %bb2.i5.invoke, label %bb5, !prof !1064

bb2.i5.invoke:                                    ; preds = %bb21, %bb4
  %7 = phi ptr [ @alloc_b2b4daeb4b6b82e763f92cf190dff85c, %bb4 ], [ @alloc_36123845c29bc3db30fd787ad44684c9, %bb21 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) #26
          to label %bb2.i5.cont unwind label %cleanup

bb2.i5.cont:                                      ; preds = %bb2.i5.invoke
  unreachable

bb5:                                              ; preds = %bb4
  %_13 = add nsw i64 %_0.i, -1
  %_0.i.i.i19.not = icmp eq i64 %_13, 0
  br i1 %_0.i.i.i19.not, label %bb11, label %bb10.lr.ph

bb10.lr.ph:                                       ; preds = %bb5
  %8 = getelementptr inbounds nuw i8, ptr %_23, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_29, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %_38, i64 8
  br label %bb10

bb10:                                             ; preds = %bb10.lr.ph, %bb28
  %spec.select25 = phi i64 [ 1, %bb10.lr.ph ], [ %spec.select, %bb28 ]
  %res.sroa.0.024 = phi i32 [ %_0.sroa.0.0.i, %bb10.lr.ph ], [ %res.sroa.0.2, %bb28 ]
  %count.sroa.0.023 = phi i32 [ 0, %bb10.lr.ph ], [ %count.sroa.0.2, %bb28 ]
  %cur_count.sroa.0.022 = phi i32 [ 1, %bb10.lr.ph ], [ %cur_count.sroa.0.1, %bb28 ]
  %iter.sroa.0.021 = phi i64 [ 0, %bb10.lr.ph ], [ %spec.select25, %bb28 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_23)
  store ptr %_6.i.i, ptr %_23, align 8
  store ptr %_7.i, ptr %8, align 8
; call core::iter::traits::iterator::Iterator::nth
  %11 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE(ptr noalias noundef align 8 dereferenceable(16) %_23, i64 noundef %iter.sroa.0.021)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_29)
  store ptr %_6.i.i, ptr %_29, align 8
  store ptr %_7.i, ptr %9, align 8
  %_32 = add nuw i64 %iter.sroa.0.021, 1
; call core::iter::traits::iterator::Iterator::nth
  %12 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE(ptr noalias noundef align 8 dereferenceable(16) %_29, i64 noundef %_32)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %12, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_29)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_23)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb19, label %bb20

bb11:                                             ; preds = %bb28, %bb5
  %res.sroa.0.0.lcssa = phi i32 [ %_0.sroa.0.0.i, %bb5 ], [ %res.sroa.0.2, %bb28 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h397c1ff7559d821bE.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb11
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %13, %cleanup.i.i ], [ %2, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h397c1ff7559d821bE.exit": ; preds = %bb11
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %res.sroa.0.0.lcssa

bb20:                                             ; preds = %bb10
  %_33 = icmp sgt i32 %cur_count.sroa.0.022, %count.sroa.0.023
  br i1 %_33, label %bb21, label %bb28

bb19:                                             ; preds = %bb10
  %15 = add i32 %cur_count.sroa.0.022, 1
  br label %bb28

bb21:                                             ; preds = %bb20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_38)
  store ptr %_6.i.i, ptr %_38, align 8
  store ptr %_7.i, ptr %10, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_36 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h19d4681a75231eefE(ptr noalias noundef align 8 dereferenceable(16) %_38, i64 noundef %iter.sroa.0.021)
  %.not.i = icmp eq i32 %_36, 1114112
  br i1 %.not.i, label %bb2.i5.invoke, label %bb25, !prof !1064

bb25:                                             ; preds = %bb21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_38)
  br label %bb28

bb28:                                             ; preds = %bb25, %bb20, %bb19
  %cur_count.sroa.0.1 = phi i32 [ %15, %bb19 ], [ 1, %bb20 ], [ 1, %bb25 ]
  %count.sroa.0.2 = phi i32 [ %count.sroa.0.023, %bb19 ], [ %count.sroa.0.023, %bb20 ], [ %cur_count.sroa.0.022, %bb25 ]
  %res.sroa.0.2 = phi i32 [ %res.sroa.0.024, %bb19 ], [ %res.sroa.0.024, %bb20 ], [ %_36, %bb25 ]
  %_0.i.i.i = icmp ult i64 %spec.select25, %_13
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select25, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb10, label %bb11

terminate:                                        ; preds = %cleanup
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable
}
