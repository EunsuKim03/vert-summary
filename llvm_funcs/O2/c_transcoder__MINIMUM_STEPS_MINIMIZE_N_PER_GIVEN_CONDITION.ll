; ModuleID = 'benchmark/c_transcoder/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %72, label %6

6:                                                ; preds = %1
  %7 = icmp ult i32 %2, 8
  br i1 %7, label %59, label %8

8:                                                ; preds = %6
  %9 = and i64 %3, 4294967288
  %10 = insertelement <4 x i32> poison, i32 %0, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  %12 = insertelement <4 x i32> poison, i32 %0, i64 0
  %13 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> zeroinitializer
  %14 = add nsw i64 %9, -8
  %15 = lshr exact i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = and i64 %16, 1
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %8
  %20 = and i64 %16, 4611686018427387902
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %41, %21 ]
  %23 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %19 ], [ %42, %21 ]
  %24 = phi i64 [ 0, %19 ], [ %43, %21 ]
  %25 = add <4 x i32> %23, <i32 4, i32 4, i32 4, i32 4>
  %26 = sub nsw <4 x i32> %11, %23
  %27 = sub nsw <4 x i32> %13, %25
  %28 = getelementptr inbounds i32, i32* %4, i64 %22
  %29 = bitcast i32* %28 to <4 x i32>*
  store <4 x i32> %26, <4 x i32>* %29, align 16, !tbaa !5
  %30 = getelementptr inbounds i32, i32* %28, i64 4
  %31 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> %27, <4 x i32>* %31, align 16, !tbaa !5
  %32 = or i64 %22, 8
  %33 = add <4 x i32> %23, <i32 8, i32 8, i32 8, i32 8>
  %34 = add <4 x i32> %23, <i32 12, i32 12, i32 12, i32 12>
  %35 = sub nsw <4 x i32> %11, %33
  %36 = sub nsw <4 x i32> %13, %34
  %37 = getelementptr inbounds i32, i32* %4, i64 %32
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> %35, <4 x i32>* %38, align 16, !tbaa !5
  %39 = getelementptr inbounds i32, i32* %37, i64 4
  %40 = bitcast i32* %39 to <4 x i32>*
  store <4 x i32> %36, <4 x i32>* %40, align 16, !tbaa !5
  %41 = add nuw i64 %22, 16
  %42 = add <4 x i32> %23, <i32 16, i32 16, i32 16, i32 16>
  %43 = add i64 %24, 2
  %44 = icmp eq i64 %43, %20
  br i1 %44, label %45, label %21, !llvm.loop !9

45:                                               ; preds = %21, %8
  %46 = phi i64 [ 0, %8 ], [ %41, %21 ]
  %47 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %8 ], [ %42, %21 ]
  %48 = icmp eq i64 %17, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = add <4 x i32> %47, <i32 4, i32 4, i32 4, i32 4>
  %51 = sub nsw <4 x i32> %11, %47
  %52 = sub nsw <4 x i32> %13, %50
  %53 = getelementptr inbounds i32, i32* %4, i64 %46
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> %51, <4 x i32>* %54, align 16, !tbaa !5
  %55 = getelementptr inbounds i32, i32* %53, i64 4
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> %52, <4 x i32>* %56, align 16, !tbaa !5
  br label %57

57:                                               ; preds = %45, %49
  %58 = icmp eq i64 %9, %3
  br i1 %58, label %61, label %59

59:                                               ; preds = %6, %57
  %60 = phi i64 [ 0, %6 ], [ %9, %57 ]
  br label %65

61:                                               ; preds = %65, %57
  %62 = icmp sgt i32 %0, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %61
  %64 = zext i32 %0 to i64
  br label %75

65:                                               ; preds = %59, %65
  %66 = phi i64 [ %70, %65 ], [ %60, %59 ]
  %67 = trunc i64 %66 to i32
  %68 = sub nsw i32 %0, %67
  %69 = getelementptr inbounds i32, i32* %4, i64 %66
  store i32 %68, i32* %69, align 4, !tbaa !5
  %70 = add nuw nsw i64 %66, 1
  %71 = icmp eq i64 %70, %3
  br i1 %71, label %61, label %65, !llvm.loop !12

72:                                               ; preds = %101, %1, %61
  %73 = getelementptr inbounds i32, i32* %4, i64 1
  %74 = load i32, i32* %73, align 4, !tbaa !5
  ret i32 %74

75:                                               ; preds = %63, %101
  %76 = phi i64 [ %64, %63 ], [ %102, %101 ]
  %77 = trunc i64 %76 to i32
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = getelementptr inbounds i32, i32* %4, i64 %76
  %82 = load i32, i32* %81, align 4, !tbaa !5
  %83 = add nsw i32 %82, 1
  %84 = lshr i64 %76, 1
  %85 = and i64 %84, 2147483647
  %86 = getelementptr inbounds i32, i32* %4, i64 %85
  %87 = load i32, i32* %86, align 4, !tbaa !5
  %88 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %83, i32 noundef %87) #2
  store i32 %88, i32* %86, align 4, !tbaa !5
  br label %89

89:                                               ; preds = %80, %75
  %90 = urem i32 %77, 3
  %91 = udiv i32 %77, 3
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = getelementptr inbounds i32, i32* %4, i64 %76
  %95 = load i32, i32* %94, align 4, !tbaa !5
  %96 = add nsw i32 %95, 1
  %97 = zext i32 %91 to i64
  %98 = getelementptr inbounds i32, i32* %4, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !5
  %100 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %96, i32 noundef %99) #2
  store i32 %100, i32* %98, align 4, !tbaa !5
  br label %101

101:                                              ; preds = %89, %93
  %102 = add nsw i64 %76, -1
  %103 = icmp sgt i64 %76, 1
  br i1 %103, label %75, label %72, !llvm.loop !14
}

declare i32 @min(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!14 = distinct !{!14, !10}
