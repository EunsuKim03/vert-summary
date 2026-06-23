; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %71, label %4

4:                                                ; preds = %2
  %5 = load i32, i32* %0, align 4, !tbaa !5
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = zext i32 %1 to i64
  %9 = add nsw i64 %8, -1
  %10 = add nsw i64 %8, -2
  %11 = and i64 %9, 3
  %12 = icmp ult i64 %10, 3
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = and i64 %9, -4
  br label %40

15:                                               ; preds = %40, %7
  %16 = phi i32 [ undef, %7 ], [ %61, %40 ]
  %17 = phi i32 [ undef, %7 ], [ %67, %40 ]
  %18 = phi i64 [ 1, %7 ], [ %68, %40 ]
  %19 = phi i32 [ 0, %7 ], [ %61, %40 ]
  %20 = phi i32 [ %5, %7 ], [ %67, %40 ]
  %21 = icmp eq i64 %11, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %15, %22
  %23 = phi i64 [ %32, %22 ], [ %18, %15 ]
  %24 = phi i32 [ %25, %22 ], [ %19, %15 ]
  %25 = phi i32 [ %31, %22 ], [ %20, %15 ]
  %26 = phi i64 [ %33, %22 ], [ 0, %15 ]
  %27 = getelementptr inbounds i32, i32* %0, i64 %23
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = icmp slt i32 %25, %24
  %30 = select i1 %29, i32 %25, i32 %24
  %31 = add nsw i32 %28, %30
  %32 = add nuw nsw i64 %23, 1
  %33 = add i64 %26, 1
  %34 = icmp eq i64 %33, %11
  br i1 %34, label %35, label %22, !llvm.loop !9

35:                                               ; preds = %15, %22, %4
  %36 = phi i32 [ %5, %4 ], [ %17, %15 ], [ %31, %22 ]
  %37 = phi i32 [ 0, %4 ], [ %16, %15 ], [ %25, %22 ]
  %38 = icmp slt i32 %37, %36
  %39 = select i1 %38, i32 %37, i32 %36
  br label %71

40:                                               ; preds = %40, %13
  %41 = phi i64 [ 1, %13 ], [ %68, %40 ]
  %42 = phi i32 [ 0, %13 ], [ %61, %40 ]
  %43 = phi i32 [ %5, %13 ], [ %67, %40 ]
  %44 = phi i64 [ 0, %13 ], [ %69, %40 ]
  %45 = getelementptr inbounds i32, i32* %0, i64 %41
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = icmp slt i32 %43, %42
  %48 = select i1 %47, i32 %43, i32 %42
  %49 = add nsw i32 %46, %48
  %50 = add nuw nsw i64 %41, 1
  %51 = getelementptr inbounds i32, i32* %0, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = icmp slt i32 %49, %43
  %54 = select i1 %53, i32 %49, i32 %43
  %55 = add nsw i32 %52, %54
  %56 = add nuw nsw i64 %41, 2
  %57 = getelementptr inbounds i32, i32* %0, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = icmp slt i32 %55, %49
  %60 = select i1 %59, i32 %55, i32 %49
  %61 = add nsw i32 %58, %60
  %62 = add nuw nsw i64 %41, 3
  %63 = getelementptr inbounds i32, i32* %0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = icmp slt i32 %61, %55
  %66 = select i1 %65, i32 %61, i32 %55
  %67 = add nsw i32 %64, %66
  %68 = add nuw nsw i64 %41, 4
  %69 = add i64 %44, 4
  %70 = icmp eq i64 %69, %14
  br i1 %70, label %15, label %40, !llvm.loop !11

71:                                               ; preds = %2, %35
  %72 = phi i32 [ %39, %35 ], [ 0, %2 ]
  ret i32 %72
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
