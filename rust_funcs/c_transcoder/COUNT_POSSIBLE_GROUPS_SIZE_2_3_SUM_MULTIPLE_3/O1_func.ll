define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #3 {
start:
  %c = alloca [12 x i8], align 4
  %arr = alloca [8 x i8], align 8
  store i64 %0, ptr %arr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %c)
  store i32 0, ptr %c, align 4
  %1 = getelementptr inbounds nuw i8, ptr %c, i64 4
  store i32 0, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %c, i64 8
  store i32 0, ptr %2, align 4
  %_0.i.i.i10 = icmp sgt i32 %n, 0
  br i1 %_0.i.i.i10, label %bb8, label %bb6

bb6:                                              ; preds = %bb8, %bb8.1, %bb8.2, %start
  %_19 = load i32, ptr %c, align 4, !noundef !37
  %_20 = add i32 %_19, -1
  %_18 = mul i32 %_20, %_19
  %_17 = sdiv i32 %_18, 2
  %_23 = load i32, ptr %1, align 4, !noundef !37
  %_24 = load i32, ptr %2, align 4, !noundef !37
  %_31 = add i32 %_19, -2
  %_26 = mul i32 %_18, %_31
  %_25 = sdiv i32 %_26, 6
  %_37 = add i32 %_23, -1
  %_35 = mul i32 %_37, %_23
  %_39 = add i32 %_23, -2
  %_34 = mul i32 %_35, %_39
  %_33 = sdiv i32 %_34, 6
  %_45 = add i32 %_24, -1
  %_43 = mul i32 %_45, %_24
  %_47 = add i32 %_24, -2
  %_42 = mul i32 %_43, %_47
  %_41 = sdiv i32 %_42, 6
  %_2413 = add i32 %_19, 1
  %reass.add = mul i32 %_24, %_2413
  %reass.mul = mul i32 %reass.add, %_23
  %3 = add nsw i32 %_25, %_17
  %4 = add nsw i32 %3, %_33
  %5 = add i32 %4, %reass.mul
  %6 = add i32 %5, %_41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %c)
  ret i32 %6

panic:                                            ; preds = %bb5.2
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_14.2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d4324b65c441c5fc41ee1924fa8f49ad) #24
  unreachable

bb8:                                              ; preds = %start
  %_13 = load i32, ptr %arr, align 8, !noundef !37
  %_12 = sext i32 %_13 to i64
  %_11 = urem i64 %_12, 3
  %7 = getelementptr inbounds nuw i32, ptr %c, i64 %_11
  %8 = load i32, ptr %7, align 4, !noundef !37
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %_0.i.i.i.not = icmp eq i32 %n, 1
  %spec.select = select i1 %_0.i.i.i.not, i32 1, i32 2
  br i1 %_0.i.i.i.not, label %bb6, label %bb8.1

bb8.1:                                            ; preds = %bb8
  %10 = getelementptr inbounds nuw i8, ptr %arr, i64 4
  %_13.1 = load i32, ptr %10, align 4, !noundef !37
  %_12.1 = sext i32 %_13.1 to i64
  %_11.1 = urem i64 %_12.1, 3
  %11 = getelementptr inbounds nuw i32, ptr %c, i64 %_11.1
  %12 = load i32, ptr %11, align 4, !noundef !37
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %_0.i.i.i.1 = icmp slt i32 %spec.select, %n
  br i1 %_0.i.i.i.1, label %bb5.2, label %bb6

bb5.2:                                            ; preds = %bb8.1
  %_14.2 = zext nneg i32 %spec.select to i64
  br i1 %_0.i.i.i.not, label %bb8.2, label %panic

bb8.2:                                            ; preds = %bb5.2
  %14 = getelementptr inbounds nuw i32, ptr %arr, i64 %_14.2
  %_13.2 = load i32, ptr %14, align 4, !noundef !37
  %_12.2 = sext i32 %_13.2 to i64
  %_11.2 = urem i64 %_12.2, 3
  %15 = getelementptr inbounds nuw i32, ptr %c, i64 %_11.2
  %16 = load i32, ptr %15, align 4, !noundef !37
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  br label %bb6
}
