; ModuleID = 'benchmark/c_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1_processed.c'
source_filename = "benchmark/c_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = mul nuw i64 4, %15
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 %19, i1 false)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %63, %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %59, %24
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %27, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %26
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %17, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %44, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %17, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %43, %53
  %55 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %38, i32 noundef %54)
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %17, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %34
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %12, align 4
  br label %26, !llvm.loop !6

62:                                               ; preds = %26
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %20, !llvm.loop !8

66:                                               ; preds = %20
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %17, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %71)
  ret i32 %70
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @max(...) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
