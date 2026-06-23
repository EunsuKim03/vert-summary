; ModuleID = 'benchmark/c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strlen(i8* noundef %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* noundef %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = mul nuw i64 %22, %25
  %28 = alloca i8, i64 %27, align 16
  store i64 %22, i64* %8, align 8
  store i64 %25, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %50, %2
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %40, %25
  %42 = getelementptr inbounds i8, i8* %28, i64 %41
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %34, !llvm.loop !6

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %29, !llvm.loop !8

53:                                               ; preds = %29
  %54 = mul nsw i64 0, %25
  %55 = getelementptr inbounds i8, i8* %28, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 1, i8* %56, align 1
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %135, %53
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = load i8*, i8** %3, align 8
  %61 = call i64 @strlen(i8* noundef %60)
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %138

63:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %131, %63
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @strlen(i8* noundef %67)
  %69 = icmp ule i64 %66, %68
  br i1 %69, label %70, label %134

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, %25
  %74 = getelementptr inbounds i8, i8* %28, i64 %73
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = trunc i8 %78 to i1
  br i1 %79, label %80, label %130

80:                                               ; preds = %70
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = load i8*, i8** %4, align 8
  %84 = call i64 @strlen(i8* noundef %83)
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %80
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = call i32 @toupper(i32 noundef %92) #4
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %93, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %86
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %25
  %106 = getelementptr inbounds i8, i8* %28, i64 %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8 1, i8* %110, align 1
  br label %111

111:                                              ; preds = %101, %86, %80
  %112 = load i8*, i8** %3, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = call i32 @isupper(i32 noundef %117) #4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %123, %25
  %125 = getelementptr inbounds i8, i8* %28, i64 %124
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8 1, i8* %128, align 1
  br label %129

129:                                              ; preds = %120, %111
  br label %130

130:                                              ; preds = %129, %70
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %64, !llvm.loop !9

134:                                              ; preds = %64
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %57, !llvm.loop !10

138:                                              ; preds = %57
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = mul nsw i64 %140, %25
  %142 = getelementptr inbounds i8, i8* %28, i64 %141
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = trunc i8 %146 to i1
  %148 = zext i1 %147 to i32
  %149 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %149)
  ret i32 %148
}

declare i64 @strlen(i8* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind readonly willreturn
declare i32 @toupper(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @isupper(i32 noundef) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

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
