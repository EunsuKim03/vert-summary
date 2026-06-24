; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %67

6:                                                ; preds = %2
  %7 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %7, i32* %4, align 16, !tbaa !5
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %67, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i32, i32* %0, i64 1
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = add nsw i32 %11, %7
  %13 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %12, i32* %13, align 4, !tbaa !5
  %14 = icmp ugt i32 %1, 2
  br i1 %14, label %15, label %67

15:                                               ; preds = %9
  %16 = getelementptr inbounds i32, i32* %0, i64 2
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = icmp slt i32 %11, %7
  %19 = select i1 %18, i32 %7, i32 %11
  %20 = add nsw i32 %19, %17
  %21 = icmp slt i32 %12, %20
  %22 = select i1 %21, i32 %20, i32 %12
  %23 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 %22, i32* %23, align 8, !tbaa !5
  %24 = icmp eq i32 %1, 3
  br i1 %24, label %67, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds i32, i32* %0, i64 2
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = getelementptr inbounds i32, i32* %0, i64 3
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = add nsw i32 %29, %12
  %31 = icmp slt i32 %22, %30
  %32 = add nsw i32 %27, %29
  %33 = add nsw i32 %32, %7
  %34 = select i1 %31, i32 %30, i32 %22
  %35 = icmp slt i32 %34, %33
  %36 = select i1 %35, i32 %33, i32 %34
  %37 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 %36, i32* %37, align 4, !tbaa !5
  %38 = icmp eq i32 %1, 4
  br i1 %38, label %67, label %39, !llvm.loop !9

39:                                               ; preds = %25
  %40 = and i64 %3, 1
  %41 = icmp eq i32 %1, 5
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = add nsw i64 %3, -4
  %44 = and i64 %43, -2
  br label %72

45:                                               ; preds = %72
  %46 = add nsw i64 %73, -1
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i64 [ 4, %39 ], [ %106, %45 ]
  %49 = phi i32 [ %36, %39 ], [ %104, %45 ]
  %50 = phi i32 [ %29, %39 ], [ %97, %45 ]
  %51 = phi i64 [ 1, %39 ], [ %46, %45 ]
  %52 = phi i32 [ %22, %39 ], [ %90, %45 ]
  %53 = icmp eq i64 %40, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds i32, i32* %4, i64 %51
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = getelementptr inbounds i32, i32* %0, i64 %48
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = add nsw i32 %58, %52
  %60 = icmp slt i32 %49, %59
  %61 = add nsw i32 %50, %58
  %62 = add nsw i32 %61, %56
  %63 = select i1 %60, i32 %59, i32 %49
  %64 = icmp slt i32 %63, %62
  %65 = select i1 %64, i32 %62, i32 %63
  %66 = getelementptr inbounds i32, i32* %4, i64 %48
  store i32 %65, i32* %66, align 4, !tbaa !5
  br label %67

67:                                               ; preds = %54, %47, %25, %9, %6, %2, %15
  %68 = add nsw i32 %1, -1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %4, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  ret i32 %71

72:                                               ; preds = %72, %42
  %73 = phi i64 [ 4, %42 ], [ %106, %72 ]
  %74 = phi i32 [ %36, %42 ], [ %104, %72 ]
  %75 = phi i32 [ %29, %42 ], [ %97, %72 ]
  %76 = phi i64 [ 3, %42 ], [ %92, %72 ]
  %77 = phi i32 [ %22, %42 ], [ %90, %72 ]
  %78 = phi i64 [ 0, %42 ], [ %107, %72 ]
  %79 = add nsw i64 %76, -2
  %80 = getelementptr inbounds i32, i32* %4, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = getelementptr inbounds i32, i32* %0, i64 %73
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = add nsw i32 %83, %77
  %85 = icmp slt i32 %74, %84
  %86 = add nsw i32 %75, %83
  %87 = add nsw i32 %86, %81
  %88 = select i1 %85, i32 %84, i32 %74
  %89 = icmp slt i32 %88, %87
  %90 = select i1 %89, i32 %87, i32 %88
  %91 = getelementptr inbounds i32, i32* %4, i64 %73
  store i32 %90, i32* %91, align 8, !tbaa !5
  %92 = or i64 %73, 1
  %93 = add nsw i64 %73, -2
  %94 = getelementptr inbounds i32, i32* %4, i64 %93
  %95 = load i32, i32* %94, align 8, !tbaa !5
  %96 = getelementptr inbounds i32, i32* %0, i64 %92
  %97 = load i32, i32* %96, align 4, !tbaa !5
  %98 = add nsw i32 %97, %74
  %99 = icmp slt i32 %90, %98
  %100 = add nsw i32 %83, %97
  %101 = add nsw i32 %100, %95
  %102 = select i1 %99, i32 %98, i32 %90
  %103 = icmp slt i32 %102, %101
  %104 = select i1 %103, i32 %101, i32 %102
  %105 = getelementptr inbounds i32, i32* %4, i64 %92
  store i32 %104, i32* %105, align 4, !tbaa !5
  %106 = add nuw nsw i64 %73, 2
  %107 = add i64 %78, 2
  %108 = icmp eq i64 %107, %44
  br i1 %108, label %45, label %72, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
