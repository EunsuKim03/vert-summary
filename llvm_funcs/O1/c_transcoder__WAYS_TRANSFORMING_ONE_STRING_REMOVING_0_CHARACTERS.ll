; ModuleID = 'benchmark/c_transcoder/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_processed.c'
source_filename = "benchmark/c_transcoder/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* noundef %0, i8* noundef %1) local_unnamed_addr #0 {
  %3 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #4
  %4 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %1) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %88, label %6

6:                                                ; preds = %2
  %7 = add nsw i32 %4, 1
  %8 = zext i32 %7 to i64
  %9 = add nsw i32 %3, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  %12 = mul nuw i64 %8, %10
  %13 = alloca i32, i64 %12, align 16
  %14 = bitcast i32* %13 to i8*
  %15 = shl nuw i64 %12, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %14, i8 0, i64 %15, i1 false)
  %16 = icmp sgt i32 %4, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %6
  %18 = sext i32 %3 to i64
  %19 = zext i32 %4 to i64
  %20 = zext i32 %3 to i64
  br label %21

21:                                               ; preds = %17, %43
  %22 = phi i64 [ 0, %17 ], [ %44, %43 ]
  %23 = icmp slt i64 %22, %18
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = icmp eq i64 %22, 0
  %26 = getelementptr inbounds i8, i8* %1, i64 %22
  %27 = mul nuw nsw i64 %22, %10
  %28 = getelementptr inbounds i32, i32* %13, i64 %27
  %29 = mul nuw nsw i64 %22, %10
  %30 = getelementptr inbounds i32, i32* %13, i64 %29
  %31 = add nsw i64 %22, -1
  %32 = mul nsw i64 %31, %10
  %33 = getelementptr inbounds i32, i32* %13, i64 %32
  br label %46

34:                                               ; preds = %43, %6
  %35 = add nsw i32 %4, -1
  %36 = sext i32 %35 to i64
  %37 = mul nsw i64 %36, %10
  %38 = getelementptr inbounds i32, i32* %13, i64 %37
  %39 = add nsw i32 %3, -1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  call void @llvm.stackrestore(i8* %11)
  br label %88

43:                                               ; preds = %85, %21
  %44 = add nuw nsw i64 %22, 1
  %45 = icmp eq i64 %44, %19
  br i1 %45, label %34, label %21, !llvm.loop !9

46:                                               ; preds = %24, %85
  %47 = phi i64 [ %22, %24 ], [ %86, %85 ]
  br i1 %25, label %48, label %68

48:                                               ; preds = %46
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load i8, i8* %0, align 1, !tbaa !12
  %52 = load i8, i8* %1, align 1, !tbaa !12
  %53 = icmp eq i8 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %13, align 16, !tbaa !5
  br label %85

55:                                               ; preds = %48
  %56 = getelementptr inbounds i8, i8* %0, i64 %47
  %57 = load i8, i8* %56, align 1, !tbaa !12
  %58 = load i8, i8* %1, align 1, !tbaa !12
  %59 = icmp eq i8 %57, %58
  %60 = add nsw i64 %47, -1
  %61 = getelementptr inbounds i32, i32* %13, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !5
  br i1 %59, label %63, label %66

63:                                               ; preds = %55
  %64 = add nsw i32 %62, 1
  %65 = getelementptr inbounds i32, i32* %13, i64 %47
  store i32 %64, i32* %65, align 4, !tbaa !5
  br label %85

66:                                               ; preds = %55
  %67 = getelementptr inbounds i32, i32* %13, i64 %47
  store i32 %62, i32* %67, align 4, !tbaa !5
  br label %85

68:                                               ; preds = %46
  %69 = getelementptr inbounds i8, i8* %0, i64 %47
  %70 = load i8, i8* %69, align 1, !tbaa !12
  %71 = load i8, i8* %26, align 1, !tbaa !12
  %72 = icmp eq i8 %70, %71
  %73 = add nsw i64 %47, -1
  br i1 %72, label %74, label %81

74:                                               ; preds = %68
  %75 = getelementptr inbounds i32, i32* %30, i64 %73
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = getelementptr inbounds i32, i32* %33, i64 %73
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = add nsw i32 %78, %76
  %80 = getelementptr inbounds i32, i32* %30, i64 %47
  store i32 %79, i32* %80, align 4, !tbaa !5
  br label %85

81:                                               ; preds = %68
  %82 = getelementptr inbounds i32, i32* %28, i64 %73
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = getelementptr inbounds i32, i32* %28, i64 %47
  store i32 %83, i32* %84, align 4, !tbaa !5
  br label %85

85:                                               ; preds = %63, %66, %50, %81, %74
  %86 = add nuw nsw i64 %47, 1
  %87 = icmp eq i64 %86, %20
  br i1 %87, label %43, label %46, !llvm.loop !13

88:                                               ; preds = %2, %34
  %89 = phi i32 [ %42, %34 ], [ 1, %2 ]
  ret i32 %89
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
