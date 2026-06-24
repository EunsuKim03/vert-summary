; ModuleID = 'benchmark/c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %5 = add i64 %3, 1
  %6 = and i64 %5, 4294967295
  %7 = add i64 %4, 1
  %8 = and i64 %7, 4294967295
  %9 = mul nuw i64 %8, %6
  %10 = alloca i8, i64 %9, align 16
  %11 = and i64 %3, 2147483648
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8 1, i8* %10, align 16, !tbaa !5
  br label %54

14:                                               ; preds = %2
  %15 = and i64 %4, 2147483648
  %16 = icmp eq i64 %15, 0
  %17 = add nuw i64 %3, 1
  %18 = and i64 %17, 4294967295
  %19 = add nsw i64 %18, -1
  %20 = and i64 %17, 3
  %21 = icmp ult i64 %19, 3
  br i1 %21, label %39, label %22

22:                                               ; preds = %14
  %23 = sub nsw i64 %18, %20
  br label %24

24:                                               ; preds = %55, %22
  %25 = phi i64 [ 0, %22 ], [ %56, %55 ]
  %26 = phi i64 [ 0, %22 ], [ %57, %55 ]
  br i1 %16, label %27, label %55

27:                                               ; preds = %24
  %28 = mul nuw nsw i64 %8, %25
  %29 = getelementptr i8, i8* %10, i64 %28
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 %8, i1 false), !tbaa !5
  %30 = or i64 %25, 1
  %31 = mul nuw nsw i64 %8, %30
  %32 = getelementptr i8, i8* %10, i64 %31
  call void @llvm.memset.p0i8.i64(i8* align 1 %32, i8 0, i64 %8, i1 false), !tbaa !5
  %33 = or i64 %25, 2
  %34 = mul nuw nsw i64 %8, %33
  %35 = getelementptr i8, i8* %10, i64 %34
  call void @llvm.memset.p0i8.i64(i8* align 2 %35, i8 0, i64 %8, i1 false), !tbaa !5
  %36 = or i64 %25, 3
  %37 = mul nuw nsw i64 %8, %36
  %38 = getelementptr i8, i8* %10, i64 %37
  call void @llvm.memset.p0i8.i64(i8* align 1 %38, i8 0, i64 %8, i1 false), !tbaa !5
  br label %55

39:                                               ; preds = %55, %14
  %40 = phi i64 [ 0, %14 ], [ %56, %55 ]
  %41 = icmp eq i64 %20, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39, %48
  %43 = phi i64 [ %49, %48 ], [ %40, %39 ]
  %44 = phi i64 [ %50, %48 ], [ 0, %39 ]
  br i1 %16, label %45, label %48

45:                                               ; preds = %42
  %46 = mul nuw nsw i64 %8, %43
  %47 = getelementptr i8, i8* %10, i64 %46
  call void @llvm.memset.p0i8.i64(i8* align 1 %47, i8 0, i64 %8, i1 false), !tbaa !5
  br label %48

48:                                               ; preds = %45, %42
  %49 = add nuw nsw i64 %43, 1
  %50 = add i64 %44, 1
  %51 = icmp eq i64 %50, %20
  br i1 %51, label %52, label %42, !llvm.loop !9

52:                                               ; preds = %48, %39
  store i8 1, i8* %10, align 16, !tbaa !5
  %53 = icmp eq i64 %3, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %13, %52
  br label %59

55:                                               ; preds = %24, %27
  %56 = add nuw nsw i64 %25, 4
  %57 = add i64 %26, 4
  %58 = icmp eq i64 %57, %23
  br i1 %58, label %39, label %24, !llvm.loop !11

59:                                               ; preds = %54, %77
  %60 = phi i64 [ %64, %77 ], [ 0, %54 ]
  %61 = mul nuw nsw i64 %60, %8
  %62 = getelementptr inbounds i8, i8* %10, i64 %61
  %63 = getelementptr inbounds i8, i8* %0, i64 %60
  %64 = add nuw nsw i64 %60, 1
  %65 = mul nuw nsw i64 %8, %64
  %66 = getelementptr inbounds i8, i8* %10, i64 %65
  br label %79

67:                                               ; preds = %77, %52
  %68 = shl i64 %3, 32
  %69 = ashr exact i64 %68, 32
  %70 = mul nsw i64 %8, %69
  %71 = getelementptr inbounds i8, i8* %10, i64 %70
  %72 = shl i64 %4, 32
  %73 = ashr exact i64 %72, 32
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1, !tbaa !5, !range !13
  %76 = zext i8 %75 to i32
  ret i32 %76

77:                                               ; preds = %102
  %78 = icmp eq i64 %64, %3
  br i1 %78, label %67, label %59, !llvm.loop !14

79:                                               ; preds = %59, %102
  %80 = phi i64 [ 0, %59 ], [ %103, %102 ]
  %81 = getelementptr inbounds i8, i8* %62, i64 %80
  %82 = load i8, i8* %81, align 1, !tbaa !5, !range !13
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %79
  %85 = icmp ugt i64 %4, %80
  %86 = load i8, i8* %63, align 1, !tbaa !15
  %87 = sext i8 %86 to i32
  br i1 %85, label %88, label %97

88:                                               ; preds = %84
  %89 = tail call i32 @toupper(i32 noundef %87) #4
  %90 = getelementptr inbounds i8, i8* %1, i64 %80
  %91 = load i8, i8* %90, align 1, !tbaa !15
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = add nuw nsw i64 %80, 1
  %96 = getelementptr inbounds i8, i8* %66, i64 %95
  store i8 1, i8* %96, align 1, !tbaa !5
  br label %97

97:                                               ; preds = %84, %94, %88
  %98 = tail call i32 @isupper(i32 noundef %87) #4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = getelementptr inbounds i8, i8* %66, i64 %80
  store i8 1, i8* %101, align 1, !tbaa !5
  br label %102

102:                                              ; preds = %79, %100, %97
  %103 = add nuw nsw i64 %80, 1
  %104 = icmp eq i64 %80, %4
  br i1 %104, label %77, label %79, !llvm.loop !16
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @toupper(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @isupper(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i8 0, i8 2}
!14 = distinct !{!14, !12}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !12}
