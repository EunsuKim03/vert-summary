; ModuleID = 'benchmark/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @f_gold(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* noundef %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %7, !llvm.loop !6

25:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strlen(i8* noundef %29)
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %26, !llvm.loop !8

44:                                               ; preds = %26
  %45 = load i32, i32* %5, align 4
  %46 = trunc i32 %45 to i8
  ret i8 %46
}

declare i64 @strlen(i8* noundef) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
