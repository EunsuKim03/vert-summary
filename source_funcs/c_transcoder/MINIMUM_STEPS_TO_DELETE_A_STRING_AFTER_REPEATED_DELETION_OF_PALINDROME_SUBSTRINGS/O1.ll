; ModuleID = 'benchmark/c_transcoder/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = mul nuw i64 %5, %5
  %7 = alloca i32, i64 %6, align 16
  %8 = icmp slt i32 %3, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = shl nuw nsw i64 %5, 2
  %11 = add i64 %2, 1
  %12 = and i64 %11, 4294967295
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %18, %13 ]
  %15 = mul nuw nsw i64 %5, %14
  %16 = getelementptr i32, i32* %7, i64 %15
  %17 = bitcast i32* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 %10, i1 false), !tbaa !5
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, %12
  br i1 %19, label %20, label %13, !llvm.loop !9

20:                                               ; preds = %13, %1
  %21 = icmp slt i32 %3, 1
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = and i64 %2, 4294967295
  br label %30

24:                                               ; preds = %36, %20
  %25 = shl i64 %2, 32
  %26 = add i64 %25, -4294967296
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds i32, i32* %7, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  ret i32 %29

30:                                               ; preds = %22, %36
  %31 = phi i32 [ %3, %22 ], [ %39, %36 ]
  %32 = phi i64 [ 0, %22 ], [ %38, %36 ]
  %33 = phi i32 [ 1, %22 ], [ %37, %36 ]
  %34 = icmp eq i32 %33, 1
  %35 = zext i32 %31 to i64
  br label %41

36:                                               ; preds = %104
  %37 = add nuw nsw i32 %33, 1
  %38 = add nuw nsw i64 %32, 1
  %39 = add i32 %31, -1
  %40 = icmp eq i64 %38, %23
  br i1 %40, label %24, label %30, !llvm.loop !12

41:                                               ; preds = %30, %104
  %42 = phi i64 [ 0, %30 ], [ %105, %104 ]
  %43 = phi i64 [ %32, %30 ], [ %106, %104 ]
  %44 = phi i32 [ %33, %30 ], [ %108, %104 ]
  %45 = phi i32 [ 2, %30 ], [ %107, %104 ]
  %46 = sext i32 %45 to i64
  br i1 %34, label %47, label %51

47:                                               ; preds = %41
  %48 = mul nuw nsw i64 %5, %42
  %49 = getelementptr inbounds i32, i32* %7, i64 %48
  %50 = getelementptr inbounds i32, i32* %49, i64 %43
  store i32 1, i32* %50, align 4, !tbaa !5
  br label %104

51:                                               ; preds = %41
  %52 = add nuw nsw i64 %42, 1
  %53 = mul nuw nsw i64 %5, %52
  %54 = getelementptr inbounds i32, i32* %7, i64 %53
  %55 = getelementptr inbounds i32, i32* %54, i64 %43
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = add nsw i32 %56, 1
  %58 = mul nuw nsw i64 %5, %42
  %59 = getelementptr inbounds i32, i32* %7, i64 %58
  %60 = getelementptr inbounds i32, i32* %59, i64 %43
  store i32 %57, i32* %60, align 4, !tbaa !5
  %61 = getelementptr inbounds i8, i8* %0, i64 %42
  %62 = load i8, i8* %61, align 1, !tbaa !13
  %63 = getelementptr inbounds i8, i8* %0, i64 %52
  %64 = load i8, i8* %63, align 1, !tbaa !13
  %65 = icmp eq i8 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %51
  %67 = add nuw nsw i64 %42, 2
  %68 = mul nuw nsw i64 %5, %67
  %69 = getelementptr inbounds i32, i32* %7, i64 %68
  %70 = getelementptr inbounds i32, i32* %69, i64 %43
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = add nsw i32 %71, 1
  %73 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %72, i32 noundef %57) #4
  store i32 %73, i32* %60, align 4, !tbaa !5
  br label %74

74:                                               ; preds = %66, %51
  %75 = shl i64 %42, 32
  %76 = add i64 %75, 8589934592
  %77 = ashr exact i64 %76, 32
  %78 = icmp sgt i64 %77, %43
  br i1 %78, label %104, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds i32, i32* %7, i64 %43
  br label %81

81:                                               ; preds = %79, %100
  %82 = phi i64 [ %101, %100 ], [ %46, %79 ]
  %83 = load i8, i8* %61, align 1, !tbaa !13
  %84 = and i64 %82, 4294967295
  %85 = getelementptr inbounds i8, i8* %0, i64 %84
  %86 = load i8, i8* %85, align 1, !tbaa !13
  %87 = icmp eq i8 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = add nsw i64 %82, -1
  %90 = getelementptr inbounds i32, i32* %54, i64 %89
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = add i64 %82, 1
  %93 = and i64 %92, 4294967295
  %94 = mul nuw nsw i64 %5, %93
  %95 = getelementptr inbounds i32, i32* %80, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !5
  %97 = add nsw i32 %96, %91
  %98 = load i32, i32* %60, align 4, !tbaa !5
  %99 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %97, i32 noundef %98) #4
  store i32 %99, i32* %60, align 4, !tbaa !5
  br label %100

100:                                              ; preds = %81, %88
  %101 = add nsw i64 %82, 1
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %44, %102
  br i1 %103, label %104, label %81, !llvm.loop !14

104:                                              ; preds = %100, %74, %47
  %105 = add nuw nsw i64 %42, 1
  %106 = add nuw nsw i64 %43, 1
  %107 = add nuw i32 %45, 1
  %108 = add nuw i32 %44, 1
  %109 = icmp eq i64 %105, %35
  br i1 %109, label %36, label %41, !llvm.loop !15
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

declare i32 @min(...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
