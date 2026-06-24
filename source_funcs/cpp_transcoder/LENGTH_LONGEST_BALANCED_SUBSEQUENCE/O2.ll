; ModuleID = 'llvm/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LENGTH_LONGEST_BALANCED_SUBSEQUENCE_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = bitcast i32* %5 to i8*
  %7 = shl nuw i64 %4, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 %7, i1 false)
  %8 = add i32 %1, -1
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %75

10:                                               ; preds = %2
  %11 = zext i32 %8 to i64
  %12 = and i64 %11, 1
  %13 = icmp eq i32 %8, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = and i64 %11, 4294967294
  br label %36

16:                                               ; preds = %64, %10
  %17 = phi i64 [ 0, %10 ], [ %55, %64 ]
  %18 = icmp eq i64 %12, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, i8* %0, i64 %17
  %21 = load i8, i8* %20, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 40
  %23 = add nuw nsw i64 %17, 1
  br i1 %22, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, i8* %0, i64 %23
  %26 = load i8, i8* %25, align 1, !tbaa !5
  %27 = icmp eq i8 %26, 41
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = mul nuw nsw i64 %17, %3
  %30 = getelementptr inbounds i32, i32* %5, i64 %29
  %31 = getelementptr inbounds i32, i32* %30, i64 %23
  store i32 2, i32* %31, align 4, !tbaa !8
  br label %32

32:                                               ; preds = %19, %24, %28, %16
  %33 = icmp sgt i32 %1, 2
  br i1 %33, label %34, label %75

34:                                               ; preds = %32
  %35 = add nsw i32 %1, -2
  br label %67

36:                                               ; preds = %64, %14
  %37 = phi i64 [ 0, %14 ], [ %55, %64 ]
  %38 = phi i64 [ 0, %14 ], [ %65, %64 ]
  %39 = getelementptr inbounds i8, i8* %0, i64 %37
  %40 = load i8, i8* %39, align 1, !tbaa !5
  %41 = icmp eq i8 %40, 40
  %42 = or i64 %37, 1
  br i1 %41, label %43, label %51

43:                                               ; preds = %36
  %44 = getelementptr inbounds i8, i8* %0, i64 %42
  %45 = load i8, i8* %44, align 1, !tbaa !5
  %46 = icmp eq i8 %45, 41
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = mul nuw nsw i64 %37, %3
  %49 = getelementptr inbounds i32, i32* %5, i64 %48
  %50 = getelementptr inbounds i32, i32* %49, i64 %42
  store i32 2, i32* %50, align 4, !tbaa !8
  br label %51

51:                                               ; preds = %36, %43, %47
  %52 = getelementptr inbounds i8, i8* %0, i64 %42
  %53 = load i8, i8* %52, align 1, !tbaa !5
  %54 = icmp eq i8 %53, 40
  %55 = add nuw nsw i64 %37, 2
  br i1 %54, label %56, label %64

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, i8* %0, i64 %55
  %58 = load i8, i8* %57, align 1, !tbaa !5
  %59 = icmp eq i8 %58, 41
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = mul nuw nsw i64 %42, %3
  %62 = getelementptr inbounds i32, i32* %5, i64 %61
  %63 = getelementptr inbounds i32, i32* %62, i64 %55
  store i32 2, i32* %63, align 4, !tbaa !8
  br label %64

64:                                               ; preds = %60, %56, %51
  %65 = add i64 %38, 2
  %66 = icmp eq i64 %65, %15
  br i1 %66, label %16, label %36, !llvm.loop !10

67:                                               ; preds = %79, %34
  %68 = phi i64 [ %83, %79 ], [ 0, %34 ]
  %69 = phi i32 [ %81, %79 ], [ %35, %34 ]
  %70 = phi i64 [ %80, %79 ], [ 2, %34 ]
  %71 = zext i32 %69 to i64
  %72 = and i64 %70, 1
  %73 = icmp eq i64 %72, 0
  %74 = icmp eq i64 %68, -1
  br label %84

75:                                               ; preds = %79, %2, %32
  %76 = sext i32 %8 to i64
  %77 = getelementptr inbounds i32, i32* %5, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !8
  ret i32 %78

79:                                               ; preds = %124
  %80 = add nuw nsw i64 %70, 1
  %81 = add i32 %69, -1
  %82 = icmp eq i64 %80, %3
  %83 = add i64 %68, 1
  br i1 %82, label %75, label %67, !llvm.loop !12

84:                                               ; preds = %67, %124
  %85 = phi i64 [ %70, %67 ], [ %126, %124 ]
  %86 = phi i64 [ 0, %67 ], [ %125, %124 ]
  %87 = getelementptr inbounds i8, i8* %0, i64 %86
  %88 = load i8, i8* %87, align 1, !tbaa !5
  %89 = icmp eq i8 %88, 40
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = getelementptr inbounds i8, i8* %0, i64 %85
  %92 = load i8, i8* %91, align 1, !tbaa !5
  %93 = icmp eq i8 %92, 41
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = add nuw nsw i64 %86, 1
  %96 = mul nuw nsw i64 %95, %3
  %97 = getelementptr inbounds i32, i32* %5, i64 %96
  %98 = add nsw i64 %85, -1
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !8
  %101 = add nsw i32 %100, 2
  %102 = mul nuw nsw i64 %86, %3
  %103 = getelementptr inbounds i32, i32* %5, i64 %102
  %104 = getelementptr inbounds i32, i32* %103, i64 %85
  store i32 %101, i32* %104, align 4, !tbaa !8
  br label %105

105:                                              ; preds = %84, %90, %94
  %106 = mul nuw nsw i64 %86, %3
  %107 = getelementptr inbounds i32, i32* %5, i64 %106
  %108 = getelementptr inbounds i32, i32* %107, i64 %85
  %109 = load i32, i32* %108, align 4, !tbaa !8
  %110 = getelementptr inbounds i32, i32* %5, i64 %85
  br i1 %73, label %121, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds i32, i32* %107, i64 %86
  %113 = load i32, i32* %112, align 4, !tbaa !8
  %114 = add nuw nsw i64 %86, 1
  %115 = mul nuw nsw i64 %114, %3
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  %117 = load i32, i32* %116, align 4, !tbaa !8
  %118 = add nsw i32 %117, %113
  %119 = icmp slt i32 %109, %118
  %120 = select i1 %119, i32 %118, i32 %109
  store i32 %120, i32* %108, align 4, !tbaa !8
  br label %121

121:                                              ; preds = %111, %105
  %122 = phi i32 [ %109, %105 ], [ %120, %111 ]
  %123 = phi i64 [ %86, %105 ], [ %114, %111 ]
  br i1 %74, label %124, label %128

124:                                              ; preds = %128, %121
  %125 = add nuw nsw i64 %86, 1
  %126 = add nuw nsw i64 %85, 1
  %127 = icmp eq i64 %125, %71
  br i1 %127, label %79, label %84, !llvm.loop !13

128:                                              ; preds = %121, %128
  %129 = phi i32 [ %148, %128 ], [ %122, %121 ]
  %130 = phi i64 [ %142, %128 ], [ %123, %121 ]
  %131 = getelementptr inbounds i32, i32* %107, i64 %130
  %132 = load i32, i32* %131, align 4, !tbaa !8
  %133 = add nuw nsw i64 %130, 1
  %134 = mul nuw nsw i64 %133, %3
  %135 = getelementptr inbounds i32, i32* %110, i64 %134
  %136 = load i32, i32* %135, align 4, !tbaa !8
  %137 = add nsw i32 %136, %132
  %138 = icmp slt i32 %129, %137
  %139 = select i1 %138, i32 %137, i32 %129
  store i32 %139, i32* %108, align 4, !tbaa !8
  %140 = getelementptr inbounds i32, i32* %107, i64 %133
  %141 = load i32, i32* %140, align 4, !tbaa !8
  %142 = add nuw nsw i64 %130, 2
  %143 = mul nuw nsw i64 %142, %3
  %144 = getelementptr inbounds i32, i32* %110, i64 %143
  %145 = load i32, i32* %144, align 4, !tbaa !8
  %146 = add nsw i32 %145, %141
  %147 = icmp slt i32 %139, %146
  %148 = select i1 %147, i32 %146, i32 %139
  store i32 %148, i32* %108, align 4, !tbaa !8
  %149 = icmp eq i64 %142, %85
  br i1 %149, label %124, label %128, !llvm.loop !14
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LENGTH_LONGEST_BALANCED_SUBSEQUENCE_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
