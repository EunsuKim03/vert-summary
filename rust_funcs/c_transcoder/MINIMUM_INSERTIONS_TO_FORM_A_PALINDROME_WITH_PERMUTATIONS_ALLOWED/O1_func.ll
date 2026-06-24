define noundef range(i32 0, -1) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(none) %str.0, i64 noundef %str.1) unnamed_addr #3 {
start:
  %count = alloca [104 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %count)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %count, i8 0, i64 104, i1 false)
  %_0.i.i.i23.not = icmp eq i64 %str.1, 0
  br i1 %_0.i.i.i23.not, label %bb16.preheader, label %bb9

bb16.preheader:                                   ; preds = %bb10, %start
  br label %bb16

bb15:                                             ; preds = %bb16
  %_0.sroa.0.0 = tail call i32 @llvm.usub.sat.i32(i32 %spec.select.1, i32 1)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %count)
  ret i32 %_0.sroa.0.0

bb16:                                             ; preds = %bb16, %bb16.preheader
  %spec.select2129 = phi i64 [ 1, %bb16.preheader ], [ %spec.select21.1, %bb16 ]
  %res.sroa.0.028 = phi i32 [ 0, %bb16.preheader ], [ %spec.select.1, %bb16 ]
  %iter1.sroa.0.027 = phi i64 [ 0, %bb16.preheader ], [ %spec.select21, %bb16 ]
  %0 = getelementptr inbounds nuw i32, ptr %count, i64 %iter1.sroa.0.027
  %_27 = load i32, ptr %0, align 4, !noundef !37
  %1 = and i32 %_27, -2147483647
  %_25 = icmp eq i32 %1, 1
  %2 = zext i1 %_25 to i32
  %spec.select = add i32 %res.sroa.0.028, %2
  %_0.i.i.i14 = icmp ult i64 %spec.select2129, 26
  %_0.i1.i.i17 = zext i1 %_0.i.i.i14 to i64
  %spec.select21 = add nuw i64 %spec.select2129, %_0.i1.i.i17
  %3 = getelementptr inbounds nuw i32, ptr %count, i64 %spec.select2129
  %_27.1 = load i32, ptr %3, align 4, !noundef !37
  %4 = and i32 %_27.1, -2147483647
  %_25.1 = icmp eq i32 %4, 1
  %5 = zext i1 %_25.1 to i32
  %spec.select.1 = add i32 %spec.select, %5
  %_0.i.i.i14.1 = icmp ult i64 %spec.select21, 26
  %_0.i1.i.i17.1 = zext i1 %_0.i.i.i14.1 to i64
  %spec.select21.1 = add nuw i64 %spec.select21, %_0.i1.i.i17.1
  br i1 %_0.i.i.i14.1, label %bb16, label %bb15

bb9:                                              ; preds = %start, %bb10
  %spec.select1926 = phi i64 [ %spec.select19, %bb10 ], [ 1, %start ]
  %iter.sroa.0.025 = phi i64 [ %spec.select1926, %bb10 ], [ 0, %start ]
  %6 = getelementptr inbounds nuw i8, ptr %str.0, i64 %iter.sroa.0.025
  %_14 = load i8, ptr %6, align 1, !noundef !37
  %_13 = zext i8 %_14 to i64
  %_12 = add nsw i64 %_13, -97
  %_18 = icmp ult i64 %_12, 26
  br i1 %_18, label %bb10, label %panic4

bb10:                                             ; preds = %bb9
  %7 = getelementptr inbounds nuw i32, ptr %count, i64 %_12
  %8 = load i32, ptr %7, align 4, !noundef !37
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %_0.i.i.i = icmp ult i64 %spec.select1926, %str.1
  %_0.i1.i.i = zext i1 %_0.i.i.i to i64
  %spec.select19 = add nuw i64 %spec.select1926, %_0.i1.i.i
  br i1 %_0.i.i.i, label %bb9, label %bb16.preheader

panic4:                                           ; preds = %bb9
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_12, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f41a4e3dee8ef76ed955279c06f41bda) #25
  unreachable
}
