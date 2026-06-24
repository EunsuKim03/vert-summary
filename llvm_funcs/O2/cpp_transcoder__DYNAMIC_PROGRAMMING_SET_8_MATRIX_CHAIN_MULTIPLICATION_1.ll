; ModuleID = 'llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %135

7:                                                ; preds = %2
  %8 = add nsw i64 %3, -1
  %9 = add nsw i64 %3, -2
  %10 = and i64 %8, 3
  %11 = icmp ult i64 %9, 3
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = and i64 %8, -4
  br label %30

14:                                               ; preds = %30, %7
  %15 = phi i64 [ 1, %7 ], [ %48, %30 ]
  %16 = icmp eq i64 %10, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ %23, %17 ], [ %15, %14 ]
  %19 = phi i64 [ %24, %17 ], [ 0, %14 ]
  %20 = mul nuw nsw i64 %18, %3
  %21 = getelementptr inbounds i32, i32* %5, i64 %20
  %22 = getelementptr inbounds i32, i32* %21, i64 %18
  store i32 0, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %18, 1
  %24 = add i64 %19, 1
  %25 = icmp eq i64 %24, %10
  br i1 %25, label %26, label %17, !llvm.loop !9

26:                                               ; preds = %17, %14
  %27 = icmp sgt i32 %1, 2
  br i1 %27, label %28, label %135

28:                                               ; preds = %26
  %29 = zext i32 %1 to i64
  br label %51

30:                                               ; preds = %30, %12
  %31 = phi i64 [ 1, %12 ], [ %48, %30 ]
  %32 = phi i64 [ 0, %12 ], [ %49, %30 ]
  %33 = mul nuw nsw i64 %31, %3
  %34 = getelementptr inbounds i32, i32* %5, i64 %33
  %35 = getelementptr inbounds i32, i32* %34, i64 %31
  store i32 0, i32* %35, align 4, !tbaa !5
  %36 = add nuw nsw i64 %31, 1
  %37 = mul nuw nsw i64 %36, %3
  %38 = getelementptr inbounds i32, i32* %5, i64 %37
  %39 = getelementptr inbounds i32, i32* %38, i64 %36
  store i32 0, i32* %39, align 4, !tbaa !5
  %40 = add nuw nsw i64 %31, 2
  %41 = mul nuw nsw i64 %40, %3
  %42 = getelementptr inbounds i32, i32* %5, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 %40
  store i32 0, i32* %43, align 4, !tbaa !5
  %44 = add nuw nsw i64 %31, 3
  %45 = mul nuw nsw i64 %44, %3
  %46 = getelementptr inbounds i32, i32* %5, i64 %45
  %47 = getelementptr inbounds i32, i32* %46, i64 %44
  store i32 0, i32* %47, align 4, !tbaa !5
  %48 = add nuw nsw i64 %31, 4
  %49 = add i64 %32, 4
  %50 = icmp eq i64 %49, %13
  br i1 %50, label %14, label %30, !llvm.loop !11

51:                                               ; preds = %28, %131
  %52 = phi i64 [ 0, %28 ], [ %134, %131 ]
  %53 = phi i64 [ 2, %28 ], [ %132, %131 ]
  %54 = add i64 %52, 1
  %55 = icmp ult i64 %53, %29
  br i1 %55, label %56, label %131

56:                                               ; preds = %51
  %57 = and i64 %54, 1
  %58 = icmp eq i64 %52, 0
  %59 = and i64 %54, -2
  %60 = icmp eq i64 %57, 0
  br label %61

61:                                               ; preds = %56, %127
  %62 = phi i64 [ %129, %127 ], [ %53, %56 ]
  %63 = phi i64 [ %128, %127 ], [ 1, %56 ]
  %64 = add nuw nsw i64 %63, %53
  %65 = add nsw i64 %64, -1
  %66 = mul nuw nsw i64 %63, %3
  %67 = getelementptr inbounds i32, i32* %5, i64 %66
  %68 = getelementptr inbounds i32, i32* %67, i64 %65
  store i32 2147483647, i32* %68, align 4
  %69 = add nsw i64 %63, -1
  %70 = getelementptr inbounds i32, i32* %0, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = getelementptr inbounds i32, i32* %0, i64 %65
  %73 = load i32, i32* %72, align 4, !tbaa !5
  %74 = getelementptr inbounds i32, i32* %5, i64 %65
  br i1 %58, label %109, label %75

75:                                               ; preds = %61, %75
  %76 = phi i32 [ %106, %75 ], [ 2147483647, %61 ]
  %77 = phi i64 [ %95, %75 ], [ %63, %61 ]
  %78 = phi i64 [ %107, %75 ], [ 0, %61 ]
  %79 = getelementptr inbounds i32, i32* %67, i64 %77
  %80 = load i32, i32* %79, align 4, !tbaa !5
  %81 = add nuw nsw i64 %77, 1
  %82 = mul nuw nsw i64 %81, %3
  %83 = getelementptr inbounds i32, i32* %74, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !5
  %85 = add nsw i32 %84, %80
  %86 = getelementptr inbounds i32, i32* %0, i64 %77
  %87 = load i32, i32* %86, align 4, !tbaa !5
  %88 = mul nsw i32 %87, %71
  %89 = mul nsw i32 %88, %73
  %90 = add nsw i32 %85, %89
  %91 = icmp slt i32 %90, %76
  %92 = select i1 %91, i32 %90, i32 %76
  store i32 %92, i32* %68, align 4
  %93 = getelementptr inbounds i32, i32* %67, i64 %81
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = add nuw nsw i64 %77, 2
  %96 = mul nuw nsw i64 %95, %3
  %97 = getelementptr inbounds i32, i32* %74, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !5
  %99 = add nsw i32 %98, %94
  %100 = getelementptr inbounds i32, i32* %0, i64 %81
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = mul nsw i32 %101, %71
  %103 = mul nsw i32 %102, %73
  %104 = add nsw i32 %99, %103
  %105 = icmp slt i32 %104, %92
  %106 = select i1 %105, i32 %104, i32 %92
  store i32 %106, i32* %68, align 4
  %107 = add i64 %78, 2
  %108 = icmp eq i64 %107, %59
  br i1 %108, label %109, label %75, !llvm.loop !13

109:                                              ; preds = %75, %61
  %110 = phi i32 [ 2147483647, %61 ], [ %106, %75 ]
  %111 = phi i64 [ %63, %61 ], [ %95, %75 ]
  br i1 %60, label %127, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds i32, i32* %67, i64 %111
  %114 = load i32, i32* %113, align 4, !tbaa !5
  %115 = add nuw nsw i64 %111, 1
  %116 = mul nuw nsw i64 %115, %3
  %117 = getelementptr inbounds i32, i32* %74, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !5
  %119 = add nsw i32 %118, %114
  %120 = getelementptr inbounds i32, i32* %0, i64 %111
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %122 = mul nsw i32 %121, %71
  %123 = mul nsw i32 %122, %73
  %124 = add nsw i32 %119, %123
  %125 = icmp slt i32 %124, %110
  %126 = select i1 %125, i32 %124, i32 %110
  store i32 %126, i32* %68, align 4
  br label %127

127:                                              ; preds = %109, %112
  %128 = add nuw nsw i64 %63, 1
  %129 = add nuw nsw i64 %62, 1
  %130 = icmp eq i64 %129, %3
  br i1 %130, label %131, label %61, !llvm.loop !14

131:                                              ; preds = %127, %51
  %132 = add nuw nsw i64 %53, 1
  %133 = icmp eq i64 %132, %3
  %134 = add i64 %52, 1
  br i1 %133, label %135, label %51, !llvm.loop !15

135:                                              ; preds = %131, %2, %26
  %136 = getelementptr inbounds i32, i32* %5, i64 %3
  %137 = add nsw i32 %1, -1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4, !tbaa !5
  ret i32 %140
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_reprocessed.cpp() #4 section ".text.startup" {
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
