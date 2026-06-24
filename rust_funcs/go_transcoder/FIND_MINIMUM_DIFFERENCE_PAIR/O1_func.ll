define noundef range(i32 0, -2147483647) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_6 = add i32 %n, -1
  %_5 = sext i32 %_6 to i64
  %_0.i.i.i34.not = icmp eq i32 %_6, 0
  br i1 %_0.i.i.i34.not, label %bb6, label %bb5.lr.ph

bb5.lr.ph:                                        ; preds = %start
  %_15 = sext i32 %n to i64
  %_0.i.i.i1128.peel = icmp ugt i32 %n, 1
  br i1 %_0.i.i.i1128.peel, label %bb13.peel, label %bb2.loopexit.peel

bb13.peel:                                        ; preds = %bb5.lr.ph
  %_24.peel = load i32, ptr %arr, align 8, !noundef !37
  %1 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_26.peel = load i32, ptr %1, align 4, !noundef !37
  %_23.peel = sub i32 %_24.peel, %_26.peel
  %_0.sroa.0.0.i.peel = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_23.peel, i1 false)
  %_0.i.i.i11.peel.not = icmp eq i32 %n, 2
  br i1 %_0.i.i.i11.peel.not, label %bb2.loopexit.peel, label %panic2

bb2.loopexit.peel:                                ; preds = %bb13.peel, %bb5.lr.ph
  %diff.sroa.0.1.lcssa.peel = phi i32 [ 2147483647, %bb5.lr.ph ], [ %_0.sroa.0.0.i.peel, %bb13.peel ]
  %_0.i.i.i.peel.not = icmp eq i32 %_6, 1
  %spec.select.peel = select i1 %_0.i.i.i.peel.not, i64 1, i64 2
  br i1 %_0.i.i.i.peel.not, label %bb6, label %bb5.peel50

bb5.peel50:                                       ; preds = %bb2.loopexit.peel
  %_0.i.i.i1128.peel52 = icmp ugt i32 %n, 2
  br i1 %_0.i.i.i1128.peel52, label %panic2, label %bb2.loopexit.peel75

bb2.loopexit.peel75:                              ; preds = %bb5.peel50
  %_0.i.i.i.peel77 = icmp ult i64 %spec.select.peel, %_5
  %_0.i1.i.i.peel78 = zext i1 %_0.i.i.i.peel77 to i64
  %spec.select.peel79 = add nuw nsw i64 %spec.select.peel, %_0.i1.i.i.peel78
  br i1 %_0.i.i.i.peel77, label %bb5, label %bb6

bb2.loopexit:                                     ; preds = %bb13, %bb5
  %diff.sroa.0.1.lcssa = phi i32 [ %diff.sroa.0.037, %bb5 ], [ %_0.sroa.0.0.i16, %bb13 ]
  %_0.i.i.i = icmp ult i64 %spec.select38, %_5
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select = add nuw i64 %spec.select38, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb5, label %bb6, !llvm.loop !1630

bb5:                                              ; preds = %bb2.loopexit.peel75, %bb2.loopexit
  %spec.select38 = phi i64 [ %spec.select, %bb2.loopexit ], [ %spec.select.peel79, %bb2.loopexit.peel75 ]
  %diff.sroa.0.037 = phi i32 [ %diff.sroa.0.1.lcssa, %bb2.loopexit ], [ %diff.sroa.0.1.lcssa.peel, %bb2.loopexit.peel75 ]
  %iter.sroa.0.036 = phi i64 [ %spec.select38, %bb2.loopexit ], [ %spec.select.peel, %bb2.loopexit.peel75 ]
  %_14 = add nuw i64 %iter.sroa.0.036, 1
  %_0.i.i.i1128 = icmp ult i64 %_14, %_15
  br i1 %_0.i.i.i1128, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_25 = icmp ult i64 %iter.sroa.0.036, 2
  %2 = getelementptr inbounds nuw i32, ptr %arr, i64 %iter.sroa.0.036
  br i1 %_25, label %bb10.preheader, label %panic

bb10.preheader:                                   ; preds = %bb10.lr.ph
  %spec.select1830 = or disjoint i64 %iter.sroa.0.036, 2
  %_27 = icmp eq i64 %iter.sroa.0.036, 0
  br i1 %_27, label %bb13, label %panic2

bb6:                                              ; preds = %bb2.loopexit.peel, %bb2.loopexit.peel75, %bb2.loopexit, %start
  %diff.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %diff.sroa.0.1.lcssa.peel, %bb2.loopexit.peel ], [ %diff.sroa.0.1.lcssa.peel, %bb2.loopexit.peel75 ], [ %diff.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %diff.sroa.0.0.lcssa

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter.sroa.0.036, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_eb80c4f76e330d7d9a37078f76c4858c) #24
  unreachable

bb13:                                             ; preds = %bb10.preheader
  %_24 = load i32, ptr %2, align 4, !noundef !37
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14
  %_26 = load i32, ptr %3, align 4, !noundef !37
  %_23 = sub i32 %_24, %_26
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_23, i1 false)
  %_0.sroa.0.0.i16 = tail call noundef range(i32 0, -2147483647) i32 @llvm.smin.i32(i32 range(i32 0, -2147483647) %_0.sroa.0.0.i, i32 range(i32 0, -2147483647) %diff.sroa.0.037)
  %_0.i.i.i11 = icmp ult i64 %spec.select1830, %_15
  br i1 %_0.i.i.i11, label %panic2, label %bb2.loopexit

panic2:                                           ; preds = %bb10.preheader, %bb13, %bb5.peel50, %bb13.peel
  %iter1.sroa.0.031.lcssa = phi i64 [ 2, %bb13.peel ], [ 2, %bb5.peel50 ], [ %_14, %bb10.preheader ], [ %spec.select1830, %bb13 ]
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %iter1.sroa.0.031.lcssa, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_9bacd6fca5735c30055c8dbd0f953e7b) #24
  unreachable
}
