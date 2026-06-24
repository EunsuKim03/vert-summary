; ModuleID = 'llvm/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp slt i32 %1, 5
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = icmp ult i32 %1, 2
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i32* [ %17, %10 ], [ %9, %8 ]
  %12 = phi i32* [ %16, %10 ], [ %0, %8 ]
  %13 = load i32, i32* %11, align 4, !tbaa !5
  %14 = load i32, i32* %12, align 4, !tbaa !5
  %15 = icmp slt i32 %13, %14
  %16 = select i1 %15, i32* %11, i32* %12
  %17 = getelementptr inbounds i32, i32* %11, i64 1
  %18 = icmp eq i32* %17, %6
  br i1 %18, label %19, label %10, !llvm.loop !9

19:                                               ; preds = %10, %4
  %20 = phi i32* [ %0, %4 ], [ %16, %10 ]
  %21 = load i32, i32* %20, align 4, !tbaa !5
  br label %74

22:                                               ; preds = %2
  %23 = zext i32 %1 to i64
  %24 = call i8* @llvm.stacksave()
  %25 = alloca i32, i64 %23, align 16
  %26 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %26, i32* %25, align 16, !tbaa !5
  %27 = getelementptr inbounds i32, i32* %0, i64 1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %28, i32* %29, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, i32* %0, i64 2
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %31, i32* %32, align 8, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %0, i64 3
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, i32* %25, i64 3
  store i32 %34, i32* %35, align 4, !tbaa !5
  %36 = zext i32 %1 to i64
  br label %53

37:                                               ; preds = %69
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds i32, i32* %25, i64 %38
  %40 = getelementptr inbounds i32, i32* %39, i64 -4
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  br label %42

42:                                               ; preds = %42, %37
  %43 = phi i32* [ %49, %42 ], [ %41, %37 ]
  %44 = phi i32* [ %48, %42 ], [ %40, %37 ]
  %45 = load i32, i32* %43, align 4, !tbaa !5
  %46 = load i32, i32* %44, align 4, !tbaa !5
  %47 = icmp slt i32 %45, %46
  %48 = select i1 %47, i32* %43, i32* %44
  %49 = getelementptr inbounds i32, i32* %43, i64 1
  %50 = icmp eq i32* %49, %39
  br i1 %50, label %51, label %42, !llvm.loop !9

51:                                               ; preds = %42
  %52 = load i32, i32* %48, align 4, !tbaa !5
  call void @llvm.stackrestore(i8* %24)
  br label %74

53:                                               ; preds = %22, %69
  %54 = phi i64 [ 4, %22 ], [ %72, %69 ]
  %55 = getelementptr inbounds i32, i32* %0, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = getelementptr inbounds i32, i32* %25, i64 %54
  %58 = getelementptr inbounds i32, i32* %57, i64 -4
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  br label %60

60:                                               ; preds = %60, %53
  %61 = phi i32* [ %67, %60 ], [ %59, %53 ]
  %62 = phi i32* [ %66, %60 ], [ %58, %53 ]
  %63 = load i32, i32* %61, align 4, !tbaa !5
  %64 = load i32, i32* %62, align 4, !tbaa !5
  %65 = icmp slt i32 %63, %64
  %66 = select i1 %65, i32* %61, i32* %62
  %67 = getelementptr inbounds i32, i32* %61, i64 1
  %68 = icmp eq i32* %67, %57
  br i1 %68, label %69, label %60, !llvm.loop !9

69:                                               ; preds = %60
  %70 = load i32, i32* %66, align 4, !tbaa !5
  %71 = add nsw i32 %70, %56
  store i32 %71, i32* %57, align 4, !tbaa !5
  %72 = add nuw nsw i64 %54, 1
  %73 = icmp eq i64 %72, %36
  br i1 %73, label %37, label %53, !llvm.loop !12

74:                                               ; preds = %51, %19
  %75 = phi i32 [ %21, %19 ], [ %52, %51 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
