; ModuleID = 'benchmark/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %13, %14
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %12
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %34, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %70

44:                                               ; preds = %29, %12
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @f_gold(i32* noundef %58, i32 noundef %60, i32 noundef %61)
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %44
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @f_gold(i32* noundef %64, i32 noundef %65, i32 noundef %67)
  store i32 %68, i32* %4, align 4
  br label %70

69:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %63, %57, %42
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
