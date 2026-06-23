; ModuleID = 'benchmark/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = add nsw i32 %1, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %5, %7
  %9 = alloca i32, i64 %8, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = icmp slt i32 %2, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = add i32 %2, 1
  %14 = zext i32 %13 to i64
  br label %19

15:                                               ; preds = %19, %3
  %16 = icmp slt i32 %1, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %18, i1 false), !tbaa !5
  br label %25

19:                                               ; preds = %12, %19
  %20 = phi i64 [ 0, %12 ], [ %23, %19 ]
  %21 = mul nuw nsw i64 %20, %7
  %22 = getelementptr inbounds i32, i32* %9, i64 %21
  store i32 0, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %14
  br i1 %24, label %15, label %19, !llvm.loop !9

25:                                               ; preds = %17, %15
  %26 = icmp slt i32 %2, 1
  br i1 %26, label %40, label %27

27:                                               ; preds = %25
  %28 = icmp sgt i32 %1, 1
  %29 = add i32 %2, 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 %1 to i64
  br label %32

32:                                               ; preds = %27, %48
  %33 = phi i64 [ 1, %27 ], [ %49, %48 ]
  br i1 %28, label %34, label %48

34:                                               ; preds = %32
  %35 = add nsw i64 %33, -1
  %36 = mul nuw nsw i64 %35, %7
  %37 = getelementptr inbounds i32, i32* %9, i64 %36
  %38 = mul nuw nsw i64 %33, %7
  %39 = getelementptr inbounds i32, i32* %9, i64 %38
  br label %51

40:                                               ; preds = %48, %25
  %41 = sext i32 %2 to i64
  %42 = mul nsw i64 %41, %7
  %43 = getelementptr inbounds i32, i32* %9, i64 %42
  %44 = add nsw i32 %1, -1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  ret i32 %47

48:                                               ; preds = %51, %32
  %49 = add nuw nsw i64 %33, 1
  %50 = icmp eq i64 %49, %30
  br i1 %50, label %40, label %32, !llvm.loop !12

51:                                               ; preds = %34, %51
  %52 = phi i64 [ 1, %34 ], [ %68, %51 ]
  %53 = phi i32 [ -2147483648, %34 ], [ %60, %51 ]
  %54 = add nsw i64 %52, -1
  %55 = getelementptr inbounds i32, i32* %37, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = getelementptr inbounds i32, i32* %0, i64 %54
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = sub nsw i32 %56, %58
  %60 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %53, i32 noundef %59) #3
  %61 = getelementptr inbounds i32, i32* %39, i64 %54
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = getelementptr inbounds i32, i32* %0, i64 %52
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = add nsw i32 %64, %60
  %66 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %62, i32 noundef %65) #3
  %67 = getelementptr inbounds i32, i32* %39, i64 %52
  store i32 %66, i32* %67, align 4, !tbaa !5
  %68 = add nuw nsw i64 %52, 1
  %69 = icmp eq i64 %68, %31
  br i1 %69, label %48, label %51, !llvm.loop !13
}

declare i32 @max(...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
