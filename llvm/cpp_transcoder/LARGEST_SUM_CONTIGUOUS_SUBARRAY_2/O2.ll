; ModuleID = 'benchmark/cpp_transcoder/LARGEST_SUM_CONTIGUOUS_SUBARRAY_2/LARGEST_SUM_CONTIGUOUS_SUBARRAY_2_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LARGEST_SUM_CONTIGUOUS_SUBARRAY_2/LARGEST_SUM_CONTIGUOUS_SUBARRAY_2_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LARGEST_SUM_CONTIGUOUS_SUBARRAY_2_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load i32, i32* %0, align 4, !tbaa !5
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = zext i32 %1 to i64
  %7 = add nsw i64 %6, -1
  %8 = and i64 %7, 1
  %9 = icmp eq i32 %1, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = and i64 %7, -2
  br label %28

12:                                               ; preds = %28, %5
  %13 = phi i32 [ undef, %5 ], [ %47, %28 ]
  %14 = phi i64 [ 1, %5 ], [ %48, %28 ]
  %15 = phi i32 [ %3, %5 ], [ %47, %28 ]
  %16 = phi i32 [ %3, %5 ], [ %45, %28 ]
  %17 = icmp eq i64 %8, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds i32, i32* %0, i64 %14
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = add nsw i32 %20, %16
  %22 = icmp slt i32 %20, %21
  %23 = select i1 %22, i32 %21, i32 %20
  %24 = icmp slt i32 %15, %23
  %25 = select i1 %24, i32 %23, i32 %15
  br label %26

26:                                               ; preds = %18, %12, %2
  %27 = phi i32 [ %3, %2 ], [ %13, %12 ], [ %25, %18 ]
  ret i32 %27

28:                                               ; preds = %28, %10
  %29 = phi i64 [ 1, %10 ], [ %48, %28 ]
  %30 = phi i32 [ %3, %10 ], [ %47, %28 ]
  %31 = phi i32 [ %3, %10 ], [ %45, %28 ]
  %32 = phi i64 [ 0, %10 ], [ %49, %28 ]
  %33 = getelementptr inbounds i32, i32* %0, i64 %29
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = add nsw i32 %34, %31
  %36 = icmp slt i32 %34, %35
  %37 = select i1 %36, i32 %35, i32 %34
  %38 = icmp slt i32 %30, %37
  %39 = select i1 %38, i32 %37, i32 %30
  %40 = add nuw nsw i64 %29, 1
  %41 = getelementptr inbounds i32, i32* %0, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = add nsw i32 %42, %37
  %44 = icmp slt i32 %42, %43
  %45 = select i1 %44, i32 %43, i32 %42
  %46 = icmp slt i32 %39, %45
  %47 = select i1 %46, i32 %45, i32 %39
  %48 = add nuw nsw i64 %29, 2
  %49 = add i64 %32, 2
  %50 = icmp eq i64 %49, %11
  br i1 %50, label %12, label %28, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LARGEST_SUM_CONTIGUOUS_SUBARRAY_2_processed.cpp() #4 section ".text.startup" {
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
!10 = !{!"llvm.loop.mustprogress"}
