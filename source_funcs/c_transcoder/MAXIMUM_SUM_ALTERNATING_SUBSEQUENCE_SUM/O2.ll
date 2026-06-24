; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load i32, i32* %0, align 4, !tbaa !5
  br label %94

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  %8 = tail call i8* @llvm.stacksave()
  %9 = alloca i32, i64 %7, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)
  %12 = alloca i32, i64 %7, align 16
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %13, i8 0, i64 %11, i1 false)
  %14 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %14, i32* %12, align 16, !tbaa !5
  store i32 %14, i32* %9, align 16, !tbaa !5
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %68

16:                                               ; preds = %6, %27
  %17 = phi i64 [ %28, %27 ], [ 1, %6 ]
  %18 = phi i32 [ %51, %27 ], [ 0, %6 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %17
  br label %30

20:                                               ; preds = %27
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %20
  %23 = and i64 %7, 1
  %24 = icmp eq i32 %1, 1
  br i1 %24, label %54, label %25

25:                                               ; preds = %22
  %26 = and i64 %7, 4294967294
  br label %70

27:                                               ; preds = %50
  %28 = add nuw nsw i64 %17, 1
  %29 = icmp eq i64 %28, %7
  br i1 %29, label %20, label %16, !llvm.loop !9

30:                                               ; preds = %16, %50
  %31 = phi i64 [ 0, %16 ], [ %52, %50 ]
  %32 = phi i32 [ %18, %16 ], [ %51, %50 ]
  %33 = getelementptr inbounds i32, i32* %0, i64 %31
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = load i32, i32* %19, align 4, !tbaa !5
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = icmp slt i32 %34, %35
  %39 = icmp eq i32 %32, 1
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %50

41:                                               ; preds = %37, %30
  %42 = phi i32* [ %9, %30 ], [ %12, %37 ]
  %43 = phi i32* [ %12, %30 ], [ %9, %37 ]
  %44 = getelementptr inbounds i32, i32* %42, i64 %17
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = getelementptr inbounds i32, i32* %43, i64 %31
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = add nsw i32 %47, %35
  %49 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %45, i32 noundef %48) #4
  store i32 %49, i32* %44, align 4, !tbaa !5
  br label %50

50:                                               ; preds = %41, %37
  %51 = phi i32 [ %32, %37 ], [ 1, %41 ]
  %52 = add nuw nsw i64 %31, 1
  %53 = icmp eq i64 %52, %17
  br i1 %53, label %27, label %30, !llvm.loop !11

54:                                               ; preds = %70, %22
  %55 = phi i32 [ undef, %22 ], [ %90, %70 ]
  %56 = phi i64 [ 0, %22 ], [ %91, %70 ]
  %57 = phi i32 [ -2147483648, %22 ], [ %90, %70 ]
  %58 = icmp eq i64 %23, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i32, i32* %12, i64 %56
  %61 = load i32, i32* %60, align 4, !tbaa !5
  %62 = icmp slt i32 %57, %61
  %63 = select i1 %62, i32 %61, i32 %57
  %64 = getelementptr inbounds i32, i32* %9, i64 %56
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = icmp slt i32 %63, %65
  %67 = select i1 %66, i32 %65, i32 %63
  br label %68

68:                                               ; preds = %59, %54, %6, %20
  %69 = phi i32 [ -2147483648, %20 ], [ -2147483648, %6 ], [ %55, %54 ], [ %67, %59 ]
  tail call void @llvm.stackrestore(i8* %8)
  br label %94

70:                                               ; preds = %70, %25
  %71 = phi i64 [ 0, %25 ], [ %91, %70 ]
  %72 = phi i32 [ -2147483648, %25 ], [ %90, %70 ]
  %73 = phi i64 [ 0, %25 ], [ %92, %70 ]
  %74 = getelementptr inbounds i32, i32* %12, i64 %71
  %75 = load i32, i32* %74, align 8, !tbaa !5
  %76 = icmp slt i32 %72, %75
  %77 = select i1 %76, i32 %75, i32 %72
  %78 = getelementptr inbounds i32, i32* %9, i64 %71
  %79 = load i32, i32* %78, align 8, !tbaa !5
  %80 = icmp slt i32 %77, %79
  %81 = select i1 %80, i32 %79, i32 %77
  %82 = or i64 %71, 1
  %83 = getelementptr inbounds i32, i32* %12, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !5
  %85 = icmp slt i32 %81, %84
  %86 = select i1 %85, i32 %84, i32 %81
  %87 = getelementptr inbounds i32, i32* %9, i64 %82
  %88 = load i32, i32* %87, align 4, !tbaa !5
  %89 = icmp slt i32 %86, %88
  %90 = select i1 %89, i32 %88, i32 %86
  %91 = add nuw nsw i64 %71, 2
  %92 = add i64 %73, 2
  %93 = icmp eq i64 %92, %26
  br i1 %93, label %54, label %70, !llvm.loop !12

94:                                               ; preds = %68, %4
  %95 = phi i32 [ %5, %4 ], [ %69, %68 ]
  ret i32 %95
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @max(...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
