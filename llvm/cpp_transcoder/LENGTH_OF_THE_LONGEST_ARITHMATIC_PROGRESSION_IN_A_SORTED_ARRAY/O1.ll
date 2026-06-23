; ModuleID = 'benchmark/cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp slt i32 %1, 3
  br i1 %3, label %96, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = call i8* @llvm.stacksave()
  %7 = mul nuw i64 %5, %5
  %8 = alloca i32, i64 %7, align 16
  %9 = add nsw i32 %1, -1
  %10 = zext i32 %9 to i64
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %10
  br label %19

13:                                               ; preds = %19
  %14 = icmp sgt i32 %1, 2
  br i1 %14, label %15, label %27

15:                                               ; preds = %13
  %16 = add i32 %1, -2
  %17 = sext i32 %16 to i64
  %18 = sext i32 %1 to i64
  br label %29

19:                                               ; preds = %4, %19
  %20 = phi i64 [ 0, %4 ], [ %23, %19 ]
  %21 = mul nuw nsw i64 %20, %5
  %22 = getelementptr inbounds i32, i32* %12, i64 %21
  store i32 2, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %13, label %19, !llvm.loop !9

25:                                               ; preds = %90, %46
  %26 = icmp sgt i64 %30, 1
  br i1 %26, label %29, label %27, !llvm.loop !12

27:                                               ; preds = %25, %13
  %28 = phi i32 [ 2, %13 ], [ %47, %25 ]
  call void @llvm.stackrestore(i8* %6)
  br label %96

29:                                               ; preds = %15, %25
  %30 = phi i64 [ %17, %15 ], [ %32, %25 ]
  %31 = phi i32 [ 2, %15 ], [ %47, %25 ]
  %32 = add nsw i64 %30, -1
  %33 = add nsw i64 %30, 1
  %34 = icmp slt i64 %33, %18
  %35 = trunc i64 %32 to i32
  br i1 %34, label %36, label %46

36:                                               ; preds = %29
  %37 = getelementptr inbounds i32, i32* %0, i64 %30
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = shl nsw i32 %38, 1
  %40 = mul nsw i64 %30, %5
  %41 = getelementptr inbounds i32, i32* %8, i64 %40
  %42 = trunc i64 %32 to i32
  %43 = trunc i64 %33 to i32
  %44 = getelementptr inbounds i32, i32* %8, i64 %30
  %45 = getelementptr inbounds i32, i32* %8, i64 %30
  br label %53

46:                                               ; preds = %83, %29
  %47 = phi i32 [ %31, %29 ], [ %84, %83 ]
  %48 = phi i32 [ %35, %29 ], [ %85, %83 ]
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %25

50:                                               ; preds = %46
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i32, i32* %8, i64 %30
  br label %90

53:                                               ; preds = %36, %83
  %54 = phi i32 [ %43, %36 ], [ %86, %83 ]
  %55 = phi i32 [ %42, %36 ], [ %85, %83 ]
  %56 = phi i32 [ %31, %36 ], [ %84, %83 ]
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %0, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = sext i32 %54 to i64
  %61 = getelementptr inbounds i32, i32* %0, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = add nsw i32 %62, %59
  %64 = icmp slt i32 %63, %39
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = add nsw i32 %54, 1
  br label %83

67:                                               ; preds = %53
  %68 = icmp sgt i32 %63, %39
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = mul nsw i64 %57, %5
  %71 = getelementptr inbounds i32, i32* %45, i64 %70
  store i32 2, i32* %71, align 4, !tbaa !5
  %72 = add nsw i32 %55, -1
  br label %83

73:                                               ; preds = %67
  %74 = getelementptr inbounds i32, i32* %41, i64 %60
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %76 = add nsw i32 %75, 1
  %77 = mul nsw i64 %57, %5
  %78 = getelementptr inbounds i32, i32* %44, i64 %77
  store i32 %76, i32* %78, align 4, !tbaa !5
  %79 = icmp slt i32 %56, %76
  %80 = select i1 %79, i32 %76, i32 %56
  %81 = add nsw i32 %55, -1
  %82 = add nsw i32 %54, 1
  br label %83

83:                                               ; preds = %69, %73, %65
  %84 = phi i32 [ %56, %65 ], [ %56, %69 ], [ %80, %73 ]
  %85 = phi i32 [ %55, %65 ], [ %72, %69 ], [ %81, %73 ]
  %86 = phi i32 [ %66, %65 ], [ %54, %69 ], [ %82, %73 ]
  %87 = icmp sgt i32 %85, -1
  %88 = icmp slt i32 %86, %1
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %53, label %46, !llvm.loop !13

90:                                               ; preds = %50, %90
  %91 = phi i64 [ %51, %50 ], [ %94, %90 ]
  %92 = mul nsw i64 %91, %5
  %93 = getelementptr inbounds i32, i32* %52, i64 %92
  store i32 2, i32* %93, align 4, !tbaa !5
  %94 = add nsw i64 %91, -1
  %95 = icmp sgt i64 %91, 0
  br i1 %95, label %90, label %25, !llvm.loop !14

96:                                               ; preds = %2, %27
  %97 = phi i32 [ %28, %27 ], [ %1, %2 ]
  ret i32 %97
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
