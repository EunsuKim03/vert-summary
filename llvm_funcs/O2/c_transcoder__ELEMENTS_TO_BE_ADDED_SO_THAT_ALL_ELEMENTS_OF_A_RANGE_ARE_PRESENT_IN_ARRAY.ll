; ModuleID = 'benchmark/c_transcoder/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #3
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %56

7:                                                ; preds = %2
  %8 = add nsw i32 %1, -1
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* %0, align 4, !tbaa !5
  %11 = icmp ult i32 %8, 8
  br i1 %11, label %52, label %12

12:                                               ; preds = %7
  %13 = and i64 %9, 4294967288
  %14 = insertelement <4 x i32> poison, i32 %10, i64 3
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %45, %15 ]
  %17 = phi <4 x i32> [ %14, %12 ], [ %26, %15 ]
  %18 = phi <4 x i32> [ zeroinitializer, %12 ], [ %43, %15 ]
  %19 = phi <4 x i32> [ zeroinitializer, %12 ], [ %44, %15 ]
  %20 = or i64 %16, 1
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = bitcast i32* %21 to <4 x i32>*
  %23 = load <4 x i32>, <4 x i32>* %22, align 4, !tbaa !5
  %24 = getelementptr inbounds i32, i32* %21, i64 4
  %25 = bitcast i32* %24 to <4 x i32>*
  %26 = load <4 x i32>, <4 x i32>* %25, align 4, !tbaa !5
  %27 = shufflevector <4 x i32> %17, <4 x i32> %23, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %28 = shufflevector <4 x i32> %23, <4 x i32> %26, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %29 = icmp eq <4 x i32> %23, %27
  %30 = icmp eq <4 x i32> %26, %28
  %31 = add nsw <4 x i32> %23, <i32 -1, i32 -1, i32 -1, i32 -1>
  %32 = add nsw <4 x i32> %26, <i32 -1, i32 -1, i32 -1, i32 -1>
  %33 = icmp eq <4 x i32> %27, %31
  %34 = icmp eq <4 x i32> %28, %32
  %35 = select <4 x i1> %29, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %33
  %36 = select <4 x i1> %30, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %34
  %37 = xor <4 x i32> %27, <i32 -1, i32 -1, i32 -1, i32 -1>
  %38 = xor <4 x i32> %28, <i32 -1, i32 -1, i32 -1, i32 -1>
  %39 = add <4 x i32> %23, %37
  %40 = add <4 x i32> %26, %38
  %41 = select <4 x i1> %35, <4 x i32> zeroinitializer, <4 x i32> %39
  %42 = select <4 x i1> %36, <4 x i32> zeroinitializer, <4 x i32> %40
  %43 = add <4 x i32> %41, %18
  %44 = add <4 x i32> %42, %19
  %45 = add nuw i64 %16, 8
  %46 = icmp eq i64 %45, %13
  br i1 %46, label %47, label %15, !llvm.loop !9

47:                                               ; preds = %15
  %48 = add <4 x i32> %44, %43
  %49 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %48)
  %50 = icmp eq i64 %13, %9
  %51 = extractelement <4 x i32> %26, i64 3
  br i1 %50, label %56, label %52

52:                                               ; preds = %7, %47
  %53 = phi i32 [ %51, %47 ], [ %10, %7 ]
  %54 = phi i64 [ %13, %47 ], [ 0, %7 ]
  %55 = phi i32 [ %49, %47 ], [ 0, %7 ]
  br label %58

56:                                               ; preds = %58, %47, %2
  %57 = phi i32 [ 0, %2 ], [ %49, %47 ], [ %72, %58 ]
  ret i32 %57

58:                                               ; preds = %52, %58
  %59 = phi i32 [ %64, %58 ], [ %53, %52 ]
  %60 = phi i64 [ %62, %58 ], [ %54, %52 ]
  %61 = phi i32 [ %72, %58 ], [ %55, %52 ]
  %62 = add nuw nsw i64 %60, 1
  %63 = getelementptr inbounds i32, i32* %0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = icmp eq i32 %64, %59
  %66 = add nsw i32 %64, -1
  %67 = icmp eq i32 %59, %66
  %68 = select i1 %65, i1 true, i1 %67
  %69 = xor i32 %59, -1
  %70 = add i32 %64, %69
  %71 = select i1 %68, i32 0, i32 %70
  %72 = add nsw i32 %71, %61
  %73 = icmp eq i64 %62, %9
  br i1 %73, label %56, label %58, !llvm.loop !12
}

declare i32 @sort(...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

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
