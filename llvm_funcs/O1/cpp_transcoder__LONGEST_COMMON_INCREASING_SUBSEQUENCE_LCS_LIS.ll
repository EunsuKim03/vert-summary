; ModuleID = 'benchmark/cpp_transcoder/LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS/LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS/LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiiS_i(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = zext i32 %3 to i64
  %6 = alloca i32, i64 %5, align 16
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = bitcast i32* %6 to i8*
  %10 = zext i32 %3 to i64
  %11 = shl nuw nsw i64 %10, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %11, i1 false), !tbaa !5
  br label %12

12:                                               ; preds = %8, %4
  %13 = icmp sgt i32 %1, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = icmp sgt i32 %3, 0
  %16 = zext i32 %1 to i64
  %17 = zext i32 %3 to i64
  br label %18

18:                                               ; preds = %14, %27
  %19 = phi i64 [ 0, %14 ], [ %28, %27 ]
  br i1 %15, label %20, label %27

20:                                               ; preds = %18
  %21 = getelementptr inbounds i32, i32* %0, i64 %19
  %22 = load i32, i32* %21, align 4, !tbaa !5
  br label %30

23:                                               ; preds = %27, %12
  %24 = icmp sgt i32 %3, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %23
  %26 = zext i32 %3 to i64
  br label %55

27:                                               ; preds = %49, %18
  %28 = add nuw nsw i64 %19, 1
  %29 = icmp eq i64 %28, %16
  br i1 %29, label %23, label %18, !llvm.loop !9

30:                                               ; preds = %20, %49
  %31 = phi i64 [ 0, %20 ], [ %51, %49 ]
  %32 = phi i32 [ 0, %20 ], [ %50, %49 ]
  %33 = getelementptr inbounds i32, i32* %2, i64 %31
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = icmp eq i32 %22, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = getelementptr inbounds i32, i32* %6, i64 %31
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = add nsw i32 %32, 1
  store i32 %41, i32* %37, align 4, !tbaa !5
  br label %42

42:                                               ; preds = %36, %40, %30
  %43 = icmp sgt i32 %22, %34
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = getelementptr inbounds i32, i32* %6, i64 %31
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = icmp sgt i32 %46, %32
  %48 = select i1 %47, i32 %46, i32 %32
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %32, %42 ], [ %48, %44 ]
  %51 = add nuw nsw i64 %31, 1
  %52 = icmp eq i64 %51, %17
  br i1 %52, label %27, label %30, !llvm.loop !12

53:                                               ; preds = %55, %23
  %54 = phi i32 [ 0, %23 ], [ %61, %55 ]
  ret i32 %54

55:                                               ; preds = %25, %55
  %56 = phi i64 [ 0, %25 ], [ %62, %55 ]
  %57 = phi i32 [ 0, %25 ], [ %61, %55 ]
  %58 = getelementptr inbounds i32, i32* %6, i64 %56
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = icmp sgt i32 %59, %57
  %61 = select i1 %60, i32 %59, i32 %57
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, %26
  br i1 %63, label %53, label %55, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
