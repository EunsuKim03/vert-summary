; ModuleID = 'benchmark/cpp_transcoder/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = zext i32 %1 to i64
  %8 = zext i32 %1 to i64
  br label %16

9:                                                ; preds = %25, %16
  %10 = phi i32 [ %20, %16 ], [ %26, %25 ]
  %11 = add nuw nsw i64 %19, 1
  %12 = add nuw nsw i64 %18, 1
  %13 = icmp eq i64 %21, %7
  br i1 %13, label %14, label %16, !llvm.loop !5

14:                                               ; preds = %9, %3
  %15 = phi i32 [ 0, %3 ], [ %10, %9 ]
  ret i32 %15

16:                                               ; preds = %5, %9
  %17 = phi i64 [ 0, %5 ], [ %21, %9 ]
  %18 = phi i64 [ 1, %5 ], [ %12, %9 ]
  %19 = phi i64 [ 2, %5 ], [ %11, %9 ]
  %20 = phi i32 [ 0, %5 ], [ %10, %9 ]
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp slt i64 %21, %6
  br i1 %22, label %23, label %9

23:                                               ; preds = %16
  %24 = getelementptr inbounds i32, i32* %0, i64 %17
  br label %29

25:                                               ; preds = %41, %29
  %26 = phi i32 [ %32, %29 ], [ %50, %41 ]
  %27 = add nuw nsw i64 %31, 1
  %28 = icmp eq i64 %33, %8
  br i1 %28, label %9, label %29, !llvm.loop !8

29:                                               ; preds = %23, %25
  %30 = phi i64 [ %18, %23 ], [ %33, %25 ]
  %31 = phi i64 [ %19, %23 ], [ %27, %25 ]
  %32 = phi i32 [ %20, %23 ], [ %26, %25 ]
  %33 = add nuw nsw i64 %30, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp slt i32 %34, %1
  br i1 %35, label %36, label %25

36:                                               ; preds = %29
  %37 = load i32, i32* %24, align 4, !tbaa !9
  %38 = getelementptr inbounds i32, i32* %0, i64 %30
  %39 = load i32, i32* %38, align 4, !tbaa !9
  %40 = add nsw i32 %39, %37
  br label %41

41:                                               ; preds = %36, %41
  %42 = phi i64 [ %31, %36 ], [ %51, %41 ]
  %43 = phi i32 [ %32, %36 ], [ %50, %41 ]
  %44 = getelementptr inbounds i32, i32* %0, i64 %42
  %45 = load i32, i32* %44, align 4, !tbaa !9
  %46 = add nsw i32 %40, %45
  %47 = srem i32 %46, %2
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %43, %49
  %51 = add nuw nsw i64 %42, 1
  %52 = trunc i64 %51 to i32
  %53 = icmp slt i32 %52, %1
  br i1 %53, label %41, label %25, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M_processed.cpp() #4 section ".text.startup" {
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = distinct !{!13, !6, !7}
