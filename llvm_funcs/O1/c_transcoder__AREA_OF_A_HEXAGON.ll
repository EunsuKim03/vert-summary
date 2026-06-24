; ModuleID = 'benchmark/c_transcoder/AREA_OF_A_HEXAGON/AREA_OF_A_HEXAGON_processed.c'
source_filename = "benchmark/c_transcoder/AREA_OF_A_HEXAGON/AREA_OF_A_HEXAGON_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @f_gold(double noundef %0) local_unnamed_addr #0 {
  %2 = fmul double %0, %0
  %3 = fmul double %2, 0x4014C8DC2E423980
  %4 = fmul double %3, 5.000000e-01
  %5 = fptrunc double %4 to float
  ret float %5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
