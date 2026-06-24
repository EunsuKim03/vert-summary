; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_SUM_BITONIC_SUBARRAY/MAXIMUM_SUM_BITONIC_SUBARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_SUM_BITONIC_SUBARRAY/MAXIMUM_SUM_BITONIC_SUBARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUM_BITONIC_SUBARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
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

10:                                               ; preds = %32, %2
  %11 = add nsw i32 %1, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, i32* %5, i64 %12
  store i32 %14, i32* %15, align 4, !tbaa !5
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %37

17:                                               ; preds = %10
  %18 = add i32 %1, -2
  %19 = sext i32 %18 to i64
  br label %41

20:                                               ; preds = %8, %32
  %21 = phi i64 [ 1, %8 ], [ %35, %32 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = add nsw i64 %21, -1
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds i32, i32* %4, i64 %24
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = add nsw i32 %30, %23
  br label %32

32:                                               ; preds = %20, %28
  %33 = phi i32 [ %31, %28 ], [ %23, %20 ]
  %34 = getelementptr inbounds i32, i32* %4, i64 %21
  store i32 %33, i32* %34, align 4, !tbaa !5
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %9
  br i1 %36, label %10, label %20, !llvm.loop !9

37:                                               ; preds = %53, %10
  %38 = icmp sgt i32 %1, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %37
  %40 = zext i32 %1 to i64
  br label %60

41:                                               ; preds = %17, %53
  %42 = phi i64 [ %19, %17 ], [ %56, %53 ]
  %43 = getelementptr inbounds i32, i32* %0, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i64 %42, 1
  %46 = getelementptr inbounds i32, i32* %0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = getelementptr inbounds i32, i32* %5, i64 %45
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, %44
  br label %53

53:                                               ; preds = %41, %49
  %54 = phi i32 [ %52, %49 ], [ %44, %41 ]
  %55 = getelementptr inbounds i32, i32* %5, i64 %42
  store i32 %54, i32* %55, align 4, !tbaa !5
  %56 = add nsw i64 %42, -1
  %57 = icmp sgt i64 %42, 0
  br i1 %57, label %41, label %37, !llvm.loop !12

58:                                               ; preds = %60, %37
  %59 = phi i32 [ -2147483648, %37 ], [ %72, %60 ]
  ret i32 %59

60:                                               ; preds = %39, %60
  %61 = phi i64 [ 0, %39 ], [ %73, %60 ]
  %62 = phi i32 [ -2147483648, %39 ], [ %72, %60 ]
  %63 = getelementptr inbounds i32, i32* %4, i64 %61
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = getelementptr inbounds i32, i32* %5, i64 %61
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = add nsw i32 %66, %64
  %68 = getelementptr inbounds i32, i32* %0, i64 %61
  %69 = load i32, i32* %68, align 4, !tbaa !5
  %70 = sub i32 %67, %69
  %71 = icmp slt i32 %62, %70
  %72 = select i1 %71, i32 %70, i32 %62
  %73 = add nuw nsw i64 %61, 1
  %74 = icmp eq i64 %73, %40
  br i1 %74, label %58, label %60, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_BITONIC_SUBARRAY_reprocessed.cpp() #4 section ".text.startup" {
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
