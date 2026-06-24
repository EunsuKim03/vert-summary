define noundef range(i32 0, 2) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %str, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %corner) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i.i39 = alloca [24 x i8], align 8
  %_4.i.i.i.i = alloca [24 x i8], align 8
  %_21 = alloca [24 x i8], align 8
  %_13 = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %str, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %1 = getelementptr inbounds nuw i8, ptr %corner, i64 16
  %_0.i7 = load i64, ptr %1, align 8, !alias.scope !1633, !noundef !37
  %_2.i8 = icmp sgt i64 %_0.i7, -1
  tail call void @llvm.assume(i1 %_2.i8)
  %_7 = icmp samesign ult i64 %_0.i, %_0.i7
  br i1 %_7, label %bb19, label %bb4

cleanup:                                          ; preds = %bb3.i.i27.invoke, %bb3.i.i.i.i46.invoke, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i65", %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E.exit38", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i16", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i", %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E.exit"
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body

cleanup.body:                                     ; preds = %cleanup.i.i62, %cleanup.i.i13, %cleanup.i.i, %cleanup
  %eh.lpad-body = phi { ptr, i32 } [ %2, %cleanup ], [ %14, %cleanup.i.i ], [ %16, %cleanup.i.i13 ], [ %37, %cleanup.i.i62 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr noalias noundef align 8 dereferenceable(24) %corner) #28
          to label %bb25 unwind label %terminate

bb4:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %3 = getelementptr inbounds nuw i8, ptr %str, i64 8
  %_8.i = load ptr, ptr %3, align 8, !alias.scope !1636, !noalias !1639, !nonnull !37, !noundef !37
  %_18.i.i.i = icmp eq i64 %_0.i7, 0
  br i1 %_18.i.i.i, label %bb22.i.i.i, label %bb15.i.i.i

bb15.i.i.i:                                       ; preds = %bb4
  %_19.not.i.i.i = icmp samesign ult i64 %_0.i7, %_0.i
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %4 = icmp eq i64 %_0.i7, %_0.i
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %5 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_0.i7
  %self2.i.i.i = load i8, ptr %5, align 1, !alias.scope !1641, !noalias !1646, !noundef !37
  %6 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %4, %bb16.i.i.i ], [ %6, %bb18.i.i.i ]
  br i1 %_7.sroa.0.0.in.i.i.i, label %bb22.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb22.i.i.i:                                       ; preds = %bb19.i.i.i, %bb4
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb22.i.i.i, %bb19.i.i.i
  %_0.sroa.0.0.i.i.i = phi ptr [ %_8.i, %bb22.i.i.i ], [ null, %bb19.i.i.i ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i27.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E.exit", !prof !1033

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !1654
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %_0.i7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc9 unwind label %cleanup

.noexc9:                                          ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E.exit"
  %_5.i.i.i.i = load i64, ptr %_4.i.i.i.i, align 8, !range !1031, !noalias !1654, !noundef !37
  %7 = trunc nuw i64 %_5.i.i.i.i to i1
  %8 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %err.0.i.i.i.i = load i64, ptr %8, align 8, !range !1032, !noalias !1654, !noundef !37
  %9 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  br i1 %7, label %bb3.i.i.i.i, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E.exit", !prof !1033

bb3.i.i.i.i:                                      ; preds = %.noexc9
  %err.1.i.i.i.i = load i64, ptr %9, align 8, !noalias !1654
  br label %bb3.i.i.i.i46.invoke

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E.exit": ; preds = %.noexc9
  %this.1.i.i.i.i = load ptr, ptr %9, align 8, !noalias !1654, !nonnull !37, !noundef !37
  %_7.i.i.i.i = icmp samesign ule i64 %_0.i7, %err.0.i.i.i.i
  tail call void @llvm.assume(i1 %_7.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !1654
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %this.1.i.i.i.i, ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i, i64 range(i64 0, -9223372036854775808) %_0.i7, i1 false), !noalias !1660
  store i64 %err.0.i.i.i.i, ptr %_13, align 8, !alias.scope !1661, !noalias !1662
  %bytes.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_13, i64 8
  store ptr %this.1.i.i.i.i, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !1661, !noalias !1662
  %bytes.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_13, i64 16
  store i64 %_0.i7, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !1661, !noalias !1662
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  %10 = getelementptr inbounds nuw i8, ptr %corner, i64 8
  %_14.i.i = load ptr, ptr %10, align 8, !alias.scope !1669, !noalias !1670, !nonnull !37, !noundef !37
  %11 = load i64, ptr %1, align 8, !alias.scope !1669, !noalias !1670, !noundef !37
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %_0.i7, i64 range(i64 0, -9223372036854775808) %11)
  %12 = tail call i32 @memcmp(ptr nonnull readonly align 1 %this.1.i.i.i.i, ptr nonnull readonly align 1 %_14.i.i, i64 %spec.store.select.i.i.i), !alias.scope !1673, !noalias !1677
  %13 = sext i32 %12 to i64
  %_15.i.i.i = icmp eq i32 %12, 0
  %diff.i.i.i = sub nsw i64 %_0.i7, %11
  %spec.select.i.i.i = select i1 %_15.i.i.i, i64 %diff.i.i.i, i64 %13
  %_0.i11 = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %_0.i11, label %bb9, label %bb11

bb11:                                             ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E.exit"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_13)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb11
  %14 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_13)
          to label %cleanup.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i": ; preds = %bb11
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_13)
          to label %bb12 unwind label %cleanup

bb9:                                              ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E.exit"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_13)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i16" unwind label %cleanup.i.i13

cleanup.i.i13:                                    ; preds = %bb9
  %16 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_13)
          to label %cleanup.body unwind label %terminate.i.i14

terminate.i.i14:                                  ; preds = %cleanup.i.i13
  %17 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i16": ; preds = %bb9
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_13)
          to label %bb10 unwind label %cleanup

bb12:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_13)
  br label %bb19

bb10:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i16"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_13)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_21)
  %_25 = sub nsw i64 %_0.i, %_0.i7
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %_8.i21 = load ptr, ptr %3, align 8, !alias.scope !1678, !noalias !1681, !nonnull !37, !noundef !37
  %len.i22 = load i64, ptr %0, align 8, !alias.scope !1678, !noalias !1681, !noundef !37
  %_3.not.i.i.i = icmp samesign ugt i64 %_0.i7, %_0.i
  br i1 %_3.not.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23", label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %bb10
  %_11.i.i.i = icmp eq i64 %_0.i, %_0.i7
  br i1 %_11.i.i.i, label %bb2.i.i.i, label %bb9.i.i.i

bb9.i.i.i:                                        ; preds = %bb1.i.i.i
  %_12.not.i.i.i = icmp ult i64 %_25, %len.i22
  br i1 %_12.not.i.i.i, label %bb12.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i
  %18 = icmp eq i64 %_25, %len.i22
  br label %bb13.i.i.i

bb12.i.i.i:                                       ; preds = %bb9.i.i.i
  %19 = getelementptr inbounds nuw i8, ptr %_8.i21, i64 %_25
  %self.i.i.i = load i8, ptr %19, align 1, !alias.scope !1683, !noalias !1688, !noundef !37
  %20 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %18, %bb10.i.i.i ], [ %20, %bb12.i.i.i ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb2.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"

bb2.i.i.i:                                        ; preds = %bb13.i.i.i, %bb1.i.i.i
  %_18.i.i.i28 = icmp eq i64 %_0.i, 0
  br i1 %_18.i.i.i28, label %bb22.i.i.i34, label %bb15.i.i.i29

bb15.i.i.i29:                                     ; preds = %bb2.i.i.i
  %_19.not.i.i.i30 = icmp ult i64 %_0.i, %len.i22
  br i1 %_19.not.i.i.i30, label %bb18.i.i.i35, label %bb16.i.i.i31

bb16.i.i.i31:                                     ; preds = %bb15.i.i.i29
  %21 = icmp eq i64 %_0.i, %len.i22
  br label %bb19.i.i.i32

bb18.i.i.i35:                                     ; preds = %bb15.i.i.i29
  %22 = getelementptr inbounds nuw i8, ptr %_8.i21, i64 %_0.i
  %self2.i.i.i36 = load i8, ptr %22, align 1, !alias.scope !1683, !noalias !1688, !noundef !37
  %23 = icmp sgt i8 %self2.i.i.i36, -65
  br label %bb19.i.i.i32

bb19.i.i.i32:                                     ; preds = %bb18.i.i.i35, %bb16.i.i.i31
  %_7.sroa.0.0.in.i.i.i33 = phi i1 [ %21, %bb16.i.i.i31 ], [ %23, %bb18.i.i.i35 ]
  br i1 %_7.sroa.0.0.in.i.i.i33, label %bb22.i.i.i34, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"

bb22.i.i.i34:                                     ; preds = %bb19.i.i.i32, %bb2.i.i.i
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i21, i64 %_25
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23": ; preds = %bb22.i.i.i34, %bb19.i.i.i32, %bb13.i.i.i, %bb10
  %_0.sroa.0.0.i.i.i25 = phi ptr [ %data.i.i.i, %bb22.i.i.i34 ], [ null, %bb19.i.i.i32 ], [ null, %bb13.i.i.i ], [ null, %bb10 ]
  %.not.i.i26 = icmp eq ptr %_0.sroa.0.0.i.i.i25, null
  br i1 %.not.i.i26, label %bb3.i.i27.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E.exit38", !prof !1033

bb3.i.i27.invoke:                                 ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23", %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  %24 = phi ptr [ %_8.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %_8.i21, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ]
  %25 = phi i64 [ %_0.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %len.i22, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ]
  %26 = phi i64 [ 0, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %_25, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ]
  %27 = phi i64 [ %_0.i7, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ %_0.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ]
  %28 = phi ptr [ @alloc_464163c4931dffbbf2f64995a909f071, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ], [ @alloc_62a8386542c978de5e962f01dc49365f, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %24, i64 noundef %25, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %26, i64 noundef range(i64 0, -9223372036854775808) %27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %28) #25
          to label %bb3.i.i27.cont unwind label %cleanup

bb3.i.i27.cont:                                   ; preds = %bb3.i.i27.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E.exit38": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i23"
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i39), !noalias !1696
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i39, i64 noundef range(i64 0, -9223372036854775808) %_0.i7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc49 unwind label %cleanup

.noexc49:                                         ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17hecb84f8d064ad897E.exit38"
  %_5.i.i.i.i40 = load i64, ptr %_4.i.i.i.i39, align 8, !range !1031, !noalias !1696, !noundef !37
  %29 = trunc nuw i64 %_5.i.i.i.i40 to i1
  %30 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i39, i64 8
  %err.0.i.i.i.i47 = load i64, ptr %30, align 8, !range !1032, !noalias !1696, !noundef !37
  %31 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i39, i64 16
  br i1 %29, label %bb3.i.i.i.i46, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E.exit51", !prof !1033

bb3.i.i.i.i46:                                    ; preds = %.noexc49
  %err.1.i.i.i.i48 = load i64, ptr %31, align 8, !noalias !1696
  br label %bb3.i.i.i.i46.invoke

bb3.i.i.i.i46.invoke:                             ; preds = %bb3.i.i.i.i, %bb3.i.i.i.i46
  %32 = phi i64 [ %err.0.i.i.i.i47, %bb3.i.i.i.i46 ], [ %err.0.i.i.i.i, %bb3.i.i.i.i ]
  %33 = phi i64 [ %err.1.i.i.i.i48, %bb3.i.i.i.i46 ], [ %err.1.i.i.i.i, %bb3.i.i.i.i ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %32, i64 %33) #26
          to label %bb3.i.i.i.i46.cont unwind label %cleanup

bb3.i.i.i.i46.cont:                               ; preds = %bb3.i.i.i.i46.invoke
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E.exit51": ; preds = %.noexc49
  %this.1.i.i.i.i42 = load ptr, ptr %31, align 8, !noalias !1696, !nonnull !37, !noundef !37
  %_7.i.i.i.i43 = icmp samesign ule i64 %_0.i7, %err.0.i.i.i.i47
  call void @llvm.assume(i1 %_7.i.i.i.i43)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i39), !noalias !1696
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %this.1.i.i.i.i42, ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i25, i64 range(i64 0, -9223372036854775808) %_0.i7, i1 false), !noalias !1702
  store i64 %err.0.i.i.i.i47, ptr %_21, align 8, !alias.scope !1703, !noalias !1704
  %bytes.sroa.4.0._0.sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %_21, i64 8
  store ptr %this.1.i.i.i.i42, ptr %bytes.sroa.4.0._0.sroa_idx.i.i44, align 8, !alias.scope !1703, !noalias !1704
  %bytes.sroa.5.0._0.sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %_21, i64 16
  store i64 %_0.i7, ptr %bytes.sroa.5.0._0.sroa_idx.i.i45, align 8, !alias.scope !1703, !noalias !1704
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  %_14.i.i54 = load ptr, ptr %10, align 8, !alias.scope !1711, !noalias !1712, !nonnull !37, !noundef !37
  %34 = load i64, ptr %1, align 8, !alias.scope !1711, !noalias !1712, !noundef !37
  %spec.store.select.i.i.i55 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %_0.i7, i64 range(i64 0, -9223372036854775808) %34)
  %35 = call i32 @memcmp(ptr nonnull readonly align 1 %this.1.i.i.i.i42, ptr nonnull readonly align 1 %_14.i.i54, i64 %spec.store.select.i.i.i55), !alias.scope !1715, !noalias !1719
  %36 = sext i32 %35 to i64
  %_15.i.i.i56 = icmp eq i32 %35, 0
  %diff.i.i.i57 = sub nsw i64 %_0.i7, %34
  %spec.select.i.i.i58 = select i1 %_15.i.i.i56, i64 %diff.i.i.i57, i64 %36
  %_0.i61 = icmp eq i64 %spec.select.i.i.i58, 0
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_21)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i65" unwind label %cleanup.i.i62

cleanup.i.i62:                                    ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E.exit51"
  %37 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_21)
          to label %cleanup.body unwind label %terminate.i.i63

terminate.i.i63:                                  ; preds = %cleanup.i.i62
  %38 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i65": ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17hcadbb8152c5544f2E.exit51"
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_21)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i65"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_21)
  %39 = zext i1 %_0.i61 to i32
  br label %bb19

bb19:                                             ; preds = %bb12, %bb17, %start
  %_0.sroa.0.0 = phi i32 [ 0, %start ], [ %39, %bb17 ], [ 0, %bb12 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %corner)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i73" unwind label %cleanup.i.i70

cleanup.i.i70:                                    ; preds = %bb19
  %40 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %corner)
          to label %bb25 unwind label %terminate.i.i71

terminate.i.i71:                                  ; preds = %cleanup.i.i70
  %41 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i73": ; preds = %bb19
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %corner)
          to label %bb20 unwind label %cleanup3

terminate:                                        ; preds = %bb25, %cleanup.body
  %42 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

bb25:                                             ; preds = %cleanup3, %cleanup.i.i70, %cleanup.body
  %.pn5 = phi { ptr, i32 } [ %eh.lpad-body, %cleanup.body ], [ %43, %cleanup3 ], [ %40, %cleanup.i.i70 ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE"(ptr noalias noundef align 8 dereferenceable(24) %str) #28
          to label %common.resume unwind label %terminate

cleanup3:                                         ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i73"
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %bb25

bb20:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h60aeabd2be99d8e3E.exit.i73"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE.exit81" unwind label %cleanup.i.i77

cleanup.i.i77:                                    ; preds = %bb20
  %44 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
          to label %common.resume unwind label %terminate.i.i78

terminate.i.i78:                                  ; preds = %cleanup.i.i77
  %45 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

common.resume:                                    ; preds = %bb25, %cleanup.i.i77
  %common.resume.op = phi { ptr, i32 } [ %44, %cleanup.i.i77 ], [ %.pn5, %bb25 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he9cd0f6758d2587aE.exit81": ; preds = %bb20
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %str)
  ret i32 %_0.sroa.0.0
}
