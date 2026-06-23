; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = alloca i32, i64 %3, align 16
  %6 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %6, i32* %4, align 16, !tbaa !5
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  br label %20

10:                                               ; preds = %20, %2
  %11 = add nsw i32 %1, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, i32* %5, i64 %12
  store i32 %14, i32* %15, align 4, !tbaa !5
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %31

17:                                               ; preds = %10
  %18 = add i32 %1, -2
  %19 = sext i32 %18 to i64
  br label %36

20:                                               ; preds = %8, %20
  %21 = phi i64 [ 1, %8 ], [ %29, %20 ]
  %22 = phi i32 [ %6, %8 ], [ %27, %20 ]
  %23 = getelementptr inbounds i32, i32* %0, i64 %21
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = add nsw i32 %24, %22
  %26 = icmp slt i32 %24, %25
  %27 = select i1 %26, i32 %25, i32 %24
  %28 = getelementptr inbounds i32, i32* %4, i64 %21
  store i32 %27, i32* %28, align 4, !tbaa !5
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %9
  br i1 %30, label %10, label %20, !llvm.loop !9

31:                                               ; preds = %36, %10
  %32 = phi i32 [ %14, %10 ], [ %46, %36 ]
  %33 = icmp sgt i32 %1, 2
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = zext i32 %11 to i64
  br label %52

36:                                               ; preds = %17, %36
  %37 = phi i64 [ %19, %17 ], [ %48, %36 ]
  %38 = phi i32 [ %14, %17 ], [ %44, %36 ]
  %39 = phi i32 [ %14, %17 ], [ %46, %36 ]
  %40 = getelementptr inbounds i32, i32* %0, i64 %37
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = add nsw i32 %41, %38
  %43 = icmp slt i32 %41, %42
  %44 = select i1 %43, i32 %42, i32 %41
  %45 = icmp slt i32 %39, %44
  %46 = select i1 %45, i32 %44, i32 %39
  %47 = getelementptr inbounds i32, i32* %5, i64 %37
  store i32 %44, i32* %47, align 4, !tbaa !5
  %48 = add nsw i64 %37, -1
  %49 = icmp sgt i64 %37, 0
  br i1 %49, label %36, label %31, !llvm.loop !12

50:                                               ; preds = %52, %31
  %51 = phi i32 [ %32, %31 ], [ %63, %52 ]
  ret i32 %51

52:                                               ; preds = %34, %52
  %53 = phi i64 [ 1, %34 ], [ %58, %52 ]
  %54 = phi i32 [ %32, %34 ], [ %63, %52 ]
  %55 = add nsw i64 %53, -1
  %56 = getelementptr inbounds i32, i32* %4, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = add nuw nsw i64 %53, 1
  %59 = getelementptr inbounds i32, i32* %5, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = add nsw i32 %60, %57
  %62 = icmp slt i32 %54, %61
  %63 = select i1 %62, i32 %61, i32 %54
  %64 = icmp eq i64 %58, %35
  br i1 %64, label %50, label %52, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.cpp() #4 section ".text.startup" {
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
