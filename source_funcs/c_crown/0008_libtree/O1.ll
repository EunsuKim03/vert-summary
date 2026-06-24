; ModuleID = 'llvm/c_crown/0008_libtree/libtree_reprocessed.c'
source_filename = "llvm/c_crown/0008_libtree/libtree_reprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @utoa(i8* nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {
  store i8 0, i8* %0, align 1, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @is_ascending_order(i64* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp ugt i64 %1, 1
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = load i64, i64* %0, align 8, !tbaa !8
  %6 = getelementptr inbounds i64, i64* %0, i64 1
  %7 = load i64, i64* %6, align 8, !tbaa !8
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %4, %12
  %10 = phi i64 [ %19, %12 ], [ 2, %4 ]
  %11 = icmp eq i64 %10, %1
  br i1 %11, label %20, label %12, !llvm.loop !10

12:                                               ; preds = %9
  %13 = add i64 %10, -1
  %14 = getelementptr inbounds i64, i64* %0, i64 %13
  %15 = load i64, i64* %14, align 8, !tbaa !8
  %16 = getelementptr inbounds i64, i64* %0, i64 %10
  %17 = load i64, i64* %16, align 8, !tbaa !8
  %18 = icmp ult i64 %15, %17
  %19 = add nuw i64 %10, 1
  br i1 %18, label %9, label %20, !llvm.loop !10

20:                                               ; preds = %9, %12
  %21 = icmp ult i64 %10, %1
  br label %22

22:                                               ; preds = %20, %4, %2
  %23 = phi i1 [ %3, %2 ], [ %3, %4 ], [ %21, %20 ]
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
