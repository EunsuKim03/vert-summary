; ModuleID = 'benchmark/c_transcoder/TRIANGULAR_NUMBERS_1/TRIANGULAR_NUMBERS_1_processed.c'
source_filename = "benchmark/c_transcoder/TRIANGULAR_NUMBERS_1/TRIANGULAR_NUMBERS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = shl i32 %0, 3
  %5 = or i32 %4, 1
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = sitofp i32 %5 to double
  %9 = call double @sqrt(double noundef %8) #3
  %10 = fadd double %9, -1.000000e+00
  %11 = fmul double %10, 5.000000e-01
  %12 = fptrunc double %11 to float
  %13 = call double @sqrt(double noundef %8) #3
  %14 = fsub double -1.000000e+00, %13
  %15 = fmul double %14, 5.000000e-01
  %16 = fptrunc double %15 to float
  %17 = fcmp ogt float %12, 0.000000e+00
  br i1 %17, label %18, label %22

18:                                               ; preds = %7
  %19 = fpext float %12 to double
  %20 = call double @llvm.floor.f64(double %19)
  %21 = fcmp oeq double %20, %19
  br i1 %21, label %29, label %22

22:                                               ; preds = %18, %7
  %23 = fcmp ogt float %16, 0.000000e+00
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = fpext float %16 to double
  %26 = call double @llvm.floor.f64(double %25)
  %27 = fcmp oeq double %26, %25
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %22
  br label %29

29:                                               ; preds = %3, %24, %18, %28, %1
  %30 = phi i32 [ 0, %1 ], [ 0, %3 ], [ 0, %28 ], [ 1, %18 ], [ 1, %24 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { mustprogress nofree nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
