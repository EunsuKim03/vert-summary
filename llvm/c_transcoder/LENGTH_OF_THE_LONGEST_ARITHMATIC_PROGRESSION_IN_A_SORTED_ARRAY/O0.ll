; ModuleID = 'benchmark/c_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %3, align 4
  br label %168

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = mul nuw i64 %20, %22
  %25 = alloca i32, i64 %24, align 16
  store i64 %20, i64* %7, align 8
  store i64 %22, i64* %8, align 8
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %39, %18
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %32, %22
  %34 = getelementptr inbounds i32, i32* %25, i64 %33
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 2, i32* %38, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %26, !llvm.loop !6

42:                                               ; preds = %26
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %162, %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %165

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %146, %48
  %54 = load i32, i32* %12, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp sle i32 %57, %59
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  br i1 %62, label %63, label %147

63:                                               ; preds = %61
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %68, %73
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 2, %79
  %81 = icmp slt i32 %74, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %63
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %146

85:                                               ; preds = %63
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %90, %95
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 2, %101
  %103 = icmp sgt i32 %96, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %85
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = mul nsw i64 %106, %22
  %108 = getelementptr inbounds i32, i32* %25, i64 %107
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 2, i32* %111, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %12, align 4
  br label %145

114:                                              ; preds = %85
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %116, %22
  %118 = getelementptr inbounds i32, i32* %25, i64 %117
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, %22
  %127 = getelementptr inbounds i32, i32* %25, i64 %126
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %123, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, %22
  %135 = getelementptr inbounds i32, i32* %25, i64 %134
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %131, i32 noundef %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %114, %104
  br label %146

146:                                              ; preds = %145, %82
  br label %53, !llvm.loop !8

147:                                              ; preds = %61
  br label %148

148:                                              ; preds = %151, %147
  %149 = load i32, i32* %12, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, %22
  %155 = getelementptr inbounds i32, i32* %25, i64 %154
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 2, i32* %158, align 4
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %12, align 4
  br label %148, !llvm.loop !9

161:                                              ; preds = %148
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %11, align 4
  br label %45, !llvm.loop !10

165:                                              ; preds = %45
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %3, align 4
  %167 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %167)
  br label %168

168:                                              ; preds = %165, %16
  %169 = load i32, i32* %3, align 4
  ret i32 %169
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
!10 = distinct !{!10, !7}
