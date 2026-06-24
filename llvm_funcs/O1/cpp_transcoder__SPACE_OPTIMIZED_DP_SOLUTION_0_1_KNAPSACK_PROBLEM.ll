; ModuleID = 'llvm/cpp_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = add i32 %3, 1
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 1
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw nsw i64 %6, 3
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %84

12:                                               ; preds = %4
  %13 = icmp sgt i32 %3, 0
  %14 = icmp sgt i32 %3, 0
  %15 = getelementptr inbounds i32, i32* %8, i64 %6
  %16 = getelementptr inbounds i32, i32* %8, i64 %6
  %17 = zext i32 %2 to i64
  %18 = zext i32 %5 to i64
  %19 = getelementptr inbounds i32, i32* %8, i64 %6
  %20 = zext i32 %5 to i64
  br label %21

21:                                               ; preds = %12, %81
  %22 = phi i64 [ 0, %12 ], [ %82, %81 ]
  %23 = and i64 %22, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  br i1 %13, label %26, label %81

26:                                               ; preds = %25
  %27 = getelementptr inbounds i32, i32* %1, i64 %22
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = getelementptr inbounds i32, i32* %0, i64 %22
  %30 = sext i32 %28 to i64
  %31 = sext i32 %28 to i64
  br label %39

32:                                               ; preds = %21
  br i1 %14, label %33, label %81

33:                                               ; preds = %32
  %34 = getelementptr inbounds i32, i32* %1, i64 %22
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %0, i64 %22
  %37 = sext i32 %35 to i64
  %38 = sext i32 %35 to i64
  br label %60

39:                                               ; preds = %26, %55
  %40 = phi i64 [ 1, %26 ], [ %58, %55 ]
  %41 = icmp slt i64 %40, %31
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %29, align 4, !tbaa !5
  %44 = sub nsw i64 %40, %30
  %45 = getelementptr inbounds i32, i32* %8, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = add nsw i32 %46, %43
  %48 = getelementptr inbounds i32, i32* %8, i64 %40
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = icmp slt i32 %47, %49
  %51 = select i1 %50, i32 %49, i32 %47
  br label %55

52:                                               ; preds = %39
  %53 = getelementptr inbounds i32, i32* %8, i64 %40
  %54 = load i32, i32* %53, align 4, !tbaa !5
  br label %55

55:                                               ; preds = %52, %42
  %56 = phi i32 [ %54, %52 ], [ %51, %42 ]
  %57 = getelementptr inbounds i32, i32* %19, i64 %40
  store i32 %56, i32* %57, align 4, !tbaa !5
  %58 = add nuw nsw i64 %40, 1
  %59 = icmp eq i64 %58, %18
  br i1 %59, label %81, label %39, !llvm.loop !9

60:                                               ; preds = %33, %76
  %61 = phi i64 [ 1, %33 ], [ %79, %76 ]
  %62 = icmp slt i64 %61, %38
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %36, align 4, !tbaa !5
  %65 = sub nsw i64 %61, %37
  %66 = getelementptr inbounds i32, i32* %15, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %68 = add nsw i32 %67, %64
  %69 = getelementptr inbounds i32, i32* %15, i64 %61
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = icmp slt i32 %68, %70
  %72 = select i1 %71, i32 %70, i32 %68
  br label %76

73:                                               ; preds = %60
  %74 = getelementptr inbounds i32, i32* %16, i64 %61
  %75 = load i32, i32* %74, align 4, !tbaa !5
  br label %76

76:                                               ; preds = %73, %63
  %77 = phi i32 [ %75, %73 ], [ %72, %63 ]
  %78 = getelementptr inbounds i32, i32* %8, i64 %61
  store i32 %77, i32* %78, align 4, !tbaa !5
  %79 = add nuw nsw i64 %61, 1
  %80 = icmp eq i64 %79, %20
  br i1 %80, label %81, label %60, !llvm.loop !12

81:                                               ; preds = %55, %76, %25, %32
  %82 = add nuw nsw i64 %22, 1
  %83 = icmp eq i64 %82, %17
  br i1 %83, label %84, label %21, !llvm.loop !13

84:                                               ; preds = %81, %4
  %85 = and i32 %2, 1
  %86 = icmp eq i32 %85, 0
  %87 = sext i32 %3 to i64
  %88 = select i1 %86, i64 %6, i64 0
  %89 = getelementptr i32, i32* %8, i64 %88
  %90 = getelementptr inbounds i32, i32* %89, i64 %87
  %91 = load i32, i32* %90, align 4, !tbaa !5
  ret i32 %91
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
