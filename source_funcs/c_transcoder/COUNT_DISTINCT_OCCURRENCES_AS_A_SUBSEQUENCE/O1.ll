; ModuleID = 'benchmark/c_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %4 = trunc i64 %3 to i32
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %90, label %8

8:                                                ; preds = %2
  %9 = add i64 %3, 1
  %10 = and i64 %9, 4294967295
  %11 = add i64 %5, 1
  %12 = and i64 %11, 4294967295
  %13 = call i8* @llvm.stacksave()
  %14 = mul nuw i64 %12, %10
  %15 = alloca i32, i64 %14, align 16
  %16 = icmp slt i32 %4, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %8
  %18 = add i64 %3, 1
  %19 = and i64 %18, 4294967295
  br label %25

20:                                               ; preds = %25, %8
  %21 = icmp slt i32 %6, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = add i64 %5, 1
  %24 = and i64 %23, 4294967295
  br label %39

25:                                               ; preds = %17, %25
  %26 = phi i64 [ 1, %17 ], [ %29, %25 ]
  %27 = mul nuw nsw i64 %12, %26
  %28 = getelementptr inbounds i32, i32* %15, i64 %27
  store i32 0, i32* %28, align 4, !tbaa !5
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %29, %19
  br i1 %30, label %20, label %25, !llvm.loop !9

31:                                               ; preds = %39, %20
  %32 = icmp slt i32 %4, 1
  br i1 %32, label %56, label %33

33:                                               ; preds = %31
  %34 = icmp slt i32 %6, 1
  %35 = add i64 %5, 1
  %36 = add i64 %3, 1
  %37 = and i64 %36, 4294967295
  %38 = and i64 %35, 4294967295
  br label %44

39:                                               ; preds = %22, %39
  %40 = phi i64 [ 0, %22 ], [ %42, %39 ]
  %41 = getelementptr inbounds i32, i32* %15, i64 %40
  store i32 1, i32* %41, align 4, !tbaa !5
  %42 = add nuw nsw i64 %40, 1
  %43 = icmp eq i64 %42, %24
  br i1 %43, label %31, label %39, !llvm.loop !12

44:                                               ; preds = %33, %65
  %45 = phi i64 [ 1, %33 ], [ %66, %65 ]
  br i1 %34, label %65, label %46

46:                                               ; preds = %44
  %47 = add nsw i64 %45, -1
  %48 = getelementptr inbounds i8, i8* %1, i64 %47
  %49 = load i8, i8* %48, align 1, !tbaa !13
  %50 = mul nuw nsw i64 %12, %45
  %51 = getelementptr inbounds i32, i32* %15, i64 %50
  %52 = mul nuw nsw i64 %12, %45
  %53 = getelementptr inbounds i32, i32* %15, i64 %52
  %54 = mul nuw nsw i64 %12, %47
  %55 = getelementptr inbounds i32, i32* %15, i64 %54
  br label %68

56:                                               ; preds = %65, %31
  %57 = shl i64 %3, 32
  %58 = ashr exact i64 %57, 32
  %59 = mul nsw i64 %12, %58
  %60 = getelementptr inbounds i32, i32* %15, i64 %59
  %61 = shl i64 %5, 32
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  call void @llvm.stackrestore(i8* %13)
  br label %90

65:                                               ; preds = %83, %44
  %66 = add nuw nsw i64 %45, 1
  %67 = icmp eq i64 %66, %37
  br i1 %67, label %56, label %44, !llvm.loop !14

68:                                               ; preds = %46, %83
  %69 = phi i64 [ 1, %46 ], [ %88, %83 ]
  %70 = add nsw i64 %69, -1
  %71 = getelementptr inbounds i8, i8* %0, i64 %70
  %72 = load i8, i8* %71, align 1, !tbaa !13
  %73 = icmp eq i8 %49, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds i32, i32* %51, i64 %70
  %76 = load i32, i32* %75, align 4, !tbaa !5
  br label %83

77:                                               ; preds = %68
  %78 = getelementptr inbounds i32, i32* %53, i64 %70
  %79 = load i32, i32* %78, align 4, !tbaa !5
  %80 = getelementptr inbounds i32, i32* %55, i64 %70
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = add nsw i32 %81, %79
  br label %83

83:                                               ; preds = %74, %77
  %84 = phi i64 [ %50, %74 ], [ %52, %77 ]
  %85 = phi i32 [ %76, %74 ], [ %82, %77 ]
  %86 = getelementptr inbounds i32, i32* %15, i64 %84
  %87 = getelementptr inbounds i32, i32* %86, i64 %69
  store i32 %85, i32* %87, align 4, !tbaa !5
  %88 = add nuw nsw i64 %69, 1
  %89 = icmp eq i64 %88, %38
  br i1 %89, label %65, label %68, !llvm.loop !15

90:                                               ; preds = %2, %56
  %91 = phi i32 [ %64, %56 ], [ 0, %2 ]
  ret i32 %91
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }

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
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
