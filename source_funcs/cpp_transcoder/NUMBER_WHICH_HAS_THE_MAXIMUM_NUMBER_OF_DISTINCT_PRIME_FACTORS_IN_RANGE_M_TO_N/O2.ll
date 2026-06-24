; ModuleID = 'benchmark/cpp_transcoder/NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N/NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N_processed.cpp'
source_filename = "benchmark/cpp_transcoder/NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N/NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = alloca i64, i64 %4, align 16
  %6 = alloca i8, i64 %4, align 16
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = bitcast i64* %5 to i8*
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = add nuw nsw i64 %11, 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %9, i8 0, i64 %12, i1 false), !tbaa !5
  %13 = add nuw nsw i64 %10, 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %6, i8 1, i64 %13, i1 false), !tbaa !9
  %14 = icmp ult i32 %1, 2
  br i1 %14, label %15, label %60

15:                                               ; preds = %80, %2, %8
  %16 = sext i32 %0 to i64
  %17 = getelementptr inbounds i64, i64* %5, i64 %16
  %18 = load i64, i64* %17, align 8, !tbaa !5
  %19 = icmp slt i32 %1, %0
  br i1 %19, label %84, label %20

20:                                               ; preds = %15
  %21 = add nsw i64 %16, 1
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %3, %22
  br i1 %23, label %84, label %24, !llvm.loop !11

24:                                               ; preds = %20
  %25 = shl i64 %18, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp sgt i64 %18, %26
  %28 = trunc i64 %18 to i32
  %29 = sub i32 %1, %0
  %30 = xor i32 %0, -1
  %31 = add i32 %30, %1
  %32 = and i32 %29, 3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %24, %34
  %35 = phi i64 [ %49, %34 ], [ %21, %24 ]
  %36 = phi i32 [ %48, %34 ], [ %0, %24 ]
  %37 = phi i1 [ %46, %34 ], [ %27, %24 ]
  %38 = phi i32 [ %42, %34 ], [ %28, %24 ]
  %39 = phi i64 [ %44, %34 ], [ %18, %24 ]
  %40 = phi i32 [ %50, %34 ], [ 0, %24 ]
  %41 = trunc i64 %39 to i32
  %42 = select i1 %37, i32 %41, i32 %38
  %43 = getelementptr inbounds i64, i64* %5, i64 %35
  %44 = load i64, i64* %43, align 8, !tbaa !5
  %45 = sext i32 %42 to i64
  %46 = icmp sgt i64 %44, %45
  %47 = trunc i64 %35 to i32
  %48 = select i1 %46, i32 %47, i32 %36
  %49 = add nsw i64 %35, 1
  %50 = add i32 %40, 1
  %51 = icmp eq i32 %50, %32
  br i1 %51, label %52, label %34, !llvm.loop !13

52:                                               ; preds = %34, %24
  %53 = phi i32 [ undef, %24 ], [ %48, %34 ]
  %54 = phi i64 [ %21, %24 ], [ %49, %34 ]
  %55 = phi i32 [ %0, %24 ], [ %48, %34 ]
  %56 = phi i1 [ %27, %24 ], [ %46, %34 ]
  %57 = phi i32 [ %28, %24 ], [ %42, %34 ]
  %58 = phi i64 [ %18, %24 ], [ %44, %34 ]
  %59 = icmp ult i32 %31, 3
  br i1 %59, label %84, label %86

60:                                               ; preds = %8, %80
  %61 = phi i64 [ %81, %80 ], [ 2, %8 ]
  %62 = phi i64 [ %82, %80 ], [ 4, %8 ]
  %63 = getelementptr inbounds i8, i8* %6, i64 %61
  %64 = load i8, i8* %63, align 1, !tbaa !9, !range !15
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds i64, i64* %5, i64 %61
  store i64 1, i64* %67, align 8, !tbaa !5
  %68 = trunc i64 %61 to i32
  %69 = shl i32 %68, 1
  %70 = icmp sgt i32 %69, %1
  br i1 %70, label %80, label %71

71:                                               ; preds = %66, %71
  %72 = phi i64 [ %77, %71 ], [ %62, %66 ]
  %73 = getelementptr inbounds i64, i64* %5, i64 %72
  %74 = load i64, i64* %73, align 8, !tbaa !5
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8, !tbaa !5
  %76 = getelementptr inbounds i8, i8* %6, i64 %72
  store i8 0, i8* %76, align 1, !tbaa !9
  %77 = add nuw nsw i64 %72, %61
  %78 = trunc i64 %77 to i32
  %79 = icmp sgt i32 %78, %1
  br i1 %79, label %80, label %71, !llvm.loop !16

80:                                               ; preds = %71, %66, %60
  %81 = add nuw nsw i64 %61, 1
  %82 = add nuw nsw i64 %62, 2
  %83 = icmp eq i64 %81, %4
  br i1 %83, label %15, label %60, !llvm.loop !17

84:                                               ; preds = %52, %86, %20, %15
  %85 = phi i32 [ %0, %15 ], [ %0, %20 ], [ %53, %52 ], [ %126, %86 ]
  ret i32 %85

86:                                               ; preds = %52, %86
  %87 = phi i64 [ %127, %86 ], [ %54, %52 ]
  %88 = phi i32 [ %126, %86 ], [ %55, %52 ]
  %89 = phi i1 [ %124, %86 ], [ %56, %52 ]
  %90 = phi i32 [ %120, %86 ], [ %57, %52 ]
  %91 = phi i64 [ %122, %86 ], [ %58, %52 ]
  %92 = trunc i64 %91 to i32
  %93 = select i1 %89, i32 %92, i32 %90
  %94 = getelementptr inbounds i64, i64* %5, i64 %87
  %95 = load i64, i64* %94, align 8, !tbaa !5
  %96 = sext i32 %93 to i64
  %97 = icmp sgt i64 %95, %96
  %98 = trunc i64 %87 to i32
  %99 = select i1 %97, i32 %98, i32 %88
  %100 = add nsw i64 %87, 1
  %101 = trunc i64 %95 to i32
  %102 = select i1 %97, i32 %101, i32 %93
  %103 = getelementptr inbounds i64, i64* %5, i64 %100
  %104 = load i64, i64* %103, align 8, !tbaa !5
  %105 = sext i32 %102 to i64
  %106 = icmp sgt i64 %104, %105
  %107 = trunc i64 %100 to i32
  %108 = select i1 %106, i32 %107, i32 %99
  %109 = add nsw i64 %87, 2
  %110 = trunc i64 %104 to i32
  %111 = select i1 %106, i32 %110, i32 %102
  %112 = getelementptr inbounds i64, i64* %5, i64 %109
  %113 = load i64, i64* %112, align 8, !tbaa !5
  %114 = sext i32 %111 to i64
  %115 = icmp sgt i64 %113, %114
  %116 = trunc i64 %109 to i32
  %117 = select i1 %115, i32 %116, i32 %108
  %118 = add nsw i64 %87, 3
  %119 = trunc i64 %113 to i32
  %120 = select i1 %115, i32 %119, i32 %111
  %121 = getelementptr inbounds i64, i64* %5, i64 %118
  %122 = load i64, i64* %121, align 8, !tbaa !5
  %123 = sext i32 %120 to i64
  %124 = icmp sgt i64 %122, %123
  %125 = trunc i64 %118 to i32
  %126 = select i1 %124, i32 %125, i32 %117
  %127 = add nsw i64 %87, 4
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %3, %128
  br i1 %129, label %84, label %86, !llvm.loop !11
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"bool", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{i8 0, i8 2}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
