; ModuleID = 'benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE/DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE/DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 4)
  %5 = extractvalue { i64, i1 } %4, 1
  %6 = extractvalue { i64, i1 } %4, 0
  %7 = select i1 %5, i64 -1, i64 %6
  %8 = call noalias noundef nonnull i8* @_Znam(i64 noundef %7) #7
  %9 = bitcast i8* %8 to i32*
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = zext i32 %1 to i64
  br label %17

13:                                               ; preds = %17, %2
  %14 = icmp sgt i32 %1, 1
  br i1 %14, label %15, label %45

15:                                               ; preds = %13
  %16 = zext i32 %1 to i64
  br label %22

17:                                               ; preds = %11, %17
  %18 = phi i64 [ 0, %11 ], [ %20, %17 ]
  %19 = getelementptr inbounds i32, i32* %9, i64 %18
  store i32 1, i32* %19, align 4, !tbaa !5
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp eq i64 %20, %12
  br i1 %21, label %13, label %17, !llvm.loop !9

22:                                               ; preds = %15, %42
  %23 = phi i64 [ 1, %15 ], [ %43, %42 ]
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, i32* %9, i64 %23
  br label %27

27:                                               ; preds = %22, %39
  %28 = phi i64 [ 0, %22 ], [ %40, %39 ]
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp sgt i32 %25, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %26, align 4, !tbaa !5
  %34 = getelementptr inbounds i32, i32* %9, i64 %28
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = add nsw i32 %35, 1
  store i32 %38, i32* %26, align 4, !tbaa !5
  br label %39

39:                                               ; preds = %27, %32, %37
  %40 = add nuw nsw i64 %28, 1
  %41 = icmp eq i64 %40, %23
  br i1 %41, label %42, label %27, !llvm.loop !12

42:                                               ; preds = %39
  %43 = add nuw nsw i64 %23, 1
  %44 = icmp eq i64 %43, %16
  br i1 %44, label %45, label %22, !llvm.loop !13

45:                                               ; preds = %42, %13
  %46 = call noalias noundef nonnull i8* @_Znam(i64 noundef %7) #7
  %47 = bitcast i8* %46 to i32*
  %48 = icmp sgt i32 %1, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = zext i32 %1 to i64
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ 0, %49 ], [ %54, %51 ]
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  store i32 1, i32* %53, align 4, !tbaa !5
  %54 = add nuw nsw i64 %52, 1
  %55 = icmp eq i64 %54, %50
  br i1 %55, label %56, label %51, !llvm.loop !14

56:                                               ; preds = %51, %45
  %57 = icmp sgt i32 %1, 1
  br i1 %57, label %58, label %90

58:                                               ; preds = %56
  %59 = add i32 %1, -2
  %60 = add nsw i32 %1, -1
  %61 = sext i32 %1 to i64
  %62 = add nsw i64 %61, -1
  %63 = sext i32 %59 to i64
  %64 = sext i32 %60 to i64
  br label %65

65:                                               ; preds = %58, %87
  %66 = phi i64 [ %63, %58 ], [ %88, %87 ]
  %67 = icmp slt i64 %66, %64
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = getelementptr inbounds i32, i32* %0, i64 %66
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = getelementptr inbounds i32, i32* %47, i64 %66
  br label %72

72:                                               ; preds = %68, %84
  %73 = phi i64 [ %62, %68 ], [ %85, %84 ]
  %74 = getelementptr inbounds i32, i32* %0, i64 %73
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %76 = icmp sgt i32 %70, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* %71, align 4, !tbaa !5
  %79 = getelementptr inbounds i32, i32* %47, i64 %73
  %80 = load i32, i32* %79, align 4, !tbaa !5
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = add nsw i32 %80, 1
  store i32 %83, i32* %71, align 4, !tbaa !5
  br label %84

84:                                               ; preds = %72, %77, %82
  %85 = add nsw i64 %73, -1
  %86 = icmp sgt i64 %85, %66
  br i1 %86, label %72, label %87, !llvm.loop !15

87:                                               ; preds = %84, %65
  %88 = add nsw i64 %66, -1
  %89 = icmp sgt i64 %66, 0
  br i1 %89, label %65, label %90, !llvm.loop !16

90:                                               ; preds = %87, %56
  %91 = load i32, i32* %9, align 4, !tbaa !5
  %92 = load i32, i32* %47, align 4, !tbaa !5
  %93 = add i32 %91, -1
  %94 = add i32 %93, %92
  %95 = icmp sgt i32 %1, 1
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = zext i32 %1 to i64
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ 1, %96 ], [ %109, %98 ]
  %100 = phi i32 [ %94, %96 ], [ %108, %98 ]
  %101 = getelementptr inbounds i32, i32* %9, i64 %99
  %102 = load i32, i32* %101, align 4, !tbaa !5
  %103 = getelementptr inbounds i32, i32* %47, i64 %99
  %104 = load i32, i32* %103, align 4, !tbaa !5
  %105 = add i32 %102, -1
  %106 = add i32 %105, %104
  %107 = icmp sgt i32 %106, %100
  %108 = select i1 %107, i32 %106, i32 %100
  %109 = add nuw nsw i64 %99, 1
  %110 = icmp eq i64 %109, %97
  br i1 %110, label %111, label %98, !llvm.loop !17

111:                                              ; preds = %98, %90
  %112 = phi i32 [ %94, %90 ], [ %108, %98 ]
  ret i32 %112
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE_processed.cpp() #6 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
