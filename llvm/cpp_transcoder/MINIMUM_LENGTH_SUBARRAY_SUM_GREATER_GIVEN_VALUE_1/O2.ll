; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add nsw i32 %1, 1
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %70

6:                                                ; preds = %3
  %7 = icmp sgt i32 %2, 0
  %8 = zext i32 %1 to i64
  br label %16

9:                                                ; preds = %54
  %10 = trunc i64 %63 to i32
  br label %11

11:                                               ; preds = %9, %28
  %12 = phi i32 [ %29, %28 ], [ %66, %9 ]
  %13 = phi i32 [ %19, %28 ], [ %62, %9 ]
  %14 = phi i32 [ %30, %28 ], [ %10, %9 ]
  %15 = icmp slt i32 %31, %1
  br i1 %15, label %16, label %70, !llvm.loop !5

16:                                               ; preds = %6, %11
  %17 = phi i32 [ 0, %6 ], [ %31, %11 ]
  %18 = phi i32 [ 0, %6 ], [ %14, %11 ]
  %19 = phi i32 [ %4, %6 ], [ %13, %11 ]
  %20 = phi i32 [ 0, %6 ], [ %12, %11 ]
  %21 = icmp sle i32 %20, %2
  %22 = icmp slt i32 %17, %1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = sext i32 %17 to i64
  br label %38

26:                                               ; preds = %38
  %27 = trunc i64 %47 to i32
  br label %28

28:                                               ; preds = %26, %16
  %29 = phi i32 [ %20, %16 ], [ %50, %26 ]
  %30 = phi i32 [ %18, %16 ], [ %46, %26 ]
  %31 = phi i32 [ %17, %16 ], [ %27, %26 ]
  %32 = icmp sgt i32 %29, %2
  %33 = icmp slt i32 %30, %1
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %11

35:                                               ; preds = %28
  %36 = sext i32 %30 to i64
  %37 = sext i32 %31 to i64
  br label %54

38:                                               ; preds = %24, %38
  %39 = phi i64 [ %25, %24 ], [ %47, %38 ]
  %40 = phi i32 [ %18, %24 ], [ %46, %38 ]
  %41 = phi i32 [ %20, %24 ], [ %50, %38 ]
  %42 = icmp slt i32 %41, 1
  %43 = and i1 %7, %42
  %44 = select i1 %43, i32 0, i32 %41
  %45 = trunc i64 %39 to i32
  %46 = select i1 %43, i32 %45, i32 %40
  %47 = add nsw i64 %39, 1
  %48 = getelementptr inbounds i32, i32* %0, i64 %39
  %49 = load i32, i32* %48, align 4, !tbaa !7
  %50 = add nsw i32 %49, %44
  %51 = icmp sle i32 %50, %2
  %52 = icmp slt i64 %47, %8
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %38, label %26, !llvm.loop !11

54:                                               ; preds = %35, %54
  %55 = phi i64 [ %36, %35 ], [ %63, %54 ]
  %56 = phi i32 [ %19, %35 ], [ %62, %54 ]
  %57 = phi i32 [ %29, %35 ], [ %66, %54 ]
  %58 = sub nsw i64 %37, %55
  %59 = sext i32 %56 to i64
  %60 = icmp slt i64 %58, %59
  %61 = trunc i64 %58 to i32
  %62 = select i1 %60, i32 %61, i32 %56
  %63 = add nsw i64 %55, 1
  %64 = getelementptr inbounds i32, i32* %0, i64 %55
  %65 = load i32, i32* %64, align 4, !tbaa !7
  %66 = sub nsw i32 %57, %65
  %67 = icmp sgt i32 %66, %2
  %68 = icmp slt i64 %63, %8
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %54, label %9, !llvm.loop !12

70:                                               ; preds = %11, %3
  %71 = phi i32 [ %4, %3 ], [ %13, %11 ]
  ret i32 %71
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1_processed.cpp() #4 section ".text.startup" {
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
