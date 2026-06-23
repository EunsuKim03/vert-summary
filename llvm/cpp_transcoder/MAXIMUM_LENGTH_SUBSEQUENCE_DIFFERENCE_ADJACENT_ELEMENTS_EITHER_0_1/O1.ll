; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1/MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1/MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1_processed.cpp, i8* null }]

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
  br i1 %23, label %24, label %46

24:                                               ; preds = %22
  %25 = zext i32 %1 to i64
  br label %48

26:                                               ; preds = %43
  %27 = add nuw nsw i64 %18, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %22, label %17, !llvm.loop !12

29:                                               ; preds = %17, %43
  %30 = phi i64 [ 0, %17 ], [ %44, %43 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = sub nsw i32 %20, %32
  %34 = call i32 @llvm.abs.i32(i32 %33, i1 true)
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %21, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, i32* %4, i64 %30
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = add nsw i32 %39, 1
  store i32 %42, i32* %21, align 4, !tbaa !5
  br label %43

43:                                               ; preds = %29, %36, %41
  %44 = add nuw nsw i64 %30, 1
  %45 = icmp eq i64 %44, %18
  br i1 %45, label %26, label %29, !llvm.loop !13

46:                                               ; preds = %48, %22
  %47 = phi i32 [ 0, %22 ], [ %54, %48 ]
  ret i32 %47

48:                                               ; preds = %24, %48
  %49 = phi i64 [ 0, %24 ], [ %55, %48 ]
  %50 = phi i32 [ 0, %24 ], [ %54, %48 ]
  %51 = getelementptr inbounds i32, i32* %4, i64 %49
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = icmp slt i32 %50, %52
  %54 = select i1 %53, i32 %52, i32 %50
  %55 = add nuw nsw i64 %49, 1
  %56 = icmp eq i64 %55, %25
  br i1 %56, label %46, label %48, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
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
!14 = distinct !{!14, !10, !11}
