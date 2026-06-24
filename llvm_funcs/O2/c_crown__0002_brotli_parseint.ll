; ModuleID = 'llvm/c_crown/0002_brotli_parseint/brotli_reprocessed.c'
source_filename = "llvm/c_crown/0002_brotli_parseint/brotli_reprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @ParseInt(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = load i8, i8* %0, align 1, !tbaa !5
  %6 = add i8 %5, -58
  %7 = icmp ult i8 %6, -10
  br i1 %7, label %71, label %8

8:                                                ; preds = %4
  %9 = sext i8 %5 to i32
  %10 = add nsw i32 %9, -48
  %11 = getelementptr inbounds i8, i8* %0, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !5
  %13 = sext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %8
  %16 = add i8 %12, -58
  %17 = icmp ult i8 %16, -10
  br i1 %17, label %71, label %18

18:                                               ; preds = %15
  %19 = mul nsw i32 %10, 10
  %20 = add nsw i32 %19, -48
  %21 = add nsw i32 %20, %13
  %22 = getelementptr inbounds i8, i8* %0, i64 2
  %23 = load i8, i8* %22, align 1, !tbaa !5
  %24 = sext i8 %23 to i32
  %25 = icmp eq i8 %23, 0
  br i1 %25, label %55, label %26

26:                                               ; preds = %18
  %27 = add i8 %23, -58
  %28 = icmp ult i8 %27, -10
  br i1 %28, label %71, label %29

29:                                               ; preds = %26
  %30 = mul nsw i32 %21, 10
  %31 = add nsw i32 %30, -48
  %32 = add nsw i32 %31, %24
  %33 = getelementptr inbounds i8, i8* %0, i64 3
  %34 = load i8, i8* %33, align 1, !tbaa !5
  %35 = sext i8 %34 to i32
  %36 = icmp eq i8 %34, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %29
  %38 = add i8 %34, -58
  %39 = icmp ult i8 %38, -10
  br i1 %39, label %71, label %40

40:                                               ; preds = %37
  %41 = mul nsw i32 %32, 10
  %42 = add nsw i32 %41, -48
  %43 = add nsw i32 %42, %35
  %44 = getelementptr inbounds i8, i8* %0, i64 4
  %45 = load i8, i8* %44, align 1, !tbaa !5
  %46 = sext i8 %45 to i32
  %47 = icmp eq i8 %45, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = add i8 %45, -58
  %50 = icmp ult i8 %49, -10
  br i1 %50, label %71, label %51

51:                                               ; preds = %48
  %52 = mul nsw i32 %43, 10
  %53 = add nsw i32 %52, -48
  %54 = add nsw i32 %53, %46
  br label %55

55:                                               ; preds = %18, %29, %40, %51
  %56 = phi i32 [ %54, %51 ], [ %43, %40 ], [ %32, %29 ], [ %21, %18 ]
  %57 = phi i64 [ 5, %51 ], [ 4, %40 ], [ 3, %29 ], [ 2, %18 ]
  %58 = icmp eq i8 %5, 48
  br i1 %58, label %71, label %59

59:                                               ; preds = %8, %55
  %60 = phi i64 [ %57, %55 ], [ 1, %8 ]
  %61 = phi i32 [ %56, %55 ], [ %10, %8 ]
  %62 = and i64 %60, 4294967295
  %63 = getelementptr inbounds i8, i8* %0, i64 %62
  %64 = load i8, i8* %63, align 1, !tbaa !5
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = icmp sge i32 %61, %1
  %68 = icmp sle i32 %61, %2
  %69 = and i1 %67, %68
  %70 = zext i1 %69 to i32
  br label %71

71:                                               ; preds = %4, %15, %26, %37, %48, %66, %59, %55
  %72 = phi i32 [ 0, %55 ], [ 0, %59 ], [ %70, %66 ], [ 0, %48 ], [ 0, %37 ], [ 0, %26 ], [ 0, %15 ], [ 0, %4 ]
  ret i32 %72
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
