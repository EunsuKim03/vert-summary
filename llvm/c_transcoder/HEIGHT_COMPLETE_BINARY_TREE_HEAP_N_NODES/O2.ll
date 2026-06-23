; ModuleID = 'benchmark/c_transcoder/HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES/HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES_processed.c'
source_filename = "benchmark/c_transcoder/HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES/HEIGHT_COMPLETE_BINARY_TREE_HEAP_N_NODES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = sitofp i32 %2 to double
  %4 = tail call double @log2(double noundef %3) #3
  %5 = tail call double @llvm.ceil.f64(double %4)
  %6 = fadd double %5, -1.000000e+00
  %7 = fptosi double %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log2(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

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
