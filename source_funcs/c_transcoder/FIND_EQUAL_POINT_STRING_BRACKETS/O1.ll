; ModuleID = 'benchmark/c_transcoder/FIND_EQUAL_POINT_STRING_BRACKETS/FIND_EQUAL_POINT_STRING_BRACKETS_processed.c'
source_filename = "benchmark/c_transcoder/FIND_EQUAL_POINT_STRING_BRACKETS/FIND_EQUAL_POINT_STRING_BRACKETS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = alloca i32, i64 %5, align 16
  %7 = alloca i32, i64 %5, align 16
  %8 = bitcast i32* %6 to i8*
  %9 = shl nuw nsw i64 %5, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = bitcast i32* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %9, i1 false)
  store i32 0, i32* %6, align 16, !tbaa !5
  %11 = shl i64 %2, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds i32, i32* %7, i64 %12
  store i32 0, i32* %13, align 4, !tbaa !5
  %14 = load i8, i8* %0, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 40
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 1, i32* %17, align 4, !tbaa !5
  br label %18

18:                                               ; preds = %16, %1
  %19 = add i64 %11, -4294967296
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds i8, i8* %0, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 41
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = getelementptr inbounds i32, i32* %7, i64 %20
  store i32 1, i32* %25, align 4, !tbaa !5
  br label %26

26:                                               ; preds = %24, %18
  %27 = icmp sgt i32 %3, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = and i64 %2, 4294967295
  br label %36

30:                                               ; preds = %36, %26
  %31 = icmp sgt i32 %3, 1
  br i1 %31, label %32, label %49

32:                                               ; preds = %30
  %33 = shl i64 %2, 32
  %34 = add i64 %33, -8589934592
  %35 = ashr exact i64 %34, 32
  br label %53

36:                                               ; preds = %28, %36
  %37 = phi i64 [ 1, %28 ], [ %47, %36 ]
  %38 = getelementptr inbounds i8, i8* %0, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %40 = icmp eq i8 %39, 40
  %41 = getelementptr inbounds i32, i32* %6, i64 %37
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = zext i1 %40 to i32
  %44 = add nsw i32 %42, %43
  %45 = add nuw nsw i64 %37, 1
  %46 = getelementptr inbounds i32, i32* %6, i64 %45
  store i32 %44, i32* %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %37, 1
  %48 = icmp eq i64 %47, %29
  br i1 %48, label %30, label %36, !llvm.loop !10

49:                                               ; preds = %53, %30
  %50 = getelementptr inbounds i32, i32* %6, i64 %12
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %86, label %66

53:                                               ; preds = %32, %53
  %54 = phi i64 [ %35, %32 ], [ %64, %53 ]
  %55 = getelementptr inbounds i8, i8* %0, i64 %54
  %56 = load i8, i8* %55, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 41
  %58 = add nsw i64 %54, 1
  %59 = getelementptr inbounds i32, i32* %7, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = zext i1 %57 to i32
  %62 = add nsw i32 %60, %61
  %63 = getelementptr inbounds i32, i32* %7, i64 %54
  store i32 %62, i32* %63, align 4, !tbaa !5
  %64 = add nsw i64 %54, -1
  %65 = icmp sgt i64 %54, 0
  br i1 %65, label %53, label %49, !llvm.loop !13

66:                                               ; preds = %49
  %67 = load i32, i32* %7, align 16, !tbaa !5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %66
  %70 = icmp slt i32 %3, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %69
  %72 = add i64 %2, 1
  %73 = and i64 %72, 4294967295
  br label %74

74:                                               ; preds = %71, %74
  %75 = phi i64 [ 0, %71 ], [ %84, %74 ]
  %76 = phi i32 [ -1, %71 ], [ %83, %74 ]
  %77 = getelementptr inbounds i32, i32* %6, i64 %75
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = getelementptr inbounds i32, i32* %7, i64 %75
  %80 = load i32, i32* %79, align 4, !tbaa !5
  %81 = icmp eq i32 %78, %80
  %82 = trunc i64 %75 to i32
  %83 = select i1 %81, i32 %82, i32 %76
  %84 = add nuw nsw i64 %75, 1
  %85 = icmp eq i64 %84, %73
  br i1 %85, label %86, label %74, !llvm.loop !14

86:                                               ; preds = %74, %69, %66, %49
  %87 = phi i32 [ %3, %49 ], [ 0, %66 ], [ -1, %69 ], [ %83, %74 ]
  ret i32 %87
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
