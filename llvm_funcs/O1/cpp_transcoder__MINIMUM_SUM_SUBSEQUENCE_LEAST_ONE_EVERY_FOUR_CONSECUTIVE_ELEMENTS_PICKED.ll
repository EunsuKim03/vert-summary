; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  switch i32 %1, label %38 [
    i32 1, label %104
    i32 2, label %5
    i32 3, label %11
    i32 4, label %22
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i32, i32* %0, i64 1
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = load i32, i32* %0, align 4, !tbaa !5
  %9 = icmp slt i32 %7, %8
  %10 = select i1 %9, i32* %6, i32* %0
  br label %104

11:                                               ; preds = %2
  %12 = getelementptr inbounds i32, i32* %0, i64 1
  %13 = getelementptr inbounds i32, i32* %0, i64 2
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = load i32, i32* %12, align 4, !tbaa !5
  %16 = icmp slt i32 %14, %15
  %17 = select i1 %16, i32* %13, i32* %12
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = load i32, i32* %0, align 4, !tbaa !5
  %20 = icmp slt i32 %18, %19
  %21 = select i1 %20, i32* %17, i32* %0
  br label %104

22:                                               ; preds = %2
  %23 = getelementptr inbounds i32, i32* %0, i64 1
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = load i32, i32* %0, align 4, !tbaa !5
  %26 = icmp slt i32 %24, %25
  %27 = select i1 %26, i32* %23, i32* %0
  %28 = getelementptr inbounds i32, i32* %0, i64 2
  %29 = getelementptr inbounds i32, i32* %0, i64 3
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = load i32, i32* %28, align 4, !tbaa !5
  %32 = icmp slt i32 %30, %31
  %33 = select i1 %32, i32* %29, i32* %28
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = load i32, i32* %27, align 4, !tbaa !5
  %36 = icmp slt i32 %34, %35
  %37 = select i1 %36, i32* %33, i32* %27
  br label %104

38:                                               ; preds = %2
  %39 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %39, i32* %4, align 16, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %0, i64 1
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %41, i32* %42, align 4, !tbaa !5
  %43 = getelementptr inbounds i32, i32* %0, i64 2
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 %44, i32* %45, align 8, !tbaa !5
  %46 = getelementptr inbounds i32, i32* %0, i64 3
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 %47, i32* %48, align 4, !tbaa !5
  %49 = icmp sgt i32 %1, 4
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = zext i32 %1 to i64
  %52 = getelementptr i32, i32* %4, i64 3
  %53 = load i32, i32* %52, align 4
  br label %79

54:                                               ; preds = %79, %38
  %55 = add nsw i32 %1, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %4, i64 %56
  %58 = add nsw i32 %1, -2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %4, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !5
  %62 = load i32, i32* %57, align 4, !tbaa !5
  %63 = icmp slt i32 %61, %62
  %64 = select i1 %63, i32* %60, i32* %57
  %65 = add nsw i32 %1, -4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %4, i64 %66
  %68 = add nsw i32 %1, -3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %4, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = load i32, i32* %67, align 4, !tbaa !5
  %73 = icmp slt i32 %71, %72
  %74 = select i1 %73, i32* %70, i32* %67
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %76 = load i32, i32* %64, align 4, !tbaa !5
  %77 = icmp slt i32 %75, %76
  %78 = select i1 %77, i32* %74, i32* %64
  br label %104

79:                                               ; preds = %50, %79
  %80 = phi i32 [ %53, %50 ], [ %100, %79 ]
  %81 = phi i64 [ 4, %50 ], [ %102, %79 ]
  %82 = getelementptr inbounds i32, i32* %0, i64 %81
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = add nsw i64 %81, -2
  %85 = getelementptr inbounds i32, i32* %4, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !5
  %87 = icmp slt i32 %86, %80
  %88 = add nsw i64 %81, -3
  %89 = getelementptr inbounds i32, i32* %4, i64 %88
  %90 = add nsw i64 %81, -4
  %91 = getelementptr inbounds i32, i32* %4, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %89, align 4
  %94 = icmp slt i32 %92, %93
  %95 = select i1 %94, i32 %92, i32 %93
  %96 = load i32, i32* %85, align 4
  %97 = select i1 %87, i32 %96, i32 %80
  %98 = icmp slt i32 %95, %97
  %99 = select i1 %98, i32 %95, i32 %97
  %100 = add nsw i32 %99, %83
  %101 = getelementptr inbounds i32, i32* %4, i64 %81
  store i32 %100, i32* %101, align 4, !tbaa !5
  %102 = add nuw nsw i64 %81, 1
  %103 = icmp eq i64 %102, %51
  br i1 %103, label %54, label %79, !llvm.loop !9

104:                                              ; preds = %2, %54, %22, %11, %5
  %105 = phi i32* [ %10, %5 ], [ %21, %11 ], [ %37, %22 ], [ %78, %54 ], [ %0, %2 ]
  %106 = load i32, i32* %105, align 4, !tbaa !5
  ret i32 %106
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
