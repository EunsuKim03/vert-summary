; ModuleID = 'benchmark/c_transcoder/DICE_THROW_PROBLEM_1/DICE_THROW_PROBLEM_1_processed.c'
source_filename = "benchmark/c_transcoder/DICE_THROW_PROBLEM_1/DICE_THROW_PROBLEM_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = mul nuw i64 %14, %17
  %20 = alloca i64, i64 %19, align 16
  store i64 %14, i64* %8, align 8
  store i64 %17, i64* %9, align 8
  %21 = bitcast i64* %20 to i8*
  %22 = mul nuw i64 %14, %17
  %23 = mul nuw i64 8, %22
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 %23, i1 false)
  %24 = mul nsw i64 0, %17
  %25 = getelementptr inbounds i64, i64* %20, i64 %24
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 1, i64* %26, align 8
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %97, %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %100

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %93, %31
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %96

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, %17
  %41 = getelementptr inbounds i64, i64* %20, i64 %40
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, %17
  %51 = getelementptr inbounds i64, i64* %20, i64 %50
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %46, %56
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %17
  %61 = getelementptr inbounds i64, i64* %20, i64 %60
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %57, i64* %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %37
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, %17
  %75 = getelementptr inbounds i64, i64* %20, i64 %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %75, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, %17
  %86 = getelementptr inbounds i64, i64* %20, i64 %85
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, %82
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %70, %37
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %33, !llvm.loop !6

96:                                               ; preds = %33
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %27, !llvm.loop !8

100:                                              ; preds = %27
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %102, %17
  %104 = getelementptr inbounds i64, i64* %20, i64 %103
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %109)
  ret i64 %108
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
