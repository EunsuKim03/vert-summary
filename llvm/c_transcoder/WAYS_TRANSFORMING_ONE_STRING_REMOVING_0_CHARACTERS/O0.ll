; ModuleID = 'benchmark/c_transcoder/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_processed.c'
source_filename = "benchmark/c_transcoder/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_processed.c"
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
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %13)
  store i32 %14, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %203

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = mul nuw i64 %23, %26
  %29 = alloca i32, i64 %28, align 16
  store i64 %23, i64* %9, align 8
  store i64 %26, i64* %10, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = mul nuw i64 %23, %26
  %32 = mul nuw i64 4, %31
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 %32, i1 false)
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %188, %20
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %191

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %184, %37
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %187

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %123

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %55, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, %26
  %68 = getelementptr inbounds i32, i32* %29, i64 %67
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %64, i32* %71, align 4
  br label %122

72:                                               ; preds = %46
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %78, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %72
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %88, %26
  %90 = getelementptr inbounds i32, i32* %29, i64 %89
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %98, %26
  %100 = getelementptr inbounds i32, i32* %29, i64 %99
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %96, i32* %103, align 4
  br label %121

104:                                              ; preds = %72
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = mul nsw i64 %106, %26
  %108 = getelementptr inbounds i32, i32* %29, i64 %107
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, %26
  %117 = getelementptr inbounds i32, i32* %29, i64 %116
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %113, i32* %120, align 4
  br label %121

121:                                              ; preds = %104, %86
  br label %122

122:                                              ; preds = %121, %49
  br label %183

123:                                              ; preds = %43
  %124 = load i8*, i8** %4, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %129, %135
  br i1 %136, label %137, label %165

137:                                              ; preds = %123
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %139, %26
  %141 = getelementptr inbounds i32, i32* %29, i64 %140
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %11, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = mul nsw i64 %149, %26
  %151 = getelementptr inbounds i32, i32* %29, i64 %150
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %146, %156
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = mul nsw i64 %159, %26
  %161 = getelementptr inbounds i32, i32* %29, i64 %160
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %157, i32* %164, align 4
  br label %182

165:                                              ; preds = %123
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = mul nsw i64 %167, %26
  %169 = getelementptr inbounds i32, i32* %29, i64 %168
  %170 = load i32, i32* %12, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = mul nsw i64 %176, %26
  %178 = getelementptr inbounds i32, i32* %29, i64 %177
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %174, i32* %181, align 4
  br label %182

182:                                              ; preds = %165, %137
  br label %183

183:                                              ; preds = %182, %122
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %39, !llvm.loop !6

187:                                              ; preds = %39
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %33, !llvm.loop !8

191:                                              ; preds = %33
  %192 = load i32, i32* %7, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = mul nsw i64 %194, %26
  %196 = getelementptr inbounds i32, i32* %29, i64 %195
  %197 = load i32, i32* %6, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %3, align 4
  %202 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %202)
  br label %203

203:                                              ; preds = %191, %19
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare i32 @len(...) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

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
