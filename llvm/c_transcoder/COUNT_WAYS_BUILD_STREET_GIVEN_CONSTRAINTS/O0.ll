; ModuleID = 'benchmark/c_transcoder/COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS/COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS/COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = mul nuw i64 2, %8
  %11 = alloca i64, i64 %10, align 16
  store i64 %8, i64* %4, align 8
  %12 = mul nsw i64 0, %8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  store i64 1, i64* %14, align 8
  %15 = mul nsw i64 1, %8
  %16 = getelementptr inbounds i64, i64* %11, i64 %15
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  store i64 2, i64* %17, align 8
  store i32 2, i32* %5, align 4
  br label %18

18:                                               ; preds = %64, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = mul nsw i64 0, %8
  %24 = getelementptr inbounds i64, i64* %11, i64 %23
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = mul nsw i64 1, %8
  %31 = getelementptr inbounds i64, i64* %11, i64 %30
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %29, %36
  %38 = mul nsw i64 0, %8
  %39 = getelementptr inbounds i64, i64* %11, i64 %38
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %37, i64* %42, align 8
  %43 = mul nsw i64 0, %8
  %44 = getelementptr inbounds i64, i64* %11, i64 %43
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = mul nsw i64 %49, 2
  %51 = mul nsw i64 1, %8
  %52 = getelementptr inbounds i64, i64* %11, i64 %51
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %50, %57
  %59 = mul nsw i64 1, %8
  %60 = getelementptr inbounds i64, i64* %11, i64 %59
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %58, i64* %63, align 8
  br label %64

64:                                               ; preds = %22
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %18, !llvm.loop !6

67:                                               ; preds = %18
  %68 = mul nsw i64 0, %8
  %69 = getelementptr inbounds i64, i64* %11, i64 %68
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = mul nsw i64 1, %8
  %75 = getelementptr inbounds i64, i64* %11, i64 %74
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %73, %79
  %81 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %81)
  ret i64 %80
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
