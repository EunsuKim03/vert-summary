; ModuleID = 'benchmark/c_transcoder/MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED/MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED/MINIMUM_INSERTIONS_TO_FORM_A_PALINDROME_WITH_PERMUTATIONS_ALLOWED_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [26 x i32], align 16
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = trunc i64 %3 to i32
  %5 = bitcast [26 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %5) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(104) %5, i8 0, i64 104, i1 false)
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %1
  %8 = and i64 %3, 4294967295
  %9 = and i64 %3, 1
  %10 = icmp eq i64 %8, 1
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  %12 = sub nsw i64 %8, %9
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %31, %13 ]
  %15 = phi i64 [ 0, %11 ], [ %32, %13 ]
  %16 = getelementptr inbounds i8, i8* %0, i64 %14
  %17 = load i8, i8* %16, align 1, !tbaa !5
  %18 = sext i8 %17 to i64
  %19 = add nsw i64 %18, -97
  %20 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4, !tbaa !8
  %23 = or i64 %14, 1
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !5
  %26 = sext i8 %25 to i64
  %27 = add nsw i64 %26, -97
  %28 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4, !tbaa !8
  %31 = add nuw nsw i64 %14, 2
  %32 = add i64 %15, 2
  %33 = icmp eq i64 %32, %12
  br i1 %33, label %34, label %13, !llvm.loop !10

34:                                               ; preds = %13, %7
  %35 = phi i64 [ 0, %7 ], [ %31, %13 ]
  %36 = icmp eq i64 %9, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %0, i64 %35
  %39 = load i8, i8* %38, align 1, !tbaa !5
  %40 = sext i8 %39 to i64
  %41 = add nsw i64 %40, -97
  %42 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4, !tbaa !8
  br label %45

45:                                               ; preds = %1, %34, %37
  %46 = bitcast [26 x i32]* %2 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 16, !tbaa !8
  %48 = srem <4 x i32> %47, <i32 2, i32 2, i32 2, i32 2>
  %49 = icmp eq <4 x i32> %48, <i32 1, i32 1, i32 1, i32 1>
  %50 = zext <4 x i1> %49 to <4 x i32>
  %51 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 16, !tbaa !8
  %54 = srem <4 x i32> %53, <i32 2, i32 2, i32 2, i32 2>
  %55 = icmp eq <4 x i32> %54, <i32 1, i32 1, i32 1, i32 1>
  %56 = zext <4 x i1> %55 to <4 x i32>
  %57 = add nuw nsw <4 x i32> %50, %56
  %58 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 8
  %59 = bitcast i32* %58 to <4 x i32>*
  %60 = load <4 x i32>, <4 x i32>* %59, align 16, !tbaa !8
  %61 = srem <4 x i32> %60, <i32 2, i32 2, i32 2, i32 2>
  %62 = icmp eq <4 x i32> %61, <i32 1, i32 1, i32 1, i32 1>
  %63 = zext <4 x i1> %62 to <4 x i32>
  %64 = add nuw nsw <4 x i32> %57, %63
  %65 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 12
  %66 = bitcast i32* %65 to <4 x i32>*
  %67 = load <4 x i32>, <4 x i32>* %66, align 16, !tbaa !8
  %68 = srem <4 x i32> %67, <i32 2, i32 2, i32 2, i32 2>
  %69 = icmp eq <4 x i32> %68, <i32 1, i32 1, i32 1, i32 1>
  %70 = zext <4 x i1> %69 to <4 x i32>
  %71 = add nuw nsw <4 x i32> %64, %70
  %72 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 16
  %73 = bitcast i32* %72 to <4 x i32>*
  %74 = load <4 x i32>, <4 x i32>* %73, align 16, !tbaa !8
  %75 = srem <4 x i32> %74, <i32 2, i32 2, i32 2, i32 2>
  %76 = icmp eq <4 x i32> %75, <i32 1, i32 1, i32 1, i32 1>
  %77 = zext <4 x i1> %76 to <4 x i32>
  %78 = add nuw nsw <4 x i32> %71, %77
  %79 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 20
  %80 = bitcast i32* %79 to <4 x i32>*
  %81 = load <4 x i32>, <4 x i32>* %80, align 16, !tbaa !8
  %82 = srem <4 x i32> %81, <i32 2, i32 2, i32 2, i32 2>
  %83 = icmp eq <4 x i32> %82, <i32 1, i32 1, i32 1, i32 1>
  %84 = zext <4 x i1> %83 to <4 x i32>
  %85 = add nuw nsw <4 x i32> %78, %84
  %86 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %85)
  %87 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 24
  %88 = load i32, i32* %87, align 16, !tbaa !8
  %89 = srem i32 %88, 2
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = add nuw nsw i32 %86, %91
  %93 = getelementptr inbounds [26 x i32], [26 x i32]* %2, i64 0, i64 25
  %94 = load i32, i32* %93, align 4, !tbaa !8
  %95 = srem i32 %94, 2
  %96 = icmp eq i32 %95, 1
  %97 = zext i1 %96 to i32
  %98 = add nuw nsw i32 %92, %97
  %99 = icmp eq i32 %98, 0
  %100 = add nsw i32 %98, -1
  %101 = select i1 %99, i32 0, i32 %100
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %5) #5
  ret i32 %101
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
