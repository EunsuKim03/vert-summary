define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_20 = alloca [16 x i8], align 8
  %_13 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %j.sroa.0.012 = add nsw i64 %_0.i, -1
  %_613.not = icmp eq i64 %j.sroa.0.012, 0
  br i1 %_613.not, label %bb13, label %bb3.lr.ph

bb3.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_13, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  br label %bb3

bb13:                                             ; preds = %bb12, %start
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb14 unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb13
  %4 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %cleanup.i.i8, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %4, %cleanup.i.i ], [ %9, %cleanup.i.i8 ]
  resume { ptr, i32 } %common.resume.op

bb3:                                              ; preds = %bb3.lr.ph, %bb12
  %j.sroa.0.015 = phi i64 [ %j.sroa.0.012, %bb3.lr.ph ], [ %j.sroa.0.0, %bb12 ]
  %i.sroa.0.014 = phi i64 [ 0, %bb3.lr.ph ], [ %8, %bb12 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13)
  store ptr %_6.i.i, ptr %_13, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %6 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbc85fccd123f6c83E(ptr noalias noundef align 8 dereferenceable(16) %_13, i64 noundef %i.sroa.0.014)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_20)
  store ptr %_6.i.i, ptr %_20, align 8
  store ptr %_7.i, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %7 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hbc85fccd123f6c83E(ptr noalias noundef align 8 dereferenceable(16) %_20, i64 noundef %j.sroa.0.015)
  %_0.sroa.0.0.shrunk.i.i.not = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13)
  br i1 %_0.sroa.0.0.shrunk.i.i.not, label %bb12, label %bb11

bb14:                                             ; preds = %bb13, %bb11
  %_0.sroa.0.0 = phi i32 [ 0, %bb11 ], [ 1, %bb13 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0.sroa.0.0

bb12:                                             ; preds = %bb3
  %8 = add nuw i64 %i.sroa.0.014, 1
  %j.sroa.0.0 = add i64 %j.sroa.0.015, -1
  %_6 = icmp ult i64 %8, %j.sroa.0.0
  br i1 %_6, label %bb3, label %bb13

bb11:                                             ; preds = %bb3
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb14 unwind label %cleanup.i.i8

cleanup.i.i8:                                     ; preds = %bb11
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i9

terminate.i.i9:                                   ; preds = %cleanup.i.i8
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
