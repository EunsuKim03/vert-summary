; ModuleID = 'benchmark/c_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = or i32 %0, %1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %16, %5 ], [ %0, %2 ]
  %7 = phi i32 [ %17, %5 ], [ %1, %2 ]
  %8 = phi i32 [ %15, %5 ], [ 0, %2 ]
  %9 = srem i32 %6, 10
  %10 = srem i32 %7, 10
  %11 = sub nsw i32 %9, %10
  %12 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %13 = sub nsw i32 10, %12
  %14 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef %13) #3
  %15 = add nsw i32 %14, %8
  %16 = sdiv i32 %6, 10
  %17 = sdiv i32 %7, 10
  %18 = add i32 %6, -10
  %19 = icmp ult i32 %18, -19
  %20 = add i32 %7, -10
  %21 = icmp ult i32 %20, -19
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %5, label %23, !llvm.loop !5

23:                                               ; preds = %5, %2
  %24 = phi i32 [ 0, %2 ], [ %15, %5 ]
  ret i32 %24
}

declare i32 @min(...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
