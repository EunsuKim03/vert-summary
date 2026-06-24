; ModuleID = 'benchmark/c_transcoder/FIND_LARGEST_PRIME_FACTOR_NUMBER/FIND_LARGEST_PRIME_FACTOR_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_LARGEST_PRIME_FACTOR_NUMBER/FIND_LARGEST_PRIME_FACTOR_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_gold(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 -1, i64* %3, align 8
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i64, i64* %2, align 8
  %7 = srem i64 %6, 2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  store i64 2, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = ashr i64 %10, 1
  store i64 %11, i64* %2, align 8
  br label %5, !llvm.loop !6

12:                                               ; preds = %5
  store i32 3, i32* %4, align 4
  br label %13

13:                                               ; preds = %35, %12
  %14 = load i32, i32* %4, align 4
  %15 = sitofp i32 %14 to double
  %16 = load i64, i64* %2, align 8
  %17 = sitofp i64 %16 to double
  %18 = call double @sqrt(double noundef %17) #2
  %19 = fcmp ole double %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %27, %20
  %22 = load i64, i64* %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = srem i64 %22, %24
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = sdiv i64 %30, %32
  store i64 %33, i64* %2, align 8
  br label %21, !llvm.loop !8

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %4, align 4
  br label %13, !llvm.loop !9

38:                                               ; preds = %13
  %39 = load i64, i64* %2, align 8
  %40 = icmp sgt i64 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* %2, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
