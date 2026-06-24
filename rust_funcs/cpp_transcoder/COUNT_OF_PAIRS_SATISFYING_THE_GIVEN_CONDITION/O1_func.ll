define noundef i32 @f_gold(i32 noundef %a, i32 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %start_bytes.i.i = alloca [32 x i8], align 1
  %_4.i3.i.i = alloca [24 x i8], align 8
  %_4.i.i.i = alloca [24 x i8], align 8
  %out.i.i = alloca [24 x i8], align 8
  %buf.i.i = alloca [10 x i8], align 1
  %s = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %s)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf.i.i), !noalias !1630
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %out.i.i), !noalias !1630
  %_4.i.i = icmp slt i32 %0, 0
  br i1 %_4.i.i, label %bb1.i.i, label %bb3.i.i

bb3.i.i:                                          ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1630
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i.i.i, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %cleanup.i.i, !noalias !1630

.noexc.i.i:                                       ; preds = %bb3.i.i
  %_5.i.i.i = load i64, ptr %_4.i.i.i, align 8, !range !1031, !noalias !1630, !noundef !37
  %1 = trunc nuw i64 %_5.i.i.i to i1
  %2 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 8
  %err.0.i.i.i = load i64, ptr %2, align 8, !range !1032, !noalias !1630, !noundef !37
  %3 = getelementptr inbounds nuw i8, ptr %_4.i.i.i, i64 16
  br i1 %1, label %bb3.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha18f64438c006d13E.exit.i.i", !prof !1033

bb3.i.i.i:                                        ; preds = %.noexc.i.i
  %err.1.i.i.i = load i64, ptr %3, align 8, !noalias !1630
  br label %bb3.i8.i.i.invoke

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha18f64438c006d13E.exit.i.i": ; preds = %.noexc.i.i
  %this.1.i.i.i = load ptr, ptr %3, align 8, !noalias !1630, !nonnull !37, !noundef !37
  %_7.i.i.i = icmp samesign ugt i64 %err.0.i.i.i, 9
  tail call void @llvm.assume(i1 %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i.i.i), !noalias !1630
  store i64 %err.0.i.i.i, ptr %out.i.i, align 8, !noalias !1630
  %_9.sroa.4.0.out.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %out.i.i, i64 8
  store ptr %this.1.i.i.i, ptr %_9.sroa.4.0.out.sroa_idx.i.i, align 8, !noalias !1630
  %_9.sroa.5.0.out.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %out.i.i, i64 16
  store i64 0, ptr %_9.sroa.5.0.out.sroa_idx.i.i, align 8, !noalias !1630
  br label %bb4.i.i

bb1.i.i:                                          ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4.i3.i.i), !noalias !1630
; invoke alloc::raw_vec::RawVecInner<A>::try_allocate_in
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17had089b3ffc2704ecE"(ptr noalias noundef sret([24 x i8]) align 8 captures(none) dereferenceable(24) %_4.i3.i.i, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i.i unwind label %cleanup.i.i, !noalias !1630

.noexc11.i.i:                                     ; preds = %bb1.i.i
  %_5.i4.i.i = load i64, ptr %_4.i3.i.i, align 8, !range !1031, !noalias !1630, !noundef !37
  %4 = trunc nuw i64 %_5.i4.i.i to i1
  %5 = getelementptr inbounds nuw i8, ptr %_4.i3.i.i, i64 8
  %err.0.i9.i.i = load i64, ptr %5, align 8, !range !1032, !noalias !1630, !noundef !37
  %6 = getelementptr inbounds nuw i8, ptr %_4.i3.i.i, i64 16
  br i1 %4, label %bb3.i8.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha18f64438c006d13E.exit13.i.i", !prof !1033

bb3.i8.i.i:                                       ; preds = %.noexc11.i.i
  %err.1.i10.i.i = load i64, ptr %6, align 8, !noalias !1630
  br label %bb3.i8.i.i.invoke

bb3.i8.i.i.invoke:                                ; preds = %bb3.i.i.i, %bb3.i8.i.i
  %7 = phi i64 [ %err.0.i9.i.i, %bb3.i8.i.i ], [ %err.0.i.i.i, %bb3.i.i.i ]
  %8 = phi i64 [ %err.1.i10.i.i, %bb3.i8.i.i ], [ %err.1.i.i.i, %bb3.i.i.i ]
; invoke alloc::raw_vec::handle_error
  invoke void @_ZN5alloc7raw_vec12handle_error17h3a8c375904e593b2E(i64 noundef %7, i64 %8) #26
          to label %bb3.i8.i.i.cont unwind label %cleanup.i.i, !noalias !1630

bb3.i8.i.i.cont:                                  ; preds = %bb3.i8.i.i.invoke
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha18f64438c006d13E.exit13.i.i": ; preds = %.noexc11.i.i
  %this.1.i6.i.i = load ptr, ptr %6, align 8, !noalias !1630, !nonnull !37, !noundef !37
  %_7.i7.i.i = icmp samesign ugt i64 %err.0.i9.i.i, 10
  tail call void @llvm.assume(i1 %_7.i7.i.i)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4.i3.i.i), !noalias !1630
  store i64 %err.0.i9.i.i, ptr %out.i.i, align 8, !noalias !1630
  %_6.sroa.4.0.out.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %out.i.i, i64 8
  store ptr %this.1.i6.i.i, ptr %_6.sroa.4.0.out.sroa_idx.i.i, align 8, !noalias !1630
  %_6.sroa.5.0.out.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %out.i.i, i64 16
  store i64 0, ptr %_6.sroa.5.0.out.sroa_idx.i.i, align 8, !noalias !1630
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd7d983ab73297baaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %out.i.i, i64 noundef 1)
          to label %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit.i.i unwind label %cleanup.i.i, !noalias !1630

cleanup.i.i:                                      ; preds = %bb3.i8.i.i.invoke, %bb5.i.i, %bb4.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha18f64438c006d13E.exit13.i.i", %bb1.i.i, %bb3.i.i
  %_17.sroa.0.0.i.i = phi i1 [ true, %bb5.i.i ], [ true, %bb4.i.i ], [ false, %bb3.i.i ], [ false, %bb1.i.i ], [ true, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha18f64438c006d13E.exit13.i.i" ], [ false, %bb3.i8.i.i.invoke ]
  %9 = landingpad { ptr, i32 }
          cleanup
  br i1 %_17.sroa.0.0.i.i, label %bb7.i.i, label %common.resume

bb4.i.i:                                          ; preds = %_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha18f64438c006d13E.exit.i.i"
  %_24.sroa.0.0.i.i = call i32 @llvm.abs.i32(i32 %0, i1 false)
; invoke core::fmt::num::imp::<impl u32>::_fmt
  %10 = invoke { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h1610a2f939cfe08fE"(i32 noundef %_24.sroa.0.0.i.i, ptr noalias noundef nonnull align 1 %buf.i.i, i64 noundef 10)
          to label %bb5.i.i unwind label %cleanup.i.i, !noalias !1630

_ZN5alloc6string6String4push17h1a40906a941ba4dfE.exit.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17ha18f64438c006d13E.exit13.i.i"
  %_20.i.i.i = load ptr, ptr %_6.sroa.4.0.out.sroa_idx.i.i, align 8, !alias.scope !1637, !noalias !1630, !nonnull !37, !noundef !37
  %count.i.i.i = load i64, ptr %_6.sroa.5.0.out.sroa_idx.i.i, align 8, !alias.scope !1637, !noalias !1630, !noundef !37
  %_21.i.i.i = icmp sgt i64 %count.i.i.i, -1
  call void @llvm.assume(i1 %_21.i.i.i)
  %_8.i.i.i = getelementptr inbounds nuw i8, ptr %_20.i.i.i, i64 %count.i.i.i
  store i8 45, ptr %_8.i.i.i, align 1, !noalias !1630
  store i64 1, ptr %_6.sroa.5.0.out.sroa_idx.i.i, align 8, !alias.scope !1637, !noalias !1630
  br label %bb4.i.i

bb5.i.i:                                          ; preds = %bb4.i.i
  %string.0.i.i = extractvalue { ptr, i64 } %10, 0
  %string.1.i.i = extractvalue { ptr, i64 } %10, 1
  %11 = icmp ne ptr %string.0.i.i, null
  call void @llvm.assume(i1 %11)
  %_32.i.i = getelementptr inbounds nuw i8, ptr %string.0.i.i, i64 %string.1.i.i
; invoke <alloc::vec::Vec<T,A> as alloc::vec::spec_extend::SpecExtend<&T,core::slice::iter::Iter<T>>>::spec_extend
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h50a987f7cf4aec42E"(ptr noalias noundef align 8 dereferenceable(24) %out.i.i, ptr noundef nonnull %string.0.i.i, ptr noundef nonnull %_32.i.i)
          to label %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h81533612180ee5f3E.exit" unwind label %cleanup.i.i, !noalias !1630

common.resume:                                    ; preds = %cleanup.i.i14, %cleanup.i.i, %bb7.i.i
  %common.resume.op = phi { ptr, i32 } [ %9, %bb7.i.i ], [ %9, %cleanup.i.i ], [ %39, %cleanup.i.i14 ]
  resume { ptr, i32 } %common.resume.op

bb7.i.i:                                          ; preds = %cleanup.i.i
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3b47f915c9f24febE"(ptr noalias noundef align 8 dereferenceable(24) %out.i.i) #28
          to label %common.resume unwind label %terminate.i.i, !noalias !1630

terminate.i.i:                                    ; preds = %bb7.i.i
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24, !noalias !1630
  unreachable

"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h81533612180ee5f3E.exit": ; preds = %bb5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %s, ptr noundef nonnull align 8 dereferenceable(24) %out.i.i, i64 24, i1 false), !noalias !1640
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %out.i.i), !noalias !1630
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf.i.i), !noalias !1630
  %13 = getelementptr inbounds nuw i8, ptr %s, i64 8
  %_6.i.i = load ptr, ptr %13, align 8, !alias.scope !1641, !nonnull !37, !noundef !37
  %14 = getelementptr inbounds nuw i8, ptr %s, i64 16
  %len.i.i = load i64, ptr %14, align 8, !alias.scope !1641, !noundef !37
  %_7.i = getelementptr i8, ptr %_6.i.i, i64 %len.i.i
  %15 = lshr i64 %len.i.i, 5
  %_65.i.i = getelementptr inbounds nuw [32 x i8], ptr %_6.i.i, i64 %15
  %_92.sroa.34.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 31
  %_92.sroa.33.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 30
  %_92.sroa.32.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 29
  %_92.sroa.31.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 28
  %_92.sroa.30.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 27
  %_92.sroa.29.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 26
  %_92.sroa.28.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 25
  %_92.sroa.27.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 24
  %_92.sroa.26.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 23
  %_92.sroa.25.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 22
  %_92.sroa.24.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 21
  %_92.sroa.23.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 20
  %_92.sroa.22.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 19
  %_92.sroa.21.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 18
  %_92.sroa.20.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 17
  %_92.sroa.19.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 16
  %_92.sroa.18.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 15
  %_92.sroa.17.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 14
  %_92.sroa.16.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 13
  %_92.sroa.15.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 12
  %_92.sroa.14.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 11
  %_92.sroa.13.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 10
  %_92.sroa.12.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 9
  %_92.sroa.11.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 8
  %_92.sroa.10.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 7
  %_92.sroa.9.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 6
  %_92.sroa.8.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 5
  %_92.sroa.7.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 4
  %_92.sroa.6.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 3
  %_92.sroa.5.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 2
  %_92.sroa.4.0.start_bytes.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 1
  %16 = ptrtoint ptr %_7.i to i64
  br label %bb2

bb2:                                              ; preds = %bb5, %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h81533612180ee5f3E.exit"
  %i.sroa.0.0 = phi i64 [ 0, %"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h81533612180ee5f3E.exit" ], [ %38, %bb5 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1646
  %_3.i.i = icmp ugt i64 %i.sroa.0.0, 31
  br i1 %_3.i.i, label %bb1.i.i7, label %bb25.i.i

bb1.i.i7:                                         ; preds = %bb2
  %_1042.not.i.i = icmp eq i64 %i.sroa.0.0, 32
  br i1 %_1042.not.i.i, label %bb14.i.i, label %bb4.i.i8

bb25.i.i:                                         ; preds = %bb19.i.i, %bb18.i.i, %bb14.i.i, %bb2
  %_10.sroa.0.0 = phi ptr [ %_19.i.i.i, %bb14.i.i ], [ %_6.i.i, %bb2 ], [ %_7.i, %bb19.i.i ], [ %_10.sroa.0.3, %bb18.i.i ]
  %remainder.sroa.0.0.i.i = phi i64 [ %remainder.sroa.0.1.lcssa.i.i, %bb14.i.i ], [ %i.sroa.0.0, %bb2 ], [ %remainder.sroa.0.1.lcssa.i.i, %bb18.i.i ], [ %remainder.sroa.0.1.lcssa.i.i, %bb19.i.i ]
  %_39.not57.i.i = icmp eq i64 %remainder.sroa.0.0.i.i, 0
  br i1 %_39.not57.i.i, label %bb5.critedge.i, label %bb27.i.i

bb4.i.i8:                                         ; preds = %bb1.i.i7, %bb2.i.i.i.i
  %remainder.sroa.0.145.i.i = phi i64 [ %18, %bb2.i.i.i.i ], [ %i.sroa.0.0, %bb1.i.i7 ]
  %chunks.sroa.0.044.i.i = phi ptr [ %chunks.sroa.0.1.i.i, %bb2.i.i.i.i ], [ %_6.i.i, %bb1.i.i7 ]
  %bytes_skipped.sroa.0.043.i.i = phi i64 [ %17, %bb2.i.i.i.i ], [ 0, %bb1.i.i7 ]
  %_73.i.i = icmp eq ptr %chunks.sroa.0.044.i.i, %_65.i.i
  %chunks.sroa.0.1.idx.i.i = select i1 %_73.i.i, i64 0, i64 32
  %chunks.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %chunks.sroa.0.1.idx.i.i
  br i1 %_73.i.i, label %bb14.i.i, label %bb5.i.i9

bb14.i.i:                                         ; preds = %bb2.i.i.i.i, %bb4.i.i8, %bb1.i.i7
  %bytes_skipped.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb1.i.i7 ], [ %bytes_skipped.sroa.0.043.i.i, %bb4.i.i8 ], [ %17, %bb2.i.i.i.i ]
  %remainder.sroa.0.1.lcssa.i.i = phi i64 [ %i.sroa.0.0, %bb1.i.i7 ], [ %remainder.sroa.0.145.i.i, %bb4.i.i8 ], [ %18, %bb2.i.i.i.i ]
  %_19.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %bytes_skipped.sroa.0.0.lcssa.i.i
  %.not27.i.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i.i, %len.i.i
  call void @llvm.assume(i1 %.not27.i.i)
  %_30.not53.i.i = icmp samesign eq i64 %len.i.i, %bytes_skipped.sroa.0.0.lcssa.i.i
  br i1 %_30.not53.i.i, label %bb25.i.i, label %bb18.i.i

bb5.i.i9:                                         ; preds = %bb4.i.i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i.i, i8 0, i64 32, i1 false), !noalias !1649
  br label %bb10.i.i

bb2.i.i.i.i:                                      ; preds = %bb10.i.i
  %_92.sroa.34.0.copyload.i.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.33.0.copyload.i.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.32.0.copyload.i.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.31.0.copyload.i.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.30.0.copyload.i.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.29.0.copyload.i.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.28.0.copyload.i.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.27.0.copyload.i.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.26.0.copyload.i.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.25.0.copyload.i.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.24.0.copyload.i.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.23.0.copyload.i.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.22.0.copyload.i.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.21.0.copyload.i.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.20.0.copyload.i.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.19.0.copyload.i.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.18.0.copyload.i.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.17.0.copyload.i.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.16.0.copyload.i.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.15.0.copyload.i.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.14.0.copyload.i.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.13.0.copyload.i.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.12.0.copyload.i.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.11.0.copyload.i.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.10.0.copyload.i.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.9.0.copyload.i.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.8.0.copyload.i.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.7.0.copyload.i.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.6.0.copyload.i.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.5.0.copyload.i.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.4.0.copyload.i.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1649
  %_92.sroa.0.0.copyload.i.i = load i8, ptr %start_bytes.i.i, align 1, !noalias !1649
  %_4.0.i.i.i.i.i.i.1.i.i = add i8 %_92.sroa.33.0.copyload.i.i, %_92.sroa.34.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.2.i.i = add i8 %_4.0.i.i.i.i.i.i.1.i.i, %_92.sroa.32.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.3.i.i = add i8 %_4.0.i.i.i.i.i.i.2.i.i, %_92.sroa.31.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.4.i.i = add i8 %_4.0.i.i.i.i.i.i.3.i.i, %_92.sroa.30.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.5.i.i = add i8 %_4.0.i.i.i.i.i.i.4.i.i, %_92.sroa.29.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.6.i.i = add i8 %_4.0.i.i.i.i.i.i.5.i.i, %_92.sroa.28.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.7.i.i = add i8 %_4.0.i.i.i.i.i.i.6.i.i, %_92.sroa.27.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.8.i.i = add i8 %_4.0.i.i.i.i.i.i.7.i.i, %_92.sroa.26.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.9.i.i = add i8 %_4.0.i.i.i.i.i.i.8.i.i, %_92.sroa.25.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.10.i.i = add i8 %_4.0.i.i.i.i.i.i.9.i.i, %_92.sroa.24.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.11.i.i = add i8 %_4.0.i.i.i.i.i.i.10.i.i, %_92.sroa.23.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.12.i.i = add i8 %_4.0.i.i.i.i.i.i.11.i.i, %_92.sroa.22.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.13.i.i = add i8 %_4.0.i.i.i.i.i.i.12.i.i, %_92.sroa.21.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.14.i.i = add i8 %_4.0.i.i.i.i.i.i.13.i.i, %_92.sroa.20.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.15.i.i = add i8 %_4.0.i.i.i.i.i.i.14.i.i, %_92.sroa.19.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.16.i.i = add i8 %_4.0.i.i.i.i.i.i.15.i.i, %_92.sroa.18.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.17.i.i = add i8 %_4.0.i.i.i.i.i.i.16.i.i, %_92.sroa.17.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.18.i.i = add i8 %_4.0.i.i.i.i.i.i.17.i.i, %_92.sroa.16.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.19.i.i = add i8 %_4.0.i.i.i.i.i.i.18.i.i, %_92.sroa.15.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.20.i.i = add i8 %_4.0.i.i.i.i.i.i.19.i.i, %_92.sroa.14.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.21.i.i = add i8 %_4.0.i.i.i.i.i.i.20.i.i, %_92.sroa.13.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.22.i.i = add i8 %_4.0.i.i.i.i.i.i.21.i.i, %_92.sroa.12.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.23.i.i = add i8 %_4.0.i.i.i.i.i.i.22.i.i, %_92.sroa.11.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.24.i.i = add i8 %_4.0.i.i.i.i.i.i.23.i.i, %_92.sroa.10.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.25.i.i = add i8 %_4.0.i.i.i.i.i.i.24.i.i, %_92.sroa.9.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.26.i.i = add i8 %_4.0.i.i.i.i.i.i.25.i.i, %_92.sroa.8.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.27.i.i = add i8 %_4.0.i.i.i.i.i.i.26.i.i, %_92.sroa.7.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.28.i.i = add i8 %_4.0.i.i.i.i.i.i.27.i.i, %_92.sroa.6.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.29.i.i = add i8 %_4.0.i.i.i.i.i.i.28.i.i, %_92.sroa.5.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.30.i.i = add i8 %_4.0.i.i.i.i.i.i.29.i.i, %_92.sroa.4.0.copyload.i.i
  %_4.0.i.i.i.i.i.i.31.i.i = add i8 %_4.0.i.i.i.i.i.i.30.i.i, %_92.sroa.0.0.copyload.i.i
  %17 = add i64 %bytes_skipped.sroa.0.043.i.i, 32
  %_25.i.i = zext i8 %_4.0.i.i.i.i.i.i.31.i.i to i64
  %18 = sub i64 %remainder.sroa.0.145.i.i, %_25.i.i
  %_10.i.i = icmp ugt i64 %18, 32
  br i1 %_10.i.i, label %bb4.i.i8, label %bb14.i.i

bb10.i.i:                                         ; preds = %bb10.i.i, %bb5.i.i9
  %iter.sroa.0.041.i.i = phi i64 [ 0, %bb5.i.i9 ], [ %_88.i.i.3, %bb10.i.i ]
  %_88.i.i = or disjoint i64 %iter.sroa.0.041.i.i, 1
  %19 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %iter.sroa.0.041.i.i
  %byte.i.i = load i8, ptr %19, align 1, !noalias !1649, !noundef !37
  %_22.i.i = icmp sgt i8 %byte.i.i, -65
  %20 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %iter.sroa.0.041.i.i
  %21 = zext i1 %_22.i.i to i8
  store i8 %21, ptr %20, align 1, !noalias !1649
  %_88.i.i.1 = or disjoint i64 %iter.sroa.0.041.i.i, 2
  %22 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i
  %byte.i.i.1 = load i8, ptr %22, align 1, !noalias !1649, !noundef !37
  %_22.i.i.1 = icmp sgt i8 %byte.i.i.1, -65
  %23 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i
  %24 = zext i1 %_22.i.i.1 to i8
  store i8 %24, ptr %23, align 1, !noalias !1649
  %_88.i.i.2 = or disjoint i64 %iter.sroa.0.041.i.i, 3
  %25 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.1
  %byte.i.i.2 = load i8, ptr %25, align 1, !noalias !1649, !noundef !37
  %_22.i.i.2 = icmp sgt i8 %byte.i.i.2, -65
  %26 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.1
  %27 = zext i1 %_22.i.i.2 to i8
  store i8 %27, ptr %26, align 1, !noalias !1649
  %_88.i.i.3 = add nuw nsw i64 %iter.sroa.0.041.i.i, 4
  %28 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.2
  %byte.i.i.3 = load i8, ptr %28, align 1, !noalias !1649, !noundef !37
  %_22.i.i.3 = icmp sgt i8 %byte.i.i.3, -65
  %29 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.2
  %30 = zext i1 %_22.i.i.3 to i8
  store i8 %30, ptr %29, align 1, !noalias !1649
  %exitcond.not.i.i.3 = icmp eq i64 %_88.i.i.3, 32
  br i1 %exitcond.not.i.i.3, label %bb2.i.i.i.i, label %bb10.i.i

bb18.i.i:                                         ; preds = %bb14.i.i, %bb19.i.i
  %_10.sroa.0.3 = phi ptr [ %_19.i33.i.i, %bb19.i.i ], [ %_19.i.i.i, %bb14.i.i ]
  %b.i.i = load i8, ptr %_10.sroa.0.3, align 1, !noalias !1649, !noundef !37
  %_36.i.i = icmp slt i8 %b.i.i, -64
  br i1 %_36.i.i, label %bb19.i.i, label %bb25.i.i

bb19.i.i:                                         ; preds = %bb18.i.i
  %_19.i33.i.i = getelementptr inbounds nuw i8, ptr %_10.sroa.0.3, i64 1
  %_30.not.i.i = icmp eq ptr %_7.i, %_19.i33.i.i
  br i1 %_30.not.i.i, label %bb25.i.i, label %bb18.i.i

bb27.i.i:                                         ; preds = %bb25.i.i, %bb28.i.i
  %remainder.sroa.0.259.i.i = phi i64 [ %33, %bb28.i.i ], [ %remainder.sroa.0.0.i.i, %bb25.i.i ]
  %_19.i385658.i.i = phi ptr [ %_19.i38.i.i, %bb28.i.i ], [ %_10.sroa.0.0, %bb25.i.i ]
  %_41.not.i.i = icmp eq ptr %_7.i, %_19.i385658.i.i
  br i1 %_41.not.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i", label %bb28.i.i

bb28.i.i:                                         ; preds = %bb27.i.i
  %31 = ptrtoint ptr %_19.i385658.i.i to i64
  %32 = sub nuw i64 %16, %31
  %33 = add i64 %remainder.sroa.0.259.i.i, -1
  %b15.i.i = load i8, ptr %_19.i385658.i.i, align 1, !noalias !1649, !noundef !37
  %_130.i.i = zext i8 %b15.i.i to i64
  %34 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %34, align 1, !noalias !1649, !noundef !37
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i.i, i64 %slurp.i.i
  %.not28.i.i = icmp uge i64 %32, %slurp.i.i
  call void @llvm.assume(i1 %.not28.i.i)
  %_39.not.i.i = icmp eq i64 %33, 0
  br i1 %_39.not.i.i, label %bb5.critedge.i, label %bb27.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i": ; preds = %bb27.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1646
  br label %bb5

bb5.critedge.i:                                   ; preds = %bb28.i.i, %bb25.i.i
  %_10.sroa.0.1 = phi ptr [ %_10.sroa.0.0, %bb25.i.i ], [ %_19.i38.i.i, %bb28.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1646
  %_7.i.i.i.i = icmp ne ptr %_10.sroa.0.1, %_7.i
  %spec.select.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %_10.sroa.0.1, i64 %spec.select.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb5

bb14.i.i.i:                                       ; preds = %bb5.critedge.i
  %x.i.i.i = load i8, ptr %_10.sroa.0.1, align 1, !noalias !1652, !noundef !37
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i5, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %spec.select, %_7.i
  call void @llvm.assume(i1 %_7.i10.i.i.i)
  %y.i.i.i = load i8, ptr %spec.select, align 1, !noalias !1652, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %35 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb5

bb3.i.i.i5:                                       ; preds = %bb14.i.i.i
  %_7.i.i.i6 = zext nneg i8 %x.i.i.i to i32
  br label %bb5

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1652, !noundef !37
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i3 = shl nuw nsw i32 %init.i.i.i, 12
  %36 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i3
  %_21.i.i.i4 = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i4, label %bb8.i.i.i, label %bb5

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1652, !noundef !37
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %37 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb5

bb5:                                              ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i5, %bb4.i.i.i, %bb5.critedge.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i"
  %_0.sroa.0.0.i = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i" ], [ %_7.i.i.i6, %bb3.i.i.i5 ], [ 1114112, %bb5.critedge.i ], [ %37, %bb8.i.i.i ], [ %36, %bb6.i.i.i ], [ %35, %bb4.i.i.i ]
  %_0.i.i = icmp eq i32 %_0.sroa.0.0.i, 57
  %38 = add i64 %i.sroa.0.0, 1
  br i1 %_0.i.i, label %bb2, label %bb8

bb8:                                              ; preds = %bb5
  %_2.i = icmp sgt i64 %len.i.i, -1
  call void @llvm.assume(i1 %_2.i)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3b47f915c9f24febE.exit" unwind label %cleanup.i.i14

cleanup.i.i14:                                    ; preds = %bb8
  %39 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
          to label %common.resume unwind label %terminate.i.i15

terminate.i.i15:                                  ; preds = %cleanup.i.i14
  %40 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3b47f915c9f24febE.exit": ; preds = %bb8
  %_14 = icmp eq i64 %i.sroa.0.0, %len.i.i
  %_17 = trunc i64 %len.i.i to i32
  %41 = trunc i64 %len.i.i to i32
  %_20 = add i32 %41, -1
  %_17.pn = select i1 %_14, i32 %_17, i32 %_20
  %result.sroa.0.0 = mul i32 %_17.pn, %a
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %s)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %s)
  ret i32 %result.sroa.0.0
}
