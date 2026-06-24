; ModuleID = 'benchmark/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = load i32, i32* %0, align 4, !tbaa !5
  %6 = load i32, i32* %1, align 4, !tbaa !5
  %7 = icmp sgt i32 %2, 1
  %8 = icmp sgt i32 %3, 1
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = add i32 %3, -2
  %12 = add i32 %2, -2
  %13 = call i32 @llvm.umin.i32(i32 %11, i32 %12)
  %14 = add i32 %13, 2
  %15 = zext i32 %14 to i64
  br label %26

16:                                               ; preds = %26
  %17 = trunc i64 %38 to i32
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi i32 [ %5, %4 ], [ %33, %16 ]
  %20 = phi i32 [ %6, %4 ], [ %37, %16 ]
  %21 = phi i32 [ 1, %4 ], [ %17, %16 ]
  %22 = icmp slt i32 %21, %2
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = zext i32 %21 to i64
  %25 = zext i32 %2 to i64
  br label %48

26:                                               ; preds = %10, %26
  %27 = phi i64 [ 1, %10 ], [ %38, %26 ]
  %28 = phi i32 [ %6, %10 ], [ %37, %26 ]
  %29 = phi i32 [ %5, %10 ], [ %33, %26 ]
  %30 = getelementptr inbounds i32, i32* %0, i64 %27
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = icmp sgt i32 %31, %29
  %33 = select i1 %32, i32 %31, i32 %29
  %34 = getelementptr inbounds i32, i32* %1, i64 %27
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = icmp slt i32 %35, %28
  %37 = select i1 %36, i32 %35, i32 %28
  %38 = add nuw nsw i64 %27, 1
  %39 = icmp eq i64 %38, %15
  br i1 %39, label %16, label %26, !llvm.loop !9

40:                                               ; preds = %48
  %41 = trunc i64 %55 to i32
  br label %42

42:                                               ; preds = %40, %18
  %43 = phi i32 [ %19, %18 ], [ %54, %40 ]
  %44 = phi i32 [ %21, %18 ], [ %41, %40 ]
  %45 = icmp slt i32 %44, %3
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = zext i32 %44 to i64
  br label %57

48:                                               ; preds = %23, %48
  %49 = phi i64 [ %24, %23 ], [ %55, %48 ]
  %50 = phi i32 [ %19, %23 ], [ %54, %48 ]
  %51 = getelementptr inbounds i32, i32* %0, i64 %49
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = icmp sgt i32 %52, %50
  %54 = select i1 %53, i32 %52, i32 %50
  %55 = add nuw nsw i64 %49, 1
  %56 = icmp eq i64 %55, %25
  br i1 %56, label %40, label %48, !llvm.loop !12

57:                                               ; preds = %46, %57
  %58 = phi i64 [ %47, %46 ], [ %64, %57 ]
  %59 = phi i32 [ %20, %46 ], [ %63, %57 ]
  %60 = getelementptr inbounds i32, i32* %1, i64 %58
  %61 = load i32, i32* %60, align 4, !tbaa !5
  %62 = icmp slt i32 %61, %59
  %63 = select i1 %62, i32 %61, i32 %59
  %64 = add nuw nsw i64 %58, 1
  %65 = trunc i64 %64 to i32
  %66 = icmp slt i32 %65, %3
  br i1 %66, label %57, label %67, !llvm.loop !13

67:                                               ; preds = %57, %42
  %68 = phi i32 [ %20, %42 ], [ %63, %57 ]
  %69 = mul nsw i32 %68, %43
  ret i32 %69
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
