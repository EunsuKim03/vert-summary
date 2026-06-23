; ModuleID = 'benchmark/c_transcoder/PROGRAM_TO_FIND_THE_AREA_OF_PENTAGON/PROGRAM_TO_FIND_THE_AREA_OF_PENTAGON_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_TO_FIND_THE_AREA_OF_PENTAGON/PROGRAM_TO_FIND_THE_AREA_OF_PENTAGON_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @f_gold(float noundef %0) local_unnamed_addr #0 {
  %2 = fpext float %0 to double
  %3 = fmul double %2, 0x401B87134F909657
  %4 = fmul double %3, %2
  %5 = fmul double %4, 2.500000e-01
  %6 = fptrunc double %5 to float
  ret float %6
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
