; ModuleID = 'benchmark/c_transcoder/DYCK_PATH/DYCK_PATH_processed.c'
source_filename = "benchmark/c_transcoder/DYCK_PATH/DYCK_PATH_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @min(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, %1
  %4 = select i1 %3, i32 %0, i32 %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @max(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, %1
  %4 = select i1 %3, i32 %0, i32 %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @cmpfunc(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #1 {
  %3 = bitcast i8* %0 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %5 = bitcast i8* %1 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @len(i32* nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 2
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sort(i32* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = bitcast i32* %0 to i8*
  %4 = sext i32 %1 to i64
  tail call void @qsort(i8* noundef %3, i64 noundef %4, i64 noundef 4, i32 (i8*, i8*)* noundef nonnull @cmpfunc) #5
  ret void
}

; Function Attrs: nofree
declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = shl i32 %0, 1
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = and i32 %0, -2
  br label %23

9:                                                ; preds = %23, %3
  %10 = phi i32 [ undef, %3 ], [ %34, %23 ]
  %11 = phi i32 [ 0, %3 ], [ %33, %23 ]
  %12 = phi i32 [ 1, %3 ], [ %34, %23 ]
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = sub i32 %4, %11
  %16 = mul i32 %15, %12
  %17 = add nuw nsw i32 %11, 1
  %18 = sdiv i32 %16, %17
  br label %19

19:                                               ; preds = %14, %9, %1
  %20 = phi i32 [ 1, %1 ], [ %10, %9 ], [ %18, %14 ]
  %21 = add i32 %0, 1
  %22 = udiv i32 %20, %21
  ret i32 %22

23:                                               ; preds = %23, %7
  %24 = phi i32 [ 0, %7 ], [ %33, %23 ]
  %25 = phi i32 [ 1, %7 ], [ %34, %23 ]
  %26 = phi i32 [ 0, %7 ], [ %35, %23 ]
  %27 = sub i32 %4, %24
  %28 = mul i32 %27, %25
  %29 = or i32 %24, 1
  %30 = sdiv i32 %28, %29
  %31 = sub i32 %4, %29
  %32 = mul i32 %31, %30
  %33 = add nuw nsw i32 %24, 2
  %34 = sdiv i32 %32, %33
  %35 = add nuw i32 %26, 2
  %36 = icmp eq i32 %35, %8
  br i1 %36, label %9, label %23, !llvm.loop !9
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
