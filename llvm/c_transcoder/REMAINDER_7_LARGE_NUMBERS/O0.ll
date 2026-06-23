; ModuleID = 'benchmark/c_transcoder/REMAINDER_7_LARGE_NUMBERS/REMAINDER_7_LARGE_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/REMAINDER_7_LARGE_NUMBERS/REMAINDER_7_LARGE_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.f_gold.series = private unnamed_addr constant [6 x i32] [i32 1, i32 3, i32 2, i32 -1, i32 -3, i32 -2], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [6 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = bitcast [6 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([6 x i32]* @__const.f_gold.series to i8*), i64 24, i1 false)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %9)
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = sub nsw i32 %21, 48
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %23, %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  %33 = srem i32 %32, 6
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = srem i32 %34, 7
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %15
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  br label %12, !llvm.loop !6

39:                                               ; preds = %12
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 7
  %45 = srem i32 %44, 7
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @len(...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
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
