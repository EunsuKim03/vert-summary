define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str1, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str2, i32 noundef %k) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_34 = alloca [16 x i8], align 8
  %_28 = alloca [16 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str1, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %str2, i64 16
  %_0.i5 = load i64, ptr %1, align 8, !alias.scope !1664, !noundef !15
  %_2.i6 = icmp sgt i64 %_0.i5, -1
  tail call void @llvm.assume(i1 %_2.i6)
  %_5 = add nuw i64 %_0.i5, %_0.i
  %_10 = sext i32 %k to i64
  %_4 = icmp ult i64 %_5, %_10
  br i1 %_4, label %bb28, label %bb4

bb4:                                              ; preds = %start
  %_0.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %_0.i5, i64 %_0.i)
  %_0.i.i.i36.not = icmp eq i64 %_0.sroa.0.0.i, 0
  br i1 %_0.i.i.i36.not, label %bb22, label %bb12.lr.ph

bb12.lr.ph:                                       ; preds = %bb4
  %2 = getelementptr inbounds nuw i8, ptr %str1, i64 8
  %_6.i.i = load ptr, ptr %2, align 8, !alias.scope !1667, !nonnull !15, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %_0.i
  %3 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %str2, i64 8
  %_6.i.i13 = load ptr, ptr %4, align 8, !nonnull !15
  %_7.i15 = getelementptr inbounds nuw i8, ptr %_6.i.i13, i64 %_0.i5
  %5 = getelementptr inbounds nuw i8, ptr %_34, i64 8
  br label %bb12

bb12:                                             ; preds = %bb12.lr.ph, %bb20
  %spec.select39 = phi i64 [ 1, %bb12.lr.ph ], [ %spec.select, %bb20 ]
  %iter.sroa.0.038 = phi i64 [ 0, %bb12.lr.ph ], [ %spec.select39, %bb20 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_28)
  store ptr %_6.i.i, ptr %_28, align 8
  store ptr %_7.i, ptr %3, align 8
; call core::iter::traits::iterator::Iterator::nth
  %6 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h113b46939a86b73aE(ptr noalias noundef align 8 dereferenceable(16) %_28, i64 noundef %iter.sroa.0.038)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_34)
  store ptr %_6.i.i13, ptr %_34, align 8
  store ptr %_7.i15, ptr %5, align 8
; call core::iter::traits::iterator::Iterator::nth
  %7 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h113b46939a86b73aE(ptr noalias noundef align 8 dereferenceable(16) %_34, i64 noundef %iter.sroa.0.038)
  %_0.sroa.0.0.shrunk.i = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_34)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_28)
  br i1 %_0.sroa.0.0.shrunk.i, label %bb20, label %bb22

bb22:                                             ; preds = %bb12, %bb20, %bb4
  %_42 = trunc i64 %_0.i to i32
  %_45 = trunc i64 %_0.i5 to i32
  %8 = add i32 %_42, %_45
  %_40 = sub i32 %k, %8
  %9 = and i32 %_40, 1
  %_37 = icmp eq i32 %9, 0
  br i1 %_37, label %bb28, label %bb26

bb20:                                             ; preds = %bb12
  %_0.i.i.i = icmp ult i64 %spec.select39, %_0.sroa.0.0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select39, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb12, label %bb22

bb26:                                             ; preds = %bb22
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str2)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h40d7f5242b23552fE.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb26
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str2)
          to label %cleanup1.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h40d7f5242b23552fE.exit.i": ; preds = %bb26
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str2)
          to label %bb27 unwind label %cleanup1

cleanup1:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h40d7f5242b23552fE.exit.i26", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h40d7f5242b23552fE.exit.i"
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1.body

cleanup1.body:                                    ; preds = %cleanup.i.i23, %cleanup1, %cleanup.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %10, %cleanup.i.i ], [ %12, %cleanup1 ], [ %15, %cleanup.i.i23 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h35bc4eb570d8014dE"(ptr noalias noundef align 8 dereferenceable(24) %str1) #29
          to label %common.resume unwind label %terminate

bb27:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h40d7f5242b23552fE.exit.i"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str1)
          to label %bb30 unwind label %cleanup.i.i18

cleanup.i.i18:                                    ; preds = %bb27
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str1)
          to label %common.resume unwind label %terminate.i.i19

terminate.i.i19:                                  ; preds = %cleanup.i.i18
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

common.resume:                                    ; preds = %cleanup1.body, %cleanup.i.i30, %cleanup.i.i18
  %common.resume.op = phi { ptr, i32 } [ %13, %cleanup.i.i18 ], [ %17, %cleanup.i.i30 ], [ %eh.lpad-body, %cleanup1.body ]
  resume { ptr, i32 } %common.resume.op

bb30:                                             ; preds = %bb27, %bb29
  %_0.sroa.0.0 = phi i32 [ 1, %bb29 ], [ 0, %bb27 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str1)
  ret i32 %_0.sroa.0.0

bb28:                                             ; preds = %bb22, %start
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str2)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h40d7f5242b23552fE.exit.i26" unwind label %cleanup.i.i23

cleanup.i.i23:                                    ; preds = %bb28
  %15 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str2)
          to label %cleanup1.body unwind label %terminate.i.i24

terminate.i.i24:                                  ; preds = %cleanup.i.i23
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h40d7f5242b23552fE.exit.i26": ; preds = %bb28
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str2)
          to label %bb29 unwind label %cleanup1

bb29:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h40d7f5242b23552fE.exit.i26"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str1)
          to label %bb30 unwind label %cleanup.i.i30

cleanup.i.i30:                                    ; preds = %bb29
  %17 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str1)
          to label %common.resume unwind label %terminate.i.i31

terminate.i.i31:                                  ; preds = %cleanup.i.i30
  %18 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable

terminate:                                        ; preds = %cleanup1.body
  %19 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #25
  unreachable
}
