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
  %13 = zext i32 %1 to i64
  %14 = add nuw nsw i64 %13, 1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %6, i8 1, i64 %14, i1 false), !tbaa !9
  br label %15

15:                                               ; preds = %8, %2
  %16 = icmp slt i32 %1, 2
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = add nuw nsw i32 %1, 1
  %19 = zext i32 %18 to i64
  br label %29

20:                                               ; preds = %49, %15
  %21 = icmp sgt i32 %0, %1
  br i1 %21, label %53, label %22

22:                                               ; preds = %20
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds i64, i64* %5, i64 %23
  %25 = load i64, i64* %24, align 8, !tbaa !5
  %26 = trunc i64 %25 to i32
  %27 = sext i32 %0 to i64
  %28 = add nuw nsw i32 %1, 1
  br label %55

29:                                               ; preds = %17, %49
  %30 = phi i64 [ 2, %17 ], [ %50, %49 ]
  %31 = phi i64 [ 4, %17 ], [ %51, %49 ]
  %32 = getelementptr inbounds i8, i8* %6, i64 %30
  %33 = load i8, i8* %32, align 1, !tbaa !9, !range !11
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i64, i64* %5, i64 %30
  store i64 1, i64* %36, align 8, !tbaa !5
  %37 = trunc i64 %30 to i32
  %38 = shl i32 %37, 1
  %39 = icmp sgt i32 %38, %1
  br i1 %39, label %49, label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ %46, %40 ], [ %31, %35 ]
  %42 = getelementptr inbounds i64, i64* %5, i64 %41
  %43 = load i64, i64* %42, align 8, !tbaa !5
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8, !tbaa !5
  %45 = getelementptr inbounds i8, i8* %6, i64 %41
  store i8 0, i8* %45, align 1, !tbaa !9
  %46 = add nuw nsw i64 %41, %30
  %47 = trunc i64 %46 to i32
  %48 = icmp sgt i32 %47, %1
  br i1 %48, label %49, label %40, !llvm.loop !12

49:                                               ; preds = %40, %35, %29
  %50 = add nuw nsw i64 %30, 1
  %51 = add nuw nsw i64 %31, 2
  %52 = icmp eq i64 %50, %19
  br i1 %52, label %20, label %29, !llvm.loop !15

53:                                               ; preds = %55, %20
  %54 = phi i32 [ %0, %20 ], [ %66, %55 ]
  ret i32 %54

55:                                               ; preds = %22, %55
  %56 = phi i64 [ %27, %22 ], [ %67, %55 ]
  %57 = phi i32 [ %0, %22 ], [ %66, %55 ]
  %58 = phi i32 [ %26, %22 ], [ %64, %55 ]
  %59 = getelementptr inbounds i64, i64* %5, i64 %56
  %60 = load i64, i64* %59, align 8, !tbaa !5
  %61 = sext i32 %58 to i64
  %62 = icmp sgt i64 %60, %61
  %63 = trunc i64 %60 to i32
  %64 = select i1 %62, i32 %63, i32 %58
  %65 = trunc i64 %56 to i32
  %66 = select i1 %62, i32 %65, i32 %57
  %67 = add nsw i64 %56, 1
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %28, %68
  br i1 %69, label %53, label %55, !llvm.loop !16
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_WHICH_HAS_THE_MAXIMUM_NUMBER_OF_DISTINCT_PRIME_FACTORS_IN_RANGE_M_TO_N_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
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
!11 = !{i8 0, i8 2}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
