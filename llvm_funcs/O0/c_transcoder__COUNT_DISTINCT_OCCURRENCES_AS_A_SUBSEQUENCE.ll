; ModuleID = 'benchmark/c_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* noundef %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* noundef %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %151

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %8, align 8
  %33 = mul nuw i64 %28, %31
  %34 = alloca i32, i64 %33, align 16
  store i64 %28, i64* %9, align 8
  store i64 %31, i64* %10, align 8
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %45, %25
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %41, %31
  %43 = getelementptr inbounds i32, i32* %34, i64 %42
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %35, !llvm.loop !6

48:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %59, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = mul nsw i64 0, %31
  %55 = getelementptr inbounds i32, i32* %34, i64 %54
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %49, !llvm.loop !8

62:                                               ; preds = %49
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %138, %62
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %141

67:                                               ; preds = %63
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %134, %67
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %137

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %79, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %72
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %90, %31
  %92 = getelementptr inbounds i32, i32* %34, i64 %91
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, %31
  %101 = getelementptr inbounds i32, i32* %34, i64 %100
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %97, i32* %104, align 4
  br label %133

105:                                              ; preds = %72
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %107, %31
  %109 = getelementptr inbounds i32, i32* %34, i64 %108
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %117, %31
  %119 = getelementptr inbounds i32, i32* %34, i64 %118
  %120 = load i32, i32* %14, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %114, %124
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, %31
  %129 = getelementptr inbounds i32, i32* %34, i64 %128
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %125, i32* %132, align 4
  br label %133

133:                                              ; preds = %105, %88
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %68, !llvm.loop !9

137:                                              ; preds = %68
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %63, !llvm.loop !10

141:                                              ; preds = %63
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, %31
  %145 = getelementptr inbounds i32, i32* %34, i64 %144
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %3, align 4
  %150 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %150)
  br label %151

151:                                              ; preds = %141, %24
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare i64 @strlen(i8* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }

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
!10 = distinct !{!10, !7}
