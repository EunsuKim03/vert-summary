; ModuleID = 'benchmark/c_transcoder/CIRCLE_LATTICE_POINTS/CIRCLE_LATTICE_POINTS_processed.c'
source_filename = "benchmark/c_transcoder/CIRCLE_LATTICE_POINTS/CIRCLE_LATTICE_POINTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = mul nsw i32 %0, %0
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 4, %5 ], [ %18, %7 ]
  %9 = phi i32 [ 1, %5 ], [ %19, %7 ]
  %10 = mul nsw i32 %9, %9
  %11 = sub nsw i32 %6, %10
  %12 = sitofp i32 %11 to double
  %13 = call double @sqrt(double noundef %12) #2
  %14 = fptosi double %13 to i32
  %15 = mul nsw i32 %14, %14
  %16 = icmp eq i32 %15, %11
  %17 = add nsw i32 %8, 4
  %18 = select i1 %16, i32 %17, i32 %8
  %19 = add nuw nsw i32 %9, 1
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %21, label %7, !llvm.loop !5

21:                                               ; preds = %7, %3, %1
  %22 = phi i32 [ 0, %1 ], [ 4, %3 ], [ %18, %7 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
