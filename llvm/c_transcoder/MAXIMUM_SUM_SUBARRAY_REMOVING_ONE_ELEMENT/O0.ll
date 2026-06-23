; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %29, i32* %30, align 16
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %56, %2
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %41, %46
  %48 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %40, i32 noundef %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %49, i32 noundef %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %17, i64 %54
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %31, !llvm.loop !6

59:                                               ; preds = %31
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %20, i64 %68
  store i32 %65, i32* %69, align 4
  store i32 %65, i32* %9, align 4
  store i32 %65, i32* %8, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 2
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %96, %59
  %73 = load i32, i32* %11, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %81, %86
  %88 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %80, i32 noundef %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %89, i32 noundef %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %20, i64 %94
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %75
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %11, align 4
  br label %72, !llvm.loop !8

99:                                               ; preds = %72
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %101

101:                                              ; preds = %120, %99
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 1
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %17, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %20, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %112, %117
  %119 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %107, i32 noundef %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %106
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %101, !llvm.loop !9

123:                                              ; preds = %101
  %124 = load i32, i32* %12, align 4
  %125 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %125)
  ret i32 %124
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

declare i32 @max(...) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
