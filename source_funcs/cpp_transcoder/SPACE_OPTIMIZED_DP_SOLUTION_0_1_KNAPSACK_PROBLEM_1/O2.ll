; ModuleID = 'llvm/cpp_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = add nsw i32 %3, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %2, 0
  %11 = sext i32 %3 to i64
  br i1 %10, label %12, label %106

12:                                               ; preds = %4
  %13 = zext i32 %2 to i64
  %14 = getelementptr i32, i32* %7, i64 %11
  %15 = bitcast i32* %14 to i8*
  %16 = getelementptr i32, i32* %7, i64 %11
  %17 = add nsw i64 %11, 1
  %18 = getelementptr i32, i32* %7, i64 %17
  %19 = getelementptr i32, i32* %7, i64 %17
  %20 = add nsw i64 %11, 1
  %21 = icmp ult i32* %7, %18
  br label %22

22:                                               ; preds = %12, %109
  %23 = phi i64 [ 0, %12 ], [ %110, %109 ]
  %24 = getelementptr inbounds i32, i32* %1, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp sgt i32 %25, %3
  br i1 %26, label %109, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds i32, i32* %0, i64 %23
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = sext i32 %25 to i64
  %31 = sub nsw i64 %20, %30
  %32 = icmp ult i64 %31, 8
  br i1 %32, label %104, label %33

33:                                               ; preds = %27
  %34 = sub nsw i64 %11, %30
  %35 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %34, i64 4)
  %36 = extractvalue { i64, i1 } %35, 0
  %37 = extractvalue { i64, i1 } %35, 1
  %38 = sub i64 0, %36
  %39 = getelementptr i8, i8* %15, i64 %38
  %40 = icmp ugt i8* %39, %15
  %41 = or i1 %40, %37
  %42 = sub nsw i64 0, %30
  %43 = getelementptr i32, i32* %16, i64 %42
  %44 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %34, i64 4)
  %45 = extractvalue { i64, i1 } %44, 0
  %46 = extractvalue { i64, i1 } %44, 1
  %47 = bitcast i32* %43 to i8*
  %48 = sub i64 0, %45
  %49 = getelementptr i8, i8* %47, i64 %48
  %50 = icmp ugt i8* %49, %47
  %51 = or i1 %50, %46
  %52 = or i1 %41, %51
  br i1 %52, label %104, label %53

53:                                               ; preds = %33
  %54 = getelementptr i32, i32* %7, i64 %30
  %55 = sub nsw i64 0, %30
  %56 = getelementptr i32, i32* %19, i64 %55
  %57 = icmp ult i32* %54, %56
  %58 = and i1 %57, %21
  br i1 %58, label %104, label %59

59:                                               ; preds = %53
  %60 = and i64 %31, -8
  %61 = sub nsw i64 %11, %60
  %62 = insertelement <4 x i32> poison, i32 %29, i64 0
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> zeroinitializer
  %64 = insertelement <4 x i32> poison, i32 %29, i64 0
  %65 = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %66

66:                                               ; preds = %66, %59
  %67 = phi i64 [ 0, %59 ], [ %100, %66 ]
  %68 = sub i64 %11, %67
  %69 = getelementptr inbounds i32, i32* %7, i64 %68
  %70 = sub nsw i64 %68, %30
  %71 = getelementptr inbounds i32, i32* %7, i64 %70
  %72 = getelementptr inbounds i32, i32* %71, i64 -3
  %73 = bitcast i32* %72 to <4 x i32>*
  %74 = load <4 x i32>, <4 x i32>* %73, align 4, !tbaa !5, !alias.scope !9
  %75 = shufflevector <4 x i32> %74, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %76 = getelementptr inbounds i32, i32* %71, i64 -4
  %77 = getelementptr inbounds i32, i32* %76, i64 -3
  %78 = bitcast i32* %77 to <4 x i32>*
  %79 = load <4 x i32>, <4 x i32>* %78, align 4, !tbaa !5, !alias.scope !9
  %80 = shufflevector <4 x i32> %79, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %81 = add nsw <4 x i32> %75, %63
  %82 = add nsw <4 x i32> %80, %65
  %83 = getelementptr inbounds i32, i32* %69, i64 -3
  %84 = bitcast i32* %83 to <4 x i32>*
  %85 = load <4 x i32>, <4 x i32>* %84, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %86 = shufflevector <4 x i32> %85, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %87 = getelementptr inbounds i32, i32* %69, i64 -4
  %88 = getelementptr inbounds i32, i32* %87, i64 -3
  %89 = bitcast i32* %88 to <4 x i32>*
  %90 = load <4 x i32>, <4 x i32>* %89, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %92 = icmp slt <4 x i32> %86, %81
  %93 = icmp slt <4 x i32> %91, %82
  %94 = select <4 x i1> %92, <4 x i32> %81, <4 x i32> %86
  %95 = select <4 x i1> %93, <4 x i32> %82, <4 x i32> %91
  %96 = shufflevector <4 x i32> %94, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %97 = bitcast i32* %83 to <4 x i32>*
  store <4 x i32> %96, <4 x i32>* %97, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %98 = shufflevector <4 x i32> %95, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %99 = bitcast i32* %88 to <4 x i32>*
  store <4 x i32> %98, <4 x i32>* %99, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %100 = add nuw i64 %67, 8
  %101 = icmp eq i64 %100, %60
  br i1 %101, label %102, label %66, !llvm.loop !14

102:                                              ; preds = %66
  %103 = icmp eq i64 %31, %60
  br i1 %103, label %109, label %104

104:                                              ; preds = %53, %33, %27, %102
  %105 = phi i64 [ %11, %53 ], [ %11, %33 ], [ %11, %27 ], [ %61, %102 ]
  br label %112

106:                                              ; preds = %109, %4
  %107 = getelementptr inbounds i32, i32* %7, i64 %11
  %108 = load i32, i32* %107, align 4, !tbaa !5
  ret i32 %108

109:                                              ; preds = %112, %102, %22
  %110 = add nuw nsw i64 %23, 1
  %111 = icmp eq i64 %110, %13
  br i1 %111, label %106, label %22, !llvm.loop !17

112:                                              ; preds = %104, %112
  %113 = phi i64 [ %122, %112 ], [ %105, %104 ]
  %114 = getelementptr inbounds i32, i32* %7, i64 %113
  %115 = sub nsw i64 %113, %30
  %116 = getelementptr inbounds i32, i32* %7, i64 %115
  %117 = load i32, i32* %116, align 4, !tbaa !5
  %118 = add nsw i32 %117, %29
  %119 = load i32, i32* %114, align 4, !tbaa !5
  %120 = icmp slt i32 %119, %118
  %121 = select i1 %120, i32 %118, i32 %119
  store i32 %121, i32* %114, align 4, !tbaa !5
  %122 = add nsw i64 %113, -1
  %123 = icmp sgt i64 %113, %30
  br i1 %123, label %112, label %109, !llvm.loop !18
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15, !16}
