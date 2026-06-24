; ModuleID = 'benchmark/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = bitcast i32* %4 to i8*
  %8 = bitcast i32* %0 to i8*
  %9 = zext i32 %1 to i64
  %10 = shl nuw nsw i64 %9, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %7, i8* align 4 %8, i64 %10, i1 false), !tbaa !5
  br label %11

11:                                               ; preds = %6, %2
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds i32, i32* %4, i64 %12
  %14 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %4, i32* noundef nonnull %13) #4
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = zext i32 %1 to i64
  br label %18

18:                                               ; preds = %16, %25
  %19 = phi i64 [ 0, %16 ], [ %26, %25 ]
  %20 = getelementptr inbounds i32, i32* %4, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, i32* %0, i64 %19
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, %17
  br i1 %27, label %30, label %18, !llvm.loop !9

28:                                               ; preds = %18
  %29 = trunc i64 %19 to i32
  br label %30

30:                                               ; preds = %28, %25, %11
  %31 = phi i32 [ 0, %11 ], [ %29, %28 ], [ %1, %25 ]
  %32 = sext i32 %1 to i64
  %33 = call i32 @llvm.smin.i32(i32 %1, i32 0)
  %34 = add i32 %33, -1
  br label %35

35:                                               ; preds = %39, %30
  %36 = phi i64 [ %37, %39 ], [ %32, %30 ]
  %37 = add nsw i64 %36, -1
  %38 = icmp sgt i64 %36, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds i32, i32* %4, i64 %37
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %0, i64 %37
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %35, label %45, !llvm.loop !12

45:                                               ; preds = %39
  %46 = trunc i64 %37 to i32
  br label %47

47:                                               ; preds = %35, %45
  %48 = phi i32 [ %46, %45 ], [ %34, %35 ]
  %49 = icmp slt i32 %31, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = zext i32 %31 to i64
  %52 = zext i32 %48 to i64
  br label %53

53:                                               ; preds = %50, %61
  %54 = phi i64 [ %51, %50 ], [ %55, %61 ]
  %55 = add nuw nsw i64 %54, 1
  %56 = getelementptr inbounds i32, i32* %0, i64 %54
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = getelementptr inbounds i32, i32* %0, i64 %55
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = icmp eq i64 %55, %52
  br i1 %62, label %63, label %53, !llvm.loop !13

63:                                               ; preds = %61, %53, %47
  %64 = phi i32 [ 1, %47 ], [ 0, %53 ], [ 1, %61 ]
  ret i32 %64
}

declare i32 @sort(...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
