; ModuleID = 'benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM/DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM/DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPcS_i(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = zext i32 %2 to i64
  %5 = mul nuw i64 %4, %4
  %6 = alloca i32, i64 %5, align 16
  %7 = alloca i32, i64 %5, align 16
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = zext i32 %2 to i64
  br label %15

11:                                               ; preds = %15, %3
  %12 = icmp sgt i32 %2, 1
  br i1 %12, label %13, label %35

13:                                               ; preds = %11
  %14 = zext i32 %2 to i64
  br label %30

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %28, %15 ]
  %17 = getelementptr inbounds i8, i8* %0, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !5
  %19 = icmp eq i8 %18, 70
  %20 = zext i1 %19 to i32
  %21 = mul nuw nsw i64 %16, %4
  %22 = getelementptr inbounds i32, i32* %6, i64 %21
  %23 = getelementptr inbounds i32, i32* %22, i64 %16
  store i32 %20, i32* %23, align 4, !tbaa !8
  %24 = icmp eq i8 %18, 84
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds i32, i32* %7, i64 %21
  %27 = getelementptr inbounds i32, i32* %26, i64 %16
  store i32 %25, i32* %27, align 4, !tbaa !8
  %28 = add nuw nsw i64 %16, 1
  %29 = icmp eq i64 %28, %10
  br i1 %29, label %11, label %15, !llvm.loop !10

30:                                               ; preds = %13, %40
  %31 = phi i32 [ %2, %13 ], [ %33, %40 ]
  %32 = phi i64 [ 1, %13 ], [ %41, %40 ]
  %33 = add i32 %31, -1
  %34 = zext i32 %33 to i64
  br label %43

35:                                               ; preds = %40, %11
  %36 = add nsw i32 %2, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %7, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !8
  ret i32 %39

40:                                               ; preds = %53
  %41 = add nuw nsw i64 %32, 1
  %42 = icmp eq i64 %41, %14
  br i1 %42, label %35, label %30, !llvm.loop !13

43:                                               ; preds = %30, %53
  %44 = phi i64 [ 0, %30 ], [ %54, %53 ]
  %45 = phi i64 [ %32, %30 ], [ %55, %53 ]
  %46 = mul nuw nsw i64 %44, %4
  %47 = getelementptr inbounds i32, i32* %6, i64 %46
  %48 = getelementptr inbounds i32, i32* %47, i64 %45
  store i32 0, i32* %48, align 4, !tbaa !8
  %49 = getelementptr inbounds i32, i32* %7, i64 %46
  %50 = getelementptr inbounds i32, i32* %49, i64 %45
  store i32 0, i32* %50, align 4, !tbaa !8
  %51 = getelementptr inbounds i32, i32* %7, i64 %45
  %52 = getelementptr inbounds i32, i32* %6, i64 %45
  br label %57

53:                                               ; preds = %115
  %54 = add nuw nsw i64 %44, 1
  %55 = add nuw nsw i64 %45, 1
  %56 = icmp eq i64 %54, %34
  br i1 %56, label %40, label %43, !llvm.loop !14

57:                                               ; preds = %43, %115
  %58 = phi i64 [ 0, %43 ], [ %116, %115 ]
  %59 = add nuw nsw i64 %58, %44
  %60 = getelementptr inbounds i32, i32* %49, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !8
  %62 = getelementptr inbounds i32, i32* %47, i64 %59
  %63 = load i32, i32* %62, align 4, !tbaa !8
  %64 = add nsw i32 %63, %61
  %65 = add nuw nsw i64 %59, 1
  %66 = mul nuw nsw i64 %65, %4
  %67 = getelementptr inbounds i32, i32* %51, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !8
  %69 = getelementptr inbounds i32, i32* %52, i64 %66
  %70 = load i32, i32* %69, align 4, !tbaa !8
  %71 = add nsw i32 %70, %68
  %72 = getelementptr inbounds i8, i8* %1, i64 %59
  %73 = load i8, i8* %72, align 1, !tbaa !5
  switch i8 %73, label %115 [
    i8 38, label %74
    i8 124, label %85
    i8 94, label %98
  ]

74:                                               ; preds = %57
  %75 = mul nsw i32 %68, %61
  %76 = load i32, i32* %50, align 4, !tbaa !8
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %50, align 4, !tbaa !8
  %78 = mul nsw i32 %71, %64
  %79 = load i32, i32* %60, align 4, !tbaa !8
  %80 = load i32, i32* %67, align 4, !tbaa !8
  %81 = mul nsw i32 %80, %79
  %82 = load i32, i32* %48, align 4, !tbaa !8
  %83 = add i32 %82, %78
  %84 = sub i32 %83, %81
  store i32 %84, i32* %48, align 4, !tbaa !8
  br label %115

85:                                               ; preds = %57
  %86 = load i32, i32* %62, align 4, !tbaa !8
  %87 = load i32, i32* %69, align 4, !tbaa !8
  %88 = mul nsw i32 %87, %86
  %89 = load i32, i32* %48, align 4, !tbaa !8
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %48, align 4, !tbaa !8
  %91 = mul nsw i32 %71, %64
  %92 = load i32, i32* %62, align 4, !tbaa !8
  %93 = load i32, i32* %69, align 4, !tbaa !8
  %94 = mul nsw i32 %93, %92
  %95 = load i32, i32* %50, align 4, !tbaa !8
  %96 = add i32 %95, %91
  %97 = sub i32 %96, %94
  store i32 %97, i32* %50, align 4, !tbaa !8
  br label %115

98:                                               ; preds = %57
  %99 = load i32, i32* %62, align 4, !tbaa !8
  %100 = load i32, i32* %67, align 4, !tbaa !8
  %101 = mul nsw i32 %100, %99
  %102 = load i32, i32* %60, align 4, !tbaa !8
  %103 = load i32, i32* %69, align 4, !tbaa !8
  %104 = mul nsw i32 %103, %102
  %105 = add nsw i32 %104, %101
  %106 = load i32, i32* %50, align 4, !tbaa !8
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %50, align 4, !tbaa !8
  %108 = load i32, i32* %60, align 4, !tbaa !8
  %109 = load i32, i32* %67, align 4, !tbaa !8
  %110 = mul nsw i32 %109, %108
  %111 = mul nsw i32 %103, %99
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %48, align 4, !tbaa !8
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %48, align 4, !tbaa !8
  br label %115

115:                                              ; preds = %85, %74, %57, %98
  %116 = add nuw nsw i64 %58, 1
  %117 = icmp eq i64 %116, %32
  br i1 %117, label %53, label %57, !llvm.loop !15
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM_processed.cpp() #4 section ".text.startup" {
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
