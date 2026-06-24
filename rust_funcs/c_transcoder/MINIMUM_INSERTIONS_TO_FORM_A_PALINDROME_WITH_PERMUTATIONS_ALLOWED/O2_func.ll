define noundef range(i32 0, -1) i32 @f_gold(ptr noalias noundef nonnull readonly align 1 captures(none) %str.0, i64 noundef %str.1) unnamed_addr #1 {
start:
  %count = alloca [104 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %count)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %count, i8 0, i64 104, i1 false)
  %_219.not = icmp eq i64 %str.1, 0
  br i1 %_219.not, label %bb14, label %bb12

bb12:                                             ; preds = %start, %bb3
  %iter.sroa.0.010 = phi i64 [ %35, %bb3 ], [ 0, %start ]
  %0 = getelementptr inbounds nuw i8, ptr %str.0, i64 %iter.sroa.0.010
  %_9 = load i8, ptr %0, align 1, !noundef !23
  %_8 = zext i8 %_9 to i64
  %_7 = add nsw i64 %_8, -97
  %_11 = icmp ult i64 %_7, 26
  br i1 %_11, label %bb3, label %panic4

bb14:                                             ; preds = %bb3, %start
  %1 = getelementptr inbounds nuw i8, ptr %count, i64 16
  %wide.load18 = load <4 x i32>, ptr %1, align 16
  %2 = and <4 x i32> %wide.load18, splat (i32 -2147483647)
  %3 = icmp eq <4 x i32> %2, splat (i32 1)
  %4 = zext <4 x i1> %3 to <4 x i32>
  %5 = getelementptr inbounds nuw i8, ptr %count, i64 48
  %wide.load18.1 = load <4 x i32>, ptr %5, align 16
  %6 = and <4 x i32> %wide.load18.1, splat (i32 -2147483647)
  %7 = icmp eq <4 x i32> %6, splat (i32 1)
  %8 = zext <4 x i1> %7 to <4 x i32>
  %9 = add nuw nsw <4 x i32> %4, %8
  %10 = getelementptr inbounds nuw i8, ptr %count, i64 80
  %wide.load18.2 = load <4 x i32>, ptr %10, align 16
  %11 = and <4 x i32> %wide.load18.2, splat (i32 -2147483647)
  %12 = icmp eq <4 x i32> %11, splat (i32 1)
  %13 = zext <4 x i1> %12 to <4 x i32>
  %14 = add nuw nsw <4 x i32> %9, %13
  %wide.load = load <4 x i32>, ptr %count, align 16
  %15 = and <4 x i32> %wide.load, splat (i32 -2147483647)
  %16 = icmp eq <4 x i32> %15, splat (i32 1)
  %17 = zext <4 x i1> %16 to <4 x i32>
  %18 = getelementptr inbounds nuw i8, ptr %count, i64 32
  %wide.load.1 = load <4 x i32>, ptr %18, align 16
  %19 = and <4 x i32> %wide.load.1, splat (i32 -2147483647)
  %20 = icmp eq <4 x i32> %19, splat (i32 1)
  %21 = zext <4 x i1> %20 to <4 x i32>
  %22 = add nuw nsw <4 x i32> %17, %21
  %23 = getelementptr inbounds nuw i8, ptr %count, i64 64
  %wide.load.2 = load <4 x i32>, ptr %23, align 16
  %24 = and <4 x i32> %wide.load.2, splat (i32 -2147483647)
  %25 = icmp eq <4 x i32> %24, splat (i32 1)
  %26 = zext <4 x i1> %25 to <4 x i32>
  %27 = add nuw nsw <4 x i32> %22, %26
  %bin.rdx = add nuw nsw <4 x i32> %14, %27
  %28 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %29 = getelementptr inbounds nuw i8, ptr %count, i64 96
  %_16 = load i32, ptr %29, align 16, !noundef !23
  %30 = and i32 %_16, -2147483647
  %_14 = icmp eq i32 %30, 1
  %31 = zext i1 %_14 to i32
  %res.sroa.0.1 = add i32 %28, %31
  %32 = getelementptr inbounds nuw i8, ptr %count, i64 100
  %_16.1 = load i32, ptr %32, align 4, !noundef !23
  %33 = and i32 %_16.1, -2147483647
  %_14.1 = icmp eq i32 %33, 1
  %34 = zext i1 %_14.1 to i32
  %res.sroa.0.1.1 = add i32 %res.sroa.0.1, %34
  %_0.sroa.0.0 = tail call i32 @llvm.usub.sat.i32(i32 %res.sroa.0.1.1, i32 1)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %count)
  ret i32 %_0.sroa.0.0

bb3:                                              ; preds = %bb12
  %35 = add nuw i64 %iter.sroa.0.010, 1
  %36 = getelementptr inbounds nuw i32, ptr %count, i64 %_7
  %37 = load i32, ptr %36, align 4, !noundef !23
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  %exitcond.not = icmp eq i64 %35, %str.1
  br i1 %exitcond.not, label %bb14, label %bb12

panic4:                                           ; preds = %bb12
; call core::panicking::panic_bounds_check
  tail call void @_ZN4core9panicking18panic_bounds_check17hb15443e8431033c2E(i64 noundef %_7, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @alloc_f41a4e3dee8ef76ed955279c06f41bda) #19
  unreachable
}
