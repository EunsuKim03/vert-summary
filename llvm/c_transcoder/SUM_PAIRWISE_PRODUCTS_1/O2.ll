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
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = mul nuw nsw i64 %5, 3
  %9 = add nsw i64 %8, -9
  %10 = add nsw i32 %0, -2
  %11 = zext i32 %10 to i64
  %12 = mul i64 %9, %11
  %13 = add nsw i64 %5, -15
  %14 = zext i32 %10 to i65
  %15 = add nsw i32 %0, -3
  %16 = zext i32 %15 to i65
  %17 = mul nuw nsw i65 %14, %16
  %18 = lshr i65 %17, 1
  %19 = trunc i65 %18 to i64
  %20 = mul i64 %13, %19
  %21 = add i64 %12, %20
  %22 = add i64 %21, %8
  %23 = zext i32 %10 to i67
  %24 = zext i32 %15 to i67
  %25 = mul nuw nsw i67 %23, %24
  %26 = add nsw i32 %0, -4
  %27 = zext i32 %26 to i67
  %28 = mul i67 %25, %27
  %29 = add nsw i32 %0, -5
  %30 = zext i32 %29 to i67
  %31 = mul i67 %28, %30
  %32 = lshr i67 %31, 3
  %33 = trunc i67 %32 to i64
  %34 = zext i32 %26 to i65
  %35 = mul i65 %17, %34
  %36 = lshr i65 %35, 1
  %37 = trunc i65 %36 to i64
  %38 = mul i64 %37, -6148914691236517209
  %39 = add i64 %22, -2
  %40 = sub i64 %39, %33
  %41 = add i64 %38, %40
  br label %42

42:                                               ; preds = %7, %1
  %43 = phi i64 [ %5, %1 ], [ %41, %7 ]
  %44 = trunc i64 %43 to i32
  ret i32 %44
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
