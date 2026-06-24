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
  br label %68

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  %8 = call i8* @llvm.stacksave()
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
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = zext i32 %1 to i64
  br label %18

18:                                               ; preds = %16, %26
  %19 = phi i64 [ 1, %16 ], [ %27, %26 ]
  %20 = phi i32 [ 0, %16 ], [ %50, %26 ]
  %21 = getelementptr inbounds i32, i32* %0, i64 %19
  br label %29

22:                                               ; preds = %26, %6
  %23 = icmp sgt i32 %1, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %22
  %25 = zext i32 %1 to i64
  br label %55

26:                                               ; preds = %49
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, %17
  br i1 %28, label %22, label %18, !llvm.loop !9

29:                                               ; preds = %18, %49
  %30 = phi i64 [ 0, %18 ], [ %51, %49 ]
  %31 = phi i32 [ %20, %18 ], [ %50, %49 ]
  %32 = getelementptr inbounds i32, i32* %0, i64 %30
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = load i32, i32* %21, align 4, !tbaa !5
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = icmp slt i32 %33, %34
  %38 = icmp eq i32 %31, 1
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %49

40:                                               ; preds = %36, %29
  %41 = phi i32* [ %9, %29 ], [ %12, %36 ]
  %42 = phi i32* [ %12, %29 ], [ %9, %36 ]
  %43 = getelementptr inbounds i32, i32* %41, i64 %19
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = getelementptr inbounds i32, i32* %42, i64 %30
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = add nsw i32 %46, %34
  %48 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %44, i32 noundef %47) #4
  store i32 %48, i32* %43, align 4, !tbaa !5
  br label %49

49:                                               ; preds = %40, %36
  %50 = phi i32 [ %31, %36 ], [ 1, %40 ]
  %51 = add nuw nsw i64 %30, 1
  %52 = icmp eq i64 %51, %19
  br i1 %52, label %26, label %29, !llvm.loop !12

53:                                               ; preds = %55, %22
  %54 = phi i32 [ -2147483648, %22 ], [ %65, %55 ]
  call void @llvm.stackrestore(i8* %8)
  br label %68

55:                                               ; preds = %24, %55
  %56 = phi i64 [ 0, %24 ], [ %66, %55 ]
  %57 = phi i32 [ -2147483648, %24 ], [ %65, %55 ]
  %58 = getelementptr inbounds i32, i32* %12, i64 %56
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = icmp slt i32 %57, %59
  %61 = select i1 %60, i32 %59, i32 %57
  %62 = getelementptr inbounds i32, i32* %9, i64 %56
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = icmp slt i32 %61, %63
  %65 = select i1 %64, i32 %63, i32 %61
  %66 = add nuw nsw i64 %56, 1
  %67 = icmp eq i64 %66, %25
  br i1 %67, label %53, label %55, !llvm.loop !13

68:                                               ; preds = %53, %4
  %69 = phi i32 [ %5, %4 ], [ %54, %53 ]
  ret i32 %69
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
