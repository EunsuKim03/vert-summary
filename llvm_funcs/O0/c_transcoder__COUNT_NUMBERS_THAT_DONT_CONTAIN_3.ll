; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBERS_THAT_DONT_CONTAIN_3/COUNT_NUMBERS_THAT_DONT_CONTAIN_3_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBERS_THAT_DONT_CONTAIN_3/COUNT_NUMBERS_THAT_DONT_CONTAIN_3_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %2, align 4
  br label %55

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %55

19:                                               ; preds = %13, %10
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %25, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sdiv i32 %21, %22
  %24 = icmp sgt i32 %23, 9
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 10
  store i32 %27, i32* %4, align 4
  br label %20, !llvm.loop !6

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @f_gold(i32 noundef %35)
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @f_gold(i32 noundef %38)
  %40 = mul nsw i32 %36, %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @f_gold(i32 noundef %41)
  %43 = add nsw i32 %40, %42
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = srem i32 %44, %45
  %47 = call i32 @f_gold(i32 noundef %46)
  %48 = add nsw i32 %43, %47
  store i32 %48, i32* %2, align 4
  br label %55

49:                                               ; preds = %28
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @f_gold(i32 noundef %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %34, %16, %8
  %56 = load i32, i32* %2, align 4
  ret i32 %56
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
