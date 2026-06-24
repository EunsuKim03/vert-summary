; ModuleID = 'benchmark/c_transcoder/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS_processed.c'
source_filename = "benchmark/c_transcoder/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* noundef %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* noundef %12)
  %14 = add i64 %11, %13
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strlen(i8* noundef %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strlen(i8* noundef %24)
  %26 = call i32 (i64, i64, ...) bitcast (i32 (...)* @min to i32 (i64, i64, ...)*)(i64 noundef %23, i64 noundef %25)
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %46

45:                                               ; preds = %28
  br label %50

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %20, !llvm.loop !6

50:                                               ; preds = %45, %20
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strlen(i8* noundef %53)
  %55 = sub i64 %52, %54
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @strlen(i8* noundef %56)
  %58 = sub i64 %55, %57
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 2, %59
  %61 = sext i32 %60 to i64
  %62 = add i64 %58, %61
  %63 = urem i64 %62, 2
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %67

66:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %65, %18
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare i64 @strlen(i8* noundef) #1

declare i32 @min(...) #1

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
