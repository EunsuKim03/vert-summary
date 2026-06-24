; ModuleID = 'benchmark/c_transcoder/MINIMUM_PERIMETER_N_BLOCKS/MINIMUM_PERIMETER_N_BLOCKS_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_PERIMETER_N_BLOCKS/MINIMUM_PERIMETER_N_BLOCKS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sitofp i32 %0 to double
  %3 = call double @sqrt(double noundef %2) #2
  %4 = fptosi double %3 to i32
  %5 = mul nsw i32 %4, %4
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = shl nsw i32 %4, 2
  br label %20

9:                                                ; preds = %1
  %10 = sdiv i32 %0, %4
  %11 = sext i32 %10 to i64
  %12 = sext i32 %4 to i64
  %13 = add nsw i64 %11, %12
  %14 = shl nsw i64 %13, 1
  %15 = srem i32 %0, %4
  %16 = icmp eq i32 %15, 0
  %17 = add nsw i64 %14, 2
  %18 = select i1 %16, i64 %14, i64 %17
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %9, %7
  %21 = phi i32 [ %8, %7 ], [ %19, %9 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #1

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
