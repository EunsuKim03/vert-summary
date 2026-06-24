; ModuleID = 'benchmark/c_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 3
  br i1 %3, label %143, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = tail call i8* @llvm.stacksave()
  %7 = mul nuw nsw i64 %5, %5
  %8 = alloca i32, i64 %7, align 16
  %9 = add nsw i32 %1, -1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = add nsw i64 %5, -1
  %13 = and i64 %5, 3
  %14 = icmp ult i64 %12, 3
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = and i64 %5, 4294967292
  br label %34

17:                                               ; preds = %34, %4
  %18 = phi i64 [ 0, %4 ], [ %48, %34 ]
  %19 = icmp eq i64 %13, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ %25, %20 ], [ %18, %17 ]
  %22 = phi i64 [ %26, %20 ], [ 0, %17 ]
  %23 = mul nuw nsw i64 %21, %5
  %24 = getelementptr inbounds i32, i32* %11, i64 %23
  store i32 2, i32* %24, align 4, !tbaa !5
  %25 = add nuw nsw i64 %21, 1
  %26 = add i64 %22, 1
  %27 = icmp eq i64 %26, %13
  br i1 %27, label %28, label %20, !llvm.loop !9

28:                                               ; preds = %20, %17
  %29 = icmp sgt i32 %1, 2
  br i1 %29, label %30, label %53

30:                                               ; preds = %28
  %31 = add nsw i32 %1, -2
  %32 = zext i32 %31 to i64
  %33 = zext i32 %1 to i64
  br label %55

34:                                               ; preds = %34, %15
  %35 = phi i64 [ 0, %15 ], [ %48, %34 ]
  %36 = phi i64 [ 0, %15 ], [ %49, %34 ]
  %37 = mul nuw nsw i64 %35, %5
  %38 = getelementptr inbounds i32, i32* %11, i64 %37
  store i32 2, i32* %38, align 4, !tbaa !5
  %39 = or i64 %35, 1
  %40 = mul nuw nsw i64 %39, %5
  %41 = getelementptr inbounds i32, i32* %11, i64 %40
  store i32 2, i32* %41, align 4, !tbaa !5
  %42 = or i64 %35, 2
  %43 = mul nuw nsw i64 %42, %5
  %44 = getelementptr inbounds i32, i32* %11, i64 %43
  store i32 2, i32* %44, align 4, !tbaa !5
  %45 = or i64 %35, 3
  %46 = mul nuw nsw i64 %45, %5
  %47 = getelementptr inbounds i32, i32* %11, i64 %46
  store i32 2, i32* %47, align 4, !tbaa !5
  %48 = add nuw nsw i64 %35, 4
  %49 = add i64 %36, 4
  %50 = icmp eq i64 %49, %16
  br i1 %50, label %17, label %34, !llvm.loop !11

51:                                               ; preds = %87, %128, %69
  %52 = icmp sgt i64 %56, 1
  br i1 %52, label %55, label %53, !llvm.loop !13

53:                                               ; preds = %51, %28
  %54 = phi i32 [ 2, %28 ], [ %70, %51 ]
  tail call void @llvm.stackrestore(i8* %6)
  br label %143

55:                                               ; preds = %30, %51
  %56 = phi i64 [ %32, %30 ], [ %58, %51 ]
  %57 = phi i32 [ 2, %30 ], [ %70, %51 ]
  %58 = add nsw i64 %56, -1
  %59 = add nuw nsw i64 %56, 1
  %60 = icmp slt i64 %59, %33
  %61 = trunc i64 %58 to i32
  br i1 %60, label %62, label %69

62:                                               ; preds = %55
  %63 = getelementptr inbounds i32, i32* %0, i64 %56
  %64 = mul nsw i64 %56, %5
  %65 = getelementptr inbounds i32, i32* %8, i64 %64
  %66 = trunc i64 %59 to i32
  %67 = getelementptr inbounds i32, i32* %8, i64 %56
  %68 = getelementptr inbounds i32, i32* %8, i64 %56
  br label %90

69:                                               ; preds = %121, %55
  %70 = phi i32 [ %57, %55 ], [ %122, %121 ]
  %71 = phi i32 [ %61, %55 ], [ %123, %121 ]
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %51

73:                                               ; preds = %69
  %74 = zext i32 %71 to i64
  %75 = getelementptr inbounds i32, i32* %8, i64 %56
  %76 = add nuw nsw i64 %74, 1
  %77 = and i64 %76, 3
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %73, %79
  %80 = phi i64 [ %84, %79 ], [ %74, %73 ]
  %81 = phi i64 [ %85, %79 ], [ 0, %73 ]
  %82 = mul nuw nsw i64 %80, %5
  %83 = getelementptr inbounds i32, i32* %75, i64 %82
  store i32 2, i32* %83, align 4, !tbaa !5
  %84 = add nsw i64 %80, -1
  %85 = add i64 %81, 1
  %86 = icmp eq i64 %85, %77
  br i1 %86, label %87, label %79, !llvm.loop !14

87:                                               ; preds = %79, %73
  %88 = phi i64 [ %74, %73 ], [ %84, %79 ]
  %89 = icmp ult i32 %71, 3
  br i1 %89, label %51, label %128

90:                                               ; preds = %62, %121
  %91 = phi i32 [ %66, %62 ], [ %124, %121 ]
  %92 = phi i32 [ %61, %62 ], [ %123, %121 ]
  %93 = phi i32 [ %57, %62 ], [ %122, %121 ]
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %0, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !5
  %97 = sext i32 %91 to i64
  %98 = getelementptr inbounds i32, i32* %0, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !5
  %100 = add nsw i32 %99, %96
  %101 = load i32, i32* %63, align 4, !tbaa !5
  %102 = shl nsw i32 %101, 1
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = add nsw i32 %91, 1
  br label %121

106:                                              ; preds = %90
  %107 = icmp sgt i32 %100, %102
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = mul nuw nsw i64 %94, %5
  %110 = getelementptr inbounds i32, i32* %68, i64 %109
  store i32 2, i32* %110, align 4, !tbaa !5
  %111 = add nsw i32 %92, -1
  br label %121

112:                                              ; preds = %106
  %113 = getelementptr inbounds i32, i32* %65, i64 %97
  %114 = load i32, i32* %113, align 4, !tbaa !5
  %115 = add nsw i32 %114, 1
  %116 = mul nuw nsw i64 %94, %5
  %117 = getelementptr inbounds i32, i32* %67, i64 %116
  store i32 %115, i32* %117, align 4, !tbaa !5
  %118 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %93, i32 noundef %115) #3
  %119 = add nsw i32 %92, -1
  %120 = add nsw i32 %91, 1
  br label %121

121:                                              ; preds = %108, %112, %104
  %122 = phi i32 [ %93, %104 ], [ %93, %108 ], [ %118, %112 ]
  %123 = phi i32 [ %92, %104 ], [ %111, %108 ], [ %119, %112 ]
  %124 = phi i32 [ %105, %104 ], [ %91, %108 ], [ %120, %112 ]
  %125 = icmp sgt i32 %123, -1
  %126 = icmp slt i32 %124, %1
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %90, label %69, !llvm.loop !15

128:                                              ; preds = %87, %128
  %129 = phi i64 [ %141, %128 ], [ %88, %87 ]
  %130 = mul nuw nsw i64 %129, %5
  %131 = getelementptr inbounds i32, i32* %75, i64 %130
  store i32 2, i32* %131, align 4, !tbaa !5
  %132 = add nsw i64 %129, -1
  %133 = mul nuw nsw i64 %132, %5
  %134 = getelementptr inbounds i32, i32* %75, i64 %133
  store i32 2, i32* %134, align 4, !tbaa !5
  %135 = add nsw i64 %129, -2
  %136 = mul nuw nsw i64 %135, %5
  %137 = getelementptr inbounds i32, i32* %75, i64 %136
  store i32 2, i32* %137, align 4, !tbaa !5
  %138 = add nsw i64 %129, -3
  %139 = mul nuw nsw i64 %138, %5
  %140 = getelementptr inbounds i32, i32* %75, i64 %139
  store i32 2, i32* %140, align 4, !tbaa !5
  %141 = add nsw i64 %129, -4
  %142 = icmp eq i64 %138, 0
  br i1 %142, label %51, label %128, !llvm.loop !16

143:                                              ; preds = %2, %53
  %144 = phi i32 [ %54, %53 ], [ %1, %2 ]
  ret i32 %144
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
