define noundef range(i32 0, 1114112) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_47 = alloca [16 x i8], align 8
  %_38 = alloca [16 x i8], align 8
  %_31 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %len = trunc i64 %_0.i to i32
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %_7.i.i.i.i = icmp samesign ne i64 %_0.i, 0
  %_8.sroa.0.0.idx = zext i1 %_7.i.i.i.i to i64
  %_8.sroa.0.0 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_8.sroa.0.0.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb4

cleanup:                                          ; preds = %bb2.i15.invoke
  %2 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2680d4e5defd4a76E.exit.i" unwind label %cleanup.i.i

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

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2680d4e5defd4a76E.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate

bb14.i.i.i:                                       ; preds = %start
  %x.i.i.i = load i8, ptr %_6.i.i, align 1, !noalias !1669, !noundef !15
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %5 = icmp ne i64 %_0.i, 1
  tail call void @llvm.assume(i1 %5)
  %y.i.i.i = load i8, ptr %_8.sroa.0.0, align 1, !noalias !1669, !noundef !15
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %6 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb4

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb4

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %_8.sroa.0.0, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1669, !noundef !15
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %7 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb4

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %_8.sroa.0.0, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1669, !noundef !15
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %8 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb4

bb4:                                              ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %start
  %_0.sroa.0.0.i = phi i32 [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %start ], [ %8, %bb8.i.i.i ], [ %7, %bb6.i.i.i ], [ %6, %bb4.i.i.i ]
  %.not.i14 = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i14, label %bb2.i15.invoke, label %bb7.preheader, !prof !1064

bb7.preheader:                                    ; preds = %bb4
  %_0.i.i.i55 = icmp sgt i32 %len, 0
  br i1 %_0.i.i.i55, label %bb10.lr.ph, label %bb11

bb10.lr.ph:                                       ; preds = %bb7.preheader
  %9 = getelementptr inbounds nuw i8, ptr %_31, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %_38, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %_47, i64 8
  %12 = and i64 %_0.i, 2147483647
  %wide.trip.count = and i64 %_0.i, 2147483647
  br label %bb10

bb2.i15.invoke:                                   ; preds = %bb27, %bb19, %bb15, %bb4
  %13 = phi ptr [ @alloc_3d7263bca282c43246414e46d30b0fcf, %bb4 ], [ @alloc_90c5a32b5e3f93ed098e2a9c82cb94e4, %bb19 ], [ @alloc_278f715e635ddb1569eba4178b6f98ed, %bb15 ], [ @alloc_2f5f0aaf834ca1c985b893a085dad389, %bb27 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %13) #25
          to label %bb2.i15.cont unwind label %cleanup

bb2.i15.cont:                                     ; preds = %bb2.i15.invoke
  unreachable

bb10:                                             ; preds = %bb10.lr.ph, %bb33
  %indvars.iv74 = phi i64 [ 0, %bb10.lr.ph ], [ %indvars.iv.next75, %bb33 ]
  %indvars.iv70 = phi i32 [ %len, %bb10.lr.ph ], [ %indvars.iv.next71, %bb33 ]
  %indvars.iv66 = phi i64 [ 1, %bb10.lr.ph ], [ %indvars.iv.next67, %bb33 ]
  %res.sroa.0.058 = phi i32 [ %_0.sroa.0.0.i, %bb10.lr.ph ], [ %res.sroa.0.1, %bb33 ]
  %count.sroa.0.057 = phi i32 [ 0, %bb10.lr.ph ], [ %count.sroa.0.1, %bb33 ]
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %_0.i.i.i2750 = icmp samesign ult i64 %indvars.iv.next75, %12
  br i1 %_0.i.i.i2750, label %bb15, label %bb26

bb11:                                             ; preds = %bb33, %bb7.preheader
  %res.sroa.0.0.lcssa = phi i32 [ %_0.sroa.0.0.i, %bb7.preheader ], [ %res.sroa.0.1, %bb33 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61e31bb7eb4f60a7E.exit23" unwind label %cleanup.i.i19

cleanup.i.i19:                                    ; preds = %bb11
  %14 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i20

terminate.i.i20:                                  ; preds = %cleanup.i.i19
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2680d4e5defd4a76E.exit.i", %cleanup.i.i19
  %common.resume.op = phi { ptr, i32 } [ %14, %cleanup.i.i19 ], [ %2, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2680d4e5defd4a76E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h61e31bb7eb4f60a7E.exit23": ; preds = %bb11
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %res.sroa.0.0.lcssa

bb15:                                             ; preds = %bb10, %bb25
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %bb25 ], [ %indvars.iv66, %bb10 ]
  %cur_count.sroa.0.053 = phi i32 [ %16, %bb25 ], [ 1, %bb10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_31)
  store ptr %_6.i.i, ptr %_31, align 8
  store ptr %_7.i, ptr %9, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_29 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr noalias noundef align 8 dereferenceable(16) %_31, i64 noundef %indvars.iv74)
  %.not.i10 = icmp eq i32 %_29, 1114112
  br i1 %.not.i10, label %bb2.i15.invoke, label %bb19, !prof !1064

bb26:                                             ; preds = %bb23, %bb25, %bb10
  %cur_count.sroa.0.046 = phi i32 [ 1, %bb10 ], [ %cur_count.sroa.0.053, %bb23 ], [ %indvars.iv70, %bb25 ]
  %_42 = icmp sgt i32 %cur_count.sroa.0.046, %count.sroa.0.057
  br i1 %_42, label %bb27, label %bb33

bb19:                                             ; preds = %bb15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_38)
  store ptr %_6.i.i, ptr %_38, align 8
  store ptr %_7.i, ptr %10, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_36 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr noalias noundef align 8 dereferenceable(16) %_38, i64 noundef %indvars.iv68)
  %.not.i6 = icmp eq i32 %_36, 1114112
  br i1 %.not.i6, label %bb2.i15.invoke, label %bb23, !prof !1064

bb23:                                             ; preds = %bb19
  %_27.not = icmp eq i32 %_29, %_36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_38)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_31)
  br i1 %_27.not, label %bb25, label %bb26

bb25:                                             ; preds = %bb23
  %16 = add i32 %cur_count.sroa.0.053, 1
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next69 to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond.not, label %bb26, label %bb15

bb27:                                             ; preds = %bb26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_47)
  store ptr %_6.i.i, ptr %_47, align 8
  store ptr %_7.i, ptr %11, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_45 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h246eff3c2c7f7d6fE(ptr noalias noundef align 8 dereferenceable(16) %_47, i64 noundef %indvars.iv74)
  %.not.i = icmp eq i32 %_45, 1114112
  br i1 %.not.i, label %bb2.i15.invoke, label %bb32, !prof !1064

bb33:                                             ; preds = %bb26, %bb32
  %count.sroa.0.1 = phi i32 [ %cur_count.sroa.0.046, %bb32 ], [ %count.sroa.0.057, %bb26 ]
  %res.sroa.0.1 = phi i32 [ %_45, %bb32 ], [ %res.sroa.0.058, %bb26 ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %indvars.iv.next71 = add i32 %indvars.iv70, -1
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond78.not, label %bb11, label %bb10

bb32:                                             ; preds = %bb27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_47)
  br label %bb33

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2680d4e5defd4a76E.exit.i"
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
