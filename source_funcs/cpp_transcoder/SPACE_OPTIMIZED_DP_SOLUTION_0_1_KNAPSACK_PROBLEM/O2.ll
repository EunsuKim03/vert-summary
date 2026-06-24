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
  br i1 %11, label %12, label %77

12:                                               ; preds = %4
  %13 = icmp sgt i32 %3, 0
  %14 = getelementptr inbounds i32, i32* %8, i64 %6
  %15 = zext i32 %2 to i64
  br label %16

16:                                               ; preds = %12, %74
  %17 = phi i64 [ 0, %12 ], [ %75, %74 ]
  %18 = and i64 %17, 1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  br i1 %13, label %21, label %74

21:                                               ; preds = %20
  %22 = getelementptr inbounds i32, i32* %1, i64 %17
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = getelementptr inbounds i32, i32* %0, i64 %17
  %25 = sext i32 %23 to i64
  br label %32

26:                                               ; preds = %16
  br i1 %13, label %27, label %74

27:                                               ; preds = %26
  %28 = getelementptr inbounds i32, i32* %1, i64 %17
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, i32* %0, i64 %17
  %31 = sext i32 %29 to i64
  br label %53

32:                                               ; preds = %21, %48
  %33 = phi i64 [ 1, %21 ], [ %51, %48 ]
  %34 = icmp slt i64 %33, %25
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %24, align 4, !tbaa !5
  %37 = sub nsw i64 %33, %25
  %38 = getelementptr inbounds i32, i32* %8, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = add nsw i32 %39, %36
  %41 = getelementptr inbounds i32, i32* %8, i64 %33
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = icmp slt i32 %40, %42
  %44 = select i1 %43, i32 %42, i32 %40
  br label %48

45:                                               ; preds = %32
  %46 = getelementptr inbounds i32, i32* %8, i64 %33
  %47 = load i32, i32* %46, align 4, !tbaa !5
  br label %48

48:                                               ; preds = %45, %35
  %49 = phi i32 [ %47, %45 ], [ %44, %35 ]
  %50 = getelementptr inbounds i32, i32* %14, i64 %33
  store i32 %49, i32* %50, align 4, !tbaa !5
  %51 = add nuw nsw i64 %33, 1
  %52 = icmp eq i64 %51, %6
  br i1 %52, label %74, label %32, !llvm.loop !9

53:                                               ; preds = %27, %69
  %54 = phi i64 [ 1, %27 ], [ %72, %69 ]
  %55 = icmp slt i64 %54, %31
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %30, align 4, !tbaa !5
  %58 = sub nsw i64 %54, %31
  %59 = getelementptr inbounds i32, i32* %14, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = add nsw i32 %60, %57
  %62 = getelementptr inbounds i32, i32* %14, i64 %54
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = icmp slt i32 %61, %63
  %65 = select i1 %64, i32 %63, i32 %61
  br label %69

66:                                               ; preds = %53
  %67 = getelementptr inbounds i32, i32* %14, i64 %54
  %68 = load i32, i32* %67, align 4, !tbaa !5
  br label %69

69:                                               ; preds = %66, %56
  %70 = phi i32 [ %68, %66 ], [ %65, %56 ]
  %71 = getelementptr inbounds i32, i32* %8, i64 %54
  store i32 %70, i32* %71, align 4
  %72 = add nuw nsw i64 %54, 1
  %73 = icmp eq i64 %72, %6
  br i1 %73, label %74, label %53, !llvm.loop !11

74:                                               ; preds = %48, %69, %20, %26
  %75 = add nuw nsw i64 %17, 1
  %76 = icmp eq i64 %75, %15
  br i1 %76, label %77, label %16, !llvm.loop !12

77:                                               ; preds = %74, %4
  %78 = and i32 %2, 1
  %79 = icmp eq i32 %78, 0
  %80 = sext i32 %3 to i64
  %81 = select i1 %79, i64 %6, i64 0
  %82 = getelementptr i32, i32* %8, i64 %81
  %83 = getelementptr inbounds i32, i32* %82, i64 %80
  %84 = load i32, i32* %83, align 4, !tbaa !5
  ret i32 %84
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
