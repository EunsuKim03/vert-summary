; ModuleID = 'benchmark/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %84, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %16
  %9 = phi i64 [ 1, %6 ], [ %17, %16 ]
  %10 = add nsw i64 %9, -1
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, i32* %0, i64 %9
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %21, label %8, !llvm.loop !9

19:                                               ; preds = %8
  %20 = trunc i64 %9 to i32
  br label %21

21:                                               ; preds = %19, %16, %4
  %22 = phi i32 [ 1, %4 ], [ %20, %19 ], [ %1, %16 ]
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %84, label %24

24:                                               ; preds = %21
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds i32, i32* %0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = add nsw i32 %22, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %24
  %34 = icmp ugt i32 %22, 1
  %35 = add nsw i32 %22, -2
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = sext i32 %22 to i64
  br label %39

39:                                               ; preds = %33, %45
  %40 = phi i64 [ %38, %33 ], [ %46, %45 ]
  %41 = phi i32 [ %27, %33 ], [ %49, %45 ]
  br i1 %34, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %37, align 4, !tbaa !5
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %84, label %45

45:                                               ; preds = %42, %39
  %46 = add i64 %40, 1
  %47 = and i64 %46, 4294967295
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %0, i64 %40
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %39, label %53, !llvm.loop !12

53:                                               ; preds = %45
  %54 = trunc i64 %46 to i32
  br label %55

55:                                               ; preds = %53, %24
  %56 = phi i32 [ %22, %24 ], [ %54, %53 ]
  %57 = phi i32 [ %27, %24 ], [ %49, %53 ]
  %58 = icmp eq i32 %56, %1
  br i1 %58, label %84, label %59

59:                                               ; preds = %55
  %60 = add nsw i32 %22, -1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %0, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = icmp slt i32 %57, %63
  br i1 %64, label %84, label %65

65:                                               ; preds = %59
  %66 = icmp ugt i32 %56, 1
  %67 = icmp slt i32 %56, %1
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = sext i32 %56 to i64
  br label %74

71:                                               ; preds = %74
  %72 = trunc i64 %83 to i32
  %73 = icmp eq i32 %72, %1
  br i1 %73, label %84, label %74, !llvm.loop !13

74:                                               ; preds = %69, %71
  %75 = phi i64 [ %70, %69 ], [ %83, %71 ]
  %76 = and i64 %75, 4294967295
  %77 = getelementptr inbounds i32, i32* %0, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = add nsw i64 %75, -1
  %80 = getelementptr inbounds i32, i32* %0, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = icmp slt i32 %78, %81
  %83 = add nsw i64 %75, 1
  br i1 %82, label %84, label %71

84:                                               ; preds = %42, %71, %74, %65, %21, %59, %55, %2
  %85 = phi i32 [ 1, %2 ], [ 1, %21 ], [ 1, %55 ], [ 0, %59 ], [ 1, %65 ], [ 0, %74 ], [ 1, %71 ], [ 0, %42 ]
  ret i32 %85
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_processed.cpp() #4 section ".text.startup" {
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
