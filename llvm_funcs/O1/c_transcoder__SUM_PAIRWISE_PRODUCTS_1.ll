; ModuleID = 'benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_1/SUM_PAIRWISE_PRODUCTS_1_processed.c'
source_filename = "benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS_1/SUM_PAIRWISE_PRODUCTS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = mul nsw i32 %2, %0
  %4 = sdiv i32 %3, 2
  %5 = zext i32 %4 to i64
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = mul nuw nsw i64 %5, 3
  %9 = add i32 %0, -2
  %10 = zext i32 %9 to i65
  %11 = add i32 %0, -3
  %12 = zext i32 %11 to i65
  %13 = add i32 %0, -4
  %14 = mul nuw nsw i65 %10, %12
  %15 = zext i32 %13 to i65
  %16 = mul i65 %14, %15
  %17 = lshr i65 %16, 1
  %18 = trunc i65 %17 to i64
  %19 = mul i64 %18, -6148914691236517209
  %20 = zext i32 %9 to i67
  %21 = zext i32 %11 to i67
  %22 = mul nuw nsw i67 %20, %21
  %23 = zext i32 %13 to i67
  %24 = mul i67 %22, %23
  %25 = add i32 %0, -5
  %26 = zext i32 %25 to i67
  %27 = mul i67 %24, %26
  %28 = lshr i67 %27, 3
  %29 = trunc i67 %28 to i64
  %30 = add nsw i64 %8, -9
  %31 = zext i32 %9 to i64
  %32 = mul i64 %30, %31
  %33 = add nsw i64 %5, -15
  %34 = mul nuw nsw i65 %10, %12
  %35 = lshr i65 %34, 1
  %36 = trunc i65 %35 to i64
  %37 = mul i64 %33, %36
  %38 = add i64 %32, %37
  %39 = add i64 %38, %8
  %40 = add i64 %39, -2
  %41 = sub i64 %40, %29
  %42 = add i64 %19, %41
  br label %43

43:                                               ; preds = %7, %1
  %44 = phi i64 [ %5, %1 ], [ %42, %7 ]
  %45 = trunc i64 %44 to i32
  ret i32 %45
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
