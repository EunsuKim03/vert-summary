; ModuleID = 'llvm/cpp_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY/SMALLEST_SUM_CONTIGUOUS_SUBARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY/SMALLEST_SUM_CONTIGUOUS_SUBARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SMALLEST_SUM_CONTIGUOUS_SUBARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = and i64 %5, 4294967294
  br label %26

10:                                               ; preds = %26, %4
  %11 = phi i32 [ undef, %4 ], [ %45, %26 ]
  %12 = phi i64 [ 0, %4 ], [ %46, %26 ]
  %13 = phi i32 [ 2147483647, %4 ], [ %45, %26 ]
  %14 = phi i32 [ 2147483647, %4 ], [ %43, %26 ]
  %15 = icmp eq i64 %6, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds i32, i32* %0, i64 %12
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = icmp slt i32 %14, 0
  %20 = select i1 %19, i32 %14, i32 0
  %21 = add nsw i32 %18, %20
  %22 = icmp slt i32 %21, %13
  %23 = select i1 %22, i32 %21, i32 %13
  br label %24

24:                                               ; preds = %16, %10, %2
  %25 = phi i32 [ 2147483647, %2 ], [ %11, %10 ], [ %23, %16 ]
  ret i32 %25

26:                                               ; preds = %26, %8
  %27 = phi i64 [ 0, %8 ], [ %46, %26 ]
  %28 = phi i32 [ 2147483647, %8 ], [ %45, %26 ]
  %29 = phi i32 [ 2147483647, %8 ], [ %43, %26 ]
  %30 = phi i64 [ 0, %8 ], [ %47, %26 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %27
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = icmp slt i32 %29, 0
  %34 = select i1 %33, i32 %29, i32 0
  %35 = add nsw i32 %32, %34
  %36 = icmp slt i32 %35, %28
  %37 = select i1 %36, i32 %35, i32 %28
  %38 = or i64 %27, 1
  %39 = getelementptr inbounds i32, i32* %0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = icmp slt i32 %35, 0
  %42 = select i1 %41, i32 %35, i32 0
  %43 = add nsw i32 %40, %42
  %44 = icmp slt i32 %43, %37
  %45 = select i1 %44, i32 %43, i32 %37
  %46 = add nuw nsw i64 %27, 2
  %47 = add i64 %30, 2
  %48 = icmp eq i64 %47, %9
  br i1 %48, label %10, label %26, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SMALLEST_SUM_CONTIGUOUS_SUBARRAY_reprocessed.cpp() #4 section ".text.startup" {
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
