; ModuleID = 'benchmark/c_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 2147483647, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %72, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %68, %16
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %24, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %31, %23
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %40, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %48, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %47, %31
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @abs(i32 noundef %59) #2
  %61 = icmp sgt i32 %56, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 @abs(i32 noundef %65) #2
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %55, %47, %39
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %19, !llvm.loop !6

71:                                               ; preds = %19
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %12, !llvm.loop !8

75:                                               ; preds = %12
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn }

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
