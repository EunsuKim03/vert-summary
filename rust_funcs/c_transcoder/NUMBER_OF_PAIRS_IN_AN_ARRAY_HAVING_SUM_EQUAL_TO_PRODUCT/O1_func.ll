define noundef range(i32 -2147483648, 2147483647) i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %a = alloca [8 x i8], align 8
  store i64 %0, ptr %a, align 8
  %_0.i.i.i11 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i11, label %bb7, label %bb6

bb6:                                              ; preds = %bb7, %bb7.1, %bb7.2, %start
  %zero.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %1, %bb7 ], [ %spec.select.1, %bb7.1 ], [ %spec.select.2, %bb7.2 ]
  %two.sroa.0.0.lcssa = phi i32 [ 0, %start ], [ %2, %bb7 ], [ %two.sroa.0.1.1, %bb7.1 ], [ %two.sroa.0.1.2, %bb7.2 ]
  %_20 = add nsw i32 %zero.sroa.0.0.lcssa, -1
  %_18 = mul nsw i32 %_20, %zero.sroa.0.0.lcssa
  %_17 = sdiv i32 %_18, 2
  %_24 = add nsw i32 %two.sroa.0.0.lcssa, -1
  %_22 = mul nsw i32 %_24, %two.sroa.0.0.lcssa
  %_21 = sdiv i32 %_22, 2
  %cnt = add nsw i32 %_21, %_17
  ret i32 %cnt

bb7:                                              ; preds = %start
  %_13 = load i32, ptr %a, align 8, !noundef !37
  %_12 = icmp eq i32 %_13, 0
  %1 = zext i1 %_12 to i32
  %_16 = icmp eq i32 %_13, 2
  %2 = zext i1 %_16 to i32
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select7 = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb7.1

bb7.1:                                            ; preds = %bb7
  %3 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %_13.1 = load i32, ptr %3, align 4, !noundef !37
  %_12.1 = icmp eq i32 %_13.1, 0
  %4 = zext i1 %_12.1 to i32
  %spec.select.1 = add nuw nsw i32 %1, %4
  %_16.1 = icmp eq i32 %_13.1, 2
  %5 = zext i1 %_16.1 to i32
  %two.sroa.0.1.1 = add nuw nsw i32 %2, %5
  %_0.i.i.i.1 = icmp slt i32 %spec.select7, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb7.1
  %_14.2 = zext nneg i32 %spec.select7 to i64
  br i1 %_0.i.i.i.not, label %bb7.2, label %panic

bb7.2:                                            ; preds = %bb5.2
  %6 = getelementptr inbounds nuw i32, ptr %a, i64 %_14.2
  %_13.2 = load i32, ptr %6, align 4, !noundef !37
  %_12.2 = icmp eq i32 %_13.2, 0
  %7 = zext i1 %_12.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %7
  %_16.2 = icmp eq i32 %_13.2, 2
  %8 = zext i1 %_16.2 to i32
  %two.sroa.0.1.2 = add nuw nsw i32 %two.sroa.0.1.1, %8
  br label %bb6

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d384d5ef7681f6b8e3e101784ea57659) #24
  unreachable
}
