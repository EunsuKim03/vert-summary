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
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %7, i32* %4, align 16, !tbaa !5
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load i32, i32* %0, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, i32* %0, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = add nsw i32 %13, %11
  %15 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %14, i32* %15, align 4, !tbaa !5
  br label %16

16:                                               ; preds = %10, %8
  %17 = icmp sgt i32 %1, 2
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds i32, i32* %4, i64 1
  %20 = getelementptr inbounds i32, i32* %0, i64 1
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, i32* %0, i64 2
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = load i32, i32* %0, align 4, !tbaa !5
  %25 = icmp slt i32 %21, %24
  %26 = load i32, i32* %19, align 4
  %27 = select i1 %25, i32 %24, i32 %21
  %28 = add nsw i32 %27, %23
  %29 = icmp slt i32 %26, %28
  %30 = select i1 %29, i32 %28, i32 %26
  %31 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 %30, i32* %31, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %18, %16
  %33 = icmp sgt i32 %1, 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = zext i32 %1 to i64
  %36 = getelementptr i32, i32* %4, i64 2
  %37 = load i32, i32* %36, align 8
  br label %43

38:                                               ; preds = %43, %32
  %39 = add nsw i32 %1, -1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %4, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  ret i32 %42

43:                                               ; preds = %34, %43
  %44 = phi i32 [ %37, %34 ], [ %63, %43 ]
  %45 = phi i64 [ 3, %34 ], [ %65, %43 ]
  %46 = add nsw i64 %45, -1
  %47 = add nsw i64 %45, -2
  %48 = getelementptr inbounds i32, i32* %4, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %0, i64 %45
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, %49
  %53 = icmp slt i32 %44, %52
  %54 = getelementptr inbounds i32, i32* %0, i64 %46
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %56 = add nsw i32 %55, %51
  %57 = add nsw i64 %45, -3
  %58 = getelementptr inbounds i32, i32* %4, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = add nsw i32 %56, %59
  %61 = select i1 %53, i32 %52, i32 %44
  %62 = icmp slt i32 %61, %60
  %63 = select i1 %62, i32 %60, i32 %61
  %64 = getelementptr inbounds i32, i32* %4, i64 %45
  store i32 %63, i32* %64, align 4, !tbaa !5
  %65 = add nuw nsw i64 %45, 1
  %66 = icmp eq i64 %65, %35
  br i1 %66, label %38, label %43, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_processed.cpp() #4 section ".text.startup" {
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
