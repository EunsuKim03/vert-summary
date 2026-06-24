define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i.i = alloca [24 x i8], align 8
  %_3 = alloca [24 x i8], align 8
  %tmp = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_7.i.i = load ptr, ptr %0, align 8, !alias.scope !1640, !noalias !1641, !nonnull !37, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %len.i.i = load i64, ptr %1, align 8, !alias.scope !1640, !noalias !1641, !noundef !37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !1642
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %len.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %start
  %_5.i.i.i.i = load i64, ptr %_4.i.i.i.i, align 8, !range !1031, !noalias !1642, !noundef !37
  %2 = trunc nuw i64 %_5.i.i.i.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %err.0.i.i.i.i = load i64, ptr %3, align 8, !range !1032, !noalias !1642, !noundef !37
  %4 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  br i1 %2, label %bb3.i.i.i.i, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h9dd87a98932031c0E.exit", !prof !1033

bb3.i.i.i.i:                                      ; preds = %.noexc
  %err.1.i.i.i.i = load i64, ptr %4, align 8, !noalias !1642
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i.i, i64 %err.1.i.i.i.i) #26
          to label %.noexc5 unwind label %cleanup

.noexc5:                                          ; preds = %bb3.i.i.i.i
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h9dd87a98932031c0E.exit": ; preds = %.noexc
  %this.1.i.i.i.i = load ptr, ptr %4, align 8, !noalias !1642, !nonnull !37, !noundef !37
  %_7.i.i.i.i = icmp samesign ule i64 %len.i.i, %err.0.i.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !1642
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %this.1.i.i.i.i, ptr nonnull readonly align 1 %_7.i.i, i64 range(i64 0, -9223372036854775808) %len.i.i, i1 false), !noalias !1646
  store i64 %err.0.i.i.i.i, ptr %_3, align 8, !alias.scope !1641, !noalias !1640
  %bytes.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_3, i64 8
  store ptr %this.1.i.i.i.i, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1641, !noalias !1640
  %bytes.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_3, i64 16
  store i64 %len.i.i, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1641, !noalias !1640
  %_6.i.i = load ptr, ptr %0, align 8, !alias.scope !1647, !nonnull !37, !noundef !37
  %len.i.i6 = load i64, ptr %1, align 8, !alias.scope !1647, !noundef !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  %_11.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i6
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_3, ptr noundef nonnull readonly align 1 %_6.i.i, ptr noundef nonnull readonly %_11.i)
          to label %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit" unwind label %cleanup.i, !noalias !1652

bb21:                                             ; preds = %cleanup.i.i18, %cleanup.i.i, %cleanup.i, %cleanup, %cleanup2
  %.pn = phi { ptr, i32 } [ %10, %cleanup2 ], [ %5, %cleanup ], [ %6, %cleanup.i ], [ %12, %cleanup.i.i ], [ %23, %cleanup.i.i18 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr noalias noundef align 8 dereferenceable(24) %str) #28
          to label %common.resume unwind label %terminate

cleanup:                                          ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd8453e7714dcb3e8E.exit.i21", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd8453e7714dcb3e8E.exit.i", %bb3.i.i.i.i, %start
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb21

cleanup.i:                                        ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h9dd87a98932031c0E.exit"
  %6 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_3) #28
          to label %bb21 unwind label %terminate.i, !noalias !1652

terminate.i:                                      ; preds = %cleanup.i
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24, !noalias !1652
  unreachable

"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit": ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h9dd87a98932031c0E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %tmp, ptr noundef nonnull align 8 dereferenceable(24) %_3, i64 24, i1 false), !alias.scope !1655, !noalias !1657
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_3)
  %_0.i = load i64, ptr %1, align 8, !alias.scope !1659, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  call void @llvm.assume(i1 %_2.i)
  %8 = getelementptr inbounds nuw i8, ptr %tmp, i64 8
  %_8.i = load ptr, ptr %8, align 8, !nonnull !37
  %9 = getelementptr inbounds nuw i8, ptr %tmp, i64 16
  %len.i = load i64, ptr %9, align 8
  %_9.i = load ptr, ptr %0, align 8, !nonnull !37
  br label %bb7

cleanup2:                                         ; preds = %bb3.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h45d405a18f37b563E"(ptr noalias noundef align 8 dereferenceable(24) %tmp) #28
          to label %bb21 unwind label %terminate

bb7:                                              ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7697e78b495eea63E.exit", %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit"
  %iter.sroa.0.0 = phi i64 [ 1, %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit" ], [ %iter.sroa.0.1, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7697e78b495eea63E.exit" ]
  %iter.sroa.8.0 = phi i8 [ 0, %"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17hee04dcb44bb2d172E.exit" ], [ %iter.sroa.8.1, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7697e78b495eea63E.exit" ]
  %_10.i.i = trunc nuw i8 %iter.sroa.8.0 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.0, %_0.i
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.0, %_0.i
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.0, %spec.select
  %11 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.8.1 = select i1 %11, i8 %iter.sroa.8.0, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.0
  br i1 %or.cond, label %bb11, label %bb10

bb10:                                             ; preds = %bb7
  %_20 = add i64 %_0.sroa.3.0.i.i, %_0.i
  %_3.not.i.i.i = icmp ugt i64 %_0.sroa.3.0.i.i, %_20
  br i1 %_3.not.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", label %bb9.i.i.i

bb11:                                             ; preds = %bb7
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tmp)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd8453e7714dcb3e8E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb11
  %12 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tmp)
          to label %bb21 unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd8453e7714dcb3e8E.exit.i": ; preds = %bb11
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tmp)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd8453e7714dcb3e8E.exit.i"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb19 unwind label %cleanup.i.i11

cleanup.i.i11:                                    ; preds = %bb17
  %14 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i12

terminate.i.i12:                                  ; preds = %cleanup.i.i11
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

common.resume:                                    ; preds = %bb21, %cleanup.i.i26, %cleanup.i.i11
  %common.resume.op = phi { ptr, i32 } [ %14, %cleanup.i.i11 ], [ %25, %cleanup.i.i26 ], [ %.pn, %bb21 ]
  resume { ptr, i32 } %common.resume.op

bb19:                                             ; preds = %bb17, %bb18
  %_0.sroa.0.0.in = phi i64 [ %_0.sroa.3.0.i.i, %bb18 ], [ %_0.i, %bb17 ]
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  %_0.sroa.0.0 = trunc i64 %_0.sroa.0.0.in to i32
  ret i32 %_0.sroa.0.0

bb9.i.i.i:                                        ; preds = %bb10
  %_12.not.i.i.i = icmp ult i64 %_0.sroa.3.0.i.i, %len.i
  br i1 %_12.not.i.i.i, label %bb12.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i
  %16 = icmp eq i64 %_0.sroa.3.0.i.i, %len.i
  br label %bb13.i.i.i

bb12.i.i.i:                                       ; preds = %bb9.i.i.i
  %17 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_0.sroa.3.0.i.i
  %self.i.i.i = load i8, ptr %17, align 1, !alias.scope !1662, !noalias !1667, !noundef !37
  %18 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %16, %bb10.i.i.i ], [ %18, %bb12.i.i.i ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb2.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb2.i.i.i:                                        ; preds = %bb13.i.i.i
  %_18.i.i.i = icmp eq i64 %_20, 0
  br i1 %_18.i.i.i, label %bb22.i.i.i, label %bb15.i.i.i

bb15.i.i.i:                                       ; preds = %bb2.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_20, %len.i
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %19 = icmp eq i64 %_20, %len.i
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %20 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_20
  %self2.i.i.i = load i8, ptr %20, align 1, !alias.scope !1662, !noalias !1667, !noundef !37
  %21 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %19, %bb16.i.i.i ], [ %21, %bb18.i.i.i ]
  br i1 %_7.sroa.0.0.in.i.i.i, label %bb22.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb22.i.i.i:                                       ; preds = %bb19.i.i.i, %bb2.i.i.i
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_0.sroa.3.0.i.i
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb22.i.i.i, %bb19.i.i.i, %bb13.i.i.i, %bb10
  %_0.sroa.0.0.i.i.i = phi ptr [ %data.i.i.i, %bb22.i.i.i ], [ null, %bb19.i.i.i ], [ null, %bb13.i.i.i ], [ null, %bb10 ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7697e78b495eea63E.exit", !prof !1033

bb3.i.i:                                          ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i, i64 noundef %len.i, i64 noundef %_0.sroa.3.0.i.i, i64 noundef %_20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_224f273bde1b2028970a21d24455ab16) #25
          to label %.noexc16 unwind label %cleanup2

.noexc16:                                         ; preds = %bb3.i.i
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7697e78b495eea63E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %bcmp.i = call i32 @bcmp(ptr nonnull %_9.i, ptr nonnull %_0.sroa.0.0.i.i.i, i64 %_0.i), !noalias !1670
  %22 = icmp eq i32 %bcmp.i, 0
  br i1 %22, label %bb15, label %bb7

bb15:                                             ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h7697e78b495eea63E.exit"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tmp)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd8453e7714dcb3e8E.exit.i21" unwind label %cleanup.i.i18

cleanup.i.i18:                                    ; preds = %bb15
  %23 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tmp)
          to label %bb21 unwind label %terminate.i.i19

terminate.i.i19:                                  ; preds = %cleanup.i.i18
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd8453e7714dcb3e8E.exit.i21": ; preds = %bb15
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %tmp)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hd8453e7714dcb3e8E.exit.i21"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %bb19 unwind label %cleanup.i.i26

cleanup.i.i26:                                    ; preds = %bb18
  %25 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i27

terminate.i.i27:                                  ; preds = %cleanup.i.i26
  %26 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

terminate:                                        ; preds = %bb21, %cleanup2
  %27 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable
}
