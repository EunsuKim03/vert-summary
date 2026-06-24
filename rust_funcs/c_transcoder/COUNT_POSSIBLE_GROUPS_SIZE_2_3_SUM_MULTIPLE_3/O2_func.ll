define noundef i32 @f_gold(i64 %0, i32 noundef %n) unnamed_addr #1 {
start:
  %c = alloca [12 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %c)
  store i32 0, ptr %c, align 4
  %1 = getelementptr inbounds nuw i8, ptr %c, i64 4
  store i32 0, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %c, i64 8
  store i32 0, ptr %2, align 4
  %_499 = icmp sgt i32 %n, 0
  br i1 %_499, label %bb4.preheader, label %bb5

bb4.preheader:                                    ; preds = %start
  %sext = shl i64 %0, 32
  %_7 = ashr exact i64 %sext, 32
  %_6 = urem i64 %_7, 3
  %3 = getelementptr inbounds nuw i32, ptr %c, i64 %_6
  %4 = load i32, ptr %3, align 4, !noundef !23
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %exitcond14.not = icmp eq i32 %n, 1
  br i1 %exitcond14.not, label %bb5.loopexit, label %bb4.1

bb5.loopexit:                                     ; preds = %bb4.1, %bb4.preheader
  %_14.pre = load i32, ptr %c, align 4
  %_18.pre = load i32, ptr %1, align 4
  %_19.pre = load i32, ptr %2, align 4
  br label %bb5

bb5:                                              ; preds = %bb5.loopexit, %start
  %_19 = phi i32 [ %_19.pre, %bb5.loopexit ], [ 0, %start ]
  %_18 = phi i32 [ %_18.pre, %bb5.loopexit ], [ 0, %start ]
  %_14 = phi i32 [ %_14.pre, %bb5.loopexit ], [ 0, %start ]
  %_15 = add i32 %_14, -1
  %_13 = mul i32 %_15, %_14
  %_12 = sdiv i32 %_13, 2
  %_26 = add i32 %_14, -2
  %_21 = mul i32 %_13, %_26
  %_20 = sdiv i32 %_21, 6
  %_32 = add i32 %_18, -1
  %_30 = mul i32 %_32, %_18
  %_34 = add i32 %_18, -2
  %_29 = mul i32 %_30, %_34
  %_28 = sdiv i32 %_29, 6
  %_40 = add i32 %_19, -1
  %_38 = mul i32 %_40, %_19
  %_42 = add i32 %_19, -2
  %_37 = mul i32 %_38, %_42
  %_36 = sdiv i32 %_37, 6
  %_1911 = add i32 %_14, 1
  %reass.add = mul i32 %_19, %_1911
  %reass.mul = mul i32 %reass.add, %_18
  %6 = add nsw i32 %_20, %_12
  %7 = add nsw i32 %6, %_28
  %8 = add i32 %7, %reass.mul
  %9 = add i32 %8, %_36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %c)
  ret i32 %9

panic:                                            ; preds = %bb4.1
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef 2, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_d4324b65c441c5fc41ee1924fa8f49ad) #18
  unreachable

bb4.1:                                            ; preds = %bb4.preheader
  %_7.1 = ashr i64 %0, 32
  %_6.1 = urem i64 %_7.1, 3
  %10 = getelementptr inbounds nuw i32, ptr %c, i64 %_6.1
  %11 = load i32, ptr %10, align 4, !noundef !23
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  %exitcond14.1.not = icmp eq i32 %n, 2
  br i1 %exitcond14.1.not, label %bb5.loopexit, label %panic
}
