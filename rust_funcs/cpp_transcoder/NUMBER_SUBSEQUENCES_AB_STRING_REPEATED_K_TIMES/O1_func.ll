define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s, i32 noundef %k) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_26 = alloca [16 x i8], align 8
  %_19 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i26.not = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i26.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_6.i.i = load ptr, ptr %1, align 8, !alias.scope !1664, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %2 = getelementptr inbounds nuw i8, ptr %_19, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %_26, i64 8
  br label %bb6

cleanup:                                          ; preds = %bb2.i7.invoke
  %4 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0069c80956603807E.exit.i" unwind label %cleanup.i.i

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

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0069c80956603807E.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate

bb6:                                              ; preds = %bb6.lr.ph, %bb21
  %spec.select32 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb21 ]
  %c1.sroa.0.031 = phi i32 [ 0, %bb6.lr.ph ], [ %c1.sroa.0.1, %bb21 ]
  %c2.sroa.0.030 = phi i32 [ 0, %bb6.lr.ph ], [ %c2.sroa.0.1, %bb21 ]
  %c.sroa.0.029 = phi i32 [ 0, %bb6.lr.ph ], [ %c.sroa.0.1, %bb21 ]
  %iter.sroa.0.028 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select32, %bb21 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_19)
  store ptr %_6.i.i, ptr %_19, align 8
  store ptr %_7.i, ptr %2, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_17 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1b58d682adacc1beE(ptr noalias noundef align 8 dereferenceable(16) %_19, i64 noundef %iter.sroa.0.028)
  switch i32 %_17, label %bb13 [
    i32 1114112, label %bb2.i7.invoke
    i32 97, label %bb12
  ], !prof !1669

bb7:                                              ; preds = %bb21, %start
  %c.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c.sroa.0.1, %bb21 ]
  %c2.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c2.sroa.0.1, %bb21 ]
  %c1.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %c1.sroa.0.1, %bb21 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h82b6547f9f508da8E.exit15" unwind label %cleanup.i.i11

cleanup.i.i11:                                    ; preds = %bb7
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

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0069c80956603807E.exit.i", %cleanup.i.i11
  %common.resume.op = phi { ptr, i32 } [ %7, %cleanup.i.i11 ], [ %4, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0069c80956603807E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h82b6547f9f508da8E.exit15": ; preds = %bb7
  %_30 = mul i32 %c.sroa.0.0.lcssa, %k
  %_35 = add i32 %k, -1
  %_34 = mul i32 %_35, %k
  %_33 = sdiv i32 %_34, 2
  %_32 = mul i32 %c2.sroa.0.0.lcssa, %_33
  %_31 = mul i32 %_32, %c1.sroa.0.0.lcssa
  %_0 = add i32 %_31, %_30
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret i32 %_0

bb2.i7.invoke:                                    ; preds = %bb14, %bb6
  %9 = phi ptr [ @alloc_4b3d7225603c3d456b24befd1dec04fd, %bb6 ], [ @alloc_32f33447948e4ec50eb40cf491325ac3, %bb14 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #25
          to label %bb2.i7.cont unwind label %cleanup

bb2.i7.cont:                                      ; preds = %bb2.i7.invoke
  unreachable

bb13:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19)
  br label %bb14

bb12:                                             ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19)
  %10 = add i32 %c1.sroa.0.031, 1
  br label %bb14

bb14:                                             ; preds = %bb12, %bb13
  %c1.sroa.0.1 = phi i32 [ %10, %bb12 ], [ %c1.sroa.0.031, %bb13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_26)
  store ptr %_6.i.i, ptr %_26, align 8
  store ptr %_7.i, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_24 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h1b58d682adacc1beE(ptr noalias noundef align 8 dereferenceable(16) %_26, i64 noundef %iter.sroa.0.028)
  switch i32 %_24, label %bb20 [
    i32 1114112, label %bb2.i7.invoke
    i32 98, label %bb19
  ], !prof !1669

bb20:                                             ; preds = %bb14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  br label %bb21

bb19:                                             ; preds = %bb14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_26)
  %11 = add i32 %c2.sroa.0.030, 1
  %12 = add i32 %c1.sroa.0.1, %c.sroa.0.029
  br label %bb21

bb21:                                             ; preds = %bb19, %bb20
  %c.sroa.0.1 = phi i32 [ %12, %bb19 ], [ %c.sroa.0.029, %bb20 ]
  %c2.sroa.0.1 = phi i32 [ %11, %bb19 ], [ %c2.sroa.0.030, %bb20 ]
  %_0.i.i.i = icmp ult i64 %spec.select32, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select32, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h0069c80956603807E.exit.i"
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
