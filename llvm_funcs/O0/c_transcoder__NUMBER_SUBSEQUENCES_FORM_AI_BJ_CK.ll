; ModuleID = 'benchmark/c_transcoder/NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK/NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK/NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %53, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %7
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 97
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 2, %21
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %12
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 98
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 %33, %35
  store i32 %36, i32* %4, align 4
  br label %51

37:                                               ; preds = %24
  %38 = load i8*, i8** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 99
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 2, %47
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %37
  br label %51

51:                                               ; preds = %50, %32
  br label %52

52:                                               ; preds = %51, %20
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %7, !llvm.loop !6

56:                                               ; preds = %7
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare i32 @len(...) #1

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
