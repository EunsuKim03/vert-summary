; ModuleID = 'benchmark/c_transcoder/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 1, i32* %3, align 4
  br label %25

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @abs(i32 noundef %13) #4
  %15 = sitofp i32 %14 to double
  %16 = call double @log10(double noundef %15) #5
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @abs(i32 noundef %17) #4
  %19 = sitofp i32 %18 to double
  %20 = call double @log10(double noundef %19) #5
  %21 = fadd double %16, %20
  %22 = call double @llvm.floor.f64(double %21)
  %23 = fadd double %22, 1.000000e+00
  %24 = fptosi double %23 to i32
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare double @log10(double noundef) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
