; ModuleID = 'benchmark/c_transcoder/CIRCLE_LATTICE_POINTS/CIRCLE_LATTICE_POINTS_processed.c'
source_filename = "benchmark/c_transcoder/CIRCLE_LATTICE_POINTS/CIRCLE_LATTICE_POINTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %53, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %53, label %5

5:                                                ; preds = %3
  %6 = mul nsw i32 %0, %0
  %7 = add i32 %0, -1
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %0, 2
  br i1 %9, label %38, label %10

10:                                               ; preds = %5
  %11 = and i32 %7, -2
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 4, %10 ], [ %34, %12 ]
  %14 = phi i32 [ 1, %10 ], [ %35, %12 ]
  %15 = phi i32 [ 0, %10 ], [ %36, %12 ]
  %16 = mul nsw i32 %14, %14
  %17 = sub nsw i32 %6, %16
  %18 = sitofp i32 %17 to double
  %19 = tail call double @sqrt(double noundef %18) #2
  %20 = fptosi double %19 to i32
  %21 = mul nsw i32 %20, %20
  %22 = icmp eq i32 %21, %17
  %23 = add nsw i32 %13, 4
  %24 = select i1 %22, i32 %23, i32 %13
  %25 = add nuw nsw i32 %14, 1
  %26 = mul nsw i32 %25, %25
  %27 = sub nsw i32 %6, %26
  %28 = sitofp i32 %27 to double
  %29 = tail call double @sqrt(double noundef %28) #2
  %30 = fptosi double %29 to i32
  %31 = mul nsw i32 %30, %30
  %32 = icmp eq i32 %31, %27
  %33 = add nsw i32 %24, 4
  %34 = select i1 %32, i32 %33, i32 %24
  %35 = add nuw nsw i32 %14, 2
  %36 = add i32 %15, 2
  %37 = icmp eq i32 %36, %11
  br i1 %37, label %38, label %12, !llvm.loop !5

38:                                               ; preds = %12, %5
  %39 = phi i32 [ undef, %5 ], [ %34, %12 ]
  %40 = phi i32 [ 4, %5 ], [ %34, %12 ]
  %41 = phi i32 [ 1, %5 ], [ %35, %12 ]
  %42 = icmp eq i32 %8, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = mul nsw i32 %41, %41
  %45 = sub nsw i32 %6, %44
  %46 = sitofp i32 %45 to double
  %47 = tail call double @sqrt(double noundef %46) #2
  %48 = fptosi double %47 to i32
  %49 = mul nsw i32 %48, %48
  %50 = icmp eq i32 %49, %45
  %51 = add nsw i32 %40, 4
  %52 = select i1 %50, i32 %51, i32 %40
  br label %53

53:                                               ; preds = %43, %38, %3, %1
  %54 = phi i32 [ 0, %1 ], [ 4, %3 ], [ %39, %38 ], [ %52, %43 ]
  ret i32 %54
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
