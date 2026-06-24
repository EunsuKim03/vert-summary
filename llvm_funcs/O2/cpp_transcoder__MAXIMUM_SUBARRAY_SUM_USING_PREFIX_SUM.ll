; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %5, i32* %4, align 16, !tbaa !5
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = add nsw i64 %3, -1
  %9 = add nsw i64 %3, -2
  %10 = and i64 %8, 3
  %11 = icmp ult i64 %9, 3
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = and i64 %8, -4
  br label %39

14:                                               ; preds = %39, %7
  %15 = phi i32 [ %5, %7 ], [ %60, %39 ]
  %16 = phi i64 [ 1, %7 ], [ %62, %39 ]
  %17 = icmp eq i64 %10, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14, %18
  %19 = phi i32 [ %24, %18 ], [ %15, %14 ]
  %20 = phi i64 [ %26, %18 ], [ %16, %14 ]
  %21 = phi i64 [ %27, %18 ], [ 0, %14 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %20
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = add nsw i32 %23, %19
  %25 = getelementptr inbounds i32, i32* %4, i64 %20
  store i32 %24, i32* %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %20, 1
  %27 = add i64 %21, 1
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %29, label %18, !llvm.loop !9

29:                                               ; preds = %14, %18, %2
  %30 = icmp sgt i32 %1, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %29
  %32 = icmp eq i32 %1, 1
  br i1 %32, label %80, label %33, !llvm.loop !11

33:                                               ; preds = %31
  %34 = add nsw i64 %3, -1
  %35 = and i64 %34, 1
  %36 = icmp eq i32 %1, 2
  br i1 %36, label %65, label %37

37:                                               ; preds = %33
  %38 = and i64 %34, -2
  br label %82

39:                                               ; preds = %39, %12
  %40 = phi i32 [ %5, %12 ], [ %60, %39 ]
  %41 = phi i64 [ 1, %12 ], [ %62, %39 ]
  %42 = phi i64 [ 0, %12 ], [ %63, %39 ]
  %43 = getelementptr inbounds i32, i32* %0, i64 %41
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %44, %40
  %46 = getelementptr inbounds i32, i32* %4, i64 %41
  store i32 %45, i32* %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %41, 1
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = add nsw i32 %49, %45
  %51 = getelementptr inbounds i32, i32* %4, i64 %47
  store i32 %50, i32* %51, align 4, !tbaa !5
  %52 = add nuw nsw i64 %41, 2
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = add nsw i32 %54, %50
  %56 = getelementptr inbounds i32, i32* %4, i64 %52
  store i32 %55, i32* %56, align 4, !tbaa !5
  %57 = add nuw nsw i64 %41, 3
  %58 = getelementptr inbounds i32, i32* %0, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = add nsw i32 %59, %55
  %61 = getelementptr inbounds i32, i32* %4, i64 %57
  store i32 %60, i32* %61, align 4, !tbaa !5
  %62 = add nuw nsw i64 %41, 4
  %63 = add i64 %42, 4
  %64 = icmp eq i64 %63, %13
  br i1 %64, label %14, label %39, !llvm.loop !13

65:                                               ; preds = %82, %33
  %66 = phi i32 [ undef, %33 ], [ %102, %82 ]
  %67 = phi i64 [ 1, %33 ], [ %103, %82 ]
  %68 = phi i32 [ %5, %33 ], [ %102, %82 ]
  %69 = phi i32 [ 0, %33 ], [ %97, %82 ]
  %70 = phi i32 [ %5, %33 ], [ %99, %82 ]
  %71 = icmp eq i64 %35, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %65
  %73 = icmp slt i32 %70, %69
  %74 = select i1 %73, i32 %70, i32 %69
  %75 = getelementptr inbounds i32, i32* %4, i64 %67
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = sub nsw i32 %76, %74
  %78 = icmp slt i32 %68, %77
  %79 = select i1 %78, i32 %77, i32 %68
  br label %80

80:                                               ; preds = %72, %65, %31, %29
  %81 = phi i32 [ -2147483648, %29 ], [ %5, %31 ], [ %66, %65 ], [ %79, %72 ]
  ret i32 %81

82:                                               ; preds = %82, %37
  %83 = phi i64 [ 1, %37 ], [ %103, %82 ]
  %84 = phi i32 [ %5, %37 ], [ %102, %82 ]
  %85 = phi i32 [ 0, %37 ], [ %97, %82 ]
  %86 = phi i32 [ %5, %37 ], [ %99, %82 ]
  %87 = phi i64 [ 0, %37 ], [ %104, %82 ]
  %88 = icmp slt i32 %86, %85
  %89 = select i1 %88, i32 %86, i32 %85
  %90 = getelementptr inbounds i32, i32* %4, i64 %83
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = sub nsw i32 %91, %89
  %93 = icmp slt i32 %84, %92
  %94 = select i1 %93, i32 %92, i32 %84
  %95 = add nuw nsw i64 %83, 1
  %96 = icmp slt i32 %91, %89
  %97 = select i1 %96, i32 %91, i32 %89
  %98 = getelementptr inbounds i32, i32* %4, i64 %95
  %99 = load i32, i32* %98, align 4, !tbaa !5
  %100 = sub nsw i32 %99, %97
  %101 = icmp slt i32 %94, %100
  %102 = select i1 %101, i32 %100, i32 %94
  %103 = add nuw nsw i64 %83, 2
  %104 = add i64 %87, 2
  %105 = icmp eq i64 %104, %38
  br i1 %105, label %65, label %82, !llvm.loop !11
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !12}
