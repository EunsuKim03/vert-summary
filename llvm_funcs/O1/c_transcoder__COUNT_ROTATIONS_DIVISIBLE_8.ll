; ModuleID = 'benchmark/c_transcoder/COUNT_ROTATIONS_DIVISIBLE_8/COUNT_ROTATIONS_DIVISIBLE_8_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_ROTATIONS_DIVISIBLE_8/COUNT_ROTATIONS_DIVISIBLE_8_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  switch i32 %3, label %4 [
    i32 1, label %9
    i32 2, label %14
  ]

4:                                                ; preds = %1
  %5 = add i32 %3, -2
  %6 = icmp sgt i32 %3, 2
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = zext i32 %5 to i64
  br label %67

9:                                                ; preds = %1
  %10 = load i8, i8* %0, align 1, !tbaa !5
  %11 = and i8 %10, 7
  %12 = icmp eq i8 %11, 0
  %13 = zext i1 %12 to i32
  br label %90

14:                                               ; preds = %1
  %15 = load i8, i8* %0, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %16, -48
  %18 = mul nsw i32 %17, 10
  %19 = getelementptr inbounds i8, i8* %0, i64 1
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, -48
  %23 = add nsw i32 %18, %22
  %24 = mul nsw i32 %22, 10
  %25 = add nsw i32 %24, %17
  %26 = and i32 %23, 7
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = and i32 %25, 7
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %27, i32 2, i32 1
  %32 = select i1 %30, i32 %31, i32 %28
  br label %90

33:                                               ; preds = %67, %4
  %34 = phi i32 [ 0, %4 ], [ %88, %67 ]
  %35 = shl i64 %2, 32
  %36 = add i64 %35, -4294967296
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds i8, i8* %0, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !5
  %40 = zext i8 %39 to i32
  %41 = mul nuw nsw i32 %40, 100
  %42 = load i8, i8* %0, align 1, !tbaa !5
  %43 = zext i8 %42 to i32
  %44 = mul nuw nsw i32 %43, 10
  %45 = add nuw nsw i32 %44, %41
  %46 = getelementptr inbounds i8, i8* %0, i64 1
  %47 = load i8, i8* %46, align 1, !tbaa !5
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %45, %48
  %50 = and i32 %49, 7
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = add nuw nsw i32 %34, %52
  %54 = sext i32 %5 to i64
  %55 = getelementptr inbounds i8, i8* %0, i64 %54
  %56 = load i8, i8* %55, align 1, !tbaa !5
  %57 = zext i8 %56 to i32
  %58 = mul nuw nsw i32 %57, 100
  %59 = mul nuw nsw i32 %40, 10
  %60 = zext i8 %42 to i32
  %61 = add nuw nsw i32 %59, %60
  %62 = add nuw nsw i32 %61, %58
  %63 = and i32 %62, 7
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = add nuw nsw i32 %53, %65
  br label %90

67:                                               ; preds = %7, %67
  %68 = phi i64 [ 0, %7 ], [ %74, %67 ]
  %69 = phi i32 [ 0, %7 ], [ %88, %67 ]
  %70 = getelementptr inbounds i8, i8* %0, i64 %68
  %71 = load i8, i8* %70, align 1, !tbaa !5
  %72 = zext i8 %71 to i32
  %73 = mul nuw nsw i32 %72, 100
  %74 = add nuw nsw i64 %68, 1
  %75 = getelementptr inbounds i8, i8* %0, i64 %74
  %76 = load i8, i8* %75, align 1, !tbaa !5
  %77 = zext i8 %76 to i32
  %78 = mul nuw nsw i32 %77, 10
  %79 = add nuw nsw i32 %78, %73
  %80 = add nuw nsw i64 %68, 2
  %81 = getelementptr inbounds i8, i8* %0, i64 %80
  %82 = load i8, i8* %81, align 1, !tbaa !5
  %83 = zext i8 %82 to i32
  %84 = add nuw nsw i32 %79, %83
  %85 = and i32 %84, 7
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = add nuw nsw i32 %69, %87
  %89 = icmp eq i64 %74, %8
  br i1 %89, label %33, label %67, !llvm.loop !8

90:                                               ; preds = %33, %14, %9
  %91 = phi i32 [ %13, %9 ], [ %32, %14 ], [ %66, %33 ]
  ret i32 %91
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
