; ModuleID = 'benchmark/c_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_processed.c'
source_filename = "benchmark/c_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %9, %7 ], [ %0, %4 ]
  %9 = sdiv i32 %8, 2
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %7, label %12, !llvm.loop !5

12:                                               ; preds = %7, %4, %1
  %13 = phi i32 [ %0, %1 ], [ %0, %4 ], [ %9, %7 ]
  %14 = phi i32 [ 0, %1 ], [ 1, %4 ], [ 1, %7 ]
  %15 = sitofp i32 %13 to double
  %16 = call double @sqrt(double noundef %15) #2
  %17 = fcmp ult double %16, 3.000000e+00
  br i1 %17, label %18, label %24

18:                                               ; preds = %39, %12
  %19 = phi i32 [ %13, %12 ], [ %40, %39 ]
  %20 = phi i32 [ %14, %12 ], [ %41, %39 ]
  %21 = icmp sgt i32 %19, 2
  %22 = zext i1 %21 to i32
  %23 = add nsw i32 %20, %22
  ret i32 %23

24:                                               ; preds = %12, %39
  %25 = phi i32 [ %42, %39 ], [ 3, %12 ]
  %26 = phi i32 [ %41, %39 ], [ %14, %12 ]
  %27 = phi i32 [ %40, %39 ], [ %13, %12 ]
  %28 = srem i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = add nsw i32 %26, 1
  %32 = srem i32 %27, %25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %34
  %35 = phi i32 [ %36, %34 ], [ %27, %30 ]
  %36 = sdiv i32 %35, %25
  %37 = srem i32 %36, %25
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %34, label %39, !llvm.loop !8

39:                                               ; preds = %34, %30, %24
  %40 = phi i32 [ %27, %24 ], [ %27, %30 ], [ %36, %34 ]
  %41 = phi i32 [ %26, %24 ], [ %31, %30 ], [ %31, %34 ]
  %42 = add nuw nsw i32 %25, 2
  %43 = sitofp i32 %42 to double
  %44 = sitofp i32 %40 to double
  %45 = call double @sqrt(double noundef %44) #2
  %46 = fcmp ult double %45, %43
  br i1 %46, label %18, label %24, !llvm.loop !9
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
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
