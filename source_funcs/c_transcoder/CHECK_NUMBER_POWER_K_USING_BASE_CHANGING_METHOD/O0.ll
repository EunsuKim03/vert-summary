; ModuleID = 'benchmark/c_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8 0, i8* %6, align 1
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ugt i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = urem i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %31

18:                                               ; preds = %11
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8, i8* %6, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %31

25:                                               ; preds = %21
  store i8 1, i8* %6, align 1
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = udiv i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %8, !llvm.loop !6

30:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
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
