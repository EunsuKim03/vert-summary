; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_DIFFERENCE_PAIR_1/FIND_MINIMUM_DIFFERENCE_PAIR_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_DIFFERENCE_PAIR_1/FIND_MINIMUM_DIFFERENCE_PAIR_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #3
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %47

7:                                                ; preds = %2
  %8 = add nsw i32 %1, -1
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* %0, align 4, !tbaa !5
  %11 = icmp ult i32 %8, 8
  br i1 %11, label %43, label %12

12:                                               ; preds = %7
  %13 = and i64 %9, 4294967288
  %14 = insertelement <4 x i32> poison, i32 %10, i64 3
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %35, %15 ]
  %17 = phi <4 x i32> [ %14, %12 ], [ %26, %15 ]
  %18 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %12 ], [ %33, %15 ]
  %19 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %12 ], [ %34, %15 ]
  %20 = or i64 %16, 1
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = bitcast i32* %21 to <4 x i32>*
  %23 = load <4 x i32>, <4 x i32>* %22, align 4, !tbaa !5
  %24 = getelementptr inbounds i32, i32* %21, i64 4
  %25 = bitcast i32* %24 to <4 x i32>*
  %26 = load <4 x i32>, <4 x i32>* %25, align 4, !tbaa !5
  %27 = shufflevector <4 x i32> %17, <4 x i32> %23, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %28 = shufflevector <4 x i32> %23, <4 x i32> %26, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %29 = sub nsw <4 x i32> %23, %27
  %30 = sub nsw <4 x i32> %26, %28
  %31 = icmp slt <4 x i32> %29, %18
  %32 = icmp slt <4 x i32> %30, %19
  %33 = select <4 x i1> %31, <4 x i32> %29, <4 x i32> %18
  %34 = select <4 x i1> %32, <4 x i32> %30, <4 x i32> %19
  %35 = add nuw i64 %16, 8
  %36 = icmp eq i64 %35, %13
  br i1 %36, label %37, label %15, !llvm.loop !9

37:                                               ; preds = %15
  %38 = icmp slt <4 x i32> %33, %34
  %39 = select <4 x i1> %38, <4 x i32> %33, <4 x i32> %34
  %40 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %39)
  %41 = icmp eq i64 %13, %9
  %42 = extractelement <4 x i32> %26, i64 3
  br i1 %41, label %47, label %43

43:                                               ; preds = %7, %37
  %44 = phi i32 [ %42, %37 ], [ %10, %7 ]
  %45 = phi i64 [ %13, %37 ], [ 0, %7 ]
  %46 = phi i32 [ %40, %37 ], [ 2147483647, %7 ]
  br label %49

47:                                               ; preds = %49, %37, %2
  %48 = phi i32 [ 2147483647, %2 ], [ %40, %37 ], [ %58, %49 ]
  ret i32 %48

49:                                               ; preds = %43, %49
  %50 = phi i32 [ %55, %49 ], [ %44, %43 ]
  %51 = phi i64 [ %53, %49 ], [ %45, %43 ]
  %52 = phi i32 [ %58, %49 ], [ %46, %43 ]
  %53 = add nuw nsw i64 %51, 1
  %54 = getelementptr inbounds i32, i32* %0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %56 = sub nsw i32 %55, %50
  %57 = icmp slt i32 %56, %52
  %58 = select i1 %57, i32 %56, i32 %52
  %59 = icmp eq i64 %53, %9
  br i1 %59, label %47, label %49, !llvm.loop !12
}

declare i32 @sort(...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind }

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
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
