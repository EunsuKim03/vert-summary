; ModuleID = 'benchmark/cpp_transcoder/COUNT_SUBARRAYS_WITH_SAME_EVEN_AND_ODD_ELEMENTS/COUNT_SUBARRAYS_WITH_SAME_EVEN_AND_ODD_ELEMENTS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_SUBARRAYS_WITH_SAME_EVEN_AND_ODD_ELEMENTS/COUNT_SUBARRAYS_WITH_SAME_EVEN_AND_ODD_ELEMENTS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_SUBARRAYS_WITH_SAME_EVEN_AND_ODD_ELEMENTS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = alloca i32, i64 %4, align 16
  %6 = alloca i32, i64 %4, align 16
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = bitcast i32* %6 to i8*
  %10 = bitcast i32* %5 to i8*
  %11 = sext i32 %3 to i64
  %12 = shl nsw i64 %11, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %12, i1 false), !tbaa !5
  %13 = shl nsw i64 %11, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %13, i1 false), !tbaa !5
  br label %14

14:                                               ; preds = %8, %2
  store i32 1, i32* %5, align 16, !tbaa !5
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = zext i32 %1 to i64
  br label %20

18:                                               ; preds = %20, %14
  %19 = phi i32 [ 0, %14 ], [ %38, %20 ]
  ret i32 %19

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %39, %20 ]
  %22 = phi i32 [ 0, %16 ], [ %29, %20 ]
  %23 = phi i32 [ 0, %16 ], [ %38, %20 ]
  %24 = getelementptr inbounds i32, i32* %0, i64 %21
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 -1, i32 1
  %29 = add nsw i32 %28, %22
  %30 = icmp slt i32 %29, 0
  %31 = sub nsw i32 0, %29
  %32 = select i1 %30, i32 %31, i32 %29
  %33 = select i1 %30, i32* %6, i32* %5
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4, !tbaa !5
  %38 = add nsw i32 %36, %23
  %39 = add nuw nsw i64 %21, 1
  %40 = icmp eq i64 %39, %17
  br i1 %40, label %18, label %20, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_SUBARRAYS_WITH_SAME_EVEN_AND_ODD_ELEMENTS_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
