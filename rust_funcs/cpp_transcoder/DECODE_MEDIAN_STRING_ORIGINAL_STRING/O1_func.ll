define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_56 = alloca [16 x i8], align 8
  %_47 = alloca [16 x i8], align 8
  %_39 = alloca [16 x i8], align 8
  %_28 = alloca [16 x i8], align 8
  %_20 = alloca [16 x i8], align 8
  %s1 = alloca [24 x i8], align 8
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1661, !noundef !15
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %s1)
  store i64 0, ptr %s1, align 8, !alias.scope !1664
  %_1.sroa.4.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %s1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1664
  %_1.sroa.5.0._0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %s1, i64 16
  store i64 0, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1664
  %_6 = and i64 %_0.i, 1
  %is_even = icmp eq i64 %_6, 0
  %_6.not.i.i.not206 = icmp eq i64 %_0.i, 0
  br i1 %_6.not.i.i.not206, label %bb9, label %bb8.lr.ph

bb8.lr.ph:                                        ; preds = %start
  %d9.i.i.i = lshr i64 %_0.i, 1
  %1 = xor i64 %d9.i.i.i, -1
  %2 = add nsw i64 %_0.i, %1
  %3 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_56, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %_39, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %_47, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %_20, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %_28, i64 8
  br label %bb8

cleanup.i.i:                                      ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E.exit28"
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca68bf124fe6240dE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E.exit28"
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate

cleanup1.loopexit:                                ; preds = %bb2.i39, %bb2.i53, %bb12.i, %bb2.i127, %bb2.i172
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp:                       ; preds = %bb2.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp, %cleanup1.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca68bf124fe6240dE.exit.i24" unwind label %cleanup.i.i21

cleanup.i.i21:                                    ; preds = %cleanup1
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1)
          to label %terminate.body unwind label %terminate.i.i22

terminate.i.i22:                                  ; preds = %cleanup.i.i21
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca68bf124fe6240dE.exit.i24": ; preds = %cleanup1
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E.exit28" unwind label %terminate

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E.exit28": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca68bf124fe6240dE.exit.i24"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca68bf124fe6240dE.exit.i" unwind label %cleanup.i.i

bb8:                                              ; preds = %bb8.lr.ph, %bb40
  %_0.sroa.3.0.i.i211 = phi i64 [ 0, %bb8.lr.ph ], [ %_0.sroa.3.0.i.i, %bb40 ]
  %iter.sroa.5.1210 = phi i64 [ %2, %bb8.lr.ph ], [ %iter.sroa.5.1, %bb40 ]
  %iter.sroa.0.1209 = phi i64 [ 2, %bb8.lr.ph ], [ %iter.sroa.0.1, %bb40 ]
  br i1 %is_even, label %bb10, label %bb21

bb9:                                              ; preds = %bb40, %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %s1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %s1)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E.exit34" unwind label %cleanup.i.i30

cleanup.i.i30:                                    ; preds = %bb9
  %15 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i31

terminate.i.i31:                                  ; preds = %cleanup.i.i30
  %16 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca68bf124fe6240dE.exit.i", %cleanup.i.i30
  %common.resume.op = phi { ptr, i32 } [ %15, %cleanup.i.i30 ], [ %lpad.phi, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca68bf124fe6240dE.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h0b30c459e27b6674E.exit34": ; preds = %bb9
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  ret void

bb21:                                             ; preds = %bb8
  %_33 = sub i64 %_0.i, %_0.sroa.3.0.i.i211
  %_32 = icmp ugt i64 %_33, 1
  br i1 %_32, label %bb22, label %bb33

bb10:                                             ; preds = %bb8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_20)
  %_6.i.i = load ptr, ptr %8, align 8, !alias.scope !1667, !nonnull !15, !noundef !15
  %len.i.i = load i64, ptr %0, align 8, !alias.scope !1667, !noundef !15
  %_7.i118 = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_20, align 8
  store ptr %_7.i118, ptr %9, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_18 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr noalias noundef align 8 dereferenceable(16) %_20, i64 noundef %_0.sroa.3.0.i.i211)
  %.not.i4 = icmp eq i32 %_18, 1114112
  br i1 %.not.i4, label %bb2.i.invoke, label %bb14, !prof !1064

bb33:                                             ; preds = %bb21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_56)
  %_6.i.i35 = load ptr, ptr %3, align 8, !alias.scope !1672, !nonnull !15, !noundef !15
  %len.i.i36 = load i64, ptr %0, align 8, !alias.scope !1672, !noundef !15
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i35, i64 %len.i.i36
  store ptr %_6.i.i35, ptr %_56, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_54 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr noalias noundef align 8 dereferenceable(16) %_56, i64 noundef %_0.sroa.3.0.i.i211)
  %.not.i16 = icmp eq i32 %_54, 1114112
  br i1 %.not.i16, label %bb2.i.invoke, label %bb37, !prof !1064

bb22:                                             ; preds = %bb21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_39)
  %_6.i.i37 = load ptr, ptr %5, align 8, !alias.scope !1677, !nonnull !15, !noundef !15
  %len.i.i38 = load i64, ptr %0, align 8, !alias.scope !1677, !noundef !15
  %_7.i44 = getelementptr inbounds nuw i8, ptr %_6.i.i37, i64 %len.i.i38
  store ptr %_6.i.i37, ptr %_39, align 8
  store ptr %_7.i44, ptr %6, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_37 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr noalias noundef align 8 dereferenceable(16) %_39, i64 noundef %_0.sroa.3.0.i.i211)
  %.not.i12 = icmp eq i32 %_37, 1114112
  br i1 %.not.i12, label %bb2.i.invoke, label %bb26, !prof !1064

bb37:                                             ; preds = %bb33
  %len.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1682, !noundef !15
  %_14.i = icmp sgt i64 %len.i, -1
  call void @llvm.assume(i1 %_14.i)
  %_16.i = icmp samesign ult i32 %_54, 128
  br i1 %_16.i, label %bb2.i39, label %bb3.i

bb3.i:                                            ; preds = %bb37
  %_17.i = icmp samesign ult i32 %_54, 2048
  br i1 %_17.i, label %bb2.i39, label %bb4.i

bb4.i:                                            ; preds = %bb3.i
  %_18.i = icmp samesign ult i32 %_54, 65536
  %..i = select i1 %_18.i, i64 3, i64 4
  br label %bb2.i39

bb2.i39:                                          ; preds = %bb4.i, %bb3.i, %bb37
  %ch_len.sroa.0.0.i = phi i64 [ 1, %bb37 ], [ %..i, %bb4.i ], [ 2, %bb3.i ]
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %ch_len.sroa.0.0.i)
          to label %.noexc43 unwind label %cleanup1.loopexit

.noexc43:                                         ; preds = %bb2.i39
  %_20.i = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1682, !nonnull !15, !noundef !15
  %count.i = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1682, !noundef !15
  %_21.i = icmp sgt i64 %count.i, -1
  call void @llvm.assume(i1 %_21.i)
  %_8.i = getelementptr inbounds nuw i8, ptr %_20.i, i64 %count.i
  br i1 %_16.i, label %bb12.i.i, label %bb7.i.i

bb7.i.i:                                          ; preds = %.noexc43
  %_29.i.i = icmp samesign ult i32 %_54, 2048
  %17 = trunc i32 %_54 to i8
  %_5.i.i = and i8 %17, 63
  %last1.i.i = or disjoint i8 %_5.i.i, -128
  %_10.i.i40 = lshr i32 %_54, 6
  %18 = trunc i32 %_10.i.i40 to i8
  %_8.i.i41 = and i8 %18, 63
  %last2.i.i = or disjoint i8 %_8.i.i41, -128
  %_14.i.i = lshr i32 %_54, 12
  %19 = trunc i32 %_14.i.i to i8
  %_12.i.i = and i8 %19, 63
  %last3.i.i = or disjoint i8 %_12.i.i, -128
  %_18.i.i = lshr i32 %_54, 18
  %_16.i.i = trunc nuw nsw i32 %_18.i.i to i8
  %last4.i.i = or disjoint i8 %_16.i.i, -16
  br i1 %_29.i.i, label %bb1.i.i42, label %bb2.i.i

bb12.i.i:                                         ; preds = %.noexc43
  %20 = trunc nuw nsw i32 %_54 to i8
  store i8 %20, ptr %_8.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb2.i.i:                                          ; preds = %bb7.i.i
  %_30.i.i = icmp samesign ult i32 %_54, 65536
  br i1 %_30.i.i, label %bb3.i.i, label %bb4.i.i

bb1.i.i42:                                        ; preds = %bb7.i.i
  %21 = or disjoint i8 %18, -64
  store i8 %21, ptr %_8.i, align 1
  %_21.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last1.i.i, ptr %_21.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb4.i.i:                                          ; preds = %bb2.i.i
  store i8 %last4.i.i, ptr %_8.i, align 1
  %_25.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last3.i.i, ptr %_25.i.i, align 1
  %_26.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last2.i.i, ptr %_26.i.i, align 1
  %_27.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 3
  store i8 %last1.i.i, ptr %_27.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

bb3.i.i:                                          ; preds = %bb2.i.i
  %22 = or disjoint i8 %19, -32
  store i8 %22, ptr %_8.i, align 1
  %_23.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 1
  store i8 %last2.i.i, ptr %_23.i.i, align 1
  %_24.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 2
  store i8 %last1.i.i, ptr %_24.i.i, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit: ; preds = %bb12.i.i, %bb1.i.i42, %bb4.i.i, %bb3.i.i
  %new_len.i = add nuw i64 %ch_len.sroa.0.0.i, %len.i
  store i64 %new_len.i, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1682
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_56)
  br label %bb40

bb26:                                             ; preds = %bb22
  %len.i45 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1685, !noundef !15
  %_14.i46 = icmp sgt i64 %len.i45, -1
  call void @llvm.assume(i1 %_14.i46)
  %_16.i47 = icmp samesign ult i32 %_37, 128
  br i1 %_16.i47, label %bb2.i53, label %bb3.i48

bb3.i48:                                          ; preds = %bb26
  %_17.i49 = icmp samesign ult i32 %_37, 2048
  br i1 %_17.i49, label %bb2.i53, label %bb4.i50

bb4.i50:                                          ; preds = %bb3.i48
  %_18.i51 = icmp samesign ult i32 %_37, 65536
  %..i52 = select i1 %_18.i51, i64 3, i64 4
  br label %bb2.i53

bb2.i53:                                          ; preds = %bb4.i50, %bb3.i48, %bb26
  %ch_len.sroa.0.0.i54 = phi i64 [ 1, %bb26 ], [ %..i52, %bb4.i50 ], [ 2, %bb3.i48 ]
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %ch_len.sroa.0.0.i54)
          to label %.noexc85 unwind label %cleanup1.loopexit

.noexc85:                                         ; preds = %bb2.i53
  %_20.i55 = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1685, !nonnull !15, !noundef !15
  %count.i56 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1685, !noundef !15
  %_21.i57 = icmp sgt i64 %count.i56, -1
  call void @llvm.assume(i1 %_21.i57)
  %_8.i58 = getelementptr inbounds nuw i8, ptr %_20.i55, i64 %count.i56
  br i1 %_16.i47, label %bb12.i.i84, label %bb7.i.i59

bb7.i.i59:                                        ; preds = %.noexc85
  %_29.i.i60 = icmp samesign ult i32 %_37, 2048
  %23 = trunc i32 %_37 to i8
  %_5.i.i61 = and i8 %23, 63
  %last1.i.i62 = or disjoint i8 %_5.i.i61, -128
  %_10.i.i63 = lshr i32 %_37, 6
  %24 = trunc i32 %_10.i.i63 to i8
  %_8.i.i64 = and i8 %24, 63
  %last2.i.i65 = or disjoint i8 %_8.i.i64, -128
  %_14.i.i66 = lshr i32 %_37, 12
  %25 = trunc i32 %_14.i.i66 to i8
  %_12.i.i67 = and i8 %25, 63
  %last3.i.i68 = or disjoint i8 %_12.i.i67, -128
  %_18.i.i69 = lshr i32 %_37, 18
  %_16.i.i70 = trunc nuw nsw i32 %_18.i.i69 to i8
  %last4.i.i71 = or disjoint i8 %_16.i.i70, -16
  br i1 %_29.i.i60, label %bb1.i.i82, label %bb2.i.i72

bb12.i.i84:                                       ; preds = %.noexc85
  %26 = trunc nuw nsw i32 %_37 to i8
  store i8 %26, ptr %_8.i58, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit86

bb2.i.i72:                                        ; preds = %bb7.i.i59
  %_30.i.i73 = icmp samesign ult i32 %_37, 65536
  br i1 %_30.i.i73, label %bb3.i.i79, label %bb4.i.i74

bb1.i.i82:                                        ; preds = %bb7.i.i59
  %27 = or disjoint i8 %24, -64
  store i8 %27, ptr %_8.i58, align 1
  %_21.i.i83 = getelementptr inbounds nuw i8, ptr %_8.i58, i64 1
  store i8 %last1.i.i62, ptr %_21.i.i83, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit86

bb4.i.i74:                                        ; preds = %bb2.i.i72
  store i8 %last4.i.i71, ptr %_8.i58, align 1
  %_25.i.i75 = getelementptr inbounds nuw i8, ptr %_8.i58, i64 1
  store i8 %last3.i.i68, ptr %_25.i.i75, align 1
  %_26.i.i76 = getelementptr inbounds nuw i8, ptr %_8.i58, i64 2
  store i8 %last2.i.i65, ptr %_26.i.i76, align 1
  %_27.i.i77 = getelementptr inbounds nuw i8, ptr %_8.i58, i64 3
  store i8 %last1.i.i62, ptr %_27.i.i77, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit86

bb3.i.i79:                                        ; preds = %bb2.i.i72
  %28 = or disjoint i8 %25, -32
  store i8 %28, ptr %_8.i58, align 1
  %_23.i.i80 = getelementptr inbounds nuw i8, ptr %_8.i58, i64 1
  store i8 %last2.i.i65, ptr %_23.i.i80, align 1
  %_24.i.i81 = getelementptr inbounds nuw i8, ptr %_8.i58, i64 2
  store i8 %last1.i.i62, ptr %_24.i.i81, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit86

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit86: ; preds = %bb12.i.i84, %bb1.i.i82, %bb4.i.i74, %bb3.i.i79
  %new_len.i78 = add nuw i64 %ch_len.sroa.0.0.i54, %len.i45
  store i64 %new_len.i78, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1685
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_39)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_47)
  %_6.i.i87 = load ptr, ptr %5, align 8, !alias.scope !1688, !nonnull !15, !noundef !15
  %len.i.i88 = load i64, ptr %0, align 8, !alias.scope !1688, !noundef !15
  %_7.i89 = getelementptr inbounds nuw i8, ptr %_6.i.i87, i64 %len.i.i88
  store ptr %_6.i.i87, ptr %_47, align 8
  store ptr %_7.i89, ptr %7, align 8
  %_50 = add i64 %_0.sroa.3.0.i.i211, 1
; call core::iter::traits::iterator::Iterator::nth
  %_45 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr noalias noundef align 8 dereferenceable(16) %_47, i64 noundef %_50)
  %.not.i8 = icmp eq i32 %_45, 1114112
  br i1 %.not.i8, label %bb2.i.invoke, label %bb31, !prof !1064

bb31:                                             ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit86
  %_44.i = icmp sgt i64 %new_len.i78, -1
  call void @llvm.assume(i1 %_44.i)
  %_46.i = icmp samesign ult i32 %_45, 128
  br i1 %_46.i, label %bb12.i, label %bb13.i

bb13.i:                                           ; preds = %bb31
  %_47.i = icmp samesign ult i32 %_45, 2048
  br i1 %_47.i, label %bb12.i, label %bb14.i

bb14.i:                                           ; preds = %bb13.i
  %_48.i = icmp samesign ult i32 %_45, 65536
  %..i90 = select i1 %_48.i, i64 3, i64 4
  br label %bb12.i

bb12.i:                                           ; preds = %bb14.i, %bb13.i, %bb31
  %ch_len.sroa.0.0.i91 = phi i64 [ 1, %bb31 ], [ %..i90, %bb14.i ], [ 2, %bb13.i ]
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %ch_len.sroa.0.0.i91)
          to label %.noexc117 unwind label %cleanup1.loopexit

.noexc117:                                        ; preds = %bb12.i
  %_50.i = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1693, !nonnull !15, !noundef !15
  %dst.i = getelementptr inbounds nuw i8, ptr %_50.i, i64 %ch_len.sroa.0.0.i91
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %dst.i, ptr noundef nonnull align 1 dereferenceable(1) %_50.i, i64 %new_len.i78, i1 false)
  %29 = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1693, !nonnull !15, !noundef !15
  br i1 %_46.i, label %bb12.i.i116, label %bb7.i.i92

bb7.i.i92:                                        ; preds = %.noexc117
  %_29.i.i93 = icmp samesign ult i32 %_45, 2048
  %30 = trunc i32 %_45 to i8
  %_5.i.i94 = and i8 %30, 63
  %last1.i.i95 = or disjoint i8 %_5.i.i94, -128
  %_10.i.i96 = lshr i32 %_45, 6
  %31 = trunc i32 %_10.i.i96 to i8
  %_8.i.i97 = and i8 %31, 63
  %last2.i.i98 = or disjoint i8 %_8.i.i97, -128
  %_14.i.i99 = lshr i32 %_45, 12
  %32 = trunc i32 %_14.i.i99 to i8
  %_12.i.i100 = and i8 %32, 63
  %last3.i.i101 = or disjoint i8 %_12.i.i100, -128
  %_18.i.i102 = lshr i32 %_45, 18
  %_16.i.i103 = trunc nuw nsw i32 %_18.i.i102 to i8
  %last4.i.i104 = or disjoint i8 %_16.i.i103, -16
  br i1 %_29.i.i93, label %bb1.i.i114, label %bb2.i.i105

bb12.i.i116:                                      ; preds = %.noexc117
  %33 = trunc nuw nsw i32 %_45 to i8
  store i8 %33, ptr %29, align 1
  br label %_ZN5alloc6string6String6insert17ha1561b15878e8eeaE.exit

bb2.i.i105:                                       ; preds = %bb7.i.i92
  %_30.i.i106 = icmp samesign ult i32 %_45, 65536
  br i1 %_30.i.i106, label %bb3.i.i111, label %bb4.i.i107

bb1.i.i114:                                       ; preds = %bb7.i.i92
  %34 = or disjoint i8 %31, -64
  store i8 %34, ptr %29, align 1
  %_21.i.i115 = getelementptr inbounds nuw i8, ptr %29, i64 1
  store i8 %last1.i.i95, ptr %_21.i.i115, align 1
  br label %_ZN5alloc6string6String6insert17ha1561b15878e8eeaE.exit

bb4.i.i107:                                       ; preds = %bb2.i.i105
  store i8 %last4.i.i104, ptr %29, align 1
  %_25.i.i108 = getelementptr inbounds nuw i8, ptr %29, i64 1
  store i8 %last3.i.i101, ptr %_25.i.i108, align 1
  %_26.i.i109 = getelementptr inbounds nuw i8, ptr %29, i64 2
  store i8 %last2.i.i98, ptr %_26.i.i109, align 1
  %_27.i.i110 = getelementptr inbounds nuw i8, ptr %29, i64 3
  store i8 %last1.i.i95, ptr %_27.i.i110, align 1
  br label %_ZN5alloc6string6String6insert17ha1561b15878e8eeaE.exit

bb3.i.i111:                                       ; preds = %bb2.i.i105
  %35 = or disjoint i8 %32, -32
  store i8 %35, ptr %29, align 1
  %_23.i.i112 = getelementptr inbounds nuw i8, ptr %29, i64 1
  store i8 %last2.i.i98, ptr %_23.i.i112, align 1
  %_24.i.i113 = getelementptr inbounds nuw i8, ptr %29, i64 2
  store i8 %last1.i.i95, ptr %_24.i.i113, align 1
  br label %_ZN5alloc6string6String6insert17ha1561b15878e8eeaE.exit

_ZN5alloc6string6String6insert17ha1561b15878e8eeaE.exit: ; preds = %bb12.i.i116, %bb1.i.i114, %bb4.i.i107, %bb3.i.i111
  %36 = add nuw i64 %ch_len.sroa.0.0.i91, %new_len.i78
  store i64 %36, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1693
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_47)
  br label %bb40

bb40:                                             ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit, %_ZN5alloc6string6String6insert17ha1561b15878e8eeaE.exit, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit205
  %_6.not.i.i.not = icmp eq i64 %iter.sroa.5.1210, 0
  %_8.i.i = add i64 %iter.sroa.0.1209, 2
  %iter.sroa.0.1 = select i1 %_6.not.i.i.not, i64 %iter.sroa.0.1209, i64 %_8.i.i
  %iter.sroa.5.1 = call i64 @llvm.usub.sat.i64(i64 %iter.sroa.5.1210, i64 1)
  %_0.sroa.3.0.i.i = select i1 %_6.not.i.i.not, i64 undef, i64 %iter.sroa.0.1209
  br i1 %_6.not.i.i.not, label %bb9, label %bb8

bb14:                                             ; preds = %bb10
  %len.i119 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1696, !noundef !15
  %_14.i120 = icmp sgt i64 %len.i119, -1
  call void @llvm.assume(i1 %_14.i120)
  %_16.i121 = icmp samesign ult i32 %_18, 128
  br i1 %_16.i121, label %bb2.i127, label %bb3.i122

bb3.i122:                                         ; preds = %bb14
  %_17.i123 = icmp samesign ult i32 %_18, 2048
  br i1 %_17.i123, label %bb2.i127, label %bb4.i124

bb4.i124:                                         ; preds = %bb3.i122
  %_18.i125 = icmp samesign ult i32 %_18, 65536
  %..i126 = select i1 %_18.i125, i64 3, i64 4
  br label %bb2.i127

bb2.i127:                                         ; preds = %bb4.i124, %bb3.i122, %bb14
  %ch_len.sroa.0.0.i128 = phi i64 [ 1, %bb14 ], [ %..i126, %bb4.i124 ], [ 2, %bb3.i122 ]
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %ch_len.sroa.0.0.i128)
          to label %.noexc159 unwind label %cleanup1.loopexit

.noexc159:                                        ; preds = %bb2.i127
  %_20.i129 = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1696, !nonnull !15, !noundef !15
  %count.i130 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1696, !noundef !15
  %_21.i131 = icmp sgt i64 %count.i130, -1
  call void @llvm.assume(i1 %_21.i131)
  %_8.i132 = getelementptr inbounds nuw i8, ptr %_20.i129, i64 %count.i130
  br i1 %_16.i121, label %bb12.i.i158, label %bb7.i.i133

bb7.i.i133:                                       ; preds = %.noexc159
  %_29.i.i134 = icmp samesign ult i32 %_18, 2048
  %37 = trunc i32 %_18 to i8
  %_5.i.i135 = and i8 %37, 63
  %last1.i.i136 = or disjoint i8 %_5.i.i135, -128
  %_10.i.i137 = lshr i32 %_18, 6
  %38 = trunc i32 %_10.i.i137 to i8
  %_8.i.i138 = and i8 %38, 63
  %last2.i.i139 = or disjoint i8 %_8.i.i138, -128
  %_14.i.i140 = lshr i32 %_18, 12
  %39 = trunc i32 %_14.i.i140 to i8
  %_12.i.i141 = and i8 %39, 63
  %last3.i.i142 = or disjoint i8 %_12.i.i141, -128
  %_18.i.i143 = lshr i32 %_18, 18
  %_16.i.i144 = trunc nuw nsw i32 %_18.i.i143 to i8
  %last4.i.i145 = or disjoint i8 %_16.i.i144, -16
  br i1 %_29.i.i134, label %bb1.i.i156, label %bb2.i.i146

bb12.i.i158:                                      ; preds = %.noexc159
  %40 = trunc nuw nsw i32 %_18 to i8
  store i8 %40, ptr %_8.i132, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit160

bb2.i.i146:                                       ; preds = %bb7.i.i133
  %_30.i.i147 = icmp samesign ult i32 %_18, 65536
  br i1 %_30.i.i147, label %bb3.i.i153, label %bb4.i.i148

bb1.i.i156:                                       ; preds = %bb7.i.i133
  %41 = or disjoint i8 %38, -64
  store i8 %41, ptr %_8.i132, align 1
  %_21.i.i157 = getelementptr inbounds nuw i8, ptr %_8.i132, i64 1
  store i8 %last1.i.i136, ptr %_21.i.i157, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit160

bb4.i.i148:                                       ; preds = %bb2.i.i146
  store i8 %last4.i.i145, ptr %_8.i132, align 1
  %_25.i.i149 = getelementptr inbounds nuw i8, ptr %_8.i132, i64 1
  store i8 %last3.i.i142, ptr %_25.i.i149, align 1
  %_26.i.i150 = getelementptr inbounds nuw i8, ptr %_8.i132, i64 2
  store i8 %last2.i.i139, ptr %_26.i.i150, align 1
  %_27.i.i151 = getelementptr inbounds nuw i8, ptr %_8.i132, i64 3
  store i8 %last1.i.i136, ptr %_27.i.i151, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit160

bb3.i.i153:                                       ; preds = %bb2.i.i146
  %42 = or disjoint i8 %39, -32
  store i8 %42, ptr %_8.i132, align 1
  %_23.i.i154 = getelementptr inbounds nuw i8, ptr %_8.i132, i64 1
  store i8 %last2.i.i139, ptr %_23.i.i154, align 1
  %_24.i.i155 = getelementptr inbounds nuw i8, ptr %_8.i132, i64 2
  store i8 %last1.i.i136, ptr %_24.i.i155, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit160

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit160: ; preds = %bb12.i.i158, %bb1.i.i156, %bb4.i.i148, %bb3.i.i153
  %new_len.i152 = add nuw i64 %ch_len.sroa.0.0.i128, %len.i119
  store i64 %new_len.i152, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1696
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_28)
  %_6.i.i161 = load ptr, ptr %8, align 8, !alias.scope !1699, !nonnull !15, !noundef !15
  %len.i.i162 = load i64, ptr %0, align 8, !alias.scope !1699, !noundef !15
  %_7.i163 = getelementptr inbounds nuw i8, ptr %_6.i.i161, i64 %len.i.i162
  store ptr %_6.i.i161, ptr %_28, align 8
  store ptr %_7.i163, ptr %10, align 8
  %_31 = add i64 %_0.sroa.3.0.i.i211, 1
; call core::iter::traits::iterator::Iterator::nth
  %_26 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17h22137f701661755dE(ptr noalias noundef align 8 dereferenceable(16) %_28, i64 noundef %_31)
  %.not.i = icmp eq i32 %_26, 1114112
  br i1 %.not.i, label %bb2.i.invoke, label %bb19, !prof !1064

bb2.i.invoke:                                     ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit160, %bb10, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit86, %bb22, %bb33
  %43 = phi ptr [ @alloc_14f68835a4088d69591254df407a4ea6, %bb33 ], [ @alloc_ad37e888b10a46c3a4cacfcdc0472908, %bb22 ], [ @alloc_8fcf40f22d34bdd1c0a39e0351eb1e86, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit86 ], [ @alloc_316ee4cecd7320a2364fd5dd49c842ed, %bb10 ], [ @alloc_2291131c5242550125e102814d896be0, %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit160 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %43) #25
          to label %bb2.i.cont unwind label %cleanup1.loopexit.split-lp

bb2.i.cont:                                       ; preds = %bb2.i.invoke
  unreachable

bb19:                                             ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit160
  %_14.i165 = icmp sgt i64 %new_len.i152, -1
  call void @llvm.assume(i1 %_14.i165)
  %_16.i166 = icmp samesign ult i32 %_26, 128
  br i1 %_16.i166, label %bb2.i172, label %bb3.i167

bb3.i167:                                         ; preds = %bb19
  %_17.i168 = icmp samesign ult i32 %_26, 2048
  br i1 %_17.i168, label %bb2.i172, label %bb4.i169

bb4.i169:                                         ; preds = %bb3.i167
  %_18.i170 = icmp samesign ult i32 %_26, 65536
  %..i171 = select i1 %_18.i170, i64 3, i64 4
  br label %bb2.i172

bb2.i172:                                         ; preds = %bb4.i169, %bb3.i167, %bb19
  %ch_len.sroa.0.0.i173 = phi i64 [ 1, %bb19 ], [ %..i171, %bb4.i169 ], [ 2, %bb3.i167 ]
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s1, i64 noundef %ch_len.sroa.0.0.i173)
          to label %.noexc204 unwind label %cleanup1.loopexit

.noexc204:                                        ; preds = %bb2.i172
  %_20.i174 = load ptr, ptr %_1.sroa.4.0._0.sroa_idx.i, align 8, !alias.scope !1704, !nonnull !15, !noundef !15
  %count.i175 = load i64, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1704, !noundef !15
  %_21.i176 = icmp sgt i64 %count.i175, -1
  call void @llvm.assume(i1 %_21.i176)
  %_8.i177 = getelementptr inbounds nuw i8, ptr %_20.i174, i64 %count.i175
  br i1 %_16.i166, label %bb12.i.i203, label %bb7.i.i178

bb7.i.i178:                                       ; preds = %.noexc204
  %_29.i.i179 = icmp samesign ult i32 %_26, 2048
  %44 = trunc i32 %_26 to i8
  %_5.i.i180 = and i8 %44, 63
  %last1.i.i181 = or disjoint i8 %_5.i.i180, -128
  %_10.i.i182 = lshr i32 %_26, 6
  %45 = trunc i32 %_10.i.i182 to i8
  %_8.i.i183 = and i8 %45, 63
  %last2.i.i184 = or disjoint i8 %_8.i.i183, -128
  %_14.i.i185 = lshr i32 %_26, 12
  %46 = trunc i32 %_14.i.i185 to i8
  %_12.i.i186 = and i8 %46, 63
  %last3.i.i187 = or disjoint i8 %_12.i.i186, -128
  %_18.i.i188 = lshr i32 %_26, 18
  %_16.i.i189 = trunc nuw nsw i32 %_18.i.i188 to i8
  %last4.i.i190 = or disjoint i8 %_16.i.i189, -16
  br i1 %_29.i.i179, label %bb1.i.i201, label %bb2.i.i191

bb12.i.i203:                                      ; preds = %.noexc204
  %47 = trunc nuw nsw i32 %_26 to i8
  store i8 %47, ptr %_8.i177, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit205

bb2.i.i191:                                       ; preds = %bb7.i.i178
  %_30.i.i192 = icmp samesign ult i32 %_26, 65536
  br i1 %_30.i.i192, label %bb3.i.i198, label %bb4.i.i193

bb1.i.i201:                                       ; preds = %bb7.i.i178
  %48 = or disjoint i8 %45, -64
  store i8 %48, ptr %_8.i177, align 1
  %_21.i.i202 = getelementptr inbounds nuw i8, ptr %_8.i177, i64 1
  store i8 %last1.i.i181, ptr %_21.i.i202, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit205

bb4.i.i193:                                       ; preds = %bb2.i.i191
  store i8 %last4.i.i190, ptr %_8.i177, align 1
  %_25.i.i194 = getelementptr inbounds nuw i8, ptr %_8.i177, i64 1
  store i8 %last3.i.i187, ptr %_25.i.i194, align 1
  %_26.i.i195 = getelementptr inbounds nuw i8, ptr %_8.i177, i64 2
  store i8 %last2.i.i184, ptr %_26.i.i195, align 1
  %_27.i.i196 = getelementptr inbounds nuw i8, ptr %_8.i177, i64 3
  store i8 %last1.i.i181, ptr %_27.i.i196, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit205

bb3.i.i198:                                       ; preds = %bb2.i.i191
  %49 = or disjoint i8 %46, -32
  store i8 %49, ptr %_8.i177, align 1
  %_23.i.i199 = getelementptr inbounds nuw i8, ptr %_8.i177, i64 1
  store i8 %last2.i.i184, ptr %_23.i.i199, align 1
  %_24.i.i200 = getelementptr inbounds nuw i8, ptr %_8.i177, i64 2
  store i8 %last1.i.i181, ptr %_24.i.i200, align 1
  br label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit205

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit205: ; preds = %bb12.i.i203, %bb1.i.i201, %bb4.i.i193, %bb3.i.i198
  %new_len.i197 = add nuw i64 %ch_len.sroa.0.0.i173, %new_len.i152
  store i64 %new_len.i197, ptr %_1.sroa.5.0._0.sroa_idx.i, align 8, !alias.scope !1704
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_28)
  br label %bb40

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca68bf124fe6240dE.exit.i24", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca68bf124fe6240dE.exit.i"
  %50 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %terminate, %cleanup.i.i21, %cleanup.i.i
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #27
  unreachable
}
