; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add nsw i32 %1, 1
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %62

6:                                                ; preds = %3
  %7 = zext i32 %1 to i64
  br label %15

8:                                                ; preds = %46
  %9 = trunc i64 %55 to i32
  br label %10

10:                                               ; preds = %8, %27
  %11 = phi i32 [ %28, %27 ], [ %58, %8 ]
  %12 = phi i32 [ %18, %27 ], [ %54, %8 ]
  %13 = phi i32 [ %17, %27 ], [ %9, %8 ]
  %14 = icmp slt i32 %29, %1
  br i1 %14, label %15, label %62, !llvm.loop !5

15:                                               ; preds = %6, %10
  %16 = phi i32 [ %29, %10 ], [ 0, %6 ]
  %17 = phi i32 [ %13, %10 ], [ 0, %6 ]
  %18 = phi i32 [ %12, %10 ], [ %4, %6 ]
  %19 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %20 = icmp sle i32 %19, %2
  %21 = icmp slt i32 %16, %1
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = sext i32 %16 to i64
  br label %36

25:                                               ; preds = %36
  %26 = trunc i64 %39 to i32
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi i32 [ %19, %15 ], [ %42, %25 ]
  %29 = phi i32 [ %16, %15 ], [ %26, %25 ]
  %30 = icmp sgt i32 %28, %2
  %31 = icmp slt i32 %17, %1
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %10

33:                                               ; preds = %27
  %34 = sext i32 %17 to i64
  %35 = sext i32 %29 to i64
  br label %46

36:                                               ; preds = %23, %36
  %37 = phi i64 [ %24, %23 ], [ %39, %36 ]
  %38 = phi i32 [ %19, %23 ], [ %42, %36 ]
  %39 = add nsw i64 %37, 1
  %40 = getelementptr inbounds i32, i32* %0, i64 %37
  %41 = load i32, i32* %40, align 4, !tbaa !7
  %42 = add nsw i32 %41, %38
  %43 = icmp sle i32 %42, %2
  %44 = icmp slt i64 %39, %7
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %36, label %25, !llvm.loop !11

46:                                               ; preds = %33, %46
  %47 = phi i64 [ %34, %33 ], [ %55, %46 ]
  %48 = phi i32 [ %18, %33 ], [ %54, %46 ]
  %49 = phi i32 [ %28, %33 ], [ %58, %46 ]
  %50 = sub nsw i64 %35, %47
  %51 = sext i32 %48 to i64
  %52 = icmp slt i64 %50, %51
  %53 = trunc i64 %50 to i32
  %54 = select i1 %52, i32 %53, i32 %48
  %55 = add nsw i64 %47, 1
  %56 = getelementptr inbounds i32, i32* %0, i64 %47
  %57 = load i32, i32* %56, align 4, !tbaa !7
  %58 = sub nsw i32 %49, %57
  %59 = icmp sgt i32 %58, %2
  %60 = icmp slt i64 %55, %7
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %46, label %8, !llvm.loop !12

62:                                               ; preds = %10, %3
  %63 = phi i32 [ %4, %3 ], [ %12, %10 ]
  ret i32 %63
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
