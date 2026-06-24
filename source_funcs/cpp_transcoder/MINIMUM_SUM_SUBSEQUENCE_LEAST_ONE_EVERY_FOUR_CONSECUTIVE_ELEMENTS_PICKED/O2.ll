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
    i32 1, label %130
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
  br label %130

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
  br label %130

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
  br label %130

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
  br i1 %49, label %50, label %74

50:                                               ; preds = %38
  %51 = and i64 %3, 1
  %52 = icmp eq i32 %1, 5
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = add nsw i64 %3, -4
  %55 = and i64 %54, -2
  br label %99

56:                                               ; preds = %99, %50
  %57 = phi i32 [ %41, %50 ], [ %102, %99 ]
  %58 = phi i32 [ %39, %50 ], [ %103, %99 ]
  %59 = phi i32 [ %47, %50 ], [ %125, %99 ]
  %60 = phi i32 [ %44, %50 ], [ %114, %99 ]
  %61 = phi i64 [ 4, %50 ], [ %127, %99 ]
  %62 = icmp eq i64 %51, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds i32, i32* %0, i64 %61
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = icmp slt i32 %60, %59
  %67 = icmp slt i32 %58, %57
  %68 = select i1 %67, i32 %58, i32 %57
  %69 = select i1 %66, i32 %60, i32 %59
  %70 = icmp slt i32 %68, %69
  %71 = select i1 %70, i32 %68, i32 %69
  %72 = add nsw i32 %71, %65
  %73 = getelementptr inbounds i32, i32* %4, i64 %61
  store i32 %72, i32* %73, align 4, !tbaa !5
  br label %74

74:                                               ; preds = %63, %56, %38
  %75 = add nsw i32 %1, -1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %4, i64 %76
  %78 = add nsw i32 %1, -2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %4, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = load i32, i32* %77, align 4, !tbaa !5
  %83 = icmp slt i32 %81, %82
  %84 = select i1 %83, i32* %80, i32* %77
  %85 = add nsw i32 %1, -4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %4, i64 %86
  %88 = add nsw i32 %1, -3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %4, i64 %89
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = load i32, i32* %87, align 4, !tbaa !5
  %93 = icmp slt i32 %91, %92
  %94 = select i1 %93, i32* %90, i32* %87
  %95 = load i32, i32* %94, align 4, !tbaa !5
  %96 = load i32, i32* %84, align 4, !tbaa !5
  %97 = icmp slt i32 %95, %96
  %98 = select i1 %97, i32* %94, i32* %84
  br label %130

99:                                               ; preds = %99, %53
  %100 = phi i32 [ %41, %53 ], [ %102, %99 ]
  %101 = phi i32 [ %39, %53 ], [ %103, %99 ]
  %102 = phi i32 [ %47, %53 ], [ %125, %99 ]
  %103 = phi i32 [ %44, %53 ], [ %114, %99 ]
  %104 = phi i64 [ 4, %53 ], [ %127, %99 ]
  %105 = phi i64 [ 0, %53 ], [ %128, %99 ]
  %106 = getelementptr inbounds i32, i32* %0, i64 %104
  %107 = load i32, i32* %106, align 4, !tbaa !5
  %108 = icmp slt i32 %103, %102
  %109 = icmp slt i32 %101, %100
  %110 = select i1 %109, i32 %101, i32 %100
  %111 = select i1 %108, i32 %103, i32 %102
  %112 = icmp slt i32 %110, %111
  %113 = select i1 %112, i32 %110, i32 %111
  %114 = add nsw i32 %113, %107
  %115 = getelementptr inbounds i32, i32* %4, i64 %104
  store i32 %114, i32* %115, align 8, !tbaa !5
  %116 = or i64 %104, 1
  %117 = getelementptr inbounds i32, i32* %0, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !5
  %119 = icmp slt i32 %102, %114
  %120 = icmp slt i32 %100, %103
  %121 = select i1 %120, i32 %100, i32 %103
  %122 = select i1 %119, i32 %102, i32 %114
  %123 = icmp slt i32 %121, %122
  %124 = select i1 %123, i32 %121, i32 %122
  %125 = add nsw i32 %124, %118
  %126 = getelementptr inbounds i32, i32* %4, i64 %116
  store i32 %125, i32* %126, align 4, !tbaa !5
  %127 = add nuw nsw i64 %104, 2
  %128 = add i64 %105, 2
  %129 = icmp eq i64 %128, %55
  br i1 %129, label %56, label %99, !llvm.loop !9

130:                                              ; preds = %2, %74, %22, %11, %5
  %131 = phi i32* [ %10, %5 ], [ %21, %11 ], [ %37, %22 ], [ %98, %74 ], [ %0, %2 ]
  %132 = load i32, i32* %131, align 4, !tbaa !5
  ret i32 %132
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
