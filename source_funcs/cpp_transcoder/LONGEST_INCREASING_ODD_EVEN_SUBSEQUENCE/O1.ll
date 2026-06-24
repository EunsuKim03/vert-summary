; ModuleID = 'benchmark/cpp_transcoder/LONGEST_INCREASING_ODD_EVEN_SUBSEQUENCE/LONGEST_INCREASING_ODD_EVEN_SUBSEQUENCE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LONGEST_INCREASING_ODD_EVEN_SUBSEQUENCE/LONGEST_INCREASING_ODD_EVEN_SUBSEQUENCE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_INCREASING_ODD_EVEN_SUBSEQUENCE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  br label %12

8:                                                ; preds = %12, %2
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %22

10:                                               ; preds = %8
  %11 = zext i32 %1 to i64
  br label %17

12:                                               ; preds = %6, %12
  %13 = phi i64 [ 0, %6 ], [ %15, %12 ]
  %14 = getelementptr inbounds i32, i32* %4, i64 %13
  store i32 1, i32* %14, align 4, !tbaa !5
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %8, label %12, !llvm.loop !9

17:                                               ; preds = %10, %26
  %18 = phi i64 [ 1, %10 ], [ %27, %26 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, i32* %4, i64 %18
  br label %29

22:                                               ; preds = %26, %8
  %23 = icmp sgt i32 %1, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %22
  %25 = zext i32 %1 to i64
  br label %50

26:                                               ; preds = %45
  %27 = add nuw nsw i64 %18, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %22, label %17, !llvm.loop !12

29:                                               ; preds = %17, %45
  %30 = phi i64 [ 0, %17 ], [ %46, %45 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = icmp sgt i32 %20, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = add nsw i32 %32, %20
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %21, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %4, i64 %30
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = add nsw i32 %41, 1
  store i32 %44, i32* %21, align 4, !tbaa !5
  br label %45

45:                                               ; preds = %29, %34, %38, %43
  %46 = add nuw nsw i64 %30, 1
  %47 = icmp eq i64 %46, %18
  br i1 %47, label %26, label %29, !llvm.loop !13

48:                                               ; preds = %50, %22
  %49 = phi i32 [ 0, %22 ], [ %56, %50 ]
  ret i32 %49

50:                                               ; preds = %24, %50
  %51 = phi i64 [ 0, %24 ], [ %57, %50 ]
  %52 = phi i32 [ 0, %24 ], [ %56, %50 ]
  %53 = getelementptr inbounds i32, i32* %4, i64 %51
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = icmp slt i32 %52, %54
  %56 = select i1 %55, i32 %54, i32 %52
  %57 = add nuw nsw i64 %51, 1
  %58 = icmp eq i64 %57, %25
  br i1 %58, label %48, label %50, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_INCREASING_ODD_EVEN_SUBSEQUENCE_processed.cpp() #4 section ".text.startup" {
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
