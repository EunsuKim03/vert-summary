define void @f_gold(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_0, ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %s, i32 noundef range(i32 0, 1114112) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_4.i.i.i.i15 = alloca [24 x i8], align 8
  %_5.sroa.0.i.i16 = alloca i32, align 4
  %_4.i.i.i.i = alloca [24 x i8], align 8
  %_5.sroa.0.i.i = alloca i32, align 4
  %_41 = alloca [24 x i8], align 8
  %_32 = alloca [16 x i8], align 8
  %_26 = alloca [24 x i8], align 8
  %_17 = alloca [16 x i8], align 8
  %2 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %_0.i = load i64, ptr %2, align 8, !alias.scope !2087, !noundef !11
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i88.not = icmp eq i64 %_0.i, 0
  %_4.i.i.i.i15.sink106.sroa.gep = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i15, i64 8
  %_4.i.i.i.i15.sink106.sroa.gep110 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %_4.i.i.i.i15.sink106.sroa.gep112 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i15, i64 16
  %_4.i.i.i.i15.sink106.sroa.gep113 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  br i1 %_0.i.i.i88.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %3 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %_17, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %_32, i64 8
  %_11.i.i.i18 = icmp samesign ult i32 %0, 128
  %_12.i.i.i20 = icmp samesign ult i32 %0, 2048
  %_13.i.i.i22 = icmp samesign ult i32 %0, 65536
  %..i.i.i23 = select i1 %_13.i.i.i22, i64 3, i64 4
  %_29.i.i.i.i27 = icmp samesign ult i32 %0, 2048
  %6 = trunc i32 %0 to i8
  %_5.i.i.i.i28 = and i8 %6, 63
  %last1.i.i.i.i29 = or disjoint i8 %_5.i.i.i.i28, -128
  %_10.i.i.i.i30 = lshr i32 %0, 6
  %7 = trunc i32 %_10.i.i.i.i30 to i8
  %_8.i.i.i.i31 = and i8 %7, 63
  %last2.i.i.i.i32 = or disjoint i8 %_8.i.i.i.i31, -128
  %_14.i.i.i.i33 = lshr i32 %0, 12
  %8 = trunc i32 %_14.i.i.i.i33 to i8
  %_12.i.i.i.i34 = and i8 %8, 63
  %last3.i.i.i.i35 = or disjoint i8 %_12.i.i.i.i34, -128
  %_18.i.i.i.i36 = lshr i32 %0, 18
  %_16.i.i.i.i37 = trunc nuw nsw i32 %_18.i.i.i.i36 to i8
  %last4.i.i.i.i38 = or disjoint i8 %_16.i.i.i.i37, -16
  %_30.i.i.i.i40 = icmp samesign ult i32 %0, 65536
  %9 = or disjoint i8 %8, -32
  %10 = or disjoint i8 %7, -64
  %11 = trunc nuw nsw i32 %0 to i8
  %12 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i15, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i15, i64 16
  %bytes.sroa.4.0._0.sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %_41, i64 8
  %bytes.sroa.5.0._0.sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %_41, i64 16
  %_11.i.i.i = icmp samesign ult i32 %1, 128
  %_12.i.i.i = icmp samesign ult i32 %1, 2048
  %_13.i.i.i = icmp samesign ult i32 %1, 65536
  %..i.i.i = select i1 %_13.i.i.i, i64 3, i64 4
  %_29.i.i.i.i = icmp samesign ult i32 %1, 2048
  %14 = trunc i32 %1 to i8
  %_5.i.i.i.i = and i8 %14, 63
  %last1.i.i.i.i = or disjoint i8 %_5.i.i.i.i, -128
  %_10.i.i.i.i = lshr i32 %1, 6
  %15 = trunc i32 %_10.i.i.i.i to i8
  %_8.i.i.i.i = and i8 %15, 63
  %last2.i.i.i.i = or disjoint i8 %_8.i.i.i.i, -128
  %_14.i.i.i.i = lshr i32 %1, 12
  %16 = trunc i32 %_14.i.i.i.i to i8
  %_12.i.i.i.i = and i8 %16, 63
  %last3.i.i.i.i = or disjoint i8 %_12.i.i.i.i, -128
  %_18.i.i.i.i = lshr i32 %1, 18
  %_16.i.i.i.i = trunc nuw nsw i32 %_18.i.i.i.i to i8
  %last4.i.i.i.i = or disjoint i8 %_16.i.i.i.i, -16
  %_30.i.i.i.i = icmp samesign ult i32 %1, 65536
  %17 = or disjoint i8 %16, -32
  %18 = or disjoint i8 %15, -64
  %19 = trunc nuw nsw i32 %1 to i8
  %20 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %_4.i.i.i.i, i64 16
  %bytes.sroa.4.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26, i64 8
  %bytes.sroa.5.0._0.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %_26, i64 16
  %spec.select93 = select i1 %_12.i.i.i20, i64 2, i64 %..i.i.i23
  %len.sroa.0.0.i.i.i25 = select i1 %_11.i.i.i18, i64 1, i64 %spec.select93
  %_5.sroa.0.i.i16.1.sroa_idx114 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 1
  %_5.sroa.0.i.i16.2.sroa_idx116 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 2
  %_5.sroa.0.i.i16.3.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 3
  %_5.sroa.0.i.i16.1.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 1
  %_5.sroa.0.i.i16.2.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 2
  %_5.sroa.0.i.i16.1.sroa_idx115 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i16, i64 1
  %spec.select92 = select i1 %_12.i.i.i, i64 2, i64 %..i.i.i
  %len.sroa.0.0.i.i.i = select i1 %_11.i.i.i, i64 1, i64 %spec.select92
  %_5.sroa.0.i.i.1.sroa_idx107 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 1
  %_5.sroa.0.i.i.2.sroa_idx109 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 2
  %_5.sroa.0.i.i.3.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 3
  %_5.sroa.0.i.i.1.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 1
  %_5.sroa.0.i.i.2.sroa_idx = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 2
  %_5.sroa.0.i.i.1.sroa_idx108 = getelementptr inbounds nuw i8, ptr %_5.sroa.0.i.i, i64 1
  br label %bb6

bb32:                                             ; preds = %cleanup.loopexit, %cleanup.loopexit.split-lp, %cleanup.i.i73, %cleanup.i.i64, %cleanup2, %cleanup1
  %.pn = phi { ptr, i32 } [ %31, %cleanup2 ], [ %27, %cleanup1 ], [ %28, %cleanup.i.i64 ], [ %32, %cleanup.i.i73 ], [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb32
  %22 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %23 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i": ; preds = %bb32
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %bb33 unwind label %terminate

cleanup.loopexit:                                 ; preds = %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i, %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i67", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i76"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb32

cleanup.loopexit.split-lp:                        ; preds = %bb3.i.i3.i.i.invoke, %bb2.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb32

bb6:                                              ; preds = %bb6.lr.ph, %bb29
  %spec.select91 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select, %bb29 ]
  %iter.sroa.0.090 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select91, %bb29 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17)
  %_6.i.i = load ptr, ptr %3, align 8, !alias.scope !2090, !nonnull !11, !noundef !11
  %len.i.i = load i64, ptr %2, align 8, !alias.scope !2090, !noundef !11
  %_7.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %len.i.i
  store ptr %_6.i.i, ptr %_17, align 8
  store ptr %_7.i, ptr %4, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_15 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3fa37af0af5de09E(ptr noalias noundef align 8 dereferenceable(16) %_17, i64 noundef %iter.sroa.0.090)
  %.not.i5 = icmp eq i32 %_15, 1114112
  br i1 %.not.i5, label %bb2.i.invoke, label %bb11, !prof !14

bb7:                                              ; preds = %bb29, %start
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_0, ptr noundef nonnull align 8 dereferenceable(24) %s, i64 24, i1 false)
  ret void

bb11:                                             ; preds = %bb6
  %_13 = icmp eq i32 %_15, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17)
  br i1 %_13, label %bb12, label %bb17

bb17:                                             ; preds = %bb11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_32)
  store ptr %_6.i.i, ptr %_32, align 8
  store ptr %_7.i, ptr %5, align 8
; call core::iter::traits::iterator::Iterator::nth
  %_30 = call fastcc noundef i32 @_ZN4core4iter6traits8iterator8Iterator3nth17hb3fa37af0af5de09E(ptr noalias noundef align 8 dereferenceable(16) %_32, i64 noundef %iter.sroa.0.090)
  %.not.i = icmp eq i32 %_30, 1114112
  br i1 %.not.i, label %bb2.i.invoke, label %bb21, !prof !14

bb12:                                             ; preds = %bb11
  %_23 = add nuw nsw i64 %iter.sroa.0.090, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_26)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_5.sroa.0.i.i)
  store i32 0, ptr %_5.sroa.0.i.i, align 4, !noalias !2101
  br i1 %_11.i.i.i, label %bb12.i.i.i.i, label %bb7.i.i.i.i

bb7.i.i.i.i:                                      ; preds = %bb12
  br i1 %_29.i.i.i.i, label %bb1.i.i.i.i, label %bb2.i.i.i.i

bb12.i.i.i.i:                                     ; preds = %bb12
  store i8 %19, ptr %_5.sroa.0.i.i, align 4, !alias.scope !2104, !noalias !2101
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i

bb2.i.i.i.i:                                      ; preds = %bb7.i.i.i.i
  br i1 %_30.i.i.i.i, label %bb3.i.i.i.i, label %bb4.i.i.i.i

bb1.i.i.i.i:                                      ; preds = %bb7.i.i.i.i
  store i8 %18, ptr %_5.sroa.0.i.i, align 4, !alias.scope !2104, !noalias !2101
  store i8 %last1.i.i.i.i, ptr %_5.sroa.0.i.i.1.sroa_idx108, align 1, !alias.scope !2104, !noalias !2101
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i

bb4.i.i.i.i:                                      ; preds = %bb2.i.i.i.i
  store i8 %last4.i.i.i.i, ptr %_5.sroa.0.i.i, align 4, !alias.scope !2104, !noalias !2101
  store i8 %last3.i.i.i.i, ptr %_5.sroa.0.i.i.1.sroa_idx107, align 1, !alias.scope !2104, !noalias !2101
  store i8 %last2.i.i.i.i, ptr %_5.sroa.0.i.i.2.sroa_idx109, align 2, !alias.scope !2104, !noalias !2101
  store i8 %last1.i.i.i.i, ptr %_5.sroa.0.i.i.3.sroa_idx, align 1, !alias.scope !2104, !noalias !2101
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i

bb3.i.i.i.i:                                      ; preds = %bb2.i.i.i.i
  store i8 %17, ptr %_5.sroa.0.i.i, align 4, !alias.scope !2104, !noalias !2101
  store i8 %last2.i.i.i.i, ptr %_5.sroa.0.i.i.1.sroa_idx, align 1, !alias.scope !2104, !noalias !2101
  store i8 %last1.i.i.i.i, ptr %_5.sroa.0.i.i.2.sroa_idx, align 2, !alias.scope !2104, !noalias !2101
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i

_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i: ; preds = %bb3.i.i.i.i, %bb4.i.i.i.i, %bb1.i.i.i.i, %bb12.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2107
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i, i64 noundef range(i64 1, 5) %len.sroa.0.0.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc12 unwind label %cleanup.loopexit

.noexc12:                                         ; preds = %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i
  %_5.i.i2.i.i = load i64, ptr %_4.i.i.i.i, align 8, !range !12, !noalias !2107, !noundef !11
  %24 = trunc nuw i64 %_5.i.i2.i.i to i1
  br i1 %24, label %bb3.i.i3.i.i.invoke, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit", !prof !14

bb3.i.i3.i.i.invoke:                              ; preds = %.noexc12, %.noexc61
  %_4.i.i.i.i15.sink106.sroa.phi = phi ptr [ %_4.i.i.i.i15.sink106.sroa.gep, %.noexc61 ], [ %_4.i.i.i.i15.sink106.sroa.gep110, %.noexc12 ]
  %_4.i.i.i.i15.sink106.sroa.phi111 = phi ptr [ %_4.i.i.i.i15.sink106.sroa.gep112, %.noexc61 ], [ %_4.i.i.i.i15.sink106.sroa.gep113, %.noexc12 ]
  %err.0.i.i.i.i53 = load i64, ptr %_4.i.i.i.i15.sink106.sroa.phi, align 8, !range !13, !noalias !11, !noundef !11
  %err.1.i.i.i.i54 = load i64, ptr %_4.i.i.i.i15.sink106.sroa.phi111, align 8, !noalias !11
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %err.0.i.i.i.i53, i64 %err.1.i.i.i.i54) #29
          to label %bb3.i.i3.i.i.cont unwind label %cleanup.loopexit.split-lp

bb3.i.i3.i.i.cont:                                ; preds = %bb3.i.i3.i.i.invoke
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit": ; preds = %.noexc12
  %this.0.i.i.i.i = load i64, ptr %20, align 8, !range !1800, !noalias !2107, !noundef !11
  %this.1.i.i.i.i = load ptr, ptr %21, align 8, !noalias !2107, !nonnull !11, !noundef !11
  %_7.i.i.i.i = icmp samesign ule i64 %len.sroa.0.0.i.i.i, %this.0.i.i.i.i
  call void @llvm.assume(i1 %_7.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i), !noalias !2107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %this.1.i.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(1) %_5.sroa.0.i.i, i64 range(i64 1, 5) %len.sroa.0.0.i.i.i, i1 false), !noalias !2111
  store i64 %this.0.i.i.i.i, ptr %_26, align 8, !alias.scope !2112, !noalias !2113
  store ptr %this.1.i.i.i.i, ptr %bytes.sroa.4.0._0.sroa_idx.i.i, align 8, !alias.scope !2112, !noalias !2113
  store i64 %len.sroa.0.0.i.i.i, ptr %bytes.sroa.5.0._0.sroa_idx.i.i, align 8, !alias.scope !2112, !noalias !2113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_5.sroa.0.i.i)
; invoke alloc::string::String::replace_range
  invoke void @_ZN5alloc6string6String13replace_range17h664d473e476aaa46E(ptr noalias noundef align 8 dereferenceable(24) %s, i64 noundef %iter.sroa.0.090, i64 noundef %_23, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %this.1.i.i.i.i, i64 noundef %len.sroa.0.0.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_2e9ecbc1f42a5da546130bf029d2e0a9)
          to label %bb15 unwind label %cleanup2

bb2.i.invoke:                                     ; preds = %bb17, %bb6
  %25 = phi ptr [ @alloc_95740aa5a3105863e5e0aea14ec0eaa4, %bb6 ], [ @alloc_f2778d43092910bbc687852be59ae1a4, %bb17 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %25) #32
          to label %bb2.i.cont unwind label %cleanup.loopexit.split-lp

bb2.i.cont:                                       ; preds = %bb2.i.invoke
  unreachable

bb21:                                             ; preds = %bb17
  %_28 = icmp eq i32 %_30, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_32)
  br i1 %_28, label %bb22, label %bb29

bb22:                                             ; preds = %bb21
  %_38 = add nuw nsw i64 %iter.sroa.0.090, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_41)
  call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_5.sroa.0.i.i16)
  store i32 0, ptr %_5.sroa.0.i.i16, align 4, !noalias !2120
  br i1 %_11.i.i.i18, label %bb12.i.i.i.i60, label %bb7.i.i.i.i26

bb7.i.i.i.i26:                                    ; preds = %bb22
  br i1 %_29.i.i.i.i27, label %bb1.i.i.i.i58, label %bb2.i.i.i.i39

bb12.i.i.i.i60:                                   ; preds = %bb22
  store i8 %11, ptr %_5.sroa.0.i.i16, align 4, !alias.scope !2123, !noalias !2120
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45

bb2.i.i.i.i39:                                    ; preds = %bb7.i.i.i.i26
  br i1 %_30.i.i.i.i40, label %bb3.i.i.i.i55, label %bb4.i.i.i.i41

bb1.i.i.i.i58:                                    ; preds = %bb7.i.i.i.i26
  store i8 %10, ptr %_5.sroa.0.i.i16, align 4, !alias.scope !2123, !noalias !2120
  store i8 %last1.i.i.i.i29, ptr %_5.sroa.0.i.i16.1.sroa_idx115, align 1, !alias.scope !2123, !noalias !2120
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45

bb4.i.i.i.i41:                                    ; preds = %bb2.i.i.i.i39
  store i8 %last4.i.i.i.i38, ptr %_5.sroa.0.i.i16, align 4, !alias.scope !2123, !noalias !2120
  store i8 %last3.i.i.i.i35, ptr %_5.sroa.0.i.i16.1.sroa_idx114, align 1, !alias.scope !2123, !noalias !2120
  store i8 %last2.i.i.i.i32, ptr %_5.sroa.0.i.i16.2.sroa_idx116, align 2, !alias.scope !2123, !noalias !2120
  store i8 %last1.i.i.i.i29, ptr %_5.sroa.0.i.i16.3.sroa_idx, align 1, !alias.scope !2123, !noalias !2120
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45

bb3.i.i.i.i55:                                    ; preds = %bb2.i.i.i.i39
  store i8 %9, ptr %_5.sroa.0.i.i16, align 4, !alias.scope !2123, !noalias !2120
  store i8 %last2.i.i.i.i32, ptr %_5.sroa.0.i.i16.1.sroa_idx, align 1, !alias.scope !2123, !noalias !2120
  store i8 %last1.i.i.i.i29, ptr %_5.sroa.0.i.i16.2.sroa_idx, align 2, !alias.scope !2123, !noalias !2120
  br label %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45

_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45: ; preds = %bb3.i.i.i.i55, %bb4.i.i.i.i41, %bb1.i.i.i.i58, %bb12.i.i.i.i60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i.i15), !noalias !2126
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i.i15, i64 noundef range(i64 1, 5) %len.sroa.0.0.i.i.i25, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc61 unwind label %cleanup.loopexit

.noexc61:                                         ; preds = %_ZN4core4char7methods15encode_utf8_raw17hc175ebbaeebc4df9E.exit.i.i45
  %_5.i.i2.i.i46 = load i64, ptr %_4.i.i.i.i15, align 8, !range !12, !noalias !2126, !noundef !11
  %26 = trunc nuw i64 %_5.i.i2.i.i46 to i1
  br i1 %26, label %bb3.i.i3.i.i.invoke, label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit63", !prof !14

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit63": ; preds = %.noexc61
  %this.0.i.i.i.i47 = load i64, ptr %12, align 8, !range !1800, !noalias !2126, !noundef !11
  %this.1.i.i.i.i48 = load ptr, ptr %13, align 8, !noalias !2126, !nonnull !11, !noundef !11
  %_7.i.i.i.i49 = icmp samesign ule i64 %len.sroa.0.0.i.i.i25, %this.0.i.i.i.i47
  call void @llvm.assume(i1 %_7.i.i.i.i49)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i.i15), !noalias !2126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %this.1.i.i.i.i48, ptr noundef nonnull readonly align 4 dereferenceable(1) %_5.sroa.0.i.i16, i64 range(i64 1, 5) %len.sroa.0.0.i.i.i25, i1 false), !noalias !2130
  store i64 %this.0.i.i.i.i47, ptr %_41, align 8, !alias.scope !2131, !noalias !2132
  store ptr %this.1.i.i.i.i48, ptr %bytes.sroa.4.0._0.sroa_idx.i.i50, align 8, !alias.scope !2131, !noalias !2132
  store i64 %len.sroa.0.0.i.i.i25, ptr %bytes.sroa.5.0._0.sroa_idx.i.i51, align 8, !alias.scope !2131, !noalias !2132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_5.sroa.0.i.i16)
; invoke alloc::string::String::replace_range
  invoke void @_ZN5alloc6string6String13replace_range17h664d473e476aaa46E(ptr noalias noundef align 8 dereferenceable(24) %s, i64 noundef %iter.sroa.0.090, i64 noundef %_38, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %this.1.i.i.i.i48, i64 noundef %len.sroa.0.0.i.i.i25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_4df0d0febdd5d3a64363530ad4e25ffb)
          to label %bb25 unwind label %cleanup1

cleanup1:                                         ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit63"
  %27 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr noalias noundef align 8 dereferenceable(24) %_41) #30
          to label %bb32 unwind label %terminate

bb25:                                             ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit63"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_41)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i67" unwind label %cleanup.i.i64

cleanup.i.i64:                                    ; preds = %bb25
  %28 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_41)
          to label %bb32 unwind label %terminate.i.i65

terminate.i.i65:                                  ; preds = %cleanup.i.i64
  %29 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i67": ; preds = %bb25
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_41)
          to label %bb26 unwind label %cleanup.loopexit

bb26:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i67"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_41)
  br label %bb29

bb29:                                             ; preds = %bb21, %bb26, %bb16
  %_0.i.i.i = icmp ult i64 %spec.select91, %_0.i
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select91, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i", %cleanup2, %cleanup1
  %30 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

cleanup2:                                         ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit"
  %31 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2fc0af7d5458b074E"(ptr noalias noundef align 8 dereferenceable(24) %_26) #30
          to label %bb32 unwind label %terminate

bb15:                                             ; preds = %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17ha031fa6408ab7105E.exit"
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_26)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i76" unwind label %cleanup.i.i73

cleanup.i.i73:                                    ; preds = %bb15
  %32 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_26)
          to label %bb32 unwind label %terminate.i.i74

terminate.i.i74:                                  ; preds = %cleanup.i.i73
  %33 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #31
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i76": ; preds = %bb15
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %_26)
          to label %bb16 unwind label %cleanup.loopexit

bb16:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i76"
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_26)
  br label %bb29

bb33:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h99ea250b3a74dcb0E.exit.i"
  resume { ptr, i32 } %.pn
}
