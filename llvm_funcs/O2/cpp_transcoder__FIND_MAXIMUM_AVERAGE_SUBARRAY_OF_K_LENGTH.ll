; ModuleID = 'benchmark/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %2, %1
  br i1 %4, label %123, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %6, i64 4)
  %8 = extractvalue { i64, i1 } %7, 1
  %9 = extractvalue { i64, i1 } %7, 0
  %10 = select i1 %8, i64 -1, i64 %9
  %11 = tail call noalias noundef nonnull i8* @_Znam(i64 noundef %10) #8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %13, i32* %12, align 4, !tbaa !5
  %14 = icmp sgt i32 %1, 1
  br i1 %14, label %15, label %38

15:                                               ; preds = %5
  %16 = zext i32 %1 to i64
  %17 = add nsw i64 %16, -1
  %18 = add nsw i64 %16, -2
  %19 = and i64 %17, 3
  %20 = icmp ult i64 %18, 3
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = and i64 %17, -4
  br label %66

23:                                               ; preds = %66, %15
  %24 = phi i32 [ %13, %15 ], [ %87, %66 ]
  %25 = phi i64 [ 1, %15 ], [ %89, %66 ]
  %26 = icmp eq i64 %19, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %23, %27
  %28 = phi i32 [ %33, %27 ], [ %24, %23 ]
  %29 = phi i64 [ %35, %27 ], [ %25, %23 ]
  %30 = phi i64 [ %36, %27 ], [ 0, %23 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %29
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = add nsw i32 %32, %28
  %34 = getelementptr inbounds i32, i32* %12, i64 %29
  store i32 %33, i32* %34, align 4, !tbaa !5
  %35 = add nuw nsw i64 %29, 1
  %36 = add i64 %30, 1
  %37 = icmp eq i64 %36, %19
  br i1 %37, label %38, label %27, !llvm.loop !9

38:                                               ; preds = %23, %27, %5
  %39 = add nsw i32 %2, -1
  %40 = icmp slt i32 %2, %1
  br i1 %40, label %41, label %119

41:                                               ; preds = %38
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds i32, i32* %12, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = sext i32 %2 to i64
  %46 = sub nsw i64 %6, %45
  %47 = xor i64 %45, -1
  %48 = and i64 %46, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds i32, i32* %12, i64 %45
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = load i32, i32* %12, align 4, !tbaa !5
  %54 = sub nsw i32 %52, %53
  %55 = icmp sgt i32 %54, %44
  %56 = select i1 %55, i32 %54, i32 %44
  %57 = select i1 %55, i32 %2, i32 %39
  %58 = add nsw i64 %45, 1
  br label %59

59:                                               ; preds = %50, %41
  %60 = phi i32 [ undef, %41 ], [ %57, %50 ]
  %61 = phi i64 [ %45, %41 ], [ %58, %50 ]
  %62 = phi i32 [ %39, %41 ], [ %57, %50 ]
  %63 = phi i32 [ %44, %41 ], [ %56, %50 ]
  %64 = sub nsw i64 0, %6
  %65 = icmp eq i64 %47, %64
  br i1 %65, label %119, label %92

66:                                               ; preds = %66, %21
  %67 = phi i32 [ %13, %21 ], [ %87, %66 ]
  %68 = phi i64 [ 1, %21 ], [ %89, %66 ]
  %69 = phi i64 [ 0, %21 ], [ %90, %66 ]
  %70 = getelementptr inbounds i32, i32* %0, i64 %68
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = add nsw i32 %71, %67
  %73 = getelementptr inbounds i32, i32* %12, i64 %68
  store i32 %72, i32* %73, align 4, !tbaa !5
  %74 = add nuw nsw i64 %68, 1
  %75 = getelementptr inbounds i32, i32* %0, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = add nsw i32 %76, %72
  %78 = getelementptr inbounds i32, i32* %12, i64 %74
  store i32 %77, i32* %78, align 4, !tbaa !5
  %79 = add nuw nsw i64 %68, 2
  %80 = getelementptr inbounds i32, i32* %0, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = add nsw i32 %81, %77
  %83 = getelementptr inbounds i32, i32* %12, i64 %79
  store i32 %82, i32* %83, align 4, !tbaa !5
  %84 = add nuw nsw i64 %68, 3
  %85 = getelementptr inbounds i32, i32* %0, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !5
  %87 = add nsw i32 %86, %82
  %88 = getelementptr inbounds i32, i32* %12, i64 %84
  store i32 %87, i32* %88, align 4, !tbaa !5
  %89 = add nuw nsw i64 %68, 4
  %90 = add i64 %69, 4
  %91 = icmp eq i64 %90, %22
  br i1 %91, label %23, label %66, !llvm.loop !11

92:                                               ; preds = %59, %92
  %93 = phi i64 [ %117, %92 ], [ %61, %59 ]
  %94 = phi i32 [ %116, %92 ], [ %62, %59 ]
  %95 = phi i32 [ %114, %92 ], [ %63, %59 ]
  %96 = getelementptr inbounds i32, i32* %12, i64 %93
  %97 = load i32, i32* %96, align 4, !tbaa !5
  %98 = sub nsw i64 %93, %45
  %99 = getelementptr inbounds i32, i32* %12, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %101 = sub nsw i32 %97, %100
  %102 = icmp sgt i32 %101, %95
  %103 = select i1 %102, i32 %101, i32 %95
  %104 = trunc i64 %93 to i32
  %105 = select i1 %102, i32 %104, i32 %94
  %106 = add nsw i64 %93, 1
  %107 = getelementptr inbounds i32, i32* %12, i64 %106
  %108 = load i32, i32* %107, align 4, !tbaa !5
  %109 = sub nsw i64 %106, %45
  %110 = getelementptr inbounds i32, i32* %12, i64 %109
  %111 = load i32, i32* %110, align 4, !tbaa !5
  %112 = sub nsw i32 %108, %111
  %113 = icmp sgt i32 %112, %103
  %114 = select i1 %113, i32 %112, i32 %103
  %115 = trunc i64 %106 to i32
  %116 = select i1 %113, i32 %115, i32 %105
  %117 = add nsw i64 %93, 2
  %118 = icmp eq i64 %117, %6
  br i1 %118, label %119, label %92, !llvm.loop !13

119:                                              ; preds = %59, %92, %38
  %120 = phi i32 [ %39, %38 ], [ %60, %59 ], [ %116, %92 ]
  tail call void @_ZdaPv(i8* noundef nonnull %11) #9
  %121 = sub i32 1, %2
  %122 = add i32 %121, %120
  br label %123

123:                                              ; preds = %3, %119
  %124 = phi i32 [ %122, %119 ], [ -1, %3 ]
  ret i32 %124
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_processed.cpp() #7 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { builtin nounwind }
attributes #10 = { nounwind }

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
