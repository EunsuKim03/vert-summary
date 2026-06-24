; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load i32, i32* %0, align 4, !tbaa !5
  br label %101

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  %8 = tail call i8* @llvm.stacksave()
  %9 = alloca i32, i64 %7, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)
  %12 = alloca i32, i64 %7, align 16
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %13, i8 0, i64 %11, i1 false)
  %14 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %14, i32* %12, align 16, !tbaa !5
  store i32 %14, i32* %9, align 16, !tbaa !5
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %75

16:                                               ; preds = %6, %30
  %17 = phi i64 [ %31, %30 ], [ 1, %6 ]
  %18 = phi i32 [ %58, %30 ], [ 0, %6 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %17
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, i32* %12, i64 %17
  %22 = getelementptr inbounds i32, i32* %9, i64 %17
  br label %33

23:                                               ; preds = %30
  %24 = icmp sgt i32 %1, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %23
  %26 = and i64 %7, 1
  %27 = icmp eq i32 %1, 1
  br i1 %27, label %61, label %28

28:                                               ; preds = %25
  %29 = and i64 %7, 4294967294
  br label %77

30:                                               ; preds = %57
  %31 = add nuw nsw i64 %17, 1
  %32 = icmp eq i64 %31, %7
  br i1 %32, label %23, label %16, !llvm.loop !9

33:                                               ; preds = %16, %57
  %34 = phi i64 [ 0, %16 ], [ %59, %57 ]
  %35 = phi i32 [ %18, %16 ], [ %58, %57 ]
  %36 = getelementptr inbounds i32, i32* %0, i64 %34
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = icmp sgt i32 %37, %20
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = getelementptr inbounds i32, i32* %12, i64 %34
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = add nsw i32 %41, %20
  %43 = load i32, i32* %22, align 4, !tbaa !5
  %44 = icmp slt i32 %43, %42
  %45 = select i1 %44, i32 %42, i32 %43
  store i32 %45, i32* %22, align 4, !tbaa !5
  br label %57

46:                                               ; preds = %33
  %47 = icmp slt i32 %37, %20
  %48 = icmp eq i32 %35, 1
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = getelementptr inbounds i32, i32* %9, i64 %34
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = add nsw i32 %52, %20
  %54 = load i32, i32* %21, align 4, !tbaa !5
  %55 = icmp slt i32 %54, %53
  %56 = select i1 %55, i32 %53, i32 %54
  store i32 %56, i32* %21, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %39, %50, %46
  %58 = phi i32 [ 1, %39 ], [ 1, %50 ], [ %35, %46 ]
  %59 = add nuw nsw i64 %34, 1
  %60 = icmp eq i64 %59, %17
  br i1 %60, label %30, label %33, !llvm.loop !11

61:                                               ; preds = %77, %25
  %62 = phi i32 [ undef, %25 ], [ %97, %77 ]
  %63 = phi i64 [ 0, %25 ], [ %98, %77 ]
  %64 = phi i32 [ -2147483648, %25 ], [ %97, %77 ]
  %65 = icmp eq i64 %26, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds i32, i32* %12, i64 %63
  %68 = load i32, i32* %67, align 4, !tbaa !5
  %69 = icmp slt i32 %64, %68
  %70 = select i1 %69, i32 %68, i32 %64
  %71 = getelementptr inbounds i32, i32* %9, i64 %63
  %72 = load i32, i32* %71, align 4, !tbaa !5
  %73 = icmp slt i32 %70, %72
  %74 = select i1 %73, i32 %72, i32 %70
  br label %75

75:                                               ; preds = %66, %61, %6, %23
  %76 = phi i32 [ -2147483648, %23 ], [ -2147483648, %6 ], [ %62, %61 ], [ %74, %66 ]
  tail call void @llvm.stackrestore(i8* %8)
  br label %101

77:                                               ; preds = %77, %28
  %78 = phi i64 [ 0, %28 ], [ %98, %77 ]
  %79 = phi i32 [ -2147483648, %28 ], [ %97, %77 ]
  %80 = phi i64 [ 0, %28 ], [ %99, %77 ]
  %81 = getelementptr inbounds i32, i32* %12, i64 %78
  %82 = load i32, i32* %81, align 8, !tbaa !5
  %83 = icmp slt i32 %79, %82
  %84 = select i1 %83, i32 %82, i32 %79
  %85 = getelementptr inbounds i32, i32* %9, i64 %78
  %86 = load i32, i32* %85, align 8, !tbaa !5
  %87 = icmp slt i32 %84, %86
  %88 = select i1 %87, i32 %86, i32 %84
  %89 = or i64 %78, 1
  %90 = getelementptr inbounds i32, i32* %12, i64 %89
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = icmp slt i32 %88, %91
  %93 = select i1 %92, i32 %91, i32 %88
  %94 = getelementptr inbounds i32, i32* %9, i64 %89
  %95 = load i32, i32* %94, align 4, !tbaa !5
  %96 = icmp slt i32 %93, %95
  %97 = select i1 %96, i32 %95, i32 %93
  %98 = add nuw nsw i64 %78, 2
  %99 = add i64 %80, 2
  %100 = icmp eq i64 %99, %29
  br i1 %100, label %61, label %77, !llvm.loop !12

101:                                              ; preds = %75, %4
  %102 = phi i32 [ %5, %4 ], [ %76, %75 ]
  ret i32 %102
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_reprocessed.cpp() #6 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
