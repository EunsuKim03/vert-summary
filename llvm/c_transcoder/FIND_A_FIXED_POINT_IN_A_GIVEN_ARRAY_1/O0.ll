; ModuleID = 'benchmark/c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_processed.c"
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
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %13, %14
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %12
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %27, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @f_gold(i32* noundef %35, i32 noundef %37, i32 noundef %38)
  store i32 %39, i32* %4, align 4
  br label %47

40:                                               ; preds = %26
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @f_gold(i32* noundef %41, i32 noundef %42, i32 noundef %44)
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %40, %34, %24
  %48 = load i32, i32* %4, align 4
  ret i32 %48
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
