; ModuleID = 'benchmark/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %3, 1
  %6 = zext i32 %5 to i64
  %7 = add i32 %2, 1
  %8 = zext i32 %7 to i64
  %9 = mul nuw i64 %6, %8
  %10 = alloca i64, i64 %9, align 16
  %11 = bitcast i64* %10 to i8*
  %12 = shl nuw i64 %9, 3
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 %12, i1 false)
  %13 = icmp slt i32 %3, 1
  %14 = sext i32 %2 to i64
  br i1 %13, label %27, label %15

15:                                               ; preds = %4, %34
  %16 = phi i64 [ %35, %34 ], [ 1, %4 ]
  %17 = icmp sgt i64 %16, %14
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = add nsw i64 %16, -1
  %20 = mul nuw nsw i64 %19, %8
  %21 = getelementptr inbounds i64, i64* %10, i64 %20
  %22 = getelementptr inbounds i32, i32* %1, i64 %19
  %23 = mul nuw nsw i64 %16, %8
  %24 = getelementptr inbounds i64, i64* %10, i64 %23
  %25 = getelementptr inbounds i64, i64* %24, i64 %19
  %26 = load i64, i64* %25, align 8, !tbaa !5
  br label %37

27:                                               ; preds = %34, %4
  %28 = sext i32 %3 to i64
  %29 = mul nsw i64 %28, %8
  %30 = getelementptr inbounds i64, i64* %10, i64 %29
  %31 = getelementptr inbounds i64, i64* %30, i64 %14
  %32 = load i64, i64* %31, align 8, !tbaa !5
  %33 = trunc i64 %32 to i32
  ret i32 %33

34:                                               ; preds = %37, %15
  %35 = add nuw nsw i64 %16, 1
  %36 = icmp eq i64 %35, %6
  br i1 %36, label %27, label %15, !llvm.loop !9

37:                                               ; preds = %18, %37
  %38 = phi i64 [ %26, %18 ], [ %50, %37 ]
  %39 = phi i64 [ %16, %18 ], [ %52, %37 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds i64, i64* %21, i64 %40
  %42 = load i64, i64* %41, align 8, !tbaa !5
  %43 = getelementptr inbounds i32, i32* %0, i64 %40
  %44 = load i32, i32* %43, align 4, !tbaa !11
  %45 = load i32, i32* %22, align 4, !tbaa !11
  %46 = mul nsw i32 %45, %44
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %42, %47
  %49 = tail call i32 (i64, i64, ...) bitcast (i32 (...)* @max to i32 (i64, i64, ...)*)(i64 noundef %48, i64 noundef %38) #3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %24, i64 %39
  store i64 %50, i64* %51, align 8, !tbaa !5
  %52 = add nuw nsw i64 %39, 1
  %53 = icmp eq i64 %52, %8
  br i1 %53, label %34, label %37, !llvm.loop !13
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @max(...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = distinct !{!13, !10}
