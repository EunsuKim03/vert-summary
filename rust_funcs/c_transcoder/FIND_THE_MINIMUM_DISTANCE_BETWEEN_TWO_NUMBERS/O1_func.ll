define noundef range(i32 0, -2147483647) i32 @f_gold(i64 %0, i32 noundef %n, i32 noundef %x, i32 noundef %y) unnamed_addr #3 {
start:
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  %_0.i.i.i33 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i33, label %bb5, label %bb6

bb2.loopexit:                                     ; preds = %bb28, %bb5
  %min_dist.sroa.0.1.lcssa = phi i32 [ %min_dist.sroa.0.035, %bb5 ], [ %min_dist.sroa.0.2, %bb28 ]
  %_0.i.i.i = icmp slt i32 %spec.select36, %n
  %1 = zext i1 %_0.i.i.i to i32
  %spec.select = add nuw nsw i32 %spec.select36, %1
  br i1 %_0.i.i.i, label %bb5, label %bb6

bb5:                                              ; preds = %start, %bb2.loopexit
  %spec.select36 = phi i32 [ %spec.select, %bb2.loopexit ], [ 1, %start ]
  %min_dist.sroa.0.035 = phi i32 [ %min_dist.sroa.0.1.lcssa, %bb2.loopexit ], [ 2147483647, %start ]
  %iter.sroa.0.034 = phi i32 [ %spec.select36, %bb2.loopexit ], [ 0, %start ]
  %_14 = add nuw i32 %iter.sroa.0.034, 1
  %_0.i.i.i1128 = icmp slt i32 %_14, %n
  %2 = zext i1 %_0.i.i.i1128 to i32
  %spec.select1729 = add nsw i32 %_14, %2
  br i1 %_0.i.i.i1128, label %bb10.lr.ph, label %bb2.loopexit

bb10.lr.ph:                                       ; preds = %bb5
  %_22 = zext nneg i32 %iter.sroa.0.034 to i64
  %_23 = icmp samesign ult i32 %iter.sroa.0.034, 2
  br i1 %_23, label %bb10.lr.ph.split, label %panic

bb10.lr.ph.split:                                 ; preds = %bb10.lr.ph
  %3 = getelementptr inbounds nuw i32, ptr %arr, i64 %_22
  %_21 = load i32, ptr %3, align 4, !noundef !37
  %_20 = icmp eq i32 %x, %_21
  %_28 = icmp eq i32 %y, %_21
  br label %bb10

bb6:                                              ; preds = %bb2.loopexit, %start
  %min_dist.sroa.0.0.lcssa = phi i32 [ 2147483647, %start ], [ %min_dist.sroa.0.1.lcssa, %bb2.loopexit ]
  ret i32 %min_dist.sroa.0.0.lcssa

bb10:                                             ; preds = %bb10.lr.ph.split, %bb28
  %spec.select1732 = phi i32 [ %spec.select1729, %bb10.lr.ph.split ], [ %spec.select17, %bb28 ]
  %min_dist.sroa.0.131 = phi i32 [ %min_dist.sroa.0.035, %bb10.lr.ph.split ], [ %min_dist.sroa.0.2, %bb28 ]
  %iter1.sroa.0.030 = phi i32 [ %_14, %bb10.lr.ph.split ], [ %spec.select1732, %bb28 ]
  br i1 %_20, label %bb13, label %bb18

panic:                                            ; preds = %bb10.lr.ph
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_22, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f6151af29bf0ae1bdc150272360ee72a) #24
  unreachable

bb13:                                             ; preds = %bb10
  %_26 = sext i32 %iter1.sroa.0.030 to i64
  %_27 = icmp ult i32 %iter1.sroa.0.030, 2
  br i1 %_27, label %bb14, label %panic2

bb14:                                             ; preds = %bb13
  %4 = getelementptr inbounds nuw i32, ptr %arr, i64 %_26
  %_25 = load i32, ptr %4, align 4, !noundef !37
  %_24 = icmp eq i32 %y, %_25
  br i1 %_24, label %bb22, label %bb18

panic2:                                           ; preds = %bb13
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_26, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_c9cd27c8e831e5c1cdecc91bf240fbc1) #24
  unreachable

bb18:                                             ; preds = %bb10, %bb14
  br i1 %_28, label %bb19, label %bb28

bb28:                                             ; preds = %bb22, %bb20, %bb18
  %min_dist.sroa.0.2 = phi i32 [ %min_dist.sroa.0.131, %bb20 ], [ %min_dist.sroa.0.131, %bb18 ], [ %spec.select19, %bb22 ]
  %_0.i.i.i11 = icmp slt i32 %spec.select1732, %n
  %5 = zext i1 %_0.i.i.i11 to i32
  %spec.select17 = add nuw nsw i32 %spec.select1732, %5
  br i1 %_0.i.i.i11, label %bb10, label %bb2.loopexit

bb19:                                             ; preds = %bb18
  %_31 = sext i32 %iter1.sroa.0.030 to i64
  %_32 = icmp ult i32 %iter1.sroa.0.030, 2
  br i1 %_32, label %bb20, label %panic4

bb20:                                             ; preds = %bb19
  %6 = getelementptr inbounds nuw i32, ptr %arr, i64 %_31
  %_30 = load i32, ptr %6, align 4, !noundef !37
  %_29 = icmp eq i32 %x, %_30
  br i1 %_29, label %bb22, label %bb28

panic4:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_31, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_8f7763b543def65c2103173405f12f97) #24
  unreachable

bb22:                                             ; preds = %bb20, %bb14
  %_36 = sub i32 %iter.sroa.0.034, %iter1.sroa.0.030
  %_0.sroa.0.0.i = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %_36, i1 false)
  %spec.select19 = tail call i32 @llvm.smin.i32(i32 %min_dist.sroa.0.131, i32 %_0.sroa.0.0.i)
  br label %bb28
}
