; ModuleID = 'llvm/c_crown/0006_ht_hashkey/ht_reprocessed.c'
source_filename = "llvm/c_crown/0006_ht_hashkey/ht_reprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i64 @hash_key(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, i8* %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %6, %1
  %5 = phi i64 [ -3750763034362895579, %1 ], [ %12, %6 ]
  ret i64 %5

6:                                                ; preds = %1, %6
  %7 = phi i8 [ %14, %6 ], [ %2, %1 ]
  %8 = phi i8* [ %13, %6 ], [ %0, %1 ]
  %9 = phi i64 [ %12, %6 ], [ -3750763034362895579, %1 ]
  %10 = zext i8 %7 to i64
  %11 = xor i64 %9, %10
  %12 = mul i64 %11, 1099511628211
  %13 = getelementptr inbounds i8, i8* %8, i64 1
  %14 = load i8, i8* %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %4, label %6, !llvm.loop !8
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
