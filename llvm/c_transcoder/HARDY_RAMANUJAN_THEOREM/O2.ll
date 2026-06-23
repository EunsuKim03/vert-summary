; ModuleID = 'benchmark/c_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_processed.c'
source_filename = "benchmark/c_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %6, %4 ], [ %0, %1 ]
  %6 = sdiv i32 %5, 2
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %4, label %9, !llvm.loop !5

9:                                                ; preds = %4, %1
  %10 = phi i32 [ %0, %1 ], [ %6, %4 ]
  %11 = phi i32 [ 0, %1 ], [ 1, %4 ]
  %12 = sitofp i32 %10 to double
  %13 = tail call double @sqrt(double noundef %12) #2
  %14 = fcmp ult double %13, 3.000000e+00
  br i1 %14, label %15, label %21

15:                                               ; preds = %34, %9
  %16 = phi i32 [ %10, %9 ], [ %35, %34 ]
  %17 = phi i32 [ %11, %9 ], [ %36, %34 ]
  %18 = icmp sgt i32 %16, 2
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %17, %19
  ret i32 %20

21:                                               ; preds = %9, %34
  %22 = phi i32 [ %37, %34 ], [ 3, %9 ]
  %23 = phi i32 [ %36, %34 ], [ %11, %9 ]
  %24 = phi i32 [ %35, %34 ], [ %10, %9 ]
  %25 = srem i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = add nsw i32 %23, 1
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i32 [ %31, %29 ], [ %24, %27 ]
  %31 = sdiv i32 %30, %22
  %32 = srem i32 %31, %22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %29, label %34, !llvm.loop !7

34:                                               ; preds = %29, %21
  %35 = phi i32 [ %24, %21 ], [ %31, %29 ]
  %36 = phi i32 [ %23, %21 ], [ %28, %29 ]
  %37 = add nuw nsw i32 %22, 2
  %38 = sitofp i32 %37 to double
  %39 = sitofp i32 %35 to double
  %40 = tail call double @sqrt(double noundef %39) #2
  %41 = fcmp ult double %40, %38
  br i1 %41, label %15, label %21, !llvm.loop !8
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
