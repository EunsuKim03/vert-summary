define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_17 = alloca [16 x i8], align 8
  %_10 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = add nsw i64 %_0.i, -1
  %2 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_6.i.i = load ptr, ptr %2, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %3 = getelementptr inbounds nuw i8, ptr %_10, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  br label %bb2

bb2:                                              ; preds = %bb11, %start
  %j.sroa.0.0 = phi i64 [ %1, %start ], [ %8, %bb11 ]
  %i.sroa.0.0 = phi i64 [ 0, %start ], [ %7, %bb11 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10)
  store ptr %_6.i.i, ptr %_10, align 8
  store ptr %_7.i, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %5 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h736da4aa94a4b97aE(ptr noalias noundef align 8 dereferenceable(16) %_10, i64 noundef %i.sroa.0.0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  store ptr %_6.i.i, ptr %_17, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %6 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h736da4aa94a4b97aE(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %j.sroa.0.0)
  %_0.sroa.0.0.shrunk.i.i.not = icmp eq i32 %6, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10)
  br i1 %_0.sroa.0.0.shrunk.i.i.not, label %bb11, label %bb10

bb11:                                             ; preds = %bb2
  %7 = add i64 %i.sroa.0.0, 1
  %8 = add i64 %j.sroa.0.0, -1
  %_21 = icmp ugt i64 %7, %8
  br i1 %_21, label %bb12, label %bb2

bb10:                                             ; preds = %bb2
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb14 unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb10
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %cleanup.i.i9, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %9, %cleanup.i.i ], [ %11, %cleanup.i.i9 ]
  resume { ptr, i32 } %common.resume.op

bb12:                                             ; preds = %bb11
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb14 unwind label %cleanup.i.i9

cleanup.i.i9:                                     ; preds = %bb12
  %11 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i10

terminate.i.i10:                                  ; preds = %cleanup.i.i9
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

bb14:                                             ; preds = %bb12, %bb10
  %_0.sroa.0.0 = phi i32 [ 0, %bb10 ], [ 1, %bb12 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %_0.sroa.0.0
}
