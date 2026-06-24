; ModuleID = 'benchmark/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_processed.c'
source_filename = "benchmark/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, %2
  br i1 %4, label %69, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = call i8* @llvm.stacksave()
  %8 = alloca i8, i64 %6, align 16
  %9 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %5
  %12 = icmp sgt i32 %2, 0
  %13 = icmp sgt i32 %2, 0
  %14 = zext i32 %1 to i64
  %15 = zext i32 %2 to i64
  %16 = zext i32 %2 to i64
  br label %17

17:                                               ; preds = %11, %46
  %18 = phi i64 [ 0, %11 ], [ %52, %46 ]
  %19 = load i8, i8* %8, align 16, !tbaa !5, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = call i8* @llvm.stacksave()
  %23 = alloca i8, i64 %6, align 16
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %23, i8 0, i64 %9, i1 false)
  br i1 %12, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds i32, i32* %0, i64 %18
  br label %27

26:                                               ; preds = %43, %21
  br i1 %13, label %54, label %46

27:                                               ; preds = %24, %43
  %28 = phi i64 [ 0, %24 ], [ %44, %43 ]
  %29 = getelementptr inbounds i8, i8* %8, i64 %28
  %30 = load i8, i8* %29, align 1, !tbaa !5, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %25, align 4, !tbaa !10
  %34 = trunc i64 %28 to i32
  %35 = add nsw i32 %33, %34
  %36 = srem i32 %35, %2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %8, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !5, !range !9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = getelementptr inbounds i8, i8* %23, i64 %37
  store i8 1, i8* %42, align 1, !tbaa !5
  br label %43

43:                                               ; preds = %27, %41, %32
  %44 = add nuw nsw i64 %28, 1
  %45 = icmp eq i64 %44, %15
  br i1 %45, label %26, label %27, !llvm.loop !12

46:                                               ; preds = %61, %26
  %47 = getelementptr inbounds i32, i32* %0, i64 %18
  %48 = load i32, i32* %47, align 4, !tbaa !10
  %49 = srem i32 %48, %2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %8, i64 %50
  store i8 1, i8* %51, align 1, !tbaa !5
  call void @llvm.stackrestore(i8* %22)
  %52 = add nuw nsw i64 %18, 1
  %53 = icmp eq i64 %52, %14
  br i1 %53, label %64, label %17, !llvm.loop !15

54:                                               ; preds = %26, %61
  %55 = phi i64 [ %62, %61 ], [ 0, %26 ]
  %56 = getelementptr inbounds i8, i8* %23, i64 %55
  %57 = load i8, i8* %56, align 1, !tbaa !5, !range !9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, i8* %8, i64 %55
  store i8 1, i8* %60, align 1, !tbaa !5
  br label %61

61:                                               ; preds = %54, %59
  %62 = add nuw nsw i64 %55, 1
  %63 = icmp eq i64 %62, %16
  br i1 %63, label %46, label %54, !llvm.loop !16

64:                                               ; preds = %46, %5
  %65 = load i8, i8* %8, align 16, !tbaa !5, !range !9
  %66 = zext i8 %65 to i32
  br label %67

67:                                               ; preds = %17, %64
  %68 = phi i32 [ %66, %64 ], [ 1, %17 ]
  call void @llvm.stackrestore(i8* %7)
  br label %69

69:                                               ; preds = %3, %67
  %70 = phi i32 [ %68, %67 ], [ 1, %3 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

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
!9 = !{i8 0, i8 2}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
