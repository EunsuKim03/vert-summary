; ModuleID = 'benchmark/c_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 3
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = call i8* @llvm.stacksave()
  %7 = mul nuw i64 %5, %5
  %8 = alloca i32, i64 %7, align 16
  %9 = add nsw i32 %1, -1
  %10 = zext i32 %9 to i64
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %10
  br label %19

13:                                               ; preds = %19
  %14 = icmp sgt i32 %1, 2
  br i1 %14, label %15, label %27

15:                                               ; preds = %13
  %16 = add i32 %1, -2
  %17 = sext i32 %16 to i64
  %18 = sext i32 %1 to i64
  br label %29

19:                                               ; preds = %4, %19
  %20 = phi i64 [ 0, %4 ], [ %23, %19 ]
  %21 = mul nuw nsw i64 %20, %5
  %22 = getelementptr inbounds i32, i32* %12, i64 %21
  store i32 2, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %13, label %19, !llvm.loop !9

25:                                               ; preds = %89, %44
  %26 = icmp sgt i64 %30, 1
  br i1 %26, label %29, label %27, !llvm.loop !12

27:                                               ; preds = %25, %13
  %28 = phi i32 [ 2, %13 ], [ %45, %25 ]
  call void @llvm.stackrestore(i8* %6)
  br label %95

29:                                               ; preds = %15, %25
  %30 = phi i64 [ %17, %15 ], [ %32, %25 ]
  %31 = phi i32 [ 2, %15 ], [ %45, %25 ]
  %32 = add nsw i64 %30, -1
  %33 = add nsw i64 %30, 1
  %34 = icmp slt i64 %33, %18
  %35 = trunc i64 %32 to i32
  br i1 %34, label %36, label %44

36:                                               ; preds = %29
  %37 = getelementptr inbounds i32, i32* %0, i64 %30
  %38 = mul nsw i64 %30, %5
  %39 = getelementptr inbounds i32, i32* %8, i64 %38
  %40 = trunc i64 %32 to i32
  %41 = trunc i64 %33 to i32
  %42 = getelementptr inbounds i32, i32* %8, i64 %30
  %43 = getelementptr inbounds i32, i32* %8, i64 %30
  br label %51

44:                                               ; preds = %82, %29
  %45 = phi i32 [ %31, %29 ], [ %83, %82 ]
  %46 = phi i32 [ %35, %29 ], [ %84, %82 ]
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %25

48:                                               ; preds = %44
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds i32, i32* %8, i64 %30
  br label %89

51:                                               ; preds = %36, %82
  %52 = phi i32 [ %41, %36 ], [ %85, %82 ]
  %53 = phi i32 [ %40, %36 ], [ %84, %82 ]
  %54 = phi i32 [ %31, %36 ], [ %83, %82 ]
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %0, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = sext i32 %52 to i64
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = add nsw i32 %60, %57
  %62 = load i32, i32* %37, align 4, !tbaa !5
  %63 = shl nsw i32 %62, 1
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = add nsw i32 %52, 1
  br label %82

67:                                               ; preds = %51
  %68 = icmp sgt i32 %61, %63
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = mul nsw i64 %55, %5
  %71 = getelementptr inbounds i32, i32* %43, i64 %70
  store i32 2, i32* %71, align 4, !tbaa !5
  %72 = add nsw i32 %53, -1
  br label %82

73:                                               ; preds = %67
  %74 = getelementptr inbounds i32, i32* %39, i64 %58
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %76 = add nsw i32 %75, 1
  %77 = mul nsw i64 %55, %5
  %78 = getelementptr inbounds i32, i32* %42, i64 %77
  store i32 %76, i32* %78, align 4, !tbaa !5
  %79 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %54, i32 noundef %76) #3
  %80 = add nsw i32 %53, -1
  %81 = add nsw i32 %52, 1
  br label %82

82:                                               ; preds = %69, %73, %65
  %83 = phi i32 [ %54, %65 ], [ %54, %69 ], [ %79, %73 ]
  %84 = phi i32 [ %53, %65 ], [ %72, %69 ], [ %80, %73 ]
  %85 = phi i32 [ %66, %65 ], [ %52, %69 ], [ %81, %73 ]
  %86 = icmp sgt i32 %84, -1
  %87 = icmp slt i32 %85, %1
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %51, label %44, !llvm.loop !13

89:                                               ; preds = %48, %89
  %90 = phi i64 [ %49, %48 ], [ %93, %89 ]
  %91 = mul nsw i64 %90, %5
  %92 = getelementptr inbounds i32, i32* %50, i64 %91
  store i32 2, i32* %92, align 4, !tbaa !5
  %93 = add nsw i64 %90, -1
  %94 = icmp sgt i64 %90, 0
  br i1 %94, label %89, label %25, !llvm.loop !14

95:                                               ; preds = %2, %27
  %96 = phi i32 [ %28, %27 ], [ %1, %2 ]
  ret i32 %96
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

declare i32 @max(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
