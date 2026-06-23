; ModuleID = 'benchmark/c_transcoder/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX_processed.c'
source_filename = "benchmark/c_transcoder/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %65, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %13
  store i32 2147483647, i32* %9, align 4
  store i32 -2147483648, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %61, %17
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 2, %41
  %43 = load i32, i32* %10, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %64

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54, %46
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %19, !llvm.loop !6

64:                                               ; preds = %45, %19
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %13, !llvm.loop !8

68:                                               ; preds = %13
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %3, align 4
  br label %80

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %75, %76
  %78 = add nsw i32 %77, 1
  %79 = sub nsw i32 %74, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %73, %71
  %81 = load i32, i32* %3, align 4
  ret i32 %81
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
!8 = distinct !{!8, !7}
