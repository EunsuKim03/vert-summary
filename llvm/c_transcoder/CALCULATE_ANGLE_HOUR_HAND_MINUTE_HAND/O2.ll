; ModuleID = 'benchmark/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_processed.c'
source_filename = "benchmark/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Wrong input\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = fcmp olt double %0, 0.000000e+00
  %4 = fcmp olt double %1, 0.000000e+00
  %5 = or i1 %3, %4
  %6 = fcmp ogt double %0, 1.200000e+01
  %7 = or i1 %6, %5
  %8 = fcmp ogt double %1, 6.000000e+01
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %2, %10
  %13 = fcmp oeq double %0, 1.200000e+01
  %14 = select i1 %13, double 0.000000e+00, double %0
  %15 = fcmp oeq double %1, 6.000000e+01
  %16 = select i1 %15, double 0.000000e+00, double %1
  %17 = tail call double @llvm.fmuladd.f64(double %14, double 6.000000e+01, double %16)
  %18 = insertelement <2 x double> poison, double %17, i64 0
  %19 = insertelement <2 x double> %18, double %16, i64 1
  %20 = fmul <2 x double> %19, <double 5.000000e-01, double 6.000000e+00>
  %21 = fptosi <2 x double> %20 to <2 x i32>
  %22 = shufflevector <2 x i32> %21, <2 x i32> poison, <2 x i32> <i32 1, i32 undef>
  %23 = sub nsw <2 x i32> %21, %22
  %24 = extractelement <2 x i32> %23, i64 0
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = sub nsw i32 360, %25
  %27 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %26, i32 noundef %25) #5
  ret i32 %27
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @min(...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
