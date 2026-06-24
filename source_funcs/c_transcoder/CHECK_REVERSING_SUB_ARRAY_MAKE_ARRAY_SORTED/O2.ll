; ModuleID = 'benchmark/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %4, i32* noundef nonnull %8) #4
  br label %29

10:                                               ; preds = %2
  %11 = bitcast i32* %4 to i8*
  %12 = bitcast i32* %0 to i8*
  %13 = shl nuw nsw i64 %3, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %11, i8* align 4 %12, i64 %13, i1 false), !tbaa !5
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds i32, i32* %4, i64 %14
  %16 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %4, i32* noundef nonnull %15) #4
  br label %17

17:                                               ; preds = %10, %24
  %18 = phi i64 [ 0, %10 ], [ %25, %24 ]
  %19 = getelementptr inbounds i32, i32* %4, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, i32* %0, i64 %18
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, %3
  br i1 %26, label %29, label %17, !llvm.loop !9

27:                                               ; preds = %17
  %28 = trunc i64 %18 to i32
  br label %29

29:                                               ; preds = %24, %27, %6
  %30 = phi i32 [ 0, %6 ], [ %28, %27 ], [ %1, %24 ]
  %31 = call i32 @llvm.smin.i32(i32 %1, i32 0)
  %32 = add i32 %31, -1
  br label %33

33:                                               ; preds = %38, %29
  %34 = phi i64 [ %35, %38 ], [ %3, %29 ]
  %35 = add nsw i64 %34, -1
  %36 = trunc i64 %34 to i32
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = and i64 %35, 4294967295
  %40 = getelementptr inbounds i32, i32* %4, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %0, i64 %39
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %33, label %45, !llvm.loop !11

45:                                               ; preds = %38
  %46 = trunc i64 %35 to i32
  br label %47

47:                                               ; preds = %33, %45
  %48 = phi i32 [ %46, %45 ], [ %32, %33 ]
  %49 = icmp slt i32 %30, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = zext i32 %30 to i64
  %52 = zext i32 %48 to i64
  %53 = getelementptr inbounds i32, i32* %0, i64 %51
  %54 = load i32, i32* %53, align 4, !tbaa !5
  br label %55

55:                                               ; preds = %50, %62
  %56 = phi i32 [ %54, %50 ], [ %60, %62 ]
  %57 = phi i64 [ %51, %50 ], [ %58, %62 ]
  %58 = add nuw nsw i64 %57, 1
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = icmp eq i64 %58, %52
  br i1 %63, label %64, label %55, !llvm.loop !12

64:                                               ; preds = %62, %55, %47
  %65 = phi i32 [ 1, %47 ], [ 1, %62 ], [ 0, %55 ]
  ret i32 %65
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
