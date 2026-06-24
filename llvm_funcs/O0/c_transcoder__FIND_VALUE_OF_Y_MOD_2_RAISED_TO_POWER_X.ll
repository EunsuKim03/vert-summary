; ModuleID = 'benchmark/c_transcoder/FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X/FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X_processed.c'
source_filename = "benchmark/c_transcoder/FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X/FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = sitofp i64 %6 to double
  %8 = call double @log2(double noundef %7) #2
  %9 = load i64, i64* %5, align 8
  %10 = sitofp i64 %9 to double
  %11 = fcmp olt double %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp sgt i64 %16, 63
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = srem i64 %22, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %18, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare double @log2(double noundef) #1

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
