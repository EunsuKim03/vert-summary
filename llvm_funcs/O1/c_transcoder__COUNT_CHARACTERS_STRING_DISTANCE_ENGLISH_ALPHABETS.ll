; ModuleID = 'benchmark/c_transcoder/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = shl i64 %2, 32
  %7 = ashr exact i64 %6, 32
  %8 = and i64 %2, 4294967295
  %9 = and i64 %2, 4294967295
  br label %16

10:                                               ; preds = %27, %16
  %11 = phi i32 [ %19, %16 ], [ %40, %27 ]
  %12 = add nuw nsw i64 %18, 1
  %13 = icmp eq i64 %20, %8
  br i1 %13, label %14, label %16, !llvm.loop !5

14:                                               ; preds = %10, %1
  %15 = phi i32 [ 0, %1 ], [ %11, %10 ]
  ret i32 %15

16:                                               ; preds = %5, %10
  %17 = phi i64 [ 0, %5 ], [ %20, %10 ]
  %18 = phi i64 [ 1, %5 ], [ %12, %10 ]
  %19 = phi i32 [ 0, %5 ], [ %11, %10 ]
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp slt i64 %20, %7
  br i1 %21, label %22, label %10

22:                                               ; preds = %16
  %23 = getelementptr inbounds i8, i8* %0, i64 %17
  %24 = load i8, i8* %23, align 1, !tbaa !8
  %25 = sext i8 %24 to i32
  %26 = trunc i64 %17 to i32
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i64 [ %18, %22 ], [ %41, %27 ]
  %29 = phi i32 [ %19, %22 ], [ %40, %27 ]
  %30 = trunc i64 %28 to i32
  %31 = getelementptr inbounds i8, i8* %0, i64 %28
  %32 = load i8, i8* %31, align 1, !tbaa !8
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %25, %33
  %35 = call i32 @llvm.abs.i32(i32 %34, i1 true)
  %36 = sub nsw i32 %26, %30
  %37 = call i32 @llvm.abs.i32(i32 %36, i1 true)
  %38 = icmp eq i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = add nsw i32 %29, %39
  %41 = add nuw nsw i64 %28, 1
  %42 = icmp eq i64 %41, %9
  br i1 %42, label %10, label %27, !llvm.loop !11
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6, !7}
