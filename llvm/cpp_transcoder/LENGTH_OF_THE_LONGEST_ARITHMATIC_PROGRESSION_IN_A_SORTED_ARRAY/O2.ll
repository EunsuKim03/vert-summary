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
  br i1 %3, label %144, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = tail call i8* @llvm.stacksave()
  %7 = mul nuw nsw i64 %5, %5
  %8 = alloca i32, i64 %7, align 16
  %9 = add nsw i32 %1, -1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = add nsw i64 %5, -1
  %13 = and i64 %5, 3
  %14 = icmp ult i64 %12, 3
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = and i64 %5, 4294967292
  br label %34

17:                                               ; preds = %34, %4
  %18 = phi i64 [ 0, %4 ], [ %48, %34 ]
  %19 = icmp eq i64 %13, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ %25, %20 ], [ %18, %17 ]
  %22 = phi i64 [ %26, %20 ], [ 0, %17 ]
  %23 = mul nuw nsw i64 %21, %5
  %24 = getelementptr inbounds i32, i32* %11, i64 %23
  store i32 2, i32* %24, align 4, !tbaa !5
  %25 = add nuw nsw i64 %21, 1
  %26 = add i64 %22, 1
  %27 = icmp eq i64 %26, %13
  br i1 %27, label %28, label %20, !llvm.loop !9

28:                                               ; preds = %20, %17
  %29 = icmp sgt i32 %1, 2
  br i1 %29, label %30, label %53

30:                                               ; preds = %28
  %31 = add nsw i32 %1, -2
  %32 = zext i32 %31 to i64
  %33 = zext i32 %1 to i64
  br label %55

34:                                               ; preds = %34, %15
  %35 = phi i64 [ 0, %15 ], [ %48, %34 ]
  %36 = phi i64 [ 0, %15 ], [ %49, %34 ]
  %37 = mul nuw nsw i64 %35, %5
  %38 = getelementptr inbounds i32, i32* %11, i64 %37
  store i32 2, i32* %38, align 4, !tbaa !5
  %39 = or i64 %35, 1
  %40 = mul nuw nsw i64 %39, %5
  %41 = getelementptr inbounds i32, i32* %11, i64 %40
  store i32 2, i32* %41, align 4, !tbaa !5
  %42 = or i64 %35, 2
  %43 = mul nuw nsw i64 %42, %5
  %44 = getelementptr inbounds i32, i32* %11, i64 %43
  store i32 2, i32* %44, align 4, !tbaa !5
  %45 = or i64 %35, 3
  %46 = mul nuw nsw i64 %45, %5
  %47 = getelementptr inbounds i32, i32* %11, i64 %46
  store i32 2, i32* %47, align 4, !tbaa !5
  %48 = add nuw nsw i64 %35, 4
  %49 = add i64 %36, 4
  %50 = icmp eq i64 %49, %16
  br i1 %50, label %17, label %34, !llvm.loop !11

51:                                               ; preds = %89, %129, %71
  %52 = icmp sgt i64 %56, 1
  br i1 %52, label %55, label %53, !llvm.loop !13

53:                                               ; preds = %51, %28
  %54 = phi i32 [ 2, %28 ], [ %72, %51 ]
  tail call void @llvm.stackrestore(i8* %6)
  br label %144

55:                                               ; preds = %30, %51
  %56 = phi i64 [ %32, %30 ], [ %58, %51 ]
  %57 = phi i32 [ 2, %30 ], [ %72, %51 ]
  %58 = add nsw i64 %56, -1
  %59 = add nuw nsw i64 %56, 1
  %60 = icmp slt i64 %59, %33
  %61 = trunc i64 %58 to i32
  br i1 %60, label %62, label %71

62:                                               ; preds = %55
  %63 = getelementptr inbounds i32, i32* %0, i64 %56
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = shl nsw i32 %64, 1
  %66 = mul nsw i64 %56, %5
  %67 = getelementptr inbounds i32, i32* %8, i64 %66
  %68 = trunc i64 %59 to i32
  %69 = getelementptr inbounds i32, i32* %8, i64 %56
  %70 = getelementptr inbounds i32, i32* %8, i64 %56
  br label %92

71:                                               ; preds = %122, %55
  %72 = phi i32 [ %57, %55 ], [ %123, %122 ]
  %73 = phi i32 [ %61, %55 ], [ %124, %122 ]
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %51

75:                                               ; preds = %71
  %76 = zext i32 %73 to i64
  %77 = getelementptr inbounds i32, i32* %8, i64 %56
  %78 = add nuw nsw i64 %76, 1
  %79 = and i64 %78, 3
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %75, %81
  %82 = phi i64 [ %86, %81 ], [ %76, %75 ]
  %83 = phi i64 [ %87, %81 ], [ 0, %75 ]
  %84 = mul nuw nsw i64 %82, %5
  %85 = getelementptr inbounds i32, i32* %77, i64 %84
  store i32 2, i32* %85, align 4, !tbaa !5
  %86 = add nsw i64 %82, -1
  %87 = add i64 %83, 1
  %88 = icmp eq i64 %87, %79
  br i1 %88, label %89, label %81, !llvm.loop !14

89:                                               ; preds = %81, %75
  %90 = phi i64 [ %76, %75 ], [ %86, %81 ]
  %91 = icmp ult i32 %73, 3
  br i1 %91, label %51, label %129

92:                                               ; preds = %62, %122
  %93 = phi i32 [ %68, %62 ], [ %125, %122 ]
  %94 = phi i32 [ %61, %62 ], [ %124, %122 ]
  %95 = phi i32 [ %57, %62 ], [ %123, %122 ]
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !5
  %99 = sext i32 %93 to i64
  %100 = getelementptr inbounds i32, i32* %0, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = add nsw i32 %101, %98
  %103 = icmp slt i32 %102, %65
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = add nsw i32 %93, 1
  br label %122

106:                                              ; preds = %92
  %107 = icmp sgt i32 %102, %65
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = mul nuw nsw i64 %96, %5
  %110 = getelementptr inbounds i32, i32* %70, i64 %109
  store i32 2, i32* %110, align 4, !tbaa !5
  %111 = add nsw i32 %94, -1
  br label %122

112:                                              ; preds = %106
  %113 = getelementptr inbounds i32, i32* %67, i64 %99
  %114 = load i32, i32* %113, align 4, !tbaa !5
  %115 = add nsw i32 %114, 1
  %116 = mul nuw nsw i64 %96, %5
  %117 = getelementptr inbounds i32, i32* %69, i64 %116
  store i32 %115, i32* %117, align 4, !tbaa !5
  %118 = icmp slt i32 %95, %115
  %119 = select i1 %118, i32 %115, i32 %95
  %120 = add nsw i32 %94, -1
  %121 = add nsw i32 %93, 1
  br label %122

122:                                              ; preds = %108, %112, %104
  %123 = phi i32 [ %95, %104 ], [ %95, %108 ], [ %119, %112 ]
  %124 = phi i32 [ %94, %104 ], [ %111, %108 ], [ %120, %112 ]
  %125 = phi i32 [ %105, %104 ], [ %93, %108 ], [ %121, %112 ]
  %126 = icmp sgt i32 %124, -1
  %127 = icmp slt i32 %125, %1
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %92, label %71, !llvm.loop !15

129:                                              ; preds = %89, %129
  %130 = phi i64 [ %142, %129 ], [ %90, %89 ]
  %131 = mul nuw nsw i64 %130, %5
  %132 = getelementptr inbounds i32, i32* %77, i64 %131
  store i32 2, i32* %132, align 4, !tbaa !5
  %133 = add nsw i64 %130, -1
  %134 = mul nuw nsw i64 %133, %5
  %135 = getelementptr inbounds i32, i32* %77, i64 %134
  store i32 2, i32* %135, align 4, !tbaa !5
  %136 = add nsw i64 %130, -2
  %137 = mul nuw nsw i64 %136, %5
  %138 = getelementptr inbounds i32, i32* %77, i64 %137
  store i32 2, i32* %138, align 4, !tbaa !5
  %139 = add nsw i64 %130, -3
  %140 = mul nuw nsw i64 %139, %5
  %141 = getelementptr inbounds i32, i32* %77, i64 %140
  store i32 2, i32* %141, align 4, !tbaa !5
  %142 = add nsw i64 %130, -4
  %143 = icmp eq i64 %139, 0
  br i1 %143, label %51, label %129, !llvm.loop !16

144:                                              ; preds = %2, %53
  %145 = phi i32 [ %54, %53 ], [ %1, %2 ]
  ret i32 %145
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_processed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
