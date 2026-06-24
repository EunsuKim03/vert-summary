; ModuleID = 'benchmark/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = add nsw i32 %1, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %5, %7
  %9 = alloca i32, i64 %8, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = icmp slt i32 %2, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %3
  %13 = add nsw i64 %5, -1
  %14 = and i64 %5, 3
  %15 = icmp ult i64 %13, 3
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = and i64 %5, 4294967292
  br label %33

18:                                               ; preds = %33, %12
  %19 = phi i64 [ 0, %12 ], [ %47, %33 ]
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %26, %21 ], [ %19, %18 ]
  %23 = phi i64 [ %27, %21 ], [ 0, %18 ]
  %24 = mul nuw nsw i64 %22, %7
  %25 = getelementptr inbounds i32, i32* %9, i64 %24
  store i32 0, i32* %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %22, 1
  %27 = add i64 %23, 1
  %28 = icmp eq i64 %27, %14
  br i1 %28, label %29, label %21, !llvm.loop !9

29:                                               ; preds = %18, %21, %3
  %30 = icmp slt i32 %1, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %29
  %32 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %32, i1 false), !tbaa !5
  br label %50

33:                                               ; preds = %33, %16
  %34 = phi i64 [ 0, %16 ], [ %47, %33 ]
  %35 = phi i64 [ 0, %16 ], [ %48, %33 ]
  %36 = mul nuw nsw i64 %34, %7
  %37 = getelementptr inbounds i32, i32* %9, i64 %36
  store i32 0, i32* %37, align 16, !tbaa !5
  %38 = or i64 %34, 1
  %39 = mul nuw nsw i64 %38, %7
  %40 = getelementptr inbounds i32, i32* %9, i64 %39
  store i32 0, i32* %40, align 4, !tbaa !5
  %41 = or i64 %34, 2
  %42 = mul nuw nsw i64 %41, %7
  %43 = getelementptr inbounds i32, i32* %9, i64 %42
  store i32 0, i32* %43, align 8, !tbaa !5
  %44 = or i64 %34, 3
  %45 = mul nuw nsw i64 %44, %7
  %46 = getelementptr inbounds i32, i32* %9, i64 %45
  store i32 0, i32* %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %34, 4
  %48 = add i64 %35, 4
  %49 = icmp eq i64 %48, %17
  br i1 %49, label %18, label %33, !llvm.loop !11

50:                                               ; preds = %31, %29
  %51 = icmp slt i32 %2, 1
  br i1 %51, label %63, label %52

52:                                               ; preds = %50
  %53 = icmp sgt i32 %1, 1
  %54 = zext i32 %1 to i64
  br label %55

55:                                               ; preds = %52, %71
  %56 = phi i64 [ 1, %52 ], [ %72, %71 ]
  br i1 %53, label %57, label %71

57:                                               ; preds = %55
  %58 = add nsw i64 %56, -1
  %59 = mul nuw nsw i64 %58, %7
  %60 = getelementptr inbounds i32, i32* %9, i64 %59
  %61 = mul nuw nsw i64 %56, %7
  %62 = getelementptr inbounds i32, i32* %9, i64 %61
  br label %74

63:                                               ; preds = %71, %50
  %64 = sext i32 %2 to i64
  %65 = mul nsw i64 %64, %7
  %66 = getelementptr inbounds i32, i32* %9, i64 %65
  %67 = add nsw i32 %1, -1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !5
  ret i32 %70

71:                                               ; preds = %74, %55
  %72 = add nuw nsw i64 %56, 1
  %73 = icmp eq i64 %72, %5
  br i1 %73, label %63, label %55, !llvm.loop !13

74:                                               ; preds = %57, %74
  %75 = phi i64 [ 1, %57 ], [ %91, %74 ]
  %76 = phi i32 [ -2147483648, %57 ], [ %83, %74 ]
  %77 = add nsw i64 %75, -1
  %78 = getelementptr inbounds i32, i32* %60, i64 %77
  %79 = load i32, i32* %78, align 4, !tbaa !5
  %80 = getelementptr inbounds i32, i32* %0, i64 %77
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = sub nsw i32 %79, %81
  %83 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %76, i32 noundef %82) #3
  %84 = getelementptr inbounds i32, i32* %62, i64 %77
  %85 = load i32, i32* %84, align 4, !tbaa !5
  %86 = getelementptr inbounds i32, i32* %0, i64 %75
  %87 = load i32, i32* %86, align 4, !tbaa !5
  %88 = add nsw i32 %87, %83
  %89 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %85, i32 noundef %88) #3
  %90 = getelementptr inbounds i32, i32* %62, i64 %75
  store i32 %89, i32* %90, align 4, !tbaa !5
  %91 = add nuw nsw i64 %75, 1
  %92 = icmp eq i64 %91, %54
  br i1 %92, label %71, label %74, !llvm.loop !14
}

declare i32 @max(...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
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
!14 = distinct !{!14, !12}
