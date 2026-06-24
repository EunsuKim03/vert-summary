; ModuleID = 'benchmark/cpp_transcoder/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = bitcast i32* %0 to i8*
  %4 = shl nsw i32 %1, 1
  %5 = or i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = bitcast i32* %7 to i8*
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* align 4 %3, i64 %12, i1 false), !tbaa !5
  br label %13

13:                                               ; preds = %9, %2
  %14 = icmp sgt i32 %1, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = sext i32 %1 to i64
  %17 = getelementptr i32, i32* %7, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = zext i32 %1 to i64
  %20 = shl nuw nsw i64 %19, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %3, i64 %20, i1 false), !tbaa !5
  br label %21

21:                                               ; preds = %15, %13
  %22 = icmp sgt i32 %1, 1
  br i1 %22, label %23, label %55

23:                                               ; preds = %21
  %24 = sext i32 %1 to i64
  %25 = zext i32 %1 to i64
  %26 = icmp sgt i32 %1, 0
  br label %27

27:                                               ; preds = %23, %50
  %28 = phi i64 [ 1, %23 ], [ %53, %50 ]
  %29 = phi i32 [ undef, %23 ], [ %35, %50 ]
  %30 = phi i32 [ 0, %23 ], [ %52, %50 ]
  %31 = add nsw i64 %28, %24
  br i1 %26, label %36, label %32

32:                                               ; preds = %36, %27
  %33 = phi i32 [ 0, %27 ], [ %46, %36 ]
  %34 = icmp eq i32 %33, %1
  %35 = select i1 %34, i32 %1, i32 %29
  br i1 %34, label %55, label %50

36:                                               ; preds = %27, %36
  %37 = phi i64 [ %47, %36 ], [ %28, %27 ]
  %38 = phi i64 [ %48, %36 ], [ 0, %27 ]
  %39 = phi i32 [ %46, %36 ], [ 0, %27 ]
  %40 = getelementptr inbounds i32, i32* %7, i64 %37
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %0, i64 %38
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = icmp ne i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = add nuw nsw i32 %39, %45
  %47 = add nuw nsw i64 %37, 1
  %48 = add nuw nsw i64 %38, 1
  %49 = icmp slt i64 %47, %31
  br i1 %49, label %36, label %32, !llvm.loop !9

50:                                               ; preds = %32
  %51 = icmp slt i32 %30, %33
  %52 = select i1 %51, i32 %33, i32 %30
  %53 = add nuw nsw i64 %28, 1
  %54 = icmp eq i64 %53, %25
  br i1 %54, label %55, label %27, !llvm.loop !12

55:                                               ; preds = %32, %50, %21
  %56 = phi i32 [ 0, %21 ], [ %35, %32 ], [ %52, %50 ]
  ret i32 %56
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
