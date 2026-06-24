define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_26 = alloca [16 x i8], align 8
  %_12 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %n = trunc i64 %_0.i to i32
  %_620 = icmp sgt i32 %n, 0
  br i1 %_620, label %bb3.lr.ph, label %bb11

bb3.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_12, i64 8
  %wide.trip.count = and i64 %_0.i, 2147483647
  br label %bb3

bb3:                                              ; preds = %bb3.lr.ph, %bb8
  %indvars.iv = phi i64 [ 0, %bb3.lr.ph ], [ %indvars.iv.next, %bb8 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_12)
  store ptr %_6.i.i, ptr %_12, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %3 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr noalias noundef align 8 dereferenceable(16) %_12, i64 noundef %indvars.iv)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %3, 97
  br i1 %_0.sroa.0.0.shrunk.i, label %bb8, label %bb9

bb11.loopexit:                                    ; preds = %bb8
  %4 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %bb11

bb11:                                             ; preds = %bb11.loopexit, %start, %bb9
  %i.sroa.0.019 = phi i32 [ %8, %bb9 ], [ 0, %start ], [ %4, %bb11.loopexit ]
  %_18 = shl i32 %i.sroa.0.019, 1
  %_17.not = icmp eq i32 %_18, %n
  br i1 %_17.not, label %bb14.preheader, label %bb26

bb14.preheader:                                   ; preds = %bb11
  %_2022 = icmp slt i32 %i.sroa.0.019, %n
  br i1 %_2022, label %bb15.lr.ph, label %bb23

bb15.lr.ph:                                       ; preds = %bb14.preheader
  %5 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i8 = load ptr, ptr %5, align 8, !alias.scope !1669, !nonnull !15, !noundef !15
  %_7.i10 = getelementptr inbounds nuw i8, ptr %_6.i.i8, i64 %_0.i
  %6 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %7 = zext nneg i32 %i.sroa.0.019 to i64
  %sext = shl i64 %_0.i, 32
  %wide.trip.count32 = ashr exact i64 %sext, 32
  br label %bb15

bb9:                                              ; preds = %bb3
  %8 = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12)
  br label %bb11

bb8:                                              ; preds = %bb3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb11.loopexit, label %bb3

bb15:                                             ; preds = %bb15.lr.ph, %bb20
  %indvars.iv29 = phi i64 [ %7, %bb15.lr.ph ], [ %indvars.iv.next30, %bb20 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26)
  store ptr %_6.i.i8, ptr %_26, align 8
  store ptr %_7.i10, ptr %6, align 8
; call core::iter::traits::iterator::Iterator::nth
  %9 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17ha1f5db159691f2bfE(ptr noalias noundef align 8 dereferenceable(16) %_26, i64 noundef %indvars.iv29)
  %_0.sroa.0.0.shrunk.i11 = icmp eq i32 %9, 98
  br i1 %_0.sroa.0.0.shrunk.i11, label %bb20, label %bb21

bb23.loopexit:                                    ; preds = %bb20
  %10 = trunc nsw i64 %indvars.iv.next30 to i32
  br label %bb23

bb23:                                             ; preds = %bb23.loopexit, %bb14.preheader, %bb21
  %i.sroa.0.117 = phi i32 [ %11, %bb21 ], [ %i.sroa.0.019, %bb14.preheader ], [ %10, %bb23.loopexit ]
  %_31.not = icmp eq i32 %i.sroa.0.117, %n
  br i1 %_31.not, label %bb25, label %bb26

bb21:                                             ; preds = %bb15
  %11 = trunc nuw nsw i64 %indvars.iv29 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  br label %bb23

bb20:                                             ; preds = %bb15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %bb23.loopexit, label %bb15

bb25:                                             ; preds = %bb23
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb27 unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb25
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %cleanup.i.i12, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %12, %cleanup.i.i ], [ %14, %cleanup.i.i12 ]
  resume { ptr, i32 } %common.resume.op

bb27:                                             ; preds = %bb25, %bb26
  %_0.sroa.0.0 = phi i32 [ 0, %bb26 ], [ 1, %bb25 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0.sroa.0.0

bb26:                                             ; preds = %bb23, %bb11
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb27 unwind label %cleanup.i.i12

cleanup.i.i12:                                    ; preds = %bb26
  %14 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i13

terminate.i.i13:                                  ; preds = %cleanup.i.i12
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
