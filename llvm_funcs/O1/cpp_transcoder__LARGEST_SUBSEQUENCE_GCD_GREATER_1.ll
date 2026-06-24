; ModuleID = 'llvm/cpp_transcoder/LARGEST_SUBSEQUENCE_GCD_GREATER_1/LARGEST_SUBSEQUENCE_GCD_GREATER_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LARGEST_SUBSEQUENCE_GCD_GREATER_1/LARGEST_SUBSEQUENCE_GCD_GREATER_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LARGEST_SUBSEQUENCE_GCD_GREATER_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = icmp ult i32 %1, 2
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i32, i32* %0, i64 1
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i32* [ %15, %8 ], [ %7, %6 ]
  %10 = phi i32* [ %14, %8 ], [ %0, %6 ]
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = load i32, i32* %9, align 4, !tbaa !5
  %13 = icmp slt i32 %11, %12
  %14 = select i1 %13, i32* %9, i32* %10
  %15 = getelementptr inbounds i32, i32* %9, i64 1
  %16 = icmp eq i32* %15, %4
  br i1 %16, label %17, label %8, !llvm.loop !9

17:                                               ; preds = %8, %2
  %18 = phi i32* [ %0, %2 ], [ %14, %8 ]
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %1, 0
  %23 = zext i32 %1 to i64
  br label %24

24:                                               ; preds = %21, %29
  %25 = phi i32 [ 2, %21 ], [ %33, %29 ]
  %26 = phi i32 [ 0, %21 ], [ %32, %29 ]
  br i1 %22, label %35, label %29

27:                                               ; preds = %29, %17
  %28 = phi i32 [ 0, %17 ], [ %32, %29 ]
  ret i32 %28

29:                                               ; preds = %35, %24
  %30 = phi i32 [ 0, %24 ], [ %43, %35 ]
  %31 = icmp slt i32 %26, %30
  %32 = select i1 %31, i32 %30, i32 %26
  %33 = add nuw i32 %25, 1
  %34 = icmp eq i32 %25, %19
  br i1 %34, label %27, label %24, !llvm.loop !12

35:                                               ; preds = %24, %35
  %36 = phi i64 [ %44, %35 ], [ 0, %24 ]
  %37 = phi i32 [ %43, %35 ], [ 0, %24 ]
  %38 = getelementptr inbounds i32, i32* %0, i64 %36
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = srem i32 %39, %25
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = add nuw nsw i32 %37, %42
  %44 = add nuw nsw i64 %36, 1
  %45 = icmp eq i64 %44, %23
  br i1 %45, label %29, label %35, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LARGEST_SUBSEQUENCE_GCD_GREATER_1_reprocessed.cpp() #4 section ".text.startup" {
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
