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
  br label %68

22:                                               ; preds = %2
  %23 = zext i32 %1 to i64
  %24 = tail call i8* @llvm.stacksave()
  %25 = alloca i32, i64 %23, align 16
  %26 = bitcast i32* %0 to <4 x i32>*
  %27 = load <4 x i32>, <4 x i32>* %26, align 4, !tbaa !5
  %28 = bitcast i32* %25 to <4 x i32>*
  store <4 x i32> %27, <4 x i32>* %28, align 16, !tbaa !5
  %29 = extractelement <4 x i32> %27, i64 3
  br label %47

30:                                               ; preds = %47
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = getelementptr inbounds i32, i32* %32, i64 -4
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %33, align 4
  %37 = icmp slt i32 %35, %36
  %38 = getelementptr inbounds i32, i32* %34, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = select i1 %37, i32 %35, i32 %36
  %41 = icmp slt i32 %39, %40
  %42 = getelementptr inbounds i32, i32* %38, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = select i1 %41, i32 %39, i32 %40
  %45 = icmp slt i32 %43, %44
  %46 = select i1 %45, i32 %43, i32 %44
  call void @llvm.stackrestore(i8* %24)
  br label %68

47:                                               ; preds = %22, %47
  %48 = phi i32 [ %29, %22 ], [ %65, %47 ]
  %49 = phi i64 [ 4, %22 ], [ %66, %47 ]
  %50 = getelementptr inbounds i32, i32* %0, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = getelementptr inbounds i32, i32* %25, i64 %49
  %53 = getelementptr inbounds i32, i32* %52, i64 -4
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %53, align 4
  %57 = icmp slt i32 %55, %56
  %58 = getelementptr inbounds i32, i32* %54, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = select i1 %57, i32 %55, i32 %56
  %61 = icmp slt i32 %59, %60
  %62 = select i1 %61, i32 %59, i32 %60
  %63 = icmp slt i32 %48, %62
  %64 = select i1 %63, i32 %48, i32 %62
  %65 = add nsw i32 %64, %51
  store i32 %65, i32* %52, align 4, !tbaa !5
  %66 = add nuw nsw i64 %49, 1
  %67 = icmp eq i64 %66, %23
  br i1 %67, label %30, label %47, !llvm.loop !11

68:                                               ; preds = %30, %19
  %69 = phi i32 [ %21, %19 ], [ %46, %30 ]
  ret i32 %69
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
