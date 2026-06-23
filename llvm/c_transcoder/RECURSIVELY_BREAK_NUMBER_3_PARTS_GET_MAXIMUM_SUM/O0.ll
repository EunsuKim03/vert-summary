; ModuleID = 'benchmark/c_transcoder/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_processed.c'
source_filename = "benchmark/c_transcoder/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %2, align 4
  br label %25

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = sdiv i32 %12, 2
  %14 = call i32 @f_gold(i32 noundef %13)
  %15 = load i32, i32* %3, align 4
  %16 = sdiv i32 %15, 3
  %17 = call i32 @f_gold(i32 noundef %16)
  %18 = add nsw i32 %14, %17
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 4
  %21 = call i32 @f_gold(i32 noundef %20)
  %22 = add nsw i32 %18, %21
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %22, i32 noundef %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %11, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare i32 @max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
