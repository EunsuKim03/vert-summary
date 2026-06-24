define noundef i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %str.0, i64 noundef %str.1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %start_bytes.i.i = alloca [32 x i8], align 1
  %_0.i.i.i11.not = icmp eq i64 %str.1, 0
  br i1 %_0.i.i.i11.not, label %bb7, label %bb6.lr.ph

bb6.lr.ph:                                        ; preds = %start
  %_7.i = getelementptr i8, ptr %str.0, i64 %str.1
  %0 = lshr i64 %str.1, 5
  %_65.i.i = getelementptr inbounds nuw [32 x i8], ptr %str.0, i64 %0
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
  %1 = ptrtoint ptr %_7.i to i64
  br label %bb6

bb6:                                              ; preds = %bb6.lr.ph, %bb13
  %spec.select516 = phi i64 [ 1, %bb6.lr.ph ], [ %spec.select5, %bb13 ]
  %zero_count.sroa.0.015 = phi i32 [ 0, %bb6.lr.ph ], [ %zero_count.sroa.0.2, %bb13 ]
  %one_count.sroa.0.014 = phi i32 [ 0, %bb6.lr.ph ], [ %one_count.sroa.0.1, %bb13 ]
  %iter.sroa.0.013 = phi i64 [ 0, %bb6.lr.ph ], [ %spec.select516, %bb13 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1630
  %_3.i.i = icmp ugt i64 %iter.sroa.0.013, 31
  br i1 %_3.i.i, label %bb1.i.i, label %bb25.i.i

bb1.i.i:                                          ; preds = %bb6
  %_1042.not.i.i = icmp eq i64 %iter.sroa.0.013, 32
  br i1 %_1042.not.i.i, label %bb14.i.i, label %bb4.i.i

bb25.i.i:                                         ; preds = %bb19.i.i, %bb18.i.i, %bb14.i.i, %bb6
  %_15.sroa.0.0 = phi ptr [ %_19.i.i.i, %bb14.i.i ], [ %str.0, %bb6 ], [ %_7.i, %bb19.i.i ], [ %_15.sroa.0.3, %bb18.i.i ]
  %remainder.sroa.0.0.i.i = phi i64 [ %remainder.sroa.0.1.lcssa.i.i, %bb14.i.i ], [ %iter.sroa.0.013, %bb6 ], [ %remainder.sroa.0.1.lcssa.i.i, %bb18.i.i ], [ %remainder.sroa.0.1.lcssa.i.i, %bb19.i.i ]
  %_39.not57.i.i = icmp eq i64 %remainder.sroa.0.0.i.i, 0
  br i1 %_39.not57.i.i, label %bb5.critedge.i, label %bb27.i.i

bb4.i.i:                                          ; preds = %bb1.i.i, %bb2.i.i.i.i
  %remainder.sroa.0.145.i.i = phi i64 [ %3, %bb2.i.i.i.i ], [ %iter.sroa.0.013, %bb1.i.i ]
  %chunks.sroa.0.044.i.i = phi ptr [ %chunks.sroa.0.1.i.i, %bb2.i.i.i.i ], [ %str.0, %bb1.i.i ]
  %bytes_skipped.sroa.0.043.i.i = phi i64 [ %2, %bb2.i.i.i.i ], [ 0, %bb1.i.i ]
  %_73.i.i = icmp eq ptr %chunks.sroa.0.044.i.i, %_65.i.i
  %chunks.sroa.0.1.idx.i.i = select i1 %_73.i.i, i64 0, i64 32
  %chunks.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %chunks.sroa.0.1.idx.i.i
  br i1 %_73.i.i, label %bb14.i.i, label %bb5.i.i

bb14.i.i:                                         ; preds = %bb2.i.i.i.i, %bb4.i.i, %bb1.i.i
  %bytes_skipped.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb1.i.i ], [ %bytes_skipped.sroa.0.043.i.i, %bb4.i.i ], [ %2, %bb2.i.i.i.i ]
  %remainder.sroa.0.1.lcssa.i.i = phi i64 [ %iter.sroa.0.013, %bb1.i.i ], [ %remainder.sroa.0.145.i.i, %bb4.i.i ], [ %3, %bb2.i.i.i.i ]
  %_19.i.i.i = getelementptr inbounds nuw i8, ptr %str.0, i64 %bytes_skipped.sroa.0.0.lcssa.i.i
  %.not27.i.i = icmp ule i64 %bytes_skipped.sroa.0.0.lcssa.i.i, %str.1
  tail call void @llvm.assume(i1 %.not27.i.i)
  %_30.not53.i.i = icmp samesign eq i64 %str.1, %bytes_skipped.sroa.0.0.lcssa.i.i
  br i1 %_30.not53.i.i, label %bb25.i.i, label %bb18.i.i

bb5.i.i:                                          ; preds = %bb4.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %start_bytes.i.i, i8 0, i64 32, i1 false), !noalias !1633
  br label %bb10.i.i

bb2.i.i.i.i:                                      ; preds = %bb10.i.i
  %_92.sroa.34.0.copyload.i.i = load i8, ptr %_92.sroa.34.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.33.0.copyload.i.i = load i8, ptr %_92.sroa.33.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.32.0.copyload.i.i = load i8, ptr %_92.sroa.32.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.31.0.copyload.i.i = load i8, ptr %_92.sroa.31.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.30.0.copyload.i.i = load i8, ptr %_92.sroa.30.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.29.0.copyload.i.i = load i8, ptr %_92.sroa.29.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.28.0.copyload.i.i = load i8, ptr %_92.sroa.28.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.27.0.copyload.i.i = load i8, ptr %_92.sroa.27.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.26.0.copyload.i.i = load i8, ptr %_92.sroa.26.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.25.0.copyload.i.i = load i8, ptr %_92.sroa.25.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.24.0.copyload.i.i = load i8, ptr %_92.sroa.24.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.23.0.copyload.i.i = load i8, ptr %_92.sroa.23.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.22.0.copyload.i.i = load i8, ptr %_92.sroa.22.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.21.0.copyload.i.i = load i8, ptr %_92.sroa.21.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.20.0.copyload.i.i = load i8, ptr %_92.sroa.20.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.19.0.copyload.i.i = load i8, ptr %_92.sroa.19.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.18.0.copyload.i.i = load i8, ptr %_92.sroa.18.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.17.0.copyload.i.i = load i8, ptr %_92.sroa.17.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.16.0.copyload.i.i = load i8, ptr %_92.sroa.16.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.15.0.copyload.i.i = load i8, ptr %_92.sroa.15.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.14.0.copyload.i.i = load i8, ptr %_92.sroa.14.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.13.0.copyload.i.i = load i8, ptr %_92.sroa.13.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.12.0.copyload.i.i = load i8, ptr %_92.sroa.12.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.11.0.copyload.i.i = load i8, ptr %_92.sroa.11.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.10.0.copyload.i.i = load i8, ptr %_92.sroa.10.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.9.0.copyload.i.i = load i8, ptr %_92.sroa.9.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.8.0.copyload.i.i = load i8, ptr %_92.sroa.8.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.7.0.copyload.i.i = load i8, ptr %_92.sroa.7.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.6.0.copyload.i.i = load i8, ptr %_92.sroa.6.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.5.0.copyload.i.i = load i8, ptr %_92.sroa.5.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.4.0.copyload.i.i = load i8, ptr %_92.sroa.4.0.start_bytes.sroa_idx.i.i, align 1, !noalias !1633
  %_92.sroa.0.0.copyload.i.i = load i8, ptr %start_bytes.i.i, align 1, !noalias !1633
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
  %2 = add i64 %bytes_skipped.sroa.0.043.i.i, 32
  %_25.i.i = zext i8 %_4.0.i.i.i.i.i.i.31.i.i to i64
  %3 = sub i64 %remainder.sroa.0.145.i.i, %_25.i.i
  %_10.i.i = icmp ugt i64 %3, 32
  br i1 %_10.i.i, label %bb4.i.i, label %bb14.i.i

bb10.i.i:                                         ; preds = %bb10.i.i, %bb5.i.i
  %iter.sroa.0.041.i.i = phi i64 [ 0, %bb5.i.i ], [ %_88.i.i.3, %bb10.i.i ]
  %_88.i.i = or disjoint i64 %iter.sroa.0.041.i.i, 1
  %4 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %iter.sroa.0.041.i.i
  %byte.i.i = load i8, ptr %4, align 1, !noalias !1633, !noundef !37
  %_22.i.i = icmp sgt i8 %byte.i.i, -65
  %5 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %iter.sroa.0.041.i.i
  %6 = zext i1 %_22.i.i to i8
  store i8 %6, ptr %5, align 1, !noalias !1633
  %_88.i.i.1 = or disjoint i64 %iter.sroa.0.041.i.i, 2
  %7 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i
  %byte.i.i.1 = load i8, ptr %7, align 1, !noalias !1633, !noundef !37
  %_22.i.i.1 = icmp sgt i8 %byte.i.i.1, -65
  %8 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i
  %9 = zext i1 %_22.i.i.1 to i8
  store i8 %9, ptr %8, align 1, !noalias !1633
  %_88.i.i.2 = or disjoint i64 %iter.sroa.0.041.i.i, 3
  %10 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.1
  %byte.i.i.2 = load i8, ptr %10, align 1, !noalias !1633, !noundef !37
  %_22.i.i.2 = icmp sgt i8 %byte.i.i.2, -65
  %11 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.1
  %12 = zext i1 %_22.i.i.2 to i8
  store i8 %12, ptr %11, align 1, !noalias !1633
  %_88.i.i.3 = add nuw nsw i64 %iter.sroa.0.041.i.i, 4
  %13 = getelementptr inbounds nuw i8, ptr %chunks.sroa.0.044.i.i, i64 %_88.i.i.2
  %byte.i.i.3 = load i8, ptr %13, align 1, !noalias !1633, !noundef !37
  %_22.i.i.3 = icmp sgt i8 %byte.i.i.3, -65
  %14 = getelementptr inbounds nuw i8, ptr %start_bytes.i.i, i64 %_88.i.i.2
  %15 = zext i1 %_22.i.i.3 to i8
  store i8 %15, ptr %14, align 1, !noalias !1633
  %exitcond.not.i.i.3 = icmp eq i64 %_88.i.i.3, 32
  br i1 %exitcond.not.i.i.3, label %bb2.i.i.i.i, label %bb10.i.i

bb18.i.i:                                         ; preds = %bb14.i.i, %bb19.i.i
  %_15.sroa.0.3 = phi ptr [ %_19.i33.i.i, %bb19.i.i ], [ %_19.i.i.i, %bb14.i.i ]
  %b.i.i = load i8, ptr %_15.sroa.0.3, align 1, !noalias !1633, !noundef !37
  %_36.i.i = icmp slt i8 %b.i.i, -64
  br i1 %_36.i.i, label %bb19.i.i, label %bb25.i.i

bb19.i.i:                                         ; preds = %bb18.i.i
  %_19.i33.i.i = getelementptr inbounds nuw i8, ptr %_15.sroa.0.3, i64 1
  %_30.not.i.i = icmp eq ptr %_7.i, %_19.i33.i.i
  br i1 %_30.not.i.i, label %bb25.i.i, label %bb18.i.i

bb27.i.i:                                         ; preds = %bb25.i.i, %bb28.i.i
  %remainder.sroa.0.259.i.i = phi i64 [ %18, %bb28.i.i ], [ %remainder.sroa.0.0.i.i, %bb25.i.i ]
  %_19.i385658.i.i = phi ptr [ %_19.i38.i.i, %bb28.i.i ], [ %_15.sroa.0.0, %bb25.i.i ]
  %_41.not.i.i = icmp eq ptr %_7.i, %_19.i385658.i.i
  br i1 %_41.not.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i", label %bb28.i.i

bb28.i.i:                                         ; preds = %bb27.i.i
  %16 = ptrtoint ptr %_19.i385658.i.i to i64
  %17 = sub nuw i64 %1, %16
  %18 = add i64 %remainder.sroa.0.259.i.i, -1
  %b15.i.i = load i8, ptr %_19.i385658.i.i, align 1, !noalias !1633, !noundef !37
  %_130.i.i = zext i8 %b15.i.i to i64
  %19 = getelementptr inbounds nuw i8, ptr @alloc_db51a71a1b6b25b4224d4dc5277f93e7, i64 %_130.i.i
  %_128.i.i = load i8, ptr %19, align 1, !noalias !1633, !noundef !37
  %slurp.i.i = zext i8 %_128.i.i to i64
  %_19.i38.i.i = getelementptr inbounds nuw i8, ptr %_19.i385658.i.i, i64 %slurp.i.i
  %.not28.i.i = icmp uge i64 %17, %slurp.i.i
  tail call void @llvm.assume(i1 %.not28.i.i)
  %_39.not.i.i = icmp eq i64 %18, 0
  br i1 %_39.not.i.i, label %bb5.critedge.i, label %bb27.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i": ; preds = %bb27.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1630
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit

bb5.critedge.i:                                   ; preds = %bb28.i.i, %bb25.i.i
  %_15.sroa.0.1 = phi ptr [ %_15.sroa.0.0, %bb25.i.i ], [ %_19.i38.i.i, %bb28.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %start_bytes.i.i), !noalias !1630
  %_7.i.i.i.i = icmp ne ptr %_15.sroa.0.1, %_7.i
  %spec.select7.idx = zext i1 %_7.i.i.i.i to i64
  %spec.select7 = getelementptr inbounds nuw i8, ptr %_15.sroa.0.1, i64 %spec.select7.idx
  br i1 %_7.i.i.i.i, label %bb14.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit

bb14.i.i.i:                                       ; preds = %bb5.critedge.i
  %x.i.i.i = load i8, ptr %_15.sroa.0.1, align 1, !noalias !1636, !noundef !37
  %_6.i.i.i = icmp sgt i8 %x.i.i.i, -1
  br i1 %_6.i.i.i, label %bb3.i.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb14.i.i.i
  %_30.i.i.i = and i8 %x.i.i.i, 31
  %init.i.i.i = zext nneg i8 %_30.i.i.i to i32
  %_7.i10.i.i.i = icmp ne ptr %spec.select7, %_7.i
  tail call void @llvm.assume(i1 %_7.i10.i.i.i)
  %y.i.i.i = load i8, ptr %spec.select7, align 1, !noalias !1636, !noundef !37
  %_34.i.i.i = shl nuw nsw i32 %init.i.i.i, 6
  %_36.i.i.i = and i8 %y.i.i.i, 63
  %_35.i.i.i = zext nneg i8 %_36.i.i.i to i32
  %20 = or disjoint i32 %_34.i.i.i, %_35.i.i.i
  %_13.i.i.i = icmp ugt i8 %x.i.i.i, -33
  br i1 %_13.i.i.i, label %bb6.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit

bb3.i.i.i:                                        ; preds = %bb14.i.i.i
  %_7.i.i.i = zext nneg i8 %x.i.i.i to i32
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit

bb6.i.i.i:                                        ; preds = %bb4.i.i.i
  %_18.i12.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select7, i64 1
  %_7.i17.i.i.i = icmp ne ptr %_18.i12.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i17.i.i.i)
  %z.i.i.i = load i8, ptr %_18.i12.i.i.i, align 1, !noalias !1636, !noundef !37
  %_40.i.i.i = shl nuw nsw i32 %_35.i.i.i, 6
  %_42.i.i.i = and i8 %z.i.i.i, 63
  %_41.i.i.i = zext nneg i8 %_42.i.i.i to i32
  %y_z.i.i.i = or disjoint i32 %_40.i.i.i, %_41.i.i.i
  %_20.i.i.i = shl nuw nsw i32 %init.i.i.i, 12
  %21 = or disjoint i32 %y_z.i.i.i, %_20.i.i.i
  %_21.i.i.i = icmp ugt i8 %x.i.i.i, -17
  br i1 %_21.i.i.i, label %bb8.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_18.i19.i.i.i = getelementptr inbounds nuw i8, ptr %spec.select7, i64 2
  %_7.i24.i.i.i = icmp ne ptr %_18.i19.i.i.i, %_7.i
  tail call void @llvm.assume(i1 %_7.i24.i.i.i)
  %w.i.i.i = load i8, ptr %_18.i19.i.i.i, align 1, !noalias !1636, !noundef !37
  %_26.i.i.i = shl nuw nsw i32 %init.i.i.i, 18
  %_25.i.i.i = and i32 %_26.i.i.i, 1835008
  %_46.i.i.i = shl nuw nsw i32 %y_z.i.i.i, 6
  %_48.i.i.i = and i8 %w.i.i.i, 63
  %_47.i.i.i = zext nneg i8 %_48.i.i.i to i32
  %_27.i.i.i = or disjoint i32 %_46.i.i.i, %_47.i.i.i
  %22 = or disjoint i32 %_27.i.i.i, %_25.i.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit

_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit: ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i", %bb5.critedge.i, %bb4.i.i.i, %bb3.i.i.i, %bb6.i.i.i, %bb8.i.i.i
  %_0.sroa.0.0.i = phi i32 [ 1114112, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h0ee195666107b070E.exit.i" ], [ %_7.i.i.i, %bb3.i.i.i ], [ 1114112, %bb5.critedge.i ], [ %22, %bb8.i.i.i ], [ %21, %bb6.i.i.i ], [ %20, %bb4.i.i.i ]
  switch i32 %_0.sroa.0.0.i, label %bb12 [
    i32 1114112, label %bb2.i
    i32 49, label %bb11
  ], !prof !1641

bb2.i:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit
; call core::option::unwrap_failed
  tail call void @_ZN4core6option13unwrap_failed17hef2534b77b89c04fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_411365d82c90205394a346807bee4850) #24
  unreachable

bb7:                                              ; preds = %bb13, %start
  %one_count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %one_count.sroa.0.1, %bb13 ]
  %zero_count.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %zero_count.sroa.0.2, %bb13 ]
  %23 = and i32 %one_count.sroa.0.0.lcssa, 1
  %_16 = icmp eq i32 %23, 0
  %spec.select = select i1 %_16, i32 %zero_count.sroa.0.0.lcssa, i32 %one_count.sroa.0.0.lcssa
  ret i32 %spec.select

bb12:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit
  %24 = add i32 %zero_count.sroa.0.015, 1
  br label %bb13

bb11:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h30959fc69b61ce67E.exit
  %25 = add i32 %one_count.sroa.0.014, 1
  br label %bb13

bb13:                                             ; preds = %bb11, %bb12
  %one_count.sroa.0.1 = phi i32 [ %25, %bb11 ], [ %one_count.sroa.0.014, %bb12 ]
  %zero_count.sroa.0.2 = phi i32 [ %zero_count.sroa.0.015, %bb11 ], [ %24, %bb12 ]
  %_0.i.i.i = icmp ult i64 %spec.select516, %str.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select5 = add nuw i64 %spec.select516, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb6, label %bb7
}
