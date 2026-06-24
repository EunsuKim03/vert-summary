; ModuleID = 'benchmark/c_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = bitcast i32* %5 to i8*
  %7 = shl nuw i64 %4, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 %7, i1 false)
  %8 = alloca i8, i64 %4, align 16
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %4, i1 false)
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = zext i32 %1 to i64
  br label %17

12:                                               ; preds = %17, %2
  %13 = add i32 %1, -1
  %14 = icmp sgt i32 %1, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = zext i32 %13 to i64
  br label %30

17:                                               ; preds = %10, %17
  %18 = phi i64 [ 0, %10 ], [ %22, %17 ]
  %19 = mul nuw nsw i64 %18, %3
  %20 = getelementptr inbounds i8, i8* %8, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 %18
  store i8 1, i8* %21, align 1, !tbaa !5
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, %11
  br i1 %23, label %12, label %17, !llvm.loop !9

24:                                               ; preds = %44, %12
  %25 = icmp sgt i32 %1, 2
  br i1 %25, label %26, label %52

26:                                               ; preds = %24
  %27 = add i32 %1, -2
  %28 = sext i32 %1 to i64
  %29 = zext i32 %1 to i64
  br label %46

30:                                               ; preds = %15, %44
  %31 = phi i64 [ 0, %15 ], [ %34, %44 ]
  %32 = getelementptr inbounds i8, i8* %0, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !12
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds i8, i8* %0, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !12
  %37 = icmp eq i8 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = mul nuw nsw i64 %31, %3
  %40 = getelementptr inbounds i8, i8* %8, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 %34
  store i8 1, i8* %41, align 1, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %5, i64 %39
  %43 = getelementptr inbounds i32, i32* %42, i64 %34
  store i32 1, i32* %43, align 4, !tbaa !13
  br label %44

44:                                               ; preds = %30, %38
  %45 = icmp eq i64 %34, %16
  br i1 %45, label %24, label %30, !llvm.loop !15

46:                                               ; preds = %26, %56
  %47 = phi i64 [ 2, %26 ], [ %57, %56 ]
  %48 = phi i32 [ %27, %26 ], [ %58, %56 ]
  %49 = icmp slt i64 %47, %28
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = zext i32 %48 to i64
  br label %60

52:                                               ; preds = %56, %24
  %53 = sext i32 %13 to i64
  %54 = getelementptr inbounds i32, i32* %5, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !13
  ret i32 %55

56:                                               ; preds = %106, %46
  %57 = add nuw nsw i64 %47, 1
  %58 = add i32 %48, -1
  %59 = icmp eq i64 %57, %29
  br i1 %59, label %52, label %46, !llvm.loop !16

60:                                               ; preds = %50, %106
  %61 = phi i64 [ 0, %50 ], [ %109, %106 ]
  %62 = add nuw nsw i64 %61, %47
  %63 = getelementptr inbounds i8, i8* %0, i64 %61
  %64 = load i8, i8* %63, align 1, !tbaa !12
  %65 = getelementptr inbounds i8, i8* %0, i64 %62
  %66 = load i8, i8* %65, align 1, !tbaa !12
  %67 = icmp eq i8 %64, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = add nuw nsw i64 %61, 1
  %70 = mul nuw nsw i64 %69, %3
  %71 = getelementptr inbounds i8, i8* %8, i64 %70
  %72 = add nsw i64 %62, -1
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1, !tbaa !5, !range !17
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %68
  %77 = mul nuw nsw i64 %61, %3
  %78 = getelementptr inbounds i8, i8* %8, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 %62
  store i8 1, i8* %79, align 1, !tbaa !5
  br label %80

80:                                               ; preds = %76, %68, %60
  %81 = mul nuw nsw i64 %61, %3
  %82 = getelementptr inbounds i8, i8* %8, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 %62
  %84 = load i8, i8* %83, align 1, !tbaa !5, !range !17
  %85 = icmp eq i8 %84, 0
  %86 = getelementptr inbounds i32, i32* %5, i64 %81
  %87 = add nsw i64 %62, -1
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !13
  %90 = add nuw nsw i64 %61, 1
  %91 = mul nuw nsw i64 %90, %3
  %92 = getelementptr inbounds i32, i32* %5, i64 %91
  %93 = getelementptr inbounds i32, i32* %92, i64 %62
  %94 = load i32, i32* %93, align 4, !tbaa !13
  br i1 %85, label %101, label %95

95:                                               ; preds = %80
  %96 = getelementptr inbounds i32, i32* %92, i64 %87
  %97 = load i32, i32* %96, align 4, !tbaa !13
  %98 = add i32 %89, 1
  %99 = add i32 %98, %94
  %100 = sub i32 %99, %97
  br label %106

101:                                              ; preds = %80
  %102 = add nsw i32 %94, %89
  %103 = getelementptr inbounds i32, i32* %92, i64 %87
  %104 = load i32, i32* %103, align 4, !tbaa !13
  %105 = sub i32 %102, %104
  br label %106

106:                                              ; preds = %101, %95
  %107 = phi i32 [ %105, %101 ], [ %100, %95 ]
  %108 = getelementptr inbounds i32, i32* %86, i64 %62
  store i32 %107, i32* %108, align 4, !tbaa !13
  %109 = add nuw nsw i64 %61, 1
  %110 = icmp eq i64 %109, %51
  br i1 %110, label %56, label %60, !llvm.loop !18
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"_Bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = !{i8 0, i8 2}
!18 = distinct !{!18, !10, !11}
