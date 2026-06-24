; ModuleID = 'benchmark/c_transcoder/FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7/FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7_processed.c'
source_filename = "benchmark/c_transcoder/FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7/FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %5
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %28 [
    i32 52, label %20
    i32 55, label %24
  ]

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %13, %24, %20
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %5, !llvm.loop !6

31:                                               ; preds = %5
  %32 = load i32, i32* %4, align 4
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
