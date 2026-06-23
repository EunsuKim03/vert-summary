; ModuleID = 'benchmark/c_transcoder/FIND_THE_FIRST_MISSING_NUMBER/FIND_THE_FIRST_MISSING_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_FIRST_MISSING_NUMBER/FIND_THE_FIRST_MISSING_NUMBER_processed.c"
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
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %16, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %4, align 4
  br label %48

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @f_gold(i32* noundef %38, i32 noundef %40, i32 noundef %41)
  store i32 %42, i32* %4, align 4
  br label %48

43:                                               ; preds = %25
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @f_gold(i32* noundef %44, i32 noundef %45, i32 noundef %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %37, %23, %12
  %49 = load i32, i32* %4, align 4
  ret i32 %49
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
