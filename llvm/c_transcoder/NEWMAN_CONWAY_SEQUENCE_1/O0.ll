; ModuleID = 'benchmark/c_transcoder/NEWMAN_CONWAY_SEQUENCE_1/NEWMAN_CONWAY_SEQUENCE_1_processed.c'
source_filename = "benchmark/c_transcoder/NEWMAN_CONWAY_SEQUENCE_1/NEWMAN_CONWAY_SEQUENCE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) #0 {
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
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 0, i32* %11, align 16
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %10, i64 2
  store i32 1, i32* %13, align 8
  store i32 3, i32* %5, align 4
  br label %14

14:                                               ; preds = %41, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %10, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %10, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %10, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %27, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %10, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %26, %36
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %10, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %18
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %14, !llvm.loop !6

44:                                               ; preds = %14
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %10, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
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
