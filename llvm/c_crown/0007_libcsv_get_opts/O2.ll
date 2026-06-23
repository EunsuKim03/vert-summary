; ModuleID = 'benchmark/c_crown/0007_libcsv_get_opts/csvinfo_processed.c'
source_filename = "benchmark/c_crown/0007_libcsv_get_opts/csvinfo_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @csv_get_opts(%struct.csv_parser* noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq %struct.csv_parser* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %0, i64 0, i32 7
  %5 = load i8, i8* %4, align 4, !tbaa !5
  %6 = zext i8 %5 to i32
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -1, %1 ]
  ret i32 %8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !8, i64 44}
!6 = !{!"csv_parser", !7, i64 0, !7, i64 4, !10, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !8, i64 44, !8, i64 45, !8, i64 46, !11, i64 48, !11, i64 56, !10, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
