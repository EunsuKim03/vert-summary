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
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = and i64 %4, 1
  %11 = icmp eq i32 %2, 1
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = and i64 %4, 4294967294
  br label %35

14:                                               ; preds = %35, %9
  %15 = phi i64 [ 0, %9 ], [ %61, %35 ]
  %16 = icmp eq i64 %10, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, i8* %0, i64 %15
  %19 = load i8, i8* %18, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 70
  %21 = zext i1 %20 to i32
  %22 = mul nuw nsw i64 %15, %4
  %23 = getelementptr inbounds i32, i32* %6, i64 %22
  %24 = getelementptr inbounds i32, i32* %23, i64 %15
  store i32 %21, i32* %24, align 4, !tbaa !8
  %25 = icmp eq i8 %19, 84
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds i32, i32* %7, i64 %22
  %28 = getelementptr inbounds i32, i32* %27, i64 %15
  store i32 %26, i32* %28, align 4, !tbaa !8
  br label %29

29:                                               ; preds = %14, %17
  %30 = icmp sgt i32 %2, 1
  br i1 %30, label %33, label %31

31:                                               ; preds = %3, %29
  %32 = add nsw i32 %2, -1
  br label %68

33:                                               ; preds = %29
  %34 = add nsw i32 %2, -1
  br label %64

35:                                               ; preds = %35, %12
  %36 = phi i64 [ 0, %12 ], [ %61, %35 ]
  %37 = phi i64 [ 0, %12 ], [ %62, %35 ]
  %38 = getelementptr inbounds i8, i8* %0, i64 %36
  %39 = load i8, i8* %38, align 1, !tbaa !5
  %40 = icmp eq i8 %39, 70
  %41 = zext i1 %40 to i32
  %42 = mul nuw nsw i64 %36, %4
  %43 = getelementptr inbounds i32, i32* %6, i64 %42
  %44 = getelementptr inbounds i32, i32* %43, i64 %36
  store i32 %41, i32* %44, align 8, !tbaa !8
  %45 = icmp eq i8 %39, 84
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds i32, i32* %7, i64 %42
  %48 = getelementptr inbounds i32, i32* %47, i64 %36
  store i32 %46, i32* %48, align 8, !tbaa !8
  %49 = or i64 %36, 1
  %50 = getelementptr inbounds i8, i8* %0, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !5
  %52 = icmp eq i8 %51, 70
  %53 = zext i1 %52 to i32
  %54 = mul nuw nsw i64 %49, %4
  %55 = getelementptr inbounds i32, i32* %6, i64 %54
  %56 = getelementptr inbounds i32, i32* %55, i64 %49
  store i32 %53, i32* %56, align 4, !tbaa !8
  %57 = icmp eq i8 %51, 84
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds i32, i32* %7, i64 %54
  %60 = getelementptr inbounds i32, i32* %59, i64 %49
  store i32 %58, i32* %60, align 4, !tbaa !8
  %61 = add nuw nsw i64 %36, 2
  %62 = add i64 %37, 2
  %63 = icmp eq i64 %62, %13
  br i1 %63, label %14, label %35, !llvm.loop !10

64:                                               ; preds = %73, %33
  %65 = phi i32 [ %34, %33 ], [ %75, %73 ]
  %66 = phi i64 [ 1, %33 ], [ %74, %73 ]
  %67 = zext i32 %65 to i64
  br label %77

68:                                               ; preds = %73, %31
  %69 = phi i32 [ %32, %31 ], [ %34, %73 ]
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %7, i64 %70
  %72 = load i32, i32* %71, align 4, !tbaa !8
  ret i32 %72

73:                                               ; preds = %87
  %74 = add nuw nsw i64 %66, 1
  %75 = add i32 %65, -1
  %76 = icmp eq i64 %74, %4
  br i1 %76, label %68, label %64, !llvm.loop !12

77:                                               ; preds = %64, %87
  %78 = phi i64 [ 0, %64 ], [ %88, %87 ]
  %79 = phi i64 [ %66, %64 ], [ %89, %87 ]
  %80 = mul nuw nsw i64 %78, %4
  %81 = getelementptr inbounds i32, i32* %6, i64 %80
  %82 = getelementptr inbounds i32, i32* %81, i64 %79
  store i32 0, i32* %82, align 4, !tbaa !8
  %83 = getelementptr inbounds i32, i32* %7, i64 %80
  %84 = getelementptr inbounds i32, i32* %83, i64 %79
  store i32 0, i32* %84, align 4, !tbaa !8
  %85 = getelementptr inbounds i32, i32* %7, i64 %79
  %86 = getelementptr inbounds i32, i32* %6, i64 %79
  br label %91

87:                                               ; preds = %139
  %88 = add nuw nsw i64 %78, 1
  %89 = add nuw nsw i64 %79, 1
  %90 = icmp eq i64 %88, %67
  br i1 %90, label %73, label %77, !llvm.loop !13

91:                                               ; preds = %77, %139
  %92 = phi i32 [ 0, %77 ], [ %140, %139 ]
  %93 = phi i32 [ 0, %77 ], [ %141, %139 ]
  %94 = phi i64 [ 0, %77 ], [ %142, %139 ]
  %95 = add nuw nsw i64 %94, %78
  %96 = getelementptr inbounds i32, i32* %83, i64 %95
  %97 = load i32, i32* %96, align 4, !tbaa !8
  %98 = getelementptr inbounds i32, i32* %81, i64 %95
  %99 = load i32, i32* %98, align 4, !tbaa !8
  %100 = add nsw i32 %99, %97
  %101 = add nuw nsw i64 %95, 1
  %102 = mul nuw nsw i64 %101, %4
  %103 = getelementptr inbounds i32, i32* %85, i64 %102
  %104 = load i32, i32* %103, align 4, !tbaa !8
  %105 = getelementptr inbounds i32, i32* %86, i64 %102
  %106 = load i32, i32* %105, align 4, !tbaa !8
  %107 = add nsw i32 %106, %104
  %108 = getelementptr inbounds i8, i8* %1, i64 %95
  %109 = load i8, i8* %108, align 1, !tbaa !5
  switch i8 %109, label %139 [
    i8 38, label %110
    i8 124, label %119
    i8 94, label %128
  ]

110:                                              ; preds = %91
  %111 = mul nsw i32 %104, %97
  %112 = add nsw i32 %93, %111
  store i32 %112, i32* %84, align 4, !tbaa !8
  %113 = mul nsw i32 %107, %100
  %114 = load i32, i32* %96, align 4, !tbaa !8
  %115 = load i32, i32* %103, align 4, !tbaa !8
  %116 = mul nsw i32 %115, %114
  %117 = add i32 %92, %113
  %118 = sub i32 %117, %116
  store i32 %118, i32* %82, align 4, !tbaa !8
  br label %139

119:                                              ; preds = %91
  %120 = mul nsw i32 %106, %99
  %121 = add nsw i32 %92, %120
  store i32 %121, i32* %82, align 4, !tbaa !8
  %122 = mul nsw i32 %107, %100
  %123 = load i32, i32* %98, align 4, !tbaa !8
  %124 = load i32, i32* %105, align 4, !tbaa !8
  %125 = mul nsw i32 %124, %123
  %126 = add i32 %93, %122
  %127 = sub i32 %126, %125
  store i32 %127, i32* %84, align 4, !tbaa !8
  br label %139

128:                                              ; preds = %91
  %129 = mul nsw i32 %104, %99
  %130 = mul nsw i32 %106, %97
  %131 = add nsw i32 %130, %129
  %132 = add nsw i32 %131, %93
  store i32 %132, i32* %84, align 4, !tbaa !8
  %133 = load i32, i32* %96, align 4, !tbaa !8
  %134 = load i32, i32* %103, align 4, !tbaa !8
  %135 = mul nsw i32 %134, %133
  %136 = mul nsw i32 %106, %99
  %137 = add nsw i32 %135, %136
  %138 = add nsw i32 %137, %92
  store i32 %138, i32* %82, align 4, !tbaa !8
  br label %139

139:                                              ; preds = %91, %119, %110, %128
  %140 = phi i32 [ %92, %91 ], [ %121, %119 ], [ %118, %110 ], [ %138, %128 ]
  %141 = phi i32 [ %93, %91 ], [ %127, %119 ], [ %112, %110 ], [ %132, %128 ]
  %142 = add nuw nsw i64 %94, 1
  %143 = icmp eq i64 %142, %66
  br i1 %143, label %87, label %91, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
