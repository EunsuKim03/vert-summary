; ModuleID = 'benchmark/cpp_transcoder/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_S_iii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = zext i32 %3 to i64
  br label %15

10:                                               ; preds = %15, %6
  %11 = phi i32 [ 0, %6 ], [ %20, %15 ]
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = zext i32 %4 to i64
  br label %28

15:                                               ; preds = %8, %15
  %16 = phi i64 [ 0, %8 ], [ %21, %15 ]
  %17 = phi i32 [ 0, %8 ], [ %20, %15 ]
  %18 = getelementptr inbounds i32, i32* %0, i64 %16
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = add nsw i32 %19, %17
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, %9
  br i1 %22, label %10, label %15, !llvm.loop !9

23:                                               ; preds = %28, %10
  %24 = phi i32 [ 0, %10 ], [ %33, %28 ]
  %25 = icmp sgt i32 %5, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = zext i32 %5 to i64
  br label %43

28:                                               ; preds = %13, %28
  %29 = phi i64 [ 0, %13 ], [ %34, %28 ]
  %30 = phi i32 [ 0, %13 ], [ %33, %28 ]
  %31 = getelementptr inbounds i32, i32* %1, i64 %29
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = add nsw i32 %32, %30
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %34, %14
  br i1 %35, label %23, label %28, !llvm.loop !12

36:                                               ; preds = %43, %23
  %37 = phi i32 [ 0, %23 ], [ %48, %43 ]
  %38 = icmp eq i32 %3, 0
  %39 = icmp eq i32 %4, 0
  %40 = or i1 %38, %39
  %41 = icmp eq i32 %5, 0
  %42 = or i1 %40, %41
  br i1 %42, label %99, label %51

43:                                               ; preds = %26, %43
  %44 = phi i64 [ 0, %26 ], [ %49, %43 ]
  %45 = phi i32 [ 0, %26 ], [ %48, %43 ]
  %46 = getelementptr inbounds i32, i32* %2, i64 %44
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = add nsw i32 %47, %45
  %49 = add nuw nsw i64 %44, 1
  %50 = icmp eq i64 %49, %27
  br i1 %50, label %36, label %43, !llvm.loop !13

51:                                               ; preds = %36, %87
  %52 = phi i32 [ %93, %87 ], [ 0, %36 ]
  %53 = phi i32 [ %92, %87 ], [ 0, %36 ]
  %54 = phi i32 [ %91, %87 ], [ 0, %36 ]
  %55 = phi i32 [ %90, %87 ], [ %37, %36 ]
  %56 = phi i32 [ %89, %87 ], [ %24, %36 ]
  %57 = phi i32 [ %88, %87 ], [ %11, %36 ]
  %58 = icmp eq i32 %57, %56
  %59 = icmp eq i32 %56, %55
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %99, label %61

61:                                               ; preds = %51
  %62 = icmp slt i32 %57, %56
  %63 = icmp slt i32 %57, %55
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = add nsw i32 %54, 1
  %67 = sext i32 %54 to i64
  %68 = getelementptr inbounds i32, i32* %0, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !5
  %70 = sub nsw i32 %57, %69
  br label %87

71:                                               ; preds = %61
  %72 = icmp slt i32 %56, %55
  br i1 %72, label %79, label %73

73:                                               ; preds = %71
  %74 = add nsw i32 %53, 1
  %75 = sext i32 %53 to i64
  %76 = getelementptr inbounds i32, i32* %1, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !5
  %78 = sub nsw i32 %56, %77
  br label %87

79:                                               ; preds = %71
  %80 = icmp slt i32 %55, %57
  br i1 %80, label %87, label %81

81:                                               ; preds = %79
  %82 = add nsw i32 %52, 1
  %83 = sext i32 %52 to i64
  %84 = getelementptr inbounds i32, i32* %2, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !5
  %86 = sub nsw i32 %55, %85
  br label %87

87:                                               ; preds = %73, %81, %79, %65
  %88 = phi i32 [ %70, %65 ], [ %57, %73 ], [ %57, %81 ], [ %57, %79 ]
  %89 = phi i32 [ %56, %65 ], [ %78, %73 ], [ %56, %81 ], [ %56, %79 ]
  %90 = phi i32 [ %55, %65 ], [ %55, %73 ], [ %86, %81 ], [ %55, %79 ]
  %91 = phi i32 [ %66, %65 ], [ %54, %73 ], [ %54, %81 ], [ %54, %79 ]
  %92 = phi i32 [ %53, %65 ], [ %74, %73 ], [ %53, %81 ], [ %53, %79 ]
  %93 = phi i32 [ %52, %65 ], [ %52, %73 ], [ %82, %81 ], [ %52, %79 ]
  %94 = icmp eq i32 %91, %3
  %95 = icmp eq i32 %92, %4
  %96 = select i1 %94, i1 true, i1 %95
  %97 = icmp eq i32 %93, %5
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %99, label %51, !llvm.loop !14

99:                                               ; preds = %87, %51, %36
  %100 = phi i32 [ 0, %36 ], [ 0, %87 ], [ %57, %51 ]
  ret i32 %100
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_processed.cpp() #4 section ".text.startup" {
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
!14 = distinct !{!14, !10, !11}
