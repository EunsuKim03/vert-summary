; ModuleID = 'benchmark/c_transcoder/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = and i64 %3, 4294967295
  %8 = and i64 %3, 1
  %9 = icmp eq i64 %7, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = sub nsw i64 %7, %8
  br label %42

12:                                               ; preds = %42, %6
  %13 = phi i32 [ undef, %6 ], [ %63, %42 ]
  %14 = phi i32 [ undef, %6 ], [ %68, %42 ]
  %15 = phi i64 [ 0, %6 ], [ %69, %42 ]
  %16 = phi i32 [ 0, %6 ], [ %68, %42 ]
  %17 = phi i32 [ 0, %6 ], [ %63, %42 ]
  %18 = phi i32 [ undef, %6 ], [ %66, %42 ]
  %19 = icmp eq i64 %8, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds i8, i8* %0, i64 %15
  %22 = load i8, i8* %21, align 1, !tbaa !5
  %23 = icmp eq i8 %22, 97
  %24 = zext i1 %23 to i32
  %25 = add nuw nsw i32 %17, %24
  %26 = icmp eq i8 %22, 98
  %27 = select i1 %26, i32 %25, i32 0
  %28 = add nsw i32 %27, %18
  %29 = zext i1 %26 to i32
  %30 = add nuw nsw i32 %16, %29
  br label %31

31:                                               ; preds = %20, %12, %2
  %32 = phi i32 [ undef, %2 ], [ %18, %12 ], [ %28, %20 ]
  %33 = phi i32 [ 0, %2 ], [ %13, %12 ], [ %25, %20 ]
  %34 = phi i32 [ 0, %2 ], [ %14, %12 ], [ %30, %20 ]
  %35 = mul nsw i32 %32, %1
  %36 = add nsw i32 %1, -1
  %37 = mul nsw i32 %36, %1
  %38 = sdiv i32 %37, 2
  %39 = mul nsw i32 %33, %38
  %40 = mul nsw i32 %39, %34
  %41 = add nsw i32 %40, %35
  ret i32 %41

42:                                               ; preds = %42, %10
  %43 = phi i64 [ 0, %10 ], [ %69, %42 ]
  %44 = phi i32 [ 0, %10 ], [ %68, %42 ]
  %45 = phi i32 [ 0, %10 ], [ %63, %42 ]
  %46 = phi i32 [ undef, %10 ], [ %66, %42 ]
  %47 = phi i64 [ 0, %10 ], [ %70, %42 ]
  %48 = getelementptr inbounds i8, i8* %0, i64 %43
  %49 = load i8, i8* %48, align 1, !tbaa !5
  %50 = icmp eq i8 %49, 97
  %51 = zext i1 %50 to i32
  %52 = add nuw nsw i32 %45, %51
  %53 = icmp eq i8 %49, 98
  %54 = select i1 %53, i32 %52, i32 0
  %55 = add nsw i32 %54, %46
  %56 = zext i1 %53 to i32
  %57 = add nuw nsw i32 %44, %56
  %58 = or i64 %43, 1
  %59 = getelementptr inbounds i8, i8* %0, i64 %58
  %60 = load i8, i8* %59, align 1, !tbaa !5
  %61 = icmp eq i8 %60, 97
  %62 = zext i1 %61 to i32
  %63 = add nuw nsw i32 %52, %62
  %64 = icmp eq i8 %60, 98
  %65 = select i1 %64, i32 %63, i32 0
  %66 = add nsw i32 %65, %55
  %67 = zext i1 %64 to i32
  %68 = add nuw nsw i32 %57, %67
  %69 = add nuw nsw i64 %43, 2
  %70 = add i64 %47, 2
  %71 = icmp eq i64 %70, %11
  br i1 %71, label %12, label %42, !llvm.loop !8
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
