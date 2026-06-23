; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = zext i32 %1 to i64
  %5 = alloca i32, i64 %4, align 16
  %6 = add nsw i32 %1, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = getelementptr inbounds i32, i32* %5, i64 %7
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = icmp sgt i32 %1, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = add i32 %1, -2
  %14 = sext i32 %13 to i64
  br label %17

15:                                               ; preds = %42, %3
  %16 = load i32, i32* %5, align 16, !tbaa !5
  ret i32 %16

17:                                               ; preds = %12, %42
  %18 = phi i64 [ %14, %12 ], [ %45, %42 ]
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  %21 = add i32 %20, %2
  %22 = icmp slt i32 %21, %1
  %23 = getelementptr inbounds i32, i32* %0, i64 %18
  br i1 %22, label %31, label %24

24:                                               ; preds = %17
  %25 = add nsw i64 %18, 1
  %26 = getelementptr inbounds i32, i32* %5, i64 %25
  %27 = load i32, i32* %23, align 4
  %28 = load i32, i32* %26, align 4
  %29 = icmp slt i32 %27, %28
  %30 = select i1 %29, i32 %28, i32 %27
  br label %42

31:                                               ; preds = %17
  %32 = load i32, i32* %23, align 4, !tbaa !5
  %33 = sext i32 %21 to i64
  %34 = getelementptr inbounds i32, i32* %5, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = add nsw i32 %35, %32
  %37 = add nsw i64 %18, 1
  %38 = getelementptr inbounds i32, i32* %5, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = icmp slt i32 %36, %39
  %41 = select i1 %40, i32 %39, i32 %36
  br label %42

42:                                               ; preds = %24, %31
  %43 = phi i32 [ %30, %24 ], [ %41, %31 ]
  %44 = getelementptr inbounds i32, i32* %5, i64 %18
  store i32 %43, i32* %44, align 4, !tbaa !5
  %45 = add nsw i64 %18, -1
  %46 = icmp sgt i64 %18, 0
  br i1 %46, label %17, label %15, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
