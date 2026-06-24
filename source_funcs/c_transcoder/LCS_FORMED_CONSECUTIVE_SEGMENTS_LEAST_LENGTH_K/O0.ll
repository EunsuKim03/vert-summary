; ModuleID = 'benchmark/c_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_processed.c'
source_filename = "benchmark/c_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* noundef %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* noundef %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = mul nuw i64 %25, %28
  %31 = alloca i32, i64 %30, align 16
  store i64 %25, i64* %10, align 8
  store i64 %28, i64* %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = mul nuw i64 %34, %37
  %39 = alloca i32, i64 %38, align 16
  store i64 %34, i64* %12, align 8
  store i64 %37, i64* %13, align 8
  %40 = bitcast i32* %31 to i8*
  %41 = mul nuw i64 %25, %28
  %42 = mul nuw i64 4, %41
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 %42, i1 false)
  %43 = bitcast i32* %39 to i8*
  %44 = mul nuw i64 %34, %37
  %45 = mul nuw i64 4, %44
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 %45, i1 false)
  store i32 1, i32* %14, align 4
  br label %46

46:                                               ; preds = %180, %3
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %183

50:                                               ; preds = %46
  store i32 1, i32* %15, align 4
  br label %51

51:                                               ; preds = %176, %50
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %179

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %58, %28
  %60 = getelementptr inbounds i32, i32* %31, i64 %59
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, %28
  %68 = getelementptr inbounds i32, i32* %31, i64 %67
  %69 = load i32, i32* %15, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %64, i32 noundef %73)
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, %28
  %78 = getelementptr inbounds i32, i32* %31, i64 %77
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %74, i32* %81, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %88, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %55
  %98 = load i32, i32* %14, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %100, %37
  %102 = getelementptr inbounds i32, i32* %39, i64 %101
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %110, %37
  %112 = getelementptr inbounds i32, i32* %39, i64 %111
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %108, i32* %115, align 4
  br label %116

116:                                              ; preds = %97, %55
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = mul nsw i64 %118, %37
  %120 = getelementptr inbounds i32, i32* %39, i64 %119
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %175

127:                                              ; preds = %116
  %128 = load i32, i32* %4, align 4
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %171, %127
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, %37
  %134 = getelementptr inbounds i32, i32* %39, i64 %133
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp sle i32 %130, %138
  br i1 %139, label %140, label %174

140:                                              ; preds = %129
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 %142, %28
  %144 = getelementptr inbounds i32, i32* %31, i64 %143
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %16, align 4
  %151 = sub nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, %28
  %154 = getelementptr inbounds i32, i32* %31, i64 %153
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %16, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %160, %161
  %163 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %148, i32 noundef %162)
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = mul nsw i64 %165, %28
  %167 = getelementptr inbounds i32, i32* %31, i64 %166
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %163, i32* %170, align 4
  br label %171

171:                                              ; preds = %140
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %129, !llvm.loop !6

174:                                              ; preds = %129
  br label %175

175:                                              ; preds = %174, %116
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %51, !llvm.loop !8

179:                                              ; preds = %51
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %46, !llvm.loop !9

183:                                              ; preds = %46
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = mul nsw i64 %185, %28
  %187 = getelementptr inbounds i32, i32* %31, i64 %186
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %192)
  ret i32 %191
}

declare i64 @strlen(i8* noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @max(...) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }

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
