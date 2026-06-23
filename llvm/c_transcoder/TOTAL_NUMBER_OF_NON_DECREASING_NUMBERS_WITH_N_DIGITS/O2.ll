; ModuleID = 'benchmark/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_processed.c'
source_filename = "benchmark/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw nsw i64 %3, 10
  %5 = alloca i64, i64 %4, align 16
  %6 = bitcast i64* %5 to i8*
  %7 = mul nuw nsw i64 %3, 80
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 %7, i1 false)
  %8 = getelementptr inbounds i64, i64* %5, i64 1
  store i64 1, i64* %8, align 8, !tbaa !5
  %9 = getelementptr inbounds i64, i64* %5, i64 %3
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  store i64 1, i64* %10, align 8, !tbaa !5
  %11 = shl nuw nsw i64 %3, 1
  %12 = getelementptr inbounds i64, i64* %5, i64 %11
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  store i64 1, i64* %13, align 8, !tbaa !5
  %14 = mul nuw nsw i64 %3, 3
  %15 = getelementptr inbounds i64, i64* %5, i64 %14
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 1, i64* %16, align 8, !tbaa !5
  %17 = shl nuw nsw i64 %3, 2
  %18 = getelementptr inbounds i64, i64* %5, i64 %17
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 1, i64* %19, align 8, !tbaa !5
  %20 = mul nuw nsw i64 %3, 5
  %21 = getelementptr inbounds i64, i64* %5, i64 %20
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 1, i64* %22, align 8, !tbaa !5
  %23 = mul nuw nsw i64 %3, 6
  %24 = getelementptr inbounds i64, i64* %5, i64 %23
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 1, i64* %25, align 8, !tbaa !5
  %26 = mul nuw nsw i64 %3, 7
  %27 = getelementptr inbounds i64, i64* %5, i64 %26
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 1, i64* %28, align 8, !tbaa !5
  %29 = shl nuw nsw i64 %3, 3
  %30 = getelementptr inbounds i64, i64* %5, i64 %29
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 1, i64* %31, align 8, !tbaa !5
  %32 = mul nuw nsw i64 %3, 9
  %33 = getelementptr inbounds i64, i64* %5, i64 %32
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 1, i64* %34, align 8, !tbaa !5
  %35 = icmp slt i32 %0, 2
  br label %36

36:                                               ; preds = %1, %84
  %37 = phi i64 [ 0, %1 ], [ %85, %84 ]
  %38 = phi i64 [ 1, %1 ], [ %86, %84 ]
  br i1 %35, label %84, label %39

39:                                               ; preds = %36
  %40 = mul nuw nsw i64 %37, %3
  %41 = getelementptr inbounds i64, i64* %5, i64 %40
  %42 = and i64 %38, 3
  %43 = icmp ult i64 %37, 3
  %44 = and i64 %38, 9223372036854775804
  %45 = icmp eq i64 %42, 0
  br label %78

46:                                               ; preds = %84
  %47 = sext i32 %0 to i64
  %48 = getelementptr inbounds i64, i64* %5, i64 %47
  %49 = load i64, i64* %48, align 8, !tbaa !5
  %50 = getelementptr inbounds i64, i64* %9, i64 %47
  %51 = load i64, i64* %50, align 8, !tbaa !5
  %52 = add nsw i64 %51, %49
  %53 = getelementptr inbounds i64, i64* %12, i64 %47
  %54 = load i64, i64* %53, align 8, !tbaa !5
  %55 = add nsw i64 %54, %52
  %56 = getelementptr inbounds i64, i64* %15, i64 %47
  %57 = load i64, i64* %56, align 8, !tbaa !5
  %58 = add nsw i64 %57, %55
  %59 = getelementptr inbounds i64, i64* %18, i64 %47
  %60 = load i64, i64* %59, align 8, !tbaa !5
  %61 = add nsw i64 %60, %58
  %62 = getelementptr inbounds i64, i64* %21, i64 %47
  %63 = load i64, i64* %62, align 8, !tbaa !5
  %64 = add nsw i64 %63, %61
  %65 = getelementptr inbounds i64, i64* %24, i64 %47
  %66 = load i64, i64* %65, align 8, !tbaa !5
  %67 = add nsw i64 %66, %64
  %68 = getelementptr inbounds i64, i64* %27, i64 %47
  %69 = load i64, i64* %68, align 8, !tbaa !5
  %70 = add nsw i64 %69, %67
  %71 = getelementptr inbounds i64, i64* %30, i64 %47
  %72 = load i64, i64* %71, align 8, !tbaa !5
  %73 = add nsw i64 %72, %70
  %74 = getelementptr inbounds i64, i64* %33, i64 %47
  %75 = load i64, i64* %74, align 8, !tbaa !5
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  ret i32 %77

78:                                               ; preds = %39, %102
  %79 = phi i64 [ 2, %39 ], [ %103, %102 ]
  %80 = add nsw i64 %79, -1
  %81 = getelementptr inbounds i64, i64* %41, i64 %79
  %82 = load i64, i64* %81, align 8, !tbaa !5
  %83 = getelementptr inbounds i64, i64* %5, i64 %80
  br i1 %43, label %88, label %105

84:                                               ; preds = %102, %36
  %85 = add nuw nsw i64 %37, 1
  %86 = add nuw nsw i64 %38, 1
  %87 = icmp eq i64 %85, 10
  br i1 %87, label %46, label %36, !llvm.loop !9

88:                                               ; preds = %105, %78
  %89 = phi i64 [ %82, %78 ], [ %127, %105 ]
  %90 = phi i64 [ 0, %78 ], [ %128, %105 ]
  br i1 %45, label %102, label %91

91:                                               ; preds = %88, %91
  %92 = phi i64 [ %98, %91 ], [ %89, %88 ]
  %93 = phi i64 [ %99, %91 ], [ %90, %88 ]
  %94 = phi i64 [ %100, %91 ], [ 0, %88 ]
  %95 = mul nuw nsw i64 %93, %3
  %96 = getelementptr inbounds i64, i64* %83, i64 %95
  %97 = load i64, i64* %96, align 8, !tbaa !5
  %98 = add nsw i64 %92, %97
  store i64 %98, i64* %81, align 8, !tbaa !5
  %99 = add nuw nsw i64 %93, 1
  %100 = add i64 %94, 1
  %101 = icmp eq i64 %100, %42
  br i1 %101, label %102, label %91, !llvm.loop !11

102:                                              ; preds = %91, %88
  %103 = add nuw nsw i64 %79, 1
  %104 = icmp eq i64 %103, %3
  br i1 %104, label %84, label %78, !llvm.loop !13

105:                                              ; preds = %78, %105
  %106 = phi i64 [ %127, %105 ], [ %82, %78 ]
  %107 = phi i64 [ %128, %105 ], [ 0, %78 ]
  %108 = phi i64 [ %129, %105 ], [ 0, %78 ]
  %109 = mul nuw nsw i64 %107, %3
  %110 = getelementptr inbounds i64, i64* %83, i64 %109
  %111 = load i64, i64* %110, align 8, !tbaa !5
  %112 = add nsw i64 %106, %111
  store i64 %112, i64* %81, align 8, !tbaa !5
  %113 = or i64 %107, 1
  %114 = mul nuw nsw i64 %113, %3
  %115 = getelementptr inbounds i64, i64* %83, i64 %114
  %116 = load i64, i64* %115, align 8, !tbaa !5
  %117 = add nsw i64 %112, %116
  store i64 %117, i64* %81, align 8, !tbaa !5
  %118 = or i64 %107, 2
  %119 = mul nuw nsw i64 %118, %3
  %120 = getelementptr inbounds i64, i64* %83, i64 %119
  %121 = load i64, i64* %120, align 8, !tbaa !5
  %122 = add nsw i64 %117, %121
  store i64 %122, i64* %81, align 8, !tbaa !5
  %123 = or i64 %107, 3
  %124 = mul nuw nsw i64 %123, %3
  %125 = getelementptr inbounds i64, i64* %83, i64 %124
  %126 = load i64, i64* %125, align 8, !tbaa !5
  %127 = add nsw i64 %122, %126
  store i64 %127, i64* %81, align 8, !tbaa !5
  %128 = add nuw nsw i64 %107, 4
  %129 = add i64 %108, 4
  %130 = icmp eq i64 %129, %44
  br i1 %130, label %88, label %105, !llvm.loop !14
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
