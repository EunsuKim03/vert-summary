; ModuleID = 'benchmark/c_transcoder/TRIANGULAR_NUMBERS_1/TRIANGULAR_NUMBERS_1_processed.c'
source_filename = "benchmark/c_transcoder/TRIANGULAR_NUMBERS_1/TRIANGULAR_NUMBERS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 -2, %14
  store i32 %15, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 4, %19
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sub nsw i32 %18, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %74

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 0, %28
  %30 = sitofp i32 %29 to double
  %31 = load i32, i32* %7, align 4
  %32 = sitofp i32 %31 to double
  %33 = call double @sqrt(double noundef %32) #3
  %34 = fadd double %30, %33
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 2, %35
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %34, %37
  %39 = fptrunc double %38 to float
  store float %39, float* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 0, %40
  %42 = sitofp i32 %41 to double
  %43 = load i32, i32* %7, align 4
  %44 = sitofp i32 %43 to double
  %45 = call double @sqrt(double noundef %44) #3
  %46 = fsub double %42, %45
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 2, %47
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %46, %49
  %51 = fptrunc double %50 to float
  store float %51, float* %9, align 4
  %52 = load float, float* %8, align 4
  %53 = fcmp ogt float %52, 0.000000e+00
  br i1 %53, label %54, label %62

54:                                               ; preds = %27
  %55 = load float, float* %8, align 4
  %56 = fpext float %55 to double
  %57 = call double @llvm.floor.f64(double %56)
  %58 = load float, float* %8, align 4
  %59 = fpext float %58 to double
  %60 = fcmp oeq double %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %74

62:                                               ; preds = %54, %27
  %63 = load float, float* %9, align 4
  %64 = fcmp ogt float %63, 0.000000e+00
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load float, float* %9, align 4
  %67 = fpext float %66 to double
  %68 = call double @llvm.floor.f64(double %67)
  %69 = load float, float* %9, align 4
  %70 = fpext float %69 to double
  %71 = fcmp oeq double %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %74

73:                                               ; preds = %65, %62
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %72, %61, %26, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
