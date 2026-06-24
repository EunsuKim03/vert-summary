; ModuleID = 'benchmark/c_transcoder/PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING/PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING_processed.c'
source_filename = "benchmark/c_transcoder/PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING/PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = and i64 %3, 4294967295
  %8 = and i64 %3, 1
  %9 = icmp eq i64 %7, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = sub nsw i64 %7, %8
  br label %31

12:                                               ; preds = %64, %6
  %13 = phi i32 [ undef, %6 ], [ %65, %64 ]
  %14 = phi i64 [ 0, %6 ], [ %67, %64 ]
  %15 = phi i32 [ -1, %6 ], [ %66, %64 ]
  %16 = phi i32 [ 1, %6 ], [ %65, %64 ]
  %17 = icmp eq i64 %8, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds i8, i8* %0, i64 %14
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %21 = sext i8 %20 to i32
  %22 = add i8 %20, -40
  %23 = icmp uge i8 %22, 2
  %24 = icmp eq i32 %15, %1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = add nsw i32 %21, -48
  %28 = mul nsw i32 %27, %16
  br label %29

29:                                               ; preds = %18, %12, %26, %2
  %30 = phi i32 [ 1, %2 ], [ %13, %12 ], [ %28, %26 ], [ %16, %18 ]
  ret i32 %30

31:                                               ; preds = %64, %10
  %32 = phi i64 [ 0, %10 ], [ %67, %64 ]
  %33 = phi i32 [ -1, %10 ], [ %66, %64 ]
  %34 = phi i32 [ 1, %10 ], [ %65, %64 ]
  %35 = phi i64 [ 0, %10 ], [ %68, %64 ]
  %36 = getelementptr inbounds i8, i8* %0, i64 %32
  %37 = load i8, i8* %36, align 1, !tbaa !5
  %38 = sext i8 %37 to i32
  switch i8 %37, label %43 [
    i8 40, label %39
    i8 41, label %41
  ]

39:                                               ; preds = %31
  %40 = add nsw i32 %33, 1
  br label %48

41:                                               ; preds = %31
  %42 = add nsw i32 %33, -1
  br label %48

43:                                               ; preds = %31
  %44 = icmp eq i32 %33, %1
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = add nsw i32 %38, -48
  %47 = mul nsw i32 %46, %34
  br label %48

48:                                               ; preds = %39, %43, %45, %41
  %49 = phi i32 [ %34, %39 ], [ %34, %41 ], [ %47, %45 ], [ %34, %43 ]
  %50 = phi i32 [ %40, %39 ], [ %42, %41 ], [ %1, %45 ], [ %33, %43 ]
  %51 = or i64 %32, 1
  %52 = getelementptr inbounds i8, i8* %0, i64 %51
  %53 = load i8, i8* %52, align 1, !tbaa !5
  %54 = sext i8 %53 to i32
  switch i8 %53, label %59 [
    i8 40, label %57
    i8 41, label %55
  ]

55:                                               ; preds = %48
  %56 = add nsw i32 %50, -1
  br label %64

57:                                               ; preds = %48
  %58 = add nsw i32 %50, 1
  br label %64

59:                                               ; preds = %48
  %60 = icmp eq i32 %50, %1
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = add nsw i32 %54, -48
  %63 = mul nsw i32 %62, %49
  br label %64

64:                                               ; preds = %61, %59, %57, %55
  %65 = phi i32 [ %49, %57 ], [ %49, %55 ], [ %63, %61 ], [ %49, %59 ]
  %66 = phi i32 [ %58, %57 ], [ %56, %55 ], [ %1, %61 ], [ %50, %59 ]
  %67 = add nuw nsw i64 %32, 2
  %68 = add i64 %35, 2
  %69 = icmp eq i64 %68, %11
  br i1 %69, label %12, label %31, !llvm.loop !8
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
