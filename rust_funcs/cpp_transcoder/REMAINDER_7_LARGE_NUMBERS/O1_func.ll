define noundef range(i32 0, 7) i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %num) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %start_bytes.i.i = alloca [32 x i8], align 1
  %series = alloca [24 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %series)
  store i32 1, ptr %series, align 4
  %0 = getelementptr inbounds nuw i8, ptr %series, i64 4
  store i32 3, ptr %0, align 4
  %1 = getelementptr inbounds nuw i8, ptr %series, i64 8
  store i32 2, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %series, i64 12
  store i32 -1, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %series, i64 16
  store i32 -3, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %series, i64 20
  store i32 -2, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %num, i64 16
  %_0.i = load i64, ptr %5, align 8, !alias.scope !1630, !noundef !37
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %_0.i.i.i.i.not.not20 = icmp eq i64 %_0.i, 0
  br i1 %_0.i.i.i.i.not.not20, label %bb8, label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %start
  %iter.sroa.4.122 = add nsw i64 %_0.i, -1
  %6 = getelementptr inbounds nuw i8, ptr %num, i64 8
  %_6.i.i = load ptr, ptr %6, align 8, !alias.scope !1633, !nonnull !37, !noundef !37
  %_7.i = getelementptr i8, ptr %_6.i.i, i64 %_0.i
  %7 = lshr i64 %_0.i, 5
  %_65.i.i = getelementptr inbounds nuw [32 x i8], ptr %_6.i.i, i64 %7
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
  %8 = ptrtoint ptr %_7.i to i64
  br label %bb7

cleanup:                                          ; preds = %bb2.i7.invoke
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5e62471c1d82fa4E.exit.i" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %terminate.body unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %11 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5e62471c1d82fa4E.exit.i": ; preds = %cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %common.resume unwind label %terminate

bb7:                                              ; preds = %bb7.lr.ph, %bb14
  %iter.sroa.4.126 = phi i64 [ %iter.sroa.4.122, %bb7.lr.ph ], [ %iter.sroa.4.1, %bb14 ]
  %_0.i1.i.i.i25.in = phi i64 [ %_0.i, %bb7.lr.ph ], [ %iter.sroa.4.126, %bb14 ]
  %result.sroa.0.024 = phi i32 [ 0, %bb7.lr.ph ], [ %42, %bb14 ]
  %series_index.sroa.0.023 = phi i64 [ 0, %bb7.lr.ph ], [ %41, %bb14 ]
  %_0.i1.i.i.i25 = add i64 %_0.i1.i.i.i25.in, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1638
  %_3.i.i = icmp ugt i64 %_0.i1.i.i.i25, 31
  br i1 %_3.i.i, label %bb1.i.i15, label %bb25.i.i

bb8:                                              ; preds = %bb14, %start
  %result.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %42, %bb14 ]
  %_30 = icmp slt i32 %result.sroa.0.0.lcssa, 0
  br i1 %_30, label %bb16, label %bb18

bb16:                                             ; preds = %bb8
  %_32 = add nsw i32 %result.sroa.0.0.lcssa, 7
  %12 = urem i32 %_32, 7
  br label %bb18

bb18:                                             ; preds = %bb8, %bb16
  %result.sroa.0.1 = phi i32 [ %12, %bb16 ], [ %result.sroa.0.0.lcssa, %bb8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %series)
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf56058957c767eeE.exit14" unwind label %cleanup.i.i10

cleanup.i.i10:                                    ; preds = %bb18
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
          to label %common.resume unwind label %terminate.i.i11

terminate.i.i11:                                  ; preds = %cleanup.i.i10
  %14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5e62471c1d82fa4E.exit.i", %cleanup.i.i10
  %common.resume.op = phi { ptr, i32 } [ %13, %cleanup.i.i10 ], [ %9, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5e62471c1d82fa4E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hdf56058957c767eeE.exit14": ; preds = %bb18
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %num)
  ret i32 %result.sroa.0.1

bb1.i.i15:                                        ; preds = %bb7
  %_1042.not.i.i = icmp eq i64 %_0.i1.i.i.i25, 32
  br i1 %_1042.not.i.i, label %bb14.i.i, label %bb4.i.i

bb25.i.i:                                         ; preds = %bb19.i.i, %bb18.i.i, %bb14.i.i, %bb7
  %_20.sroa.0.0 = phi ptr [ %_19.i.i.i, %bb14.i.i ], [ %_6.i.i, %bb7 ], [ %_7.i, %bb19.i.i ], [ %_20.sroa.0.3, %bb18.i.i ]
  %remainder.sroa.0.0.i.i = phi i64 [ %remainder.sroa.0.1.lcssa.i.i, %bb14.i.i ], [ %_0.i1.i.i.i25, %bb7 ], [ %remainder.sroa.0.1.lcssa.i.i, %bb18.i.i ], [ %remainder.sroa.0.1.lcssa.i.i, %bb19.i.i ]
  %_39.not57.i.i = icmp eq i64 %remainder.sroa.0.0.i.i, 0
  br i1 %_39.not57.i.i, label %bb5.critedge.i, label %bb27.i.i

bb4.i.i:                                          ; preds = %bb1.i.i15, %bb2.i.i.i.i
  %remainder.sroa.0.145.i.i = phi i64 [ %16, %bb2.i.i.i.i ], [ %_0.i1.i.i.i25, %bb1.i.i15 ]
  %chunks.sroa.0.044.i.i = phi ptr [ %chunks.sroa.0.1.i.i, %bb2.i.i.i.i ], [ %_6.i.i, %bb1.i.i15 ]
  %bytes_skipped.sroa.0.043.i.i = phi i64 [ %15, %bb2.i.i.i.i ], [ 0, %bb1.i.i15 ]
  %_73.i.i = icmp eq ptr %chunks.sroa.0.044.i.i, %_65.i.i
  %chunks.sroa.0.1.idx.i.i = select i1 %_73.i.i, i64 0, i64 32
  %chunks.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %chunks.sroa.0.1.idx.i.i
  br i1 %_73.i.i, label %bb14.i.i, label %bb5.i.i

bb14.i.i:                                         ; preds = %bb2.i.i.i.i, %bb4.i.i, %bb1.i.i15
  %bytes_skipped.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb1.i.i15 ], [ %bytes_skipped.sroa.0.043.i.i, %bb4.i.i ], [ %15, %bb2.i.i.i.i ]
  %remainder.sroa.0.1.lcssa.i.i = phi i64 [ %_0.i1.i.i.i25, %bb1.i.i15 ], [ %remainder.sroa.0.145.i.i, %bb4.i.i ], [ %16, %bb2.i.i.i.i ]
  %_19.i.i.i = getelementptr inbounds nuw i8, ptr %_6.i.i, i64 %bytes_skipped.sroa.0.0.lcssa.i.i
  %.not27.i.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i.i, %_0.i
  tail call void @llvm.assume(i1 %.not27.i.i)
  %_30.not53.i.i = icmp samesign eq i64 %_0.i, %bytes_skipped.sroa.0.0.lcssa.i.i
  br i1 %_30.not53.i.i, label %bb25.i.i, label %bb18.i.i

bb5.i.i:                                          ; preds = %bb4.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i.i, i8 0, i64 32, i1 false), !noalias !1641
  br label %bb10.i.i

bb2.i.i.i.i:                                      ; preds = %bb10.i.i
  %_92.sroa.34.0.copyload.i.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.33.0.copyload.i.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.32.0.copyload.i.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.31.0.copyload.i.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.30.0.copyload.i.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.29.0.copyload.i.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.28.0.copyload.i.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.27.0.copyload.i.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.26.0.copyload.i.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.25.0.copyload.i.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.24.0.copyload.i.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.23.0.copyload.i.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.22.0.copyload.i.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.21.0.copyload.i.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.20.0.copyload.i.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.19.0.copyload.i.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.18.0.copyload.i.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.17.0.copyload.i.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.16.0.copyload.i.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.15.0.copyload.i.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.14.0.copyload.i.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.13.0.copyload.i.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.12.0.copyload.i.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.11.0.copyload.i.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.10.0.copyload.i.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.9.0.copyload.i.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.8.0.copyload.i.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.7.0.copyload.i.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.6.0.copyload.i.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.5.0.copyload.i.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.4.0.copyload.i.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1641
  %_92.sroa.0.0.copyload.i.i = load i8, ptr %start_bytes.i.i, align 1, !noalias !1641
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
  %15 = add i64 %bytes_skipped.sroa.0.043.i.i, 32
  %_25.i.i = zext i8 %_4.0.i.i.i.i.i.i.31.i.i to i64
  %16 = sub i64 %remainder.sroa.0.145.i.i, %_25.i.i
  %_10.i.i = icmp ugt i64 %16, 32
  br i1 %_10.i.i, label %bb4.i.i, label %bb14.i.i

bb10.i.i:                                         ; preds = %bb10.i.i, %bb5.i.i
  %iter.sroa.0.041.i.i = phi i64 [ 0, %bb5.i.i ], [ %_88.i.i.3, %bb10.i.i ]
  %_88.i.i = or disjoint i64 %iter.sroa.0.041.i.i, 1
  %17 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %iter.sroa.0.041.i.i
  %byte.i.i = load i8, ptr %17, align 1, !noalias !1641, !noundef !37
  %_22.i.i = icmp sgt i8 %byte.i.i, -65
  %18 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %iter.sroa.0.041.i.i
  %19 = zext i1 %_22.i.i to i8
  store i8 %19, ptr %18, align 1, !noalias !1641
  %_88.i.i.1 = or disjoint i64 %iter.sroa.0.041.i.i, 2
  %20 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i
  %byte.i.i.1 = load i8, ptr %20, align 1, !noalias !1641, !noundef !37
  %_22.i.i.1 = icmp sgt i8 %byte.i.i.1, -65
  %21 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i
  %22 = zext i1 %_22.i.i.1 to i8
  store i8 %22, ptr %21, align 1, !noalias !1641
  %_88.i.i.2 = or disjoint i64 %iter.sroa.0.041.i.i, 3
  %23 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.1
  %byte.i.i.2 = load i8, ptr %23, align 1, !noalias !1641, !noundef !37
  %_22.i.i.2 = icmp sgt i8 %byte.i.i.2, -65
  %24 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.1
  %25 = zext i1 %_22.i.i.2 to i8
  store i8 %25, ptr %24, align 1, !noalias !1641
  %_88.i.i.3 = add nuw nsw i64 %iter.sroa.0.041.i.i, 4
  %26 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.2
  %byte.i.i.3 = load i8, ptr %26, align 1, !noalias !1641, !noundef !37
  %_22.i.i.3 = icmp sgt i8 %byte.i.i.3, -65
  %27 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.2
  %28 = zext i1 %_22.i.i.3 to i8
  store i8 %28, ptr %27, align 1, !noalias !1641
  %exitcond.not.i.i.3 = icmp eq i64 %_88.i.i.3, 32
  br i1 %exitcond.not.i.i.3, label %bb2.i.i.i.i, label %bb10.i.i

bb18.i.i:                                         ; preds = %bb14.i.i, %bb19.i.i
  %_20.sroa.0.3 = phi ptr [ %_19.i33.i.i, %bb19.i.i ], [ %_19.i.i.i, %bb14.i.i ]
  %b.i.i = load i8, ptr %_20.sroa.0.3, align 1, !noalias !1641, !noundef !37
  %_36.i.i = icmp slt i8 %b.i.i, -64
  br i1 %_36.i.i, label %bb19.i.i, label %bb25.i.i

bb19.i.i:                                         ; preds = %bb18.i.i
  %_19.i33.i.i = getelementptr inbounds nuw i8, ptr %_20.sroa.0.3, i64 1
  %_30.not.i.i = icmp eq ptr %_7.i, %_19.i33.i.i
  br i1 %_30.not.i.i, label %bb25.i.i, label %bb18.i.i

bb27.i.i:                                         ; preds = %bb25.i.i, %bb28.i.i
  %remainder.sroa.0.259.i.i = phi i64 [ %31, %bb28.i.i ], [ %remainder.sroa.0.0.i.i, %bb25.i.i ]
  %_19.i385658.i.i = phi ptr [ %_19.i38.i.i, %bb28.i.i ], [ %_20.sroa.0.0, %bb25.i.i ]
  %_41.not.i.i = icmp eq ptr %_7.i, %_19.i385658.i.i
  br i1 %_41.not.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i", label %bb28.i.i

bb28.i.i:                                         ; preds = %bb27.i.i
  %29 = ptrtoint ptr %_19.i385658.i.i to i64
  %30 = sub nuw i64 %8, %29
  %31 = add i64 %remainder.sroa.0.259.i.i, -1
  %b15.i.i = load i8, ptr %_19.i385658.i.i, align 1, !noalias !1641, !noundef !37
  %_130.i.i = zext i8 %b15.i.i to i64
  %32 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %32, align 1, !noalias !1641, !noundef !37
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i.i, i64 %slurp.i.i
  %.not28.i.i = icmp uge i64 %30, %slurp.i.i
  tail call void @llvm.assume(i1 %.not28.i.i)
  %_39.not.i.i = icmp eq i64 %31, 0
  br i1 %_39.not.i.i, label %bb5.critedge.i, label %bb27.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i": ; preds = %bb27.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1638
  br label %bb11

bb5.critedge.i:                                   ; preds = %bb28.i.i, %bb25.i.i
  %_20.sroa.0.1 = phi ptr [ %_20.sroa.0.0, %bb25.i.i ], [ %_19.i38.i.i, %bb28.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1638
  %_7.i.i.i.i = icmp ne ptr %_20.sroa.0.1, %_7.i
  %spec.select.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %_20.sroa.0.1, i64 %spec.select.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %bb11

bb14.i.i.i:                                       ; preds = %bb5.critedge.i
  %x.i.i.i = load i8, ptr %_20.sroa.0.1, align 1, !noalias !1644, !noundef !37
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %spec.select, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i)
  %y.i.i.i = load i8, ptr %spec.select, align 1, !noalias !1644, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %33 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %bb11

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %bb11

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1644, !noundef !37
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %34 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %bb11

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1644, !noundef !37
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %35 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %bb11

bb11:                                             ; preds = %bb8.i.i.i, %bb6.i.i.i, %bb3.i.i.i, %bb4.i.i.i, %bb5.critedge.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i"
  %_0.sroa.0.0.i = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i" ], [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %bb5.critedge.i ], [ %35, %bb8.i.i.i ], [ %34, %bb6.i.i.i ], [ %33, %bb4.i.i.i ]
  %.not.i = icmp eq i32 %_0.sroa.0.0.i, 1114112
  br i1 %.not.i, label %bb2.i7.invoke, label %bb12, !prof !1033

bb2.i7.invoke:                                    ; preds = %bb12, %bb11
  %36 = phi ptr [ @alloc_f41fb7fe42c7a46eaacfd9dc7e0a8778, %bb11 ], [ @alloc_8b6f5e327781aec9c240e85192be9df2, %bb12 ]
; invoke core::option::unwrap_failed
  invoke void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %36) #24
          to label %bb2.i7.cont unwind label %cleanup

bb2.i7.cont:                                      ; preds = %bb2.i7.invoke
  unreachable

bb12:                                             ; preds = %bb11
  %37 = add nsw i32 %_0.sroa.0.0.i, -48
  %_14.i = icmp ult i32 %37, 10
  br i1 %_14.i, label %bb14, label %bb2.i7.invoke, !prof !1649

bb14:                                             ; preds = %bb12
  %38 = getelementptr inbounds nuw i32, ptr %series, i64 %series_index.sroa.0.023
  %_25 = load i32, ptr %38, align 4, !noundef !37
  %_24 = mul i32 %_25, %37
  %39 = add i32 %_24, %result.sroa.0.024
  %_28 = add i64 %series_index.sroa.0.023, 1
  %40 = icmp eq i64 %_28, 6
  %41 = select i1 %40, i64 0, i64 %_28
  %42 = srem i32 %39, 7
  %_0.i.i.i.i.not.not = icmp eq i64 %iter.sroa.4.126, 0
  %iter.sroa.4.1 = tail call i64 @llvm.usub.sat.i64(i64 %iter.sroa.4.126, i64 1)
  br i1 %_0.i.i.i.i.not.not, label %bb8, label %bb7

terminate:                                        ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc5e62471c1d82fa4E.exit.i"
  %43 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  br label %terminate.body

terminate.body:                                   ; preds = %cleanup.i.i, %terminate
; call core::panicking::panic_in_cleanup
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #26
  unreachable
}
