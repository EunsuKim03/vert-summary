; ModuleID = 'benchmark/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_processed.c'
source_filename = "benchmark/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = add nsw i32 %3, %2
  %7 = zext i32 %6 to i64
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp sgt i32 %2, 0
  %10 = icmp sgt i32 %3, 0
  %11 = and i1 %9, %10
  br i1 %11, label %34, label %14

12:                                               ; preds = %34
  %13 = trunc i64 %52 to i32
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ 0, %5 ], [ %47, %12 ]
  %16 = phi i32 [ 0, %5 ], [ %50, %12 ]
  %17 = phi i32 [ 0, %5 ], [ %13, %12 ]
  %18 = icmp slt i32 %15, %2
  br i1 %18, label %19, label %58

19:                                               ; preds = %14
  %20 = zext i32 %17 to i64
  %21 = getelementptr i32, i32* %8, i64 %20
  %22 = bitcast i32* %21 to i8*
  %23 = sext i32 %15 to i64
  %24 = getelementptr i32, i32* %0, i64 %23
  %25 = bitcast i32* %24 to i8*
  %26 = xor i32 %15, -1
  %27 = add i32 %26, %2
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = add nuw nsw i64 %29, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %22, i8* noundef nonnull align 4 dereferenceable(1) %25, i64 %30, i1 false), !tbaa !5
  %31 = zext i32 %17 to i64
  %32 = sext i32 %15 to i64
  %33 = sext i32 %2 to i64
  br label %73

34:                                               ; preds = %5, %34
  %35 = phi i64 [ %52, %34 ], [ 0, %5 ]
  %36 = phi i32 [ %50, %34 ], [ 0, %5 ]
  %37 = phi i32 [ %47, %34 ], [ 0, %5 ]
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = zext i32 %36 to i64
  %42 = getelementptr inbounds i32, i32* %1, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = icmp slt i32 %40, %43
  %45 = select i1 %44, i32 %40, i32 %43
  %46 = zext i1 %44 to i32
  %47 = add nuw nsw i32 %37, %46
  %48 = xor i1 %44, true
  %49 = zext i1 %48 to i32
  %50 = add nuw nsw i32 %36, %49
  %51 = getelementptr inbounds i32, i32* %8, i64 %35
  store i32 %45, i32* %51, align 4, !tbaa !5
  %52 = add nuw i64 %35, 1
  %53 = icmp slt i32 %47, %2
  %54 = icmp slt i32 %50, %3
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %34, label %12, !llvm.loop !9

56:                                               ; preds = %73
  %57 = trunc i64 %77 to i32
  br label %58

58:                                               ; preds = %56, %14
  %59 = phi i32 [ %17, %14 ], [ %57, %56 ]
  %60 = icmp slt i32 %16, %3
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = zext i32 %59 to i64
  %63 = getelementptr i32, i32* %8, i64 %62
  %64 = bitcast i32* %63 to i8*
  %65 = sext i32 %16 to i64
  %66 = getelementptr i32, i32* %1, i64 %65
  %67 = bitcast i32* %66 to i8*
  %68 = xor i32 %16, -1
  %69 = add i32 %68, %3
  %70 = zext i32 %69 to i64
  %71 = shl nuw nsw i64 %70, 2
  %72 = add nuw nsw i64 %71, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %64, i8* noundef nonnull align 4 dereferenceable(1) %67, i64 %72, i1 false), !tbaa !5
  br label %79

73:                                               ; preds = %19, %73
  %74 = phi i64 [ %32, %19 ], [ %76, %73 ]
  %75 = phi i64 [ %31, %19 ], [ %77, %73 ]
  %76 = add nsw i64 %74, 1
  %77 = add nuw nsw i64 %75, 1
  %78 = icmp eq i64 %76, %33
  br i1 %78, label %56, label %73, !llvm.loop !12

79:                                               ; preds = %61, %58
  %80 = add nsw i32 %4, -1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %8, i64 %81
  %83 = load i32, i32* %82, align 4, !tbaa !5
  ret i32 %83
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

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
