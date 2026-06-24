; ModuleID = 'benchmark/c_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = mul nuw i64 %17, %20
  %23 = alloca i32, i64 %22, align 16
  store i64 %17, i64* %13, align 8
  store i64 %20, i64* %14, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %217, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %220

28:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %213, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %216

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %37, %42
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %47, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %46, %36
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %58, %20
  %60 = getelementptr inbounds i32, i32* %23, i64 %59
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 1, i32* %63, align 4
  br label %72

64:                                               ; preds = %46
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, %20
  %68 = getelementptr inbounds i32, i32* %23, i64 %67
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %56
  br label %212

73:                                               ; preds = %33
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %74, %79
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %136

82:                                               ; preds = %73
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %83, %88
  %90 = load i32, i32* %9, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %82
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %95, %20
  %97 = getelementptr inbounds i32, i32* %23, i64 %96
  %98 = load i32, i32* %11, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %98, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %97, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %126, label %109

109:                                              ; preds = %92
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %20
  %114 = getelementptr inbounds i32, i32* %23, i64 %113
  %115 = load i32, i32* %11, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %115, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %114, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %109, %92
  %127 = phi i1 [ true, %92 ], [ %125, %109 ]
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %130, %20
  %132 = getelementptr inbounds i32, i32* %23, i64 %131
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %128, i32* %135, align 4
  br label %211

136:                                              ; preds = %82, %73
  %137 = load i32, i32* %11, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %137, %142
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %136
  %146 = load i32, i32* %10, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %148, %20
  %150 = getelementptr inbounds i32, i32* %23, i64 %149
  %151 = load i32, i32* %11, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %151, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %150, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = mul nsw i64 %162, %20
  %164 = getelementptr inbounds i32, i32* %23, i64 %163
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %160, i32* %167, align 4
  br label %210

168:                                              ; preds = %136
  %169 = load i32, i32* %11, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %169, %174
  %176 = load i32, i32* %9, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %201

178:                                              ; preds = %168
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = mul nsw i64 %181, %20
  %183 = getelementptr inbounds i32, i32* %23, i64 %182
  %184 = load i32, i32* %11, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %184, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %183, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = mul nsw i64 %195, %20
  %197 = getelementptr inbounds i32, i32* %23, i64 %196
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %193, i32* %200, align 4
  br label %209

201:                                              ; preds = %168
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = mul nsw i64 %203, %20
  %205 = getelementptr inbounds i32, i32* %23, i64 %204
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 0, i32* %208, align 4
  br label %209

209:                                              ; preds = %201, %178
  br label %210

210:                                              ; preds = %209, %145
  br label %211

211:                                              ; preds = %210, %126
  br label %212

212:                                              ; preds = %211, %72
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %29, !llvm.loop !6

216:                                              ; preds = %29
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %24, !llvm.loop !8

220:                                              ; preds = %24
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %239, %220
  %223 = load i32, i32* %11, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %242

225:                                              ; preds = %222
  %226 = load i32, i32* %7, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %228, %20
  %230 = getelementptr inbounds i32, i32* %23, i64 %229
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %225
  %237 = load i32, i32* %11, align 4
  store i32 %237, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %243

238:                                              ; preds = %225
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %11, align 4
  br label %222, !llvm.loop !9

242:                                              ; preds = %222
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %243

243:                                              ; preds = %242, %236
  %244 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %244)
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }

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
