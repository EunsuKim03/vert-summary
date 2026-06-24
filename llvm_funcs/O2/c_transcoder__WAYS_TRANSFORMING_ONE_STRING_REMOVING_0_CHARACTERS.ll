; ModuleID = 'benchmark/c_transcoder/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_processed.c'
source_filename = "benchmark/c_transcoder/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #4
  %4 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %1) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %84, label %6

6:                                                ; preds = %2
  %7 = add nsw i32 %4, 1
  %8 = zext i32 %7 to i64
  %9 = add nsw i32 %3, 1
  %10 = zext i32 %9 to i64
  %11 = tail call i8* @llvm.stacksave()
  %12 = mul nuw i64 %8, %10
  %13 = alloca i32, i64 %12, align 16
  %14 = bitcast i32* %13 to i8*
  %15 = shl nuw i64 %12, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %14, i8 0, i64 %15, i1 false)
  %16 = icmp sgt i32 %4, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %6
  %18 = sext i32 %3 to i64
  %19 = zext i32 %4 to i64
  %20 = zext i32 %3 to i64
  br label %21

21:                                               ; preds = %17, %41
  %22 = phi i64 [ 0, %17 ], [ %42, %41 ]
  %23 = icmp slt i64 %22, %18
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = icmp eq i64 %22, 0
  %26 = getelementptr inbounds i8, i8* %1, i64 %22
  %27 = mul nuw nsw i64 %22, %10
  %28 = getelementptr inbounds i32, i32* %13, i64 %27
  %29 = add nsw i64 %22, -1
  %30 = mul nsw i64 %29, %10
  %31 = getelementptr inbounds i32, i32* %13, i64 %30
  br label %44

32:                                               ; preds = %41, %6
  %33 = add nsw i32 %4, -1
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, %10
  %36 = getelementptr inbounds i32, i32* %13, i64 %35
  %37 = add nsw i32 %3, -1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  tail call void @llvm.stackrestore(i8* %11)
  br label %84

41:                                               ; preds = %81, %21
  %42 = add nuw nsw i64 %22, 1
  %43 = icmp eq i64 %42, %19
  br i1 %43, label %32, label %21, !llvm.loop !9

44:                                               ; preds = %24, %81
  %45 = phi i64 [ %22, %24 ], [ %82, %81 ]
  br i1 %25, label %46, label %66

46:                                               ; preds = %44
  %47 = icmp eq i64 %45, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = load i8, i8* %0, align 1, !tbaa !11
  %50 = load i8, i8* %1, align 1, !tbaa !11
  %51 = icmp eq i8 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %13, align 16, !tbaa !5
  br label %81

53:                                               ; preds = %46
  %54 = getelementptr inbounds i8, i8* %0, i64 %45
  %55 = load i8, i8* %54, align 1, !tbaa !11
  %56 = load i8, i8* %1, align 1, !tbaa !11
  %57 = icmp eq i8 %55, %56
  %58 = add nsw i64 %45, -1
  %59 = getelementptr inbounds i32, i32* %13, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  br i1 %57, label %61, label %64

61:                                               ; preds = %53
  %62 = add nsw i32 %60, 1
  %63 = getelementptr inbounds i32, i32* %13, i64 %45
  store i32 %62, i32* %63, align 4, !tbaa !5
  br label %81

64:                                               ; preds = %53
  %65 = getelementptr inbounds i32, i32* %13, i64 %45
  store i32 %60, i32* %65, align 4, !tbaa !5
  br label %81

66:                                               ; preds = %44
  %67 = getelementptr inbounds i8, i8* %0, i64 %45
  %68 = load i8, i8* %67, align 1, !tbaa !11
  %69 = load i8, i8* %26, align 1, !tbaa !11
  %70 = icmp eq i8 %68, %69
  %71 = add nsw i64 %45, -1
  %72 = getelementptr inbounds i32, i32* %28, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !5
  br i1 %70, label %74, label %79

74:                                               ; preds = %66
  %75 = getelementptr inbounds i32, i32* %31, i64 %71
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = add nsw i32 %76, %73
  %78 = getelementptr inbounds i32, i32* %28, i64 %45
  store i32 %77, i32* %78, align 4, !tbaa !5
  br label %81

79:                                               ; preds = %66
  %80 = getelementptr inbounds i32, i32* %28, i64 %45
  store i32 %73, i32* %80, align 4, !tbaa !5
  br label %81

81:                                               ; preds = %61, %64, %48, %79, %74
  %82 = add nuw nsw i64 %45, 1
  %83 = icmp eq i64 %82, %20
  br i1 %83, label %41, label %44, !llvm.loop !12

84:                                               ; preds = %2, %32
  %85 = phi i32 [ %40, %32 ], [ 1, %2 ]
  ret i32 %85
}

declare i32 @len(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !10}
