; ModuleID = 'benchmark/c_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_processed.c'
source_filename = "benchmark/c_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = sitofp i32 %0 to double
  %5 = fmul double %4, 6.280000e+00
  %6 = call double @sqrt(double noundef %5) #2
  %7 = sitofp i32 %0 to float
  %8 = fdiv float %7, 0x4005AE1480000000
  %9 = fpext float %8 to double
  %10 = call double @pow(double noundef %9, double noundef %4) #2
  %11 = fmul double %6, %10
  %12 = fptosi double %11 to i32
  br label %13

13:                                               ; preds = %1, %3
  %14 = phi i32 [ %12, %3 ], [ 1, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
